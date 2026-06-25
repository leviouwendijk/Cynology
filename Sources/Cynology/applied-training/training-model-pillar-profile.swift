import Foundation

public struct TrainingModelPillarProfile: Sendable, Codable, Hashable, Identifiable {
    public var id: String {
        pillar.rawValue
    }

    public let pillar: TrainingModelPillar

    public var layer: TrainingModelLayer {
        pillar.layer
    }

    public var label: String {
        pillar.label
    }

    public let summary: String
    public let definition: String
    public let function: String

    public let concepts: [BehaviorConcept]
    public let frames: [BehaviorFrame]
    public let aliases: [String]

    public init(
        pillar: TrainingModelPillar,
        summary: String,
        definition: String,
        function: String,
        concepts: [BehaviorConcept] = [],
        frames: [BehaviorFrame] = [],
        aliases: [String] = []
    ) {
        self.pillar = pillar
        self.summary = summary
        self.definition = definition
        self.function = function
        self.concepts = concepts
        self.frames = frames
        self.aliases = aliases
    }
}

public extension TrainingModelPillarProfile {
    static func profile(
        for pillar: TrainingModelPillar
    ) -> TrainingModelPillarProfile {
        switch pillar {
        case .restriction:
            return .init(
                pillar: pillar,
                summary: "Indirecte maatregelen die gedrag beïnvloeden door gelegenheid, context en uitvoerbaarheid te sturen.",
                definition: "Restrictie beperkt tijdelijk welke keuzes beschikbaar zijn, zodat ongewenste herhaling wordt voorkomen en gewenste opties waarschijnlijker worden.",
                function: "Voorkomt probleemrepetitie, verlaagt moeilijkheid en schept voorwaarden voor vorming.",
                concepts: [
                    .restriction(.planning),
                    .restriction(.setting),
                    .restriction(.threshold_work),
                    .restriction(.emergency_handling)
                ],
                aliases: [
                    "management",
                    "afkadering",
                    "omgeving sturen"
                ]
            )

        case .motivation:
            return .init(
                pillar: pillar,
                summary: "Ontwikkeling van beheersbare aantrekkingskracht om gedrag te vormen en te herleiden.",
                definition: "Motivatie maakt waarde beschikbaar binnen samenwerking, zodat de hond richting gekozen uitkomsten wil bewegen.",
                function: "Bouwt voedsel-, spel-, bewegings- en toegangswaarde op als bron voor training.",
                concepts: [
                    .motivation(.food_drive),
                    .motivation(.play_drive),
                    .motivation(.chase),
                    .motivation(.food_chase),
                    .motivation(.movement),
                    .motivation(.reward_variability),
                    .motivation(.reinforcement_rate)
                ],
                aliases: [
                    "aantrekkingskracht",
                    "beloningswaarde",
                    "drijf"
                ]
            )

        case .engagement:
            return .init(
                pillar: pillar,
                summary: "Aandacht en aantrekkingskracht behouden onder verschillende omstandigheden.",
                definition: "Betrokkenheid is de brug tussen motivatie en bruikbaarheid in context.",
                function: "Verplaatst motivatie naar afleiding, duur, omgeving en gedragsketens.",
                concepts: [
                    .engagement(.engagement),
                    .engagement(.distraction_work),
                    .engagement(.social_distraction),
                    .engagement(.attention_retention)
                ],
                aliases: [
                    "focus",
                    "aandacht",
                    "werkbaarheid"
                ]
            )

        case .communication:
            return .init(
                pillar: pillar,
                summary: "Duidelijke feedback en voorspelbare bedoelingen tussen geleider en hond.",
                definition: "Communicatie maakt herkenbaar welke keuze, prikkel of overgang betekenis krijgt.",
                function: "Maakt markeren, differentiëren, begrenzen en herhalen scherper.",
                concepts: [
                    .communication(.markers),
                    .communication(.overshadowing),
                    .communication(.signal_discrimination)
                ],
                aliases: [
                    "markeersignalen",
                    "gedragssignalen",
                    "feedback"
                ]
            )

        case .pressure:
            return .init(
                pillar: pillar,
                summary: "Druk begrijpelijk maken als richtinggevend en begrenzend communicatiemiddel.",
                definition: "Drukbegrip betekent dat de hond leert hoe druk ontstaat, vermindert en stopt.",
                function: "Maakt lijn-, lichaams- en ruimtelijke druk leerbaar in plaats van conflictueel.",
                concepts: [
                    .pressure(.pressure_work),
                    .pressure(.leash_habituation),
                    .pressure(.opposition_reflex)
                ],
                aliases: [
                    "druk",
                    "spanning",
                    "release"
                ]
            )

        case .frames:
            return .init(
                pillar: pillar,
                summary: "Gedragskaders: de concrete opties, vormen of doelresponsen die worden opgebouwd.",
                definition: "Een kader beschrijft welk gedrag beschikbaar moet worden: positie, beweging, respons, tolerantie of taak.",
                function: "Geeft training een concreet doelgedrag of doelpatroon.",
                concepts: [
                    .shaping(.obedience),
                    .shaping(.assisted_shaping),
                    .shaping(.luring),
                    .shaping(.free_shaping),
                    .shaping(.capping)
                ],
                frames: [
                    .modification(.turn_away),
                    .obedience(.recall),
                    .obedience(.place),
                    .obedience(.loose_leash),
                    .modification(.settle)
                ],
                aliases: [
                    "gedragskaders",
                    "doelgedrag",
                    "respons"
                ]
            )

        case .association:
            return .init(
                pillar: pillar,
                summary: "De voorspellende en emotionele betekenis van prikkels vormen.",
                definition: "Associatievorming verandert wat een prikkel aankondigt, hoe sterk zij binnenkomt en welke affectieve lading zij krijgt.",
                function: "Draagt habituatie, neutralisatie, counter-conditioning, desensitisatie, exposure en socialisatie.",
                concepts: [
                    .behaviorism(.classical_conditioning),
                    .behaviorism(.counter_conditioning),
                    .behaviorism(.valence),
                    .behavior_modification(.habituation),
                    .behavior_modification(.desensitization),
                    .behavior_modification(.re_association),
                    .behavior_modification(.arousal_management)
                ],
                frames: [
                    .modification(.stimulus_re_association),
                    .tolerance(.environmental_confidence),
                    .tolerance(.equipment_introduction)
                ],
                aliases: [
                    "affect",
                    "valentie",
                    "socialisatie",
                    "exposure",
                    "neutralisatie",
                    "counter-conditioning"
                ]
            )

        case .signaling:
            return .init(
                pillar: pillar,
                summary: "Gedrag, context en betekenis onder heldere signalen brengen.",
                definition: "Signaleerbaarheid bepaalt of gevormd gedrag of gevormde betekenis herkenbaar oproepbaar, begrensbaar of voorspelbaar wordt.",
                function: "Bindt gedrag, markers, contextsignalen, triggers en cue-respons patronen.",
                concepts: [
                    .communication(.markers),
                    .communication(.signal_discrimination),
                    .shaping(.cue_transfer),
                    .behaviorism(.salience)
                ],
                aliases: [
                    "signaal-binding",
                    "cue transfer",
                    "stimuluscontrole",
                    "gedragssignalen",
                    "contextsignalen"
                ]
            )

        case .difficulty:
            return .init(
                pillar: pillar,
                summary: "De belasting waaronder gedrag moet blijven functioneren.",
                definition: "Moeilijkheidsgraad beschrijft hoe zwaar een oefening wordt door duur, afstand, afleiding, drempelpositie en context.",
                function: "Maakt progressie meetbaar en voorkomt dat te veel variabelen tegelijk worden verhoogd.",
                concepts: [
                    .preparation(.duration_and_performance_peaks),
                    .assessment(.threshold_profiling),
                    .engagement(.distraction_work)
                ],
                aliases: [
                    "duur",
                    "afstand",
                    "afleiding",
                    "aanhouding",
                    "drempelwaarde"
                ]
            )

        case .reliability:
            return .init(
                pillar: pillar,
                summary: "De mate waarin gedrag voorspelbaar blijft bij minder hulp en sterkere consequentiestructuur.",
                definition: "Berekenbaarheid toetst of gedrag blijft bestaan wanneer beloning, druk, vrijgave, correctie of ondersteuning verandert.",
                function: "Beproeft onderhoud, herstel, onafhankelijkheid, beloningsafbouw, release en bekende-keuze consequenties.",
                concepts: [
                    .motivation(.reinforcement_thinning),
                    .motivation(.presentation_fading),
                    .motivation(.reinforcement_rate),
                    .pressure(.pressure_work),
                    .pressure(.correction)
                ],
                frames: [
                    .modification(.presentation_independence),
                    .modification(.impulse_control)
                ],
                aliases: [
                    "betrouwbaarheid",
                    "onderhoud",
                    "beloningsschema",
                    "correctie",
                    "consequentiestructuur"
                ]
            )
        }
    }
}
