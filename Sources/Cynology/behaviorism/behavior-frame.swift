import Foundation

/// A concrete behavioral target — the "what" being built.
///
/// Unlike `BehaviorConcept` (which describes mechanisms and methods)
/// or `BehaviorProblem` (which describes presenting complaints),
/// a `BehaviorFrame` describes the target shape of behavior we are
/// working toward: a cued obedience response, a modification outcome,
/// a tolerance capacity, or an applied task.
///
/// Frames are the natural line-item for a training program or quote,
/// and the unit around which concepts, handler skills, and problems
/// are composed via `FramePlan`.
public enum BehaviorFrame: Sendable, Codable, Hashable {
    case obedience(Obedience)
    case modification(Modification)
    case tolerance(Tolerance)
    case task(Task)
    case custom(Custom)

    // MARK: - Taxonomy

    public enum Domain: String, Sendable, Codable, Hashable, CaseIterable {
        case obedience
        case modification
        case tolerance
        case task
        case custom
    }

    // MARK: - Domains

    /// Cued behaviors: shaped responses bound to a signal.
    public enum Obedience: String, Sendable, Codable, Hashable, CaseIterable {
        case heel
        case stop
        case recall
        case place
        case sit
        case down
        case stay
        case leave_it
        case loose_leash
        case stand
    }

    /// Changing the emotional or behavioral response pattern.
    /// These are not cued on command — they are state or reflex outcomes.
    public enum Modification: String, Sendable, Codable, Hashable, CaseIterable {
        case turn_away                  // learned disengagement from trigger
        case arousal_regulation         // capacity to remain or return to low arousal
        case settle                     // autonomous relaxation, no cue required
        case impulse_control            // inhibition of prepotent responses
        case stimulus_re_association    // shifting valence of a specific trigger
        case presentation_independence  // engaging without visible reward prompt
        case separation_tolerance       // being alone without distress
    }

    /// Acceptance, comfort, and habituation targets.
    public enum Tolerance: String, Sendable, Codable, Hashable, CaseIterable {
        case equipment_transition       // moving between equipment types (harness → collar → slip)
        case equipment_introduction     // first exposure and counter-conditioning to new equipment
        case body_handling              // accepting touch, restraint, grooming
        case environmental_confidence   // comfort across novel surfaces, sounds, contexts
        case veterinary_cooperation     // tolerating vet procedures
        case muzzle_conditioning        // accepting and wearing a muzzle
    }

    /// Applied working behaviors — service, sport, or specialised function.
    public enum Task: String, Sendable, Codable, Hashable, CaseIterable {
        case object_retrieval           // picking up and delivering objects
        case switch_operation           // turning lights / buttons on and off
        case alert                      // barking or signalling on cue or in response to event
        case blocking                   // physically blocking a person's movement
        case guiding                    // leading or accompanying a person directionally
        case door_operation             // opening or closing doors
    }

    /// Escape hatch for anything not yet in the taxonomy.
    /// `id` is the stable machine key; `label` is the human-readable name.
    public struct Custom: Sendable, Codable, Hashable {
        public var id: String
        public var label: String

        public init(id: String, label: String) {
            self.id = id
            self.label = label
        }
    }

    // MARK: - Computed properties

    public var domain: Domain {
        switch self {
        case .obedience:    return .obedience
        case .modification: return .modification
        case .tolerance:    return .tolerance
        case .task:         return .task
        case .custom:       return .custom
        }
    }

    public var slug: String {
        switch self {
        case .obedience(let v):    return v.rawValue
        case .modification(let v): return v.rawValue
        case .tolerance(let v):    return v.rawValue
        case .task(let v):         return v.rawValue
        case .custom(let v):       return v.id
        }
    }

