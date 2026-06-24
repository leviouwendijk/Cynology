import Foundation

/// Multi-axis distraction parameterization: control × movement × nature × intensity.
/// Used to specify under what distraction conditions a behavior must hold,
/// rather than encoding every combination as a taxonomy case.
public struct DistractionProfile: Sendable, Codable, Hashable {

    /// Whether the distractor is under the handler's control.
    public enum Control: String, Sendable, Codable, Hashable, CaseIterable {
        case controlled     // a helper or managed object
        case uncontrolled   // environment, unpredictable
    }

    /// Whether the distractor is moving.
    public enum Movement: String, Sendable, Codable, Hashable, CaseIterable {
        case `static`
        case dynamic
    }

    /// What kind of stimulus the distractor represents.
    public enum Nature: String, Sendable, Codable, Hashable, CaseIterable {
        case environmental  // non-social, non-trigger (objects, sounds, surfaces)
        case social         // people or dogs, neutral valence
        case trigger        // known problem stimulus for this dog
    }

    /// Relative intensity of the distraction.
    public enum Intensity: String, Sendable, Codable, Hashable, CaseIterable {
        case low
        case medium
        case high
    }

    public var control: Control
    public var movement: Movement
    public var nature: Nature
    public var intensity: Intensity

    public init(
        control: Control,
        movement: Movement,
        nature: Nature,
        intensity: Intensity
    ) {
        self.control = control
        self.movement = movement
        self.nature = nature
        self.intensity = intensity
    }

    public var label: String {
        let ctrl = control == .controlled ? "gecontroleerd" : "ongecontroleerd"
        let mov  = movement == .static    ? "statisch"      : "dynamisch"
        let nat: String = switch nature {
            case .environmental: "omgeving"
            case .social:        "sociaal"
            case .trigger:       "trigger"
        }
        let lvl: String = switch intensity {
            case .low:    "laag"
            case .medium: "middel"
            case .high:   "hoog"
        }
        return "\(ctrl), \(mov), \(nat) (\(lvl))"
    }
}
