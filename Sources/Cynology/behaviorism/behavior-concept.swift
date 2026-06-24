import Foundation

public enum BehaviorConcept: Sendable, Codable, Hashable, CaseIterable {
    case preparation(Preparation)
    case assessment(Assessment)
    case management(Management)
    case behaviorism(Behaviorism)
    case communication(Communication)
    case motivation(Motivation)
    case engagement(Engagement)
    case handling(Handling)
    case shaping(Shaping)
    case pressure(Pressure)
    case behavior_modification(BehaviorModification)

    // MARK: - Taxonomy

    public enum Taxonomy: String, Sendable, Codable, Hashable, CaseIterable {
        case preparation
        case assessment
        case management
        case behaviorism
        case communication
        case motivation
        case engagement
        case handling
        case shaping
        case pressure
        case behavior_modification
    }

    // MARK: - Domains

    /// Training meta: session structure, repetition quality, logbook, conditions.
    public enum Preparation: String, Sendable, Codable, Hashable, CaseIterable {
        case training_process
        case repetitions
        case duration_and_performance_peaks
        case logbook
        case session_conditions     // hunger drive, emotional availability, setup
        case session_arousal        // managing the dog's arousal state before/during a session
    }

    /// Observable traits and intake concepts. Parameterize with AssessmentProfile where needed.
    /// Trait cases mirror the Trait enum in the dog-behavior-assessor binary.
    public enum Assessment: String, Sendable, Codable, Hashable, CaseIterable {
        case aggression_tendency
        case fear_anxiety
        case sociability
        case trainability
        case distractibility
        case impulsivity
        case frustration_tolerance
        case affect_positive
        case affect_negative
        case playfulness
        case threshold_profiling    // above/near/below — parameterize with ThresholdProfile
        case drive_evaluation       // food, play, chase drives
        case behavioral_history     // intake: problem onset, prior training, environment
    }

    /// Environmental control and threshold management.
    /// Parameterize threshold_work with ThresholdProfile (above/near_at/below).
    public enum Management: String, Sendable, Codable, Hashable, CaseIterable {
        case management             // restriction, preventing problem rehearsal
        case threshold_work         // operating relative to the dog's threshold
        case emergency_management   // forced turn-away or lure when above threshold
    }

    /// Learning theory. Pure mechanisms — what IS, not what to DO.
    /// counter_conditioning lives here as theory; re_association in BehaviorModification is the applied practice.
    public enum Behaviorism: String, Sendable, Codable, Hashable, CaseIterable {
        case classical_conditioning
        case operant_conditioning
        case counter_conditioning
        case premack_principle
        case thresholds
        case salience
        case valence
    }

    /// Feedback channel between handler and dog.
    public enum Communication: String, Sendable, Codable, Hashable, CaseIterable {
        case markers
        case overshadowing
        case signal_discrimination  // distinguishing between different cues and responding differentially
    }

    /// Drive mechanics and reinforcement structure.
    /// attention_retention is in Engagement, not here — it's about sustaining focus in context.
    public enum Motivation: String, Sendable, Codable, Hashable, CaseIterable {
        case food_drive
        case play_drive
        case chase
        case food_chase
        case movement
        case contrast
        case post_reinforcement_pause
        case reward_variability
        case reinforcement_rate
        case possession
        case outing
        case tugging
        case reinforcement_thinning // deliberate long-term reduction of reinforcement schedule density
        case presentation_fading    // removing visible reward presentation as a prompt for engagement
    }

    /// Applying motivation under distraction and duration.
    /// Parameterize distraction_work with DistractionProfile (control × movement × nature × intensity).
    public enum Engagement: String, Sendable, Codable, Hashable, CaseIterable {
        case engagement             // foundational attention and focus
        case distraction_work       // working in presence of distraction
        case social_distraction     // around people/dogs as a distinct stimulus class
        case attention_retention    // sustaining focus over time and changing context
    }

    /// Physical interaction with the dog: habituation to touch, equipment, and restraint.
    public enum Handling: String, Sendable, Codable, Hashable, CaseIterable {
        case body_handling
        case table_work
        case vet_preparation
        case equipment_habituation
        case immobilisation
        case equipment_introduction // first exposure and counter-conditioning to completely new equipment
    }

    /// Building behavior form: from free shaping through to key applied exercises.
    /// recall and restrained_recall absorbed from the dissolved applied_behavior_shaping domain.
    public enum Shaping: String, Sendable, Codable, Hashable, CaseIterable {
        case obedience
        case assisted_shaping
        case luring
        case lure_fading
        case free_shaping
        case capping
        case recall
        case restrained_recall
        case cue_transfer           // binding a shaped behavior to its final signal (NS → CS)
    }

