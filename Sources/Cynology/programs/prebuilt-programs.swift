import Foundation

/// Prebuilt training programs built from BehaviorFrame + PerformanceSpec.
///
/// Replaces the old PrebuiltModules + PrebuiltModuleComponents chain.
/// Same section structure, same visual output, but driven by the
/// new typed primitives.
public enum PrebuiltPrograms {

    // MARK: - Full programs

    public static let startersvaardigheden = TrainingProgram(
        title: "Startersvaardigheden",
        sections: [
            Sections.preparation(),
            Sections.communication(),
            Sections.motivation(),
            Sections.pressure(),
            Sections.shaping(),
            Sections.engagement(),
        ]
    )

    public static func hervorming(target: BehaviorProblem.Category) -> TrainingProgram {
        TrainingProgram(
            title: "Hervorming: \(target.label)",
            sections: [
                Sections.behaviorModification(),
            ]
        )
    }

    // MARK: - Sections

    public enum Sections {

        public static func preparation() -> ProgramSection {
            ProgramSection(
                title: "Voorbereiding",
                plans: [
                    FramePlan(
                        id: "prep_training_process",
                        frame: .custom(.init(id: "training_process", label: "Trainingsproces")),
                        concepts: [
                            .preparation(.training_process),
                            .preparation(.repetitions),
                            .preparation(.duration_and_performance_peaks),
                        ],
                        notes: "Richtlijnen voor een successvol trainingsproces",
                        allocation: .init(lowMinutes: 5, highMinutes: 15)
                    ),
                    FramePlan(
                        id: "prep_logbook",
                        frame: .custom(.init(id: "training_logbook", label: "Trainingslogboek")),
                        concepts: [
                            .preparation(.training_process),
                            .preparation(.logbook),
                        ],
                        notes: "Definitie van success, progressie bijhouden",
                        allocation: .init(lowMinutes: 5, highMinutes: 15),
                        placement: .exchangeable
                    ),
                ]
            )
        }

        public static func communication() -> ProgramSection {
            ProgramSection(
                title: "Voorspelbaarheid en communicatie",
                plans: [
                    // Elementary
                    FramePlan(
                        id: "comm_markers",
                        frame: .custom(.init(id: "markers_overshadowing", label: "Markeersignalen en overschaduwing")),
                        concepts: [
                            .communication(.markers),
                            .communication(.overshadowing),
                        ],
                        notes: "5 primaire communicatie-signalen voor effectieve communicatie (feedback)",
                        allocation: .init(lowMinutes: 15, highMinutes: 60)
                    ),
                    FramePlan(
                        id: "comm_thresholds",
                        frame: .custom(.init(id: "thresholds_priority", label: "Drempelwaardes en prioriteit van drijfveren")),
                        concepts: [
                            .behaviorism(.thresholds),
                        ],
                        notes: "Inachtname van drempelwaardes tot op waarneming, fixatie, en escalatie",
                        allocation: .init(lowMinutes: 5, highMinutes: 15)
                    ),

                    // Exchangeable
                    FramePlan(
                        id: "comm_classical",
                        frame: .custom(.init(id: "classical_conditioning", label: "Klassieke conditionering")),
                        concepts: [
                            .behaviorism(.classical_conditioning),
                        ],
                        notes: "Voorspellende [Prikkel] → [Gevolg] relatie",
                        allocation: .init(lowMinutes: 15, highMinutes: 30),
                        placement: .exchangeable
                    ),
                ]
            )
        }

