import Foundation

/// Maximum number of prompts (cues, signals, redirections) allowed
/// before counting a trial as a failure.
public struct PromptBudget: Sendable, Codable, Hashable {
    /// Maximum prompts allowed per trial.
    public var max: Int

    public init(max value: Int) {
        self.max = Swift.max(0, value)
    }

    public var label: String {
        switch max {
        case 1:  return "op eerste prompt"
        case 2:  return "binnen 2 prompts"
        default: return "binnen \(max) prompts"
        }
    }
}
