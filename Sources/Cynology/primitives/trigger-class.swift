import Foundation

/// The class of stimulus that triggers the dog's response.
/// Used in context specs to describe what the dog must cope with.
/// Distinct from DistractionProfile.Nature (which is about the
/// distractor's role); TriggerClass is about the stimulus identity.
public enum TriggerClass: String, Sendable, Codable, Hashable, CaseIterable {
    // Social — people
    case strangers
    case men
    case women
    case children
    case cyclists
    case joggers

    // Social — dogs
    case unfamiliar_dogs
    case barking_dogs
    case reactive_dogs
    case off_leash_dogs

    // Environmental
    case traffic
    case loud_noises
    case fireworks
    case construction
    case novel_objects
    case novel_surfaces

    // Prey / chase
    case cats
    case wildlife
    case birds
    case small_animals

    // Contextual
    case doorbell
    case visitors
    case veterinary_handling
    case equipment             // muzzle, collar, harness being put on

    public var label: String {
        switch self {
        case .strangers:            return "Vreemden"
        case .men:                  return "Mannen"
        case .women:                return "Vrouwen"
        case .children:             return "Kinderen"
        case .cyclists:             return "Fietsers"
        case .joggers:              return "Hardlopers"
        case .unfamiliar_dogs:      return "Onbekende honden"
        case .barking_dogs:         return "Blaffende honden"
        case .reactive_dogs:        return "Reactieve honden"
        case .off_leash_dogs:       return "Loslopende honden"
        case .traffic:              return "Verkeer"
        case .loud_noises:          return "Harde geluiden"
        case .fireworks:            return "Vuurwerk"
        case .construction:         return "Bouwlawaai"
        case .novel_objects:        return "Onbekende objecten"
        case .novel_surfaces:       return "Onbekende ondergronden"
        case .cats:                 return "Katten"
        case .wildlife:             return "Wild"
        case .birds:                return "Vogels"
        case .small_animals:        return "Kleine dieren"
        case .doorbell:             return "Deurbel"
        case .visitors:             return "Bezoek"
        case .veterinary_handling:  return "Dierenarts-handelingen"
        case .equipment:            return "Materiaal (aandoen)"
        }
    }
}
