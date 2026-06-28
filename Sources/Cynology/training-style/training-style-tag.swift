public enum TrainingStyleTag: String, Sendable, Codable, Hashable, CaseIterable {
    case force_free
    case balanced
    case leadership
    case dominance
    case reward_only
    case positive_reinforcement
    case lima
    case traditional
    case punishment_based
    case aversive_based
    case correction_heavy

    public var label: String {
        switch self {
        case .force_free:
            return "Force-free"

        case .balanced:
            return "Balanced"

        case .leadership:
            return "Leadership"

        case .dominance:
            return "Dominance"

        case .reward_only:
            return "Reward-only"

        case .positive_reinforcement:
            return "Positive reinforcement"

        case .lima:
            return "LIMA"

        case .traditional:
            return "Traditional"

        case .punishment_based:
            return "Punishment-based"

        case .aversive_based:
            return "Aversive-based"

        case .correction_heavy:
            return "Correction-heavy"
        }
    }
}
