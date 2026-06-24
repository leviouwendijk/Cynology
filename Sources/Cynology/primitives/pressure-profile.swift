import Foundation

/// How pressure is applied: mode (body/spatial) × variant (continuous/interval/peak).
/// Parameterizes pressure-related concepts.
public struct PressureProfile: Sendable, Codable, Hashable {
    public enum Mode: String, Sendable, Codable, Hashable, CaseIterable {
        case body       // direct physical/postural pressure from the handler
        case spatial    // pressure through use of space and positioning
    }

    public enum Variant: String, Sendable, Codable, Hashable, CaseIterable {
        case continuous
        case interval
        case peak
    }

    public var mode: Mode
    public var variant: Variant

    public init(mode: Mode, variant: Variant) {
        self.mode = mode
        self.variant = variant
    }

    public var label: String {
        switch mode {
        case .body:    return "Lichaamsdruk"
        case .spatial: return "Ruimtelijke druk"
        }
    }
}
