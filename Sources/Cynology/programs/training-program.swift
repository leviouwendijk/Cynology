import Foundation

/// A training program: a titled collection of sections,
/// each containing FramePlans.
///
/// This replaces the old `Package > Module > ModuleEntry > ModuleComponent`
/// hierarchy. The visual output remains the same (sections render as
/// module boxes), but the content is now typed through BehaviorFrame
/// and PerformanceSpec.
public struct TrainingProgram: Sendable, Codable, Hashable, Identifiable {
    public var id: UUID
    public var title: String
    public var sections: [ProgramSection]
    public var include: Bool

    public init(
        id: UUID = UUID(),
        title: String,
        sections: [ProgramSection],
        include: Bool = true
    ) {
        self.id = id
        self.title = title
        self.sections = sections
        self.include = include
    }

    /// Fresh copy with new ID (for template instantiation).
    public func instantiate() -> TrainingProgram {
        TrainingProgram(title: title, sections: sections, include: include)
    }

    /// All frame plans across all sections.
    public var allPlans: [FramePlan] {
        sections.flatMap(\.plans)
    }

    /// All included frame plans.
    public var includedPlans: [FramePlan] {
        allPlans.included
    }
}

/// A thematic group within a training program.
/// Maps visually to the "module box" in the rendered output.
public struct ProgramSection: Sendable, Codable, Hashable, Identifiable {
    public var id: UUID
    public var title: String
    public var plans: [FramePlan]

    public init(
        id: UUID = UUID(),
        title: String,
        plans: [FramePlan]
    ) {
        self.id = id
        self.title = title
        self.plans = plans
    }

    /// Included elementary plans.
    public var elementary: [FramePlan] {
        plans.elementary
    }

    /// Included exchangeable plans.
    public var exchangeable: [FramePlan] {
        plans.exchangeable
    }

    /// Whether the section has any visible content.
    public var hasVisibleContent: Bool {
        plans.contains(where: \.include)
    }
}

// MARK: - Program-level projections

public extension Array where Element == TrainingProgram {
    var allPlans: [FramePlan] {
        flatMap(\.allPlans)
    }

    var includedPlans: [FramePlan] {
        flatMap(\.includedPlans)
    }
}
