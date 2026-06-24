import Foundation

public enum TrainingModelPillar: String, Sendable, Codable, Hashable, CaseIterable {
    case restriction
    case motivation
    case engagement
    case communication
    case pressure

    case frames
    case association
    case signaling

    case difficulty
    case reliability // (+R) reinforcement schedule, negative reinforcement, punishment

    public var layer: TrainingModelLayer {
        switch self {
        case .restriction,
             .motivation,
             .engagement,
             .communication,
             .pressure:
            return .foundations

        case .frames,
             .association,
             .signaling:
            return .shaping

        case .difficulty,
             .reliability:
            return .proofing
        }
    }

    public var label: String {
        switch self {
        case .restriction:
            return "Restrictie"
        case .motivation:
            return "Motivatie"
        case .engagement:
            return "Betrokkenheid"
        case .communication:
            return "Communicatie"
        case .pressure:
            return "Drukbegrip"

        case .frames:
            return "Kaders"
        case .association:
            return "Associatievorming"
        case .signaling:
            return "Signaleerbaarheid"  // signaal-binding

        case .difficulty:
            return "Moeilijkheidsgraad"
        case .reliability:
            return "Berekenbaarheid"
        }
    }

    public var profile: TrainingModelPillarProfile {
        TrainingModelPillarProfile.profile(for: self)
    }

    public static var profiles: [TrainingModelPillarProfile] {
        allCases.map(\.profile)
    }
}
