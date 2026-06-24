import Foundation

/// Maximum time allowed for the dog to return below threshold
/// after a disruption event (trigger passage, startle, escalation).
public struct RecoveryWindow: Sendable, Codable, Hashable {
    /// Maximum seconds to recover.
    public var maxSeconds: Double

    public init(maxSeconds: Double) {
        self.maxSeconds = Swift.max(0, maxSeconds)
    }

    public var label: String {
        if maxSeconds == maxSeconds.rounded() && maxSeconds < 60 {
            return "herstel binnen \(Int(maxSeconds)) sec"
        }
        if maxSeconds >= 60 {
            let m = Int((maxSeconds / 60).rounded())
            return "herstel binnen \(m) min"
        }
        return "herstel binnen \(String(format: "%.1f", maxSeconds)) sec"
    }
}
