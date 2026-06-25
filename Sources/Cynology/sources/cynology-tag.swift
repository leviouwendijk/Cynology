import References

public enum CynologyTag: String, Sendable, Codable, Hashable, CaseIterable, ReferenceTagRepresentable {
    public static let namespace = "cynology"

    case learning_theory
    case classical_conditioning
    case operant_conditioning
    case reinforcement
    case punishment
    case matching_law
    case action_habit_control
    case context_renewal
    case engagement

    case affective_state
    case motivation
    case impulsivity
    case frustration_tolerance
    case resilience
    case challenge_calibration

    case training_methods
    case behavior_modification
    case clinical_behavior
    case methodology
    case assessment
    case temperament

    case problem_behavior
    case reactivity
    case aggression
    case anxiety
    case separation_distress
    case noise_sensitivity

    case stress
    case welfare
    case exercise
    case enrichment
    case physiology
    case pain_medical
    case aversives
    case electronic_training_devices

    case communication
    case canine_body_language
    case socialization
    case canine_behavior
    case play
    case dominance
    case human_dog_relationship

    case diet
    case working_dogs

    public var label: String {
        switch self {
        case .pain_medical:
            return "Pain / medical"

        case .action_habit_control:
            return "Action / habit control"

        case .context_renewal:
            return "Context renewal"

        case .affective_state:
            return "Affective state"

        case .frustration_tolerance:
            return "Frustration tolerance"

        case .challenge_calibration:
            return "Challenge calibration"

        case .clinical_behavior:
            return "Clinical behavior"

        case .problem_behavior:
            return "Problem behavior"

        case .separation_distress:
            return "Separation distress"

        case .noise_sensitivity:
            return "Noise sensitivity"

        case .electronic_training_devices:
            return "Electronic training devices"

        case .canine_body_language:
            return "Canine body language"

        case .canine_behavior:
            return "Canine behavior"

        case .human_dog_relationship:
            return "Human-dog relationship"

        case .working_dogs:
            return "Working dogs"

        default:
            return rawValue.tagLabel
        }
    }
}

public extension ReferenceTagSet {
    static func cynology(
        _ tags: CynologyTag...
    ) -> ReferenceTagSet {
        tags.tags
    }
}
