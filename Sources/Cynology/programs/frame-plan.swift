import Foundation

/// A concrete plan entry for a specific dog: a `BehaviorFrame` composed
/// with the performance spec, concepts, problems, and notes that apply
/// to *this* instance.
///
/// `FramePlan` is the unit that appears on a training program or quote.
/// Its `frame` identifies the behavioral target; `spec` quantifies it;
/// the associated arrays support curriculum and index views.
public struct FramePlan: Sendable, Codable, Hashable, Identifiable {

    /// Stable identity — derived from the frame's slug by default.
    public var id: String

    /// The behavioral target.
    public var frame: BehaviorFrame

    /// Quantifiable performance specification (context + criterion).
    /// Optional — early-phase work may not have criteria yet.
    public var spec: PerformanceSpec?

    /// Which training/behavior concepts are involved for this dog.
    public var concepts: [BehaviorConcept]

    /// Which behavior problems this frame addresses (if any).
    public var problems: [BehaviorProblem]

    /// Free-form notes for the trainer.
    public var notes: String?

    /// Estimated session allocation for pricing/tallying.
    /// Expressed as a minute range (low–high).
    public var allocation: AllocationRange?

    /// Whether this plan is elementary (core) or exchangeable (optional).
    public var placement: FramePlacement

    /// Whether this plan is included in the active program.
    public var include: Bool

    // MARK: - Init

    public init(
        id: String? = nil,
        frame: BehaviorFrame,
        spec: PerformanceSpec? = nil,
        concepts: [BehaviorConcept] = [],
        problems: [BehaviorProblem] = [],
        notes: String? = nil,
        allocation: AllocationRange? = nil,
        placement: FramePlacement = .elementary,
        include: Bool = true
    ) {
        self.id = id ?? frame.slug
        self.frame = frame
        self.spec = spec
        self.concepts = concepts
        self.problems = problems
        self.notes = notes
        self.allocation = allocation
        self.placement = placement
        self.include = include
    }

    /// Client-facing tagline: frame label + spec summary.
    public var tagline: String {
        guard let spec, !spec.label.hasPrefix("Zonder") else {
            return frame.label
        }
        return "\(frame.label) — \(spec.label)"
    }

    /// Short description for the quote line item.
    public var caption: String? {
        spec?.criterion.label
    }
}

// MARK: - Allocation

/// Minute-based allocation range for session estimation.
/// Simpler than the old SessionAllocation/MinuteRange/SessionRange chain —
/// just low and high minutes, convertible to sessions.
public struct AllocationRange: Sendable, Codable, Hashable {
    public var lowMinutes: Int
    public var highMinutes: Int

    public init(lowMinutes: Int, highMinutes: Int) {
        self.lowMinutes = Swift.max(0, lowMinutes)
        self.highMinutes = Swift.max(lowMinutes, highMinutes)
    }

    public init(sessions low: Double, _ high: Double, sessionDuration: Int = 60) {
        self.lowMinutes = Int((low * Double(sessionDuration)).rounded())
        self.highMinutes = Int((high * Double(sessionDuration)).rounded())
    }

    public func sessions(duration: Int = 60) -> (low: Double, high: Double) {
        let d = Double(Swift.max(1, duration))
        return (Double(lowMinutes) / d, Double(highMinutes) / d)
    }
}

// MARK: - Placement

/// Whether a frame plan is core or optional/exchangeable.
public enum FramePlacement: String, Sendable, Codable, Hashable, CaseIterable {
    case elementary
    case exchangeable
}

// MARK: - Projections

public extension Array where Element == FramePlan {

    var allConcepts: [BehaviorConcept] {
        var seen = Set<BehaviorConcept>()
        var result: [BehaviorConcept] = []
        for plan in self {
            for concept in plan.concepts where seen.insert(concept).inserted {
                result.append(concept)
            }
        }
        return result
    }

    var allProblems: [BehaviorProblem] {
        var seen = Set<BehaviorProblem>()
        var result: [BehaviorProblem] = []
        for plan in self {
            for problem in plan.problems where seen.insert(problem).inserted {
                result.append(problem)
            }
        }
        return result
    }

    var byDomain: [(domain: BehaviorFrame.Domain, plans: [FramePlan])] {
        BehaviorFrame.Domain.allCases.compactMap { d in
            let matching = self.filter { $0.frame.domain == d }
            return matching.isEmpty ? nil : (d, matching)
        }
    }

    var crossCuttingConcepts: [BehaviorConcept] {
        var counts: [BehaviorConcept: Int] = [:]
        for plan in self {
            for concept in Set(plan.concepts) {
                counts[concept, default: 0] += 1
            }
        }
        return counts
            .filter { $0.value > 1 }
            .sorted { $0.value > $1.value }
            .map(\.key)
    }

    var included: [FramePlan] {
        filter(\.include)
    }

    var elementary: [FramePlan] {
        filter { $0.placement == .elementary && $0.include }
    }

    var exchangeable: [FramePlan] {
        filter { $0.placement == .exchangeable && $0.include }
    }
}
