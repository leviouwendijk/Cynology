import Foundation

/// Minimum duration a behavioral state must be maintained.
/// Used for: settle duration, loose-leash walking duration,
/// separation tolerance, sustained attention, etc.
public struct Duration: Sendable, Codable, Hashable {
    /// Minimum seconds.
    public var minSeconds: Int

    public init(minSeconds: Int) {
        self.minSeconds = Swift.max(0, minSeconds)
    }

    /// Convenience: init from minutes.
    public init(minMinutes: Int) {
        self.minSeconds = Swift.max(0, minMinutes * 60)
    }

    public var minutes: Double {
        Double(minSeconds) / 60.0
    }

    public var label: String {
        if minSeconds < 60 {
            return "\(minSeconds) seconden"
        }
        let m = Int(minutes.rounded())
        return "\(m) minuten"
    }
}