        public static func motivation() -> ProgramSection {
            ProgramSection(
                title: "Motivatie: ontwikkeling hoge aantrekkingskracht en aandacht-manipulatie",
                plans: [
                    // Elementary
                    FramePlan(
                        id: "motiv_principles",
                        frame: .custom(.init(id: "motivation_principles", label: "Motivatie-principes")),
                        concepts: [
                            .engagement(.engagement),
                            .motivation(.movement),
                            .motivation(.reward_variability),
                            .motivation(.contrast),
                            .motivation(.reinforcement_rate),
                        ],
                        notes: "De kernprincipes van opbouw naar hoge motivatie / drijf",
                        allocation: .init(sessions: 1, 2)
                    ),
                    FramePlan(
                        id: "motiv_food_chase",
                        frame: .custom(.init(id: "food_chase_game", label: "Voedseldrijf: (voer)jaagspel")),
                        concepts: [
                            .engagement(.engagement),
                            .motivation(.movement),
                            .motivation(.reward_variability),
                            .motivation(.reinforcement_rate),
                            .motivation(.food_chase),
                            .motivation(.food_drive),
                        ],
                        notes: "Toepassing van motivatieprincipes, gelijktijdige belading (terminerend) beloningssignaal",
                        allocation: .init(sessions: 1, 3)
                    ),

                    // Exchangeable
                    FramePlan(
                        id: "motiv_play_tug",
                        frame: .custom(.init(id: "play_tug_dev", label: "Speeldrijf: trekspel-ontwikkeling")),
                        concepts: [
                            .engagement(.engagement),
                            .motivation(.tugging),
                            .motivation(.outing),
                        ],
                        notes: "Opbouw speeldrijf en afgifte (loslaten)",
                        allocation: .init(sessions: 1, 2),
                        placement: .exchangeable
                    ),
                    FramePlan(
                        id: "motiv_demo_chase",
                        frame: .custom(.init(id: "demo_chase", label: "Demonstratie: jaagspel")),
                        concepts: [
                            .motivation(.food_chase),
                        ],
                        notes: "Demonstratie voerjaagspel door trainer",
                        allocation: .init(lowMinutes: 5, highMinutes: 15),
                        placement: .exchangeable
                    ),
                    FramePlan(
                        id: "motiv_demo_tug",
                        frame: .custom(.init(id: "demo_tug", label: "Demonstratie: trekspel")),
                        concepts: [
                            .motivation(.tugging),
                            .motivation(.outing),
                        ],
                        notes: "Demonstratie trekspel door trainer",
                        allocation: .init(lowMinutes: 5, highMinutes: 15),
                        placement: .exchangeable
                    ),
                ]
            )
        }

        public static func pressure() -> ProgramSection {
            ProgramSection(
                title: "Drukwerk: vorming, sturing, management",
                plans: [
                    FramePlan(
                        id: "press_leash_opp",
                        frame: .tolerance(.equipment_transition),
                        spec: PerformanceSpec(
                            context: .init(
                                environments: [.quiet_field]
                            ),
                            criterion: .init(
                                maxEscalationEvents: 0
                            )
                        ),
                        concepts: [
                            .pressure(.pressure_work),
                            .pressure(.leash_habituation),
                            .pressure(.opposition_reflex),
                        ],
                        notes: "Lijndruk als sturend communicatiemiddel: habituatie en opposite-reflex buiging",
                        allocation: .init(sessions: 1, 3),
                        include: false
                    ),
                    FramePlan(
                        id: "press_body_spatial",
                        frame: .custom(.init(id: "body_spatial_pressure", label: "Lichaams- en ruimtelijke druk")),
                        concepts: [
                            .pressure(.pressure_work),
                        ],
                        notes: "Gebruik van lichaams- en ruimtelijke druk voor sturing en vormgeving",
                        allocation: .init(sessions: 1, 2),
                        placement: .exchangeable,
                        include: false
                    ),
                ]
            )
        }

        public static func shaping() -> ProgramSection {
            ProgramSection(
                title: "Vorming gedragskaders (gehoorzaamheid, toegepaste gedragssignalen)",
                plans: [
                    FramePlan(
                        id: "shape_obedience",
                        frame: .obedience(.sit),
                        concepts: [
                            .shaping(.obedience),
                            .shaping(.assisted_shaping),
                            .shaping(.luring),
                            .shaping(.lure_fading),
                            .shaping(.cue_transfer),
                        ],
                        notes: "Geassisteerde vorming van basis-gehoorzaamheid (zit, af, blijf, plaats)",
                        allocation: .init(sessions: 2, 6),
                        placement: .exchangeable,
                        include: false
                    ),
                ]
            )
        }

        public static func engagement() -> ProgramSection {
            ProgramSection(
                title: "Betrokkenheid: behoud hoge aantrekkingskracht rondom afleidingen en in diverse omstandigheden",
                plans: [
                    // Elementary
                    FramePlan(
                        id: "engage_foundation",
                        frame: .modification(.presentation_independence),
                        spec: PerformanceSpec(
                            context: .init(
                                distraction: .init(
                                    control: .controlled,
                                    movement: .static,
                                    nature: .environmental,
                                    intensity: .low
                                )
                            )
                        ),
                        concepts: [
                            .engagement(.engagement),
                            .engagement(.attention_retention),
                        ],
                        notes: "Vasthouden en herwinnen van aandacht, opbouw aandachtsbehoud",
                        allocation: .init(sessions: 2, 5)
                    ),

                    // Exchangeable
                    FramePlan(
                        id: "engage_context_signals",
                        frame: .custom(.init(id: "context_signals", label: "Contextsignalen: start en stop")),
                        concepts: [
                            .management(.management),
                            .engagement(.engagement),
                        ],
                        notes: "Opzet trainingscontext door signalen voor begin en eind",
                        allocation: .init(lowMinutes: 5, highMinutes: 15),
                        placement: .exchangeable
                    ),
                ]
            )
        }

