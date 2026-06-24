import Foundation

/// A complete performance specification: context + criterion.
///
/// This is the quantifiable layer that turns a `BehaviorFrame` from
/// "what behavior" into "what behavior, under what conditions, how reliably."
///
/// Lives on `FramePlan` as an optional field — not every frame needs
/// a full spec (early-phase work may not have criteria yet), but the
/// quote-renderable frames should.
///
/// Renders into the Dutch sentence pattern:
///   [Frame label] bij [context], [criterion summary].
///
/// Example:
///   "Appèl bij gecontroleerde statische sociale afleiding,
///    binnen 2 prompts terugkomen vanaf 10 meter,
///    in 4 van 5 herhalingen."
///
public struct PerformanceSpec: Sendable, Codable, Hashable {

    /// Under what conditions the behavior must hold.
    public var context: ContextSpec

    /// What measurable criterion defines success.
    public var criterion: CriterionSpec

    public init(
        context: ContextSpec = .init(),
        criterion: CriterionSpec = .init()
    ) {
        self.context = context
        self.criterion = criterion
    }

    /// Full human-readable summary.
    /// Combines context and criterion labels into a single description.
    public var label: String {
        let ctx = context.label
        let crit = criterion.label

        let ctxEmpty = context.environments.isEmpty
            && context.triggers.isEmpty
            && context.distraction == nil
            && context.threshold == nil
            && context.distance == nil

        let critEmpty = criterion.successRate == nil
            && criterion.latency == nil
            && criterion.promptBudget == nil
            && criterion.duration == nil
            && criterion.maxEscalationEvents == nil
            && criterion.recovery == nil

        if ctxEmpty && critEmpty {
            return "Zonder nadere specificatie"
        }
        if ctxEmpty {
            return crit.prefix(1).uppercased() + crit.dropFirst()
        }
        if critEmpty {
            return ctx.prefix(1).uppercased() + ctx.dropFirst()
        }

        return "\(ctx). \(crit.prefix(1).uppercased())\(crit.dropFirst())."
    }
}
