import Foundation

/// Measurable criterion for a behavioral target.
/// Composes the measurement atoms — all optional, use whichever
/// apply to the frame type.
///
/// Response-type frames (recall, stop, heel) typically use:
///   successRate + latency + promptBudget
///
/// State-type frames (settle, arousal regulation, loose-leash) typically use:
///   duration + successRate + maxEscalationEvents
///
/// Modification-type frames (turn-away, non-reactivity) typically use:
///   successRate + recovery + maxEscalationEvents
///
/// These are not enforced by the type system — a criterion spec is
/// a flexible bag. The frame domain determines which fields are meaningful.
public struct CriterionSpec: Sendable, Codable, Hashable {

    // ── Response measurement ─────────────────────────────────

    /// How reliably the behavior must occur.
    public var successRate: SuccessRate?

    /// Maximum acceptable response latency.
    public var latency: Latency?

    /// Maximum prompts before counting as failure.
    public var promptBudget: PromptBudget?

    // ── State measurement ────────────────────────────────────

    /// Minimum duration the state must be maintained.
    public var duration: Duration?

    /// Maximum escalation events (barking, lunging, fixation, etc.)
    /// allowed within the observation window.
    public var maxEscalationEvents: Int?

    // ── Recovery measurement ─────────────────────────────────

    /// Maximum time to return below threshold after disruption.
    public var recovery: RecoveryWindow?

    public init(
        successRate: SuccessRate? = nil,
        latency: Latency? = nil,
        promptBudget: PromptBudget? = nil,
        duration: Duration? = nil,
        maxEscalationEvents: Int? = nil,
        recovery: RecoveryWindow? = nil
    ) {
        self.successRate = successRate
        self.latency = latency
        self.promptBudget = promptBudget
        self.duration = duration
        self.maxEscalationEvents = maxEscalationEvents
        self.recovery = recovery
    }

    /// Human-readable summary for quote rendering.
    public var label: String {
        var parts: [String] = []

        if let pb = promptBudget {
            parts.append(pb.label)
        }

        if let l = latency {
            parts.append(l.label)
        }

        if let sr = successRate {
            parts.append(sr.label)
        }

        if let d = duration {
            parts.append(d.label)
        }

        if let maxE = maxEscalationEvents {
            switch maxE {
            case 0:  parts.append("geen escalatie")
            case 1:  parts.append("max 1 escalatie")
            default: parts.append("max \(maxE) escalaties")
            }
        }

        if let r = recovery {
            parts.append(r.label)
        }

        return parts.isEmpty ? "zonder specifiek criterium" : parts.joined(separator: ", ")
    }
}
