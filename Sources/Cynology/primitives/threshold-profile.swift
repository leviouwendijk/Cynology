import Foundation

/// Where the dog is operating relative to its response threshold.
/// Parameterizes threshold-related concepts and context specs.
public struct ThresholdProfile: Sendable, Codable, Hashable {
    public enum Position: String, Sendable, Codable, Hashable, CaseIterable {
        case above      // over threshold — learning is compromised, management needed
        case near_or_at // at the edge — trainable but fragile
        case below      // under threshold — optimal training zone
    }

    public var position: Position

    public init(position: Position) {
        self.position = position
    }

    public var label: String {
        switch position {
        case .above:      return "Boven drempelwaarde"
        case .near_or_at: return "Nabij of op drempelwaarde"
        case .below:      return "Onder drempelwaarde"
        }
    }
}