        public static func behaviorModification() -> ProgramSection {
            ProgramSection(
                title: "Herleiding en controle onder prikkelcontext",
                plans: [
                    // Elementary
                    FramePlan(
                        id: "bmod_redirect_attention",
                        frame: .modification(.turn_away),
                        spec: PerformanceSpec(
                            context: .init(
                                distraction: .init(
                                    control: .controlled,
                                    movement: .static,
                                    nature: .social,
                                    intensity: .low
                                ),
                                threshold: .init(position: .below)
                            ),
                            criterion: .init(
                                successRate: .proportion(successes: 3, of: 5),
                                promptBudget: .init(max: 2)
                            )
                        ),
                        concepts: [
                            .behavior_modification(.redirection),
                            .engagement(.engagement),
                            .engagement(.distraction_work),
                        ],
                        notes: "Herleiding van aandacht bij lage prikkeldruk, onder drempelwaarde",
                        allocation: .init(sessions: 1, 3)
                    ),
                    FramePlan(
                        id: "bmod_redirect_arousal",
                        frame: .modification(.arousal_regulation),
                        spec: PerformanceSpec(
                            context: .init(
                                distraction: .init(
                                    control: .controlled,
                                    movement: .dynamic,
                                    nature: .social,
                                    intensity: .medium
                                ),
                                threshold: .init(position: .near_or_at)
                            ),
                            criterion: .init(
                                recovery: .init(maxSeconds: 10)
                            )
                        ),
                        concepts: [
                            .behavior_modification(.redirection),
                            .behavior_modification(.arousal_management),
                            .engagement(.engagement),
                        ],
                        notes: "Herleiding bij stijgende opwinding, nabij drempelwaarde",
                        allocation: .init(sessions: 2, 5)
                    ),
                    FramePlan(
                        id: "bmod_redirect_pressure",
                        frame: .modification(.turn_away),
                        spec: PerformanceSpec(
                            context: .init(
                                distraction: .init(
                                    control: .uncontrolled,
                                    movement: .dynamic,
                                    nature: .trigger,
                                    intensity: .medium
                                ),
                                threshold: .init(position: .near_or_at)
                            ),
                            criterion: .init(
                                successRate: .proportion(successes: 4, of: 5),
                                maxEscalationEvents: 0
                            )
                        ),
                        concepts: [
                            .behavior_modification(.redirection),
                            .pressure(.pressure_work),
                            .engagement(.engagement),
                        ],
                        notes: "Herleiding met eventuele drukondersteuning bij hogere prikkeldruk",
                        allocation: .init(sessions: 2, 5)
                    ),

                    // Exchangeable
                    FramePlan(
                        id: "bmod_premack",
                        frame: .custom(.init(id: "premack_discharge", label: "Premack: energie-afvoer")),
                        concepts: [
                            .behaviorism(.premack_principle),
                        ],
                        notes: "Premack-principe: gecontroleerde afvoer van energie als bekrachtiger",
                        allocation: .init(sessions: 1, 2),
                        placement: .exchangeable
                    ),
                    FramePlan(
                        id: "bmod_capping",
                        frame: .modification(.impulse_control),
                        concepts: [
                            .shaping(.capping),
                            .behavior_modification(.arousal_management),
                        ],
                        notes: "Capping: overgang van dynamisch naar statisch (impulsbeheersing)",
                        allocation: .init(sessions: 1, 3),
                        placement: .exchangeable
                    ),
                    FramePlan(
                        id: "bmod_dynamic_static",
                        frame: .modification(.arousal_regulation),
                        concepts: [
                            .behavior_modification(.redirection),
                            .shaping(.capping),
                            .engagement(.engagement),
                        ],
                        notes: "Afwisseling dynamische en statische oefeningen onder prikkelcontext",
                        allocation: .init(sessions: 2, 5),
                        placement: .exchangeable
                    ),
                ]
            )
        }
    }
}
