import Foundation
import Cynology

// MARK: - Program tally

public enum ProgramTally {

    // MARK: - Estimate band (self-contained, no external type deps)

    public enum EstimateBand: Sendable, Hashable {
        case low_high
        case low_medium
        case medium_high

        public var field_label_range_visual: String {
            switch self {
            case .low_medium:  return "●-●-○"
            case .low_high:    return "●-○-●"
            case .medium_high: return "○-●-●"
            }
        }

        public var dot_spread_count: Int {
            switch self {
            case .low_medium: return 1
            case .low_high:   return 2
            case .medium_high: return 3
            }
        }

        public func dotString(filled: Int) -> String {
            let filledClamped = max(0, min(3, filled))
            return String(repeating: "●", count: filledClamped)
                + String(repeating: "○", count: 3 - filledClamped)
        }

        public var publicMarker: String {
            switch self {
            case .low_medium: return "S"
            case .medium_high: return "M"
            case .low_high:   return "L"
            }
        }

        public var publicDetails: String {
            switch self {
            case .low_medium:  return "laag–medium"
            case .medium_high: return "medium–hoog"
            case .low_high:    return "laag–hoog"
            }
        }

        public var internalLabel: String {
            switch self {
            case .low_medium:  return "Low–Medium"
            case .medium_high: return "Medium–High"
            case .low_high:    return "Low–High"
            }
        }

        public enum Anchor: Sendable, Hashable {
            case low
            case medium
            case high

            public var title: String {
                switch self {
                case .low:    return "Low"
                case .medium: return "Medium"
                case .high:   return "High"
                }
            }
        }

        public var excludedAnchor: Anchor {
            switch self {
            case .low_medium:  return .high
            case .low_high:    return .medium
            case .medium_high: return .low
            }
        }
    }

    // MARK: - Session tallying from TrainingProgram / FramePlan

    /// Session range from an array of TrainingPrograms.
    public static func sessions(
        programs: [TrainingProgram],
        sessionDuration: Int = 60,
        band: EstimateBand = .low_high,
        placements: Set<FramePlacement> = [.elementary]
    ) -> SessionTallyRange {
        sessions(
            plans: programs.flatMap(\.allPlans),
            sessionDuration: sessionDuration,
            band: band,
            placements: placements
        )
    }

    /// Session range from a flat array of FramePlans.
    public static func sessions(
        plans: [FramePlan],
        sessionDuration: Int = 60,
        band: EstimateBand = .low_high,
        placements: Set<FramePlacement> = [.elementary]
    ) -> SessionTallyRange {
        let d = Double(Swift.max(1, sessionDuration))

        var low: Double = 0
        var high: Double = 0

        for plan in plans {
            guard plan.include else { continue }
            guard placements.contains(plan.placement) else { continue }
            guard let alloc = plan.allocation else { continue }

            low += Double(alloc.lowMinutes) / d
            high += Double(alloc.highMinutes) / d
        }

        let a: Double
        let b: Double

        switch band {
        case .low_high:
            a = low; b = high
        case .low_medium:
            let medium = (low + high) / 2.0
            a = low; b = medium
        case .medium_high:
            let medium = (low + high) / 2.0
            a = medium; b = high
        }

        return .init(low: a, high: b)
    }
}

// MARK: - Session tally result

/// Simple session range result for tallying.
/// Replaces the old SessionRange (which carried medium and had
/// conversions back to MinuteRange etc.).
public struct SessionTallyRange: Sendable, Hashable {
    public var low: Double
    public var high: Double

    public init(low: Double, high: Double) {
        self.low = low
        self.high = high
    }

    public var rounded: (low: Int, high: Int) {
        (
            Int(low.rounded(.toNearestOrAwayFromZero)),
            Int(high.rounded(.toNearestOrAwayFromZero))
        )
    }

    public var label: String {
        let r = rounded
        if r.low == 0 && r.high == 0 { return "—" }
        if r.low == r.high { return "\(r.low)" }
        return "\(r.low)–\(r.high)"
    }
}
