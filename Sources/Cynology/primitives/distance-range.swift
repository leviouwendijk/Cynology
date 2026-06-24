import Foundation

/// Distance range (in meters) at which a behavior must hold.
/// For cued behaviors: handler-to-dog distance.
/// For modification targets: dog-to-trigger distance.
public struct DistanceRange: Sendable, Codable, Hashable {
    /// Minimum distance in meters (behavior must work at least this far).
    public var minMeters: Double

    /// Maximum distance in meters (upper bound of the criterion window).
    /// Nil means open-ended (no upper bound).
    public var maxMeters: Double?

    public init(minMeters: Double, maxMeters: Double? = nil) {
        self.minMeters = Swift.max(0, minMeters)
        self.maxMeters = maxMeters.map { Swift.max(minMeters, $0) }
    }

    /// Convenience: exact distance (min == max).
    public init(meters: Double) {
        self.minMeters = Swift.max(0, meters)
        self.maxMeters = self.minMeters
    }

    public var label: String {
        let lo = formatMeters(minMeters)
        if let hi = maxMeters {
            if hi == minMeters {
                return "op \(lo)"
            }
            return "op \(lo)–\(formatMeters(hi))"
        }
        return "op minimaal \(lo)"
    }

    private func formatMeters(_ m: Double) -> String {
        if m == m.rounded() && m < 100 {
            return "\(Int(m)) m"
        }
        return "\(String(format: "%.1f", m)) m"
    }
}