    /// Directional and corrective pressure.
    /// Parameterize pressure_work with PressureProfile (body/spatial).
    public enum Pressure: String, Sendable, Codable, Hashable, CaseIterable {
        case pressure_work          // directional physical or spatial pressure
        case leash_habituation      // habituation to leash as a steering tool
        case opposition_reflex      // the reflexive push-against response (concept)
        case correction             // corrective/punitive event
    }

    /// Changing the emotional underpinning of a response.
    /// re_association is the applied form of counter_conditioning (theory lives in Behaviorism).
    public enum BehaviorModification: String, Sendable, Codable, Hashable, CaseIterable {
        case habituation
        case desensitization
        case redirection
        case re_association         // applied counter-conditioning
        case turn_away
        case arousal_management     // managing arousal in problem/rehabilitation context
    }

    // MARK: - Computed properties

    public var taxonomy: Taxonomy {
        switch self {
        case .preparation:           return .preparation
        case .assessment:            return .assessment
        case .management:            return .management
        case .behaviorism:           return .behaviorism
        case .communication:         return .communication
        case .motivation:            return .motivation
        case .engagement:            return .engagement
        case .handling:              return .handling
        case .shaping:               return .shaping
        case .pressure:              return .pressure
        case .behavior_modification: return .behavior_modification
        }
    }

    public var slug: String {
        switch self {
        case .preparation(let v):           return v.rawValue
        case .assessment(let v):            return v.rawValue
        case .management(let v):            return v.rawValue
        case .behaviorism(let v):           return v.rawValue
        case .communication(let v):         return v.rawValue
        case .motivation(let v):            return v.rawValue
        case .engagement(let v):            return v.rawValue
        case .handling(let v):              return v.rawValue
        case .shaping(let v):               return v.rawValue
        case .pressure(let v):              return v.rawValue
        case .behavior_modification(let v): return v.rawValue
        }
    }

    public var label: String {
        switch self {

        case .preparation(.training_process):               return "Trainingsproces"
        case .preparation(.repetitions):                    return "Kwaliteit en kwantiteit van herhalingen"
        case .preparation(.duration_and_performance_peaks): return "Trainingsduur en prestatiepieken"
        case .preparation(.logbook):                        return "Trainingslogboek"
        case .preparation(.session_conditions):             return "Sessie-condities"
        case .preparation(.session_arousal):                return "Opwinding (sessie)"

        case .assessment(.aggression_tendency):             return "Agressieneiging"
        case .assessment(.fear_anxiety):                    return "Angst en stress"
        case .assessment(.sociability):                     return "Sociabiliteit"
        case .assessment(.trainability):                    return "Trainbaarheid"
        case .assessment(.distractibility):                 return "Afleidbaarheid"
        case .assessment(.impulsivity):                     return "Impulsiviteit"
        case .assessment(.frustration_tolerance):           return "Frustratietolerantie"
        case .assessment(.affect_positive):                 return "Positief affect"
        case .assessment(.affect_negative):                 return "Negatief affect"
        case .assessment(.playfulness):                     return "Speelsheid"
        case .assessment(.threshold_profiling):             return "Drempelwaarde-profiel"
        case .assessment(.drive_evaluation):                return "Drijf-evaluatie"
        case .assessment(.behavioral_history):              return "Gedragshistorie"

        case .management(.management):                      return "Management (restrictie)"
        case .management(.threshold_work):                  return "Drempelwaarde-werk"
        case .management(.emergency_management):            return "Nood-management"

        case .behaviorism(.classical_conditioning):         return "Klassieke conditionering"
        case .behaviorism(.operant_conditioning):           return "Operante conditionering"
        case .behaviorism(.counter_conditioning):           return "Counter-conditioning"
        case .behaviorism(.premack_principle):              return "Premack-principe"
        case .behaviorism(.thresholds):                     return "Drempelwaardes"
        case .behaviorism(.salience):                       return "Saillantie"
        case .behaviorism(.valence):                        return "Valentie"

        case .communication(.markers):                      return "Markeersignalen"
        case .communication(.overshadowing):                return "Overschaduwing"
        case .communication(.signal_discrimination):        return "Signaaldiscriminatie"

        case .motivation(.food_drive):                      return "Voedseldrijf"
        case .motivation(.play_drive):                      return "Speeldrijf"
        case .motivation(.chase):                           return "Jaagspel"
        case .motivation(.food_chase):                      return "Voerjaagspel"
        case .motivation(.movement):                        return "Beweging"
        case .motivation(.contrast):                        return "Contrast"
        case .motivation(.post_reinforcement_pause):        return "Post-beloningspauze"
        case .motivation(.reward_variability):              return "Beloningsvariatie"
        case .motivation(.reinforcement_rate):              return "Beloningsfrequentie"
        case .motivation(.possession):                      return "Bezit"
        case .motivation(.outing):                          return "Loslaten"
        case .motivation(.tugging):                         return "Trekspel"
        case .motivation(.reinforcement_thinning):          return "Beloningsafbouw"
        case .motivation(.presentation_fading):             return "Presentatie-afbouw"

        case .engagement(.engagement):                      return "Betrokkenheid"
        case .engagement(.distraction_work):                return "Werken bij afleiding"
        case .engagement(.social_distraction):              return "Sociale afleiding"
        case .engagement(.attention_retention):             return "Aandachtsbehoud"

        case .handling(.body_handling):                     return "Lichaamshantering"
        case .handling(.table_work):                        return "Tafelwerk"
        case .handling(.vet_preparation):                   return "Dierenarts-voorbereiding"
        case .handling(.equipment_habituation):             return "Materiaalgewenning"
        case .handling(.immobilisation):                    return "Immobilisatie"
        case .handling(.equipment_introduction):            return "Materiaalintroductie"

        case .shaping(.obedience):                          return "Gehoorzaamheid"
        case .shaping(.assisted_shaping):                   return "Geassisteerd vormen"
        case .shaping(.luring):                             return "Lokmiddel"
        case .shaping(.lure_fading):                        return "Lokmiddel vervagen"
        case .shaping(.free_shaping):                       return "Vrij vormen"
        case .shaping(.capping):                            return "Capping"
        case .shaping(.recall):                             return "Terugroepen"
        case .shaping(.restrained_recall):                  return "Terugroepen onder bedwelming"
        case .shaping(.cue_transfer):                       return "Signaaloverdracht"

        case .pressure(.pressure_work):                     return "Drukwerk"
        case .pressure(.leash_habituation):                 return "Lijngewenning"
        case .pressure(.opposition_reflex):                 return "Tegendruk-reflex"
        case .pressure(.correction):                        return "Correctie"

        case .behavior_modification(.habituation):          return "Habituatie"
        case .behavior_modification(.desensitization):      return "Desensitisatie"
        case .behavior_modification(.redirection):          return "Herleiding"
        case .behavior_modification(.re_association):       return "Her-associatie"
        case .behavior_modification(.turn_away):            return "Afdraai"
        case .behavior_modification(.arousal_management):   return "Arousal-beheer (hervorming)"
        }
    }

