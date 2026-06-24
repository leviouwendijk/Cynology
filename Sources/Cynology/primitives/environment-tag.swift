import Foundation

/// Typed environment descriptors.
/// Used in context specs to describe where a behavior must hold.
/// These come from real training environments — they're not abstract
/// intensity levels but concrete places.
public enum EnvironmentTag: String, Sendable, Codable, Hashable, CaseIterable {
    // Controlled / low-distraction
    case home_indoor            // thuis, binnen
    case home_garden            // eigen tuin
    case quiet_field            // rustig veld, weiland
    case training_hall          // trainingshal, binnensport

    // Semi-controlled / moderate
    case quiet_neighborhood     // rustige woonwijk
    case park_off_peak          // park buiten spitsuren
    case parking_lot            // parkeerterrein (gecontroleerd druk)
    case nature_trail           // bos- of wandelpad

    // Uncontrolled / high-distraction
    case busy_sidewalk          // druk trottoir
    case city_center            // stadscentrum
    case market                 // markt, beurs
    case train_station          // treinstation
    case school_area            // schoolomgeving (haal-brengmoment)
    case dog_park               // losloopgebied
    case veterinary_clinic      // dierenartspraktijk
    case events                 // evenementen, festivals

    public var label: String {
        switch self {
        case .home_indoor:        return "Thuis (binnen)"
        case .home_garden:        return "Eigen tuin"
        case .quiet_field:        return "Rustig veld"
        case .training_hall:      return "Trainingshal"
        case .quiet_neighborhood: return "Rustige woonwijk"
        case .park_off_peak:      return "Park (rustig)"
        case .parking_lot:        return "Parkeerterrein"
        case .nature_trail:       return "Bos- of wandelpad"
        case .busy_sidewalk:      return "Druk trottoir"
        case .city_center:        return "Stadscentrum"
        case .market:             return "Markt"
        case .train_station:      return "Treinstation"
        case .school_area:        return "Schoolomgeving"
        case .dog_park:           return "Losloopgebied"
        case .veterinary_clinic:  return "Dierenartspraktijk"
        case .events:             return "Evenementen"
        }
    }

    /// Rough intensity grouping for sorting / filtering.
    public enum Tier: String, Sendable, Codable, Hashable, CaseIterable {
        case controlled
        case moderate
        case high
    }

    public var tier: Tier {
        switch self {
        case .home_indoor, .home_garden, .quiet_field, .training_hall:
            return .controlled
        case .quiet_neighborhood, .park_off_peak, .parking_lot, .nature_trail:
            return .moderate
        case .busy_sidewalk, .city_center, .market, .train_station,
             .school_area, .dog_park, .veterinary_clinic, .events:
            return .high
        }
    }
}
