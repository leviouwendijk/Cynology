import Foundation

/// How reliably a behavior must occur to meet criterion.
/// Two modes: proportional (4 of 5) or consecutive (3 in a row).
public enum SuccessRate: Sendable, Codable, Hashable {
    /// Proportion of successes out of total trials.
    /// e.g. .proportion(successes: 4, of: 5) = 80%
    case proportion(successes: Int, of: Int)

    /// Consecutive successes required without failure.
    /// e.g. .consecutive(3) = 3 in a row
    case consecutive(Int)

    /// Decimal fraction (0.0–1.0) for computation.
    public var fraction: Double {
        switch self {
        case .proportion(let s, let t):
            guard t > 0 else { return 0 }
            return Double(s) / Double(t)
        case .consecutive(let n):
            // Consecutive is not directly a fraction, but for display
            // purposes treat it as "must succeed n times without fail."
            // Return 1.0 as a ceiling expectation.
            return n > 0 ? 1.0 : 0
        }
    }

    public var label: String {
        switch self {
        case .proportion(let s, let t):
            return "\(s) van \(t) herhalingen"
        case .consecutive(let n):
            return "\(n) opeenvolgend"
        }
    }
}