    // MARK: - Codable

    public init?(slug: String) {
        if let v = Preparation(rawValue: slug)          { self = .preparation(v);           return }
        if let v = Assessment(rawValue: slug)           { self = .assessment(v);            return }
        if let v = Management(rawValue: slug)           { self = .management(v);            return }
        if let v = Behaviorism(rawValue: slug)          { self = .behaviorism(v);           return }
        if let v = Communication(rawValue: slug)        { self = .communication(v);         return }
        if let v = Motivation(rawValue: slug)           { self = .motivation(v);            return }
        if let v = Engagement(rawValue: slug)           { self = .engagement(v);            return }
        if let v = Handling(rawValue: slug)             { self = .handling(v);              return }
        if let v = Shaping(rawValue: slug)              { self = .shaping(v);               return }
        if let v = Pressure(rawValue: slug)             { self = .pressure(v);              return }
        if let v = BehaviorModification(rawValue: slug) { self = .behavior_modification(v); return }
        return nil
    }

    public static var allCases: [BehaviorConcept] {
        Preparation.allCases.map(Self.preparation)
            + Assessment.allCases.map(Self.assessment)
            + Management.allCases.map(Self.management)
            + Behaviorism.allCases.map(Self.behaviorism)
            + Communication.allCases.map(Self.communication)
            + Motivation.allCases.map(Self.motivation)
            + Engagement.allCases.map(Self.engagement)
            + Handling.allCases.map(Self.handling)
            + Shaping.allCases.map(Self.shaping)
            + Pressure.allCases.map(Self.pressure)
            + BehaviorModification.allCases.map(Self.behavior_modification)
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let slug = try container.decode(String.self)
        guard let value = Self(slug: slug) else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Unknown BehaviorConcept slug: \(slug)"
            )
        }
        self = value
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.slug)
    }
}

// Grouping convenience

public extension BehaviorConcept {
    static var grouped: [(taxonomy: Taxonomy, concepts: [BehaviorConcept])] {
        Taxonomy.allCases.map { tax in
            (tax, allCases.filter { $0.taxonomy == tax })
        }
    }
}