    public var label: String {
        switch self {

        // Obedience
        case .obedience(.heel):                         return "Volgen (heel)"
        case .obedience(.stop):                         return "Stoppen op commando"
        case .obedience(.recall):                       return "Terugroepen (appèl)"
        case .obedience(.place):                        return "Plaats"
        case .obedience(.sit):                          return "Zit"
        case .obedience(.down):                         return "Af"
        case .obedience(.stay):                         return "Blijf"
        case .obedience(.leave_it):                     return "Laat"
        case .obedience(.loose_leash):                  return "Los-lijn lopen"
        case .obedience(.stand):                        return "Sta"

        // Modification
        case .modification(.turn_away):                 return "Afdraai"
        case .modification(.arousal_regulation):        return "Arousal-regulatie"
        case .modification(.settle):                    return "Autonoom tot rust komen"
        case .modification(.impulse_control):           return "Impulsbeheersing"
        case .modification(.stimulus_re_association):   return "Stimulus her-associatie"
        case .modification(.presentation_independence): return "Presentatie-onafhankelijkheid"
        case .modification(.separation_tolerance):      return "Alleen-blijven tolerantie"

        // Tolerance
        case .tolerance(.equipment_transition):         return "Materiaaloverstap"
        case .tolerance(.equipment_introduction):       return "Materiaalintroductie"
        case .tolerance(.body_handling):                return "Lichaamshantering"
        case .tolerance(.environmental_confidence):     return "Omgevingszekerheid"
        case .tolerance(.veterinary_cooperation):       return "Dierenarts-medewerking"
        case .tolerance(.muzzle_conditioning):          return "Muilkorf-conditionering"

        // Task
        case .task(.object_retrieval):                  return "Objecten oppakken en brengen"
        case .task(.switch_operation):                  return "Schakelaars bedienen"
        case .task(.alert):                             return "Alarmeren (blaffen op cue)"
        case .task(.blocking):                          return "Blokkeren"
        case .task(.guiding):                           return "Begeleiden"
        case .task(.door_operation):                    return "Deuren openen en sluiten"

        // Custom
        case .custom(let v):                            return v.label
        }
    }

    // MARK: - CaseIterable (excluding custom)

    /// All prebuilt frames. Does not include `.custom`.
    public static var allPrebuilt: [BehaviorFrame] {
        Obedience.allCases.map(Self.obedience)
            + Modification.allCases.map(Self.modification)
            + Tolerance.allCases.map(Self.tolerance)
            + Task.allCases.map(Self.task)
    }

    // MARK: - Codable

    /// Coding uses `"domain/slug"` format, e.g. `"obedience/heel"` or `"custom/my_thing"`.
    /// Custom additionally encodes its label in a keyed container.

    private enum CodingKeys: String, CodingKey {
        case frame
        case customLabel
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let raw = try container.decode(String.self, forKey: .frame)

        let parts = raw.split(separator: "/", maxSplits: 1)
        guard parts.count == 2 else {
            throw DecodingError.dataCorruptedError(
                forKey: .frame, in: container,
                debugDescription: "Expected 'domain/slug', got: \(raw)"
            )
        }

        let domain = String(parts[0])
        let slug = String(parts[1])

        switch domain {
        case "obedience":
            guard let v = Obedience(rawValue: slug) else {
                throw DecodingError.dataCorruptedError(forKey: .frame, in: container, debugDescription: "Unknown obedience slug: \(slug)")
            }
            self = .obedience(v)
        case "modification":
            guard let v = Modification(rawValue: slug) else {
                throw DecodingError.dataCorruptedError(forKey: .frame, in: container, debugDescription: "Unknown modification slug: \(slug)")
            }
            self = .modification(v)
        case "tolerance":
            guard let v = Tolerance(rawValue: slug) else {
                throw DecodingError.dataCorruptedError(forKey: .frame, in: container, debugDescription: "Unknown tolerance slug: \(slug)")
            }
            self = .tolerance(v)
        case "task":
            guard let v = Task(rawValue: slug) else {
                throw DecodingError.dataCorruptedError(forKey: .frame, in: container, debugDescription: "Unknown task slug: \(slug)")
            }
            self = .task(v)
        case "custom":
            let label = try container.decode(String.self, forKey: .customLabel)
            self = .custom(.init(id: slug, label: label))
        default:
            throw DecodingError.dataCorruptedError(forKey: .frame, in: container, debugDescription: "Unknown domain: \(domain)")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        let frameString = "\(domain.rawValue)/\(slug)"
        try container.encode(frameString, forKey: .frame)
        if case .custom(let v) = self {
            try container.encode(v.label, forKey: .customLabel)
        }
    }
}

// MARK: - Grouping convenience

public extension BehaviorFrame {
    static var grouped: [(domain: Domain, frames: [BehaviorFrame])] {
        Domain.allCases.compactMap { d in
            let frames = allPrebuilt.filter { $0.domain == d }
            return frames.isEmpty ? nil : (d, frames)
        }
    }
}
