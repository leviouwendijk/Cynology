import Foundation

/// Maximum acceptable time between cue and response onset.
public struct Latency: Sendable, Codable, Hashable {
    /// Maximum seconds allowed.
    public var maxSeconds: Double

    public init(maxSeconds: Double) {
        self.maxSeconds = max(0, maxSeconds)
    }

    public var label: String {
        if maxSeconds == maxSeconds.rounded() && maxSeconds < 60 {
            return "binnen \(Int(maxSeconds)) sec"
        }
        return "binnen \(String(format: "%.1f", maxSeconds)) sec"
    }
}
