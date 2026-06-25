import References

public enum CynologyBibliographySections {
    public static let docsDefault: [ReferenceTagSection] = [
        ReferenceTagSection(
            id: "clinical_behavior",
            title: "Klinische gedragsgeneeskunde",
            eyebrow: "Klinisch",
            caption: "Bronnen over klinische gedragsgeneeskunde, gedragsdiagnostiek, behandelplanning en veterinaire gedragscontext.",
            include: .cynology(
                .clinical_behavior,
                .behavior_modification,
                .problem_behavior
            ),
            match: .any,
            sort: .date_newest
        ),

        ReferenceTagSection(
            id: "learning_and_conditioning",
            title: "Leren en conditionering",
            eyebrow: "Leerprincipes",
            caption: "Bronnen over klassieke conditionering, operante conditionering, bekrachtiging, straf, keuzeprocessen, gewoontevorming en leerbaarheid.",
            include: .cynology(
                .learning_theory,
                .classical_conditioning,
                .operant_conditioning,
                .reinforcement,
                .punishment,
                .matching_law,
                .action_habit_control
            ),
            match: .any,
            sort: .title_ascending
        ),

        ReferenceTagSection(
            id: "training_methods",
            title: "Trainingsmethoden",
            eyebrow: "Training",
            caption: "Bronnen over praktische trainingsmethoden, beloningsgerichte training, aversieve hulpmiddelen, gedragsmodificatie en trainingseffecten.",
            include: .cynology(
                .training_methods,
                .behavior_modification,
                .reinforcement,
                .aversives,
                .electronic_training_devices
            ),
            match: .any,
            sort: .date_newest
        ),

        ReferenceTagSection(
            id: "welfare_stress_medical",
            title: "Welzijn, stress en medische factoren",
            eyebrow: "Welzijn",
            caption: "Bronnen over welzijn, stress, fysiologie, pijn, medische gedragsfactoren, controleerbaarheid, agency en aversieve belasting.",
            include: .cynology(
                .welfare,
                .stress,
                .physiology,
                .pain_medical,
                .aversives,
                .resilience
            ),
            match: .any,
            sort: .date_newest
        ),

        ReferenceTagSection(
            id: "communication_social_behavior",
            title: "Communicatie en sociaal gedrag",
            eyebrow: "Gedrag",
            caption: "Bronnen over hondengedrag, communicatie, lichaamstaal, socialisatie, spel, dominantie en de mens-hondrelatie.",
            include: .cynology(
                .communication,
                .canine_body_language,
                .socialization,
                .canine_behavior,
                .play,
                .dominance,
                .human_dog_relationship
            ),
            match: .any,
            sort: .title_ascending
        ),

        ReferenceTagSection(
            id: "reactivity_aggression_anxiety",
            title: "Reactiviteit, agressie en angst",
            eyebrow: "Vraagstukken",
            caption: "Bronnen over reactiviteit, agressie, angst, separatiegerelateerde stress, geluidsgevoeligheid en klinische probleemclusters.",
            include: .cynology(
                .reactivity,
                .aggression,
                .anxiety,
                .separation_distress,
                .noise_sensitivity,
                .problem_behavior
            ),
            match: .any,
            sort: .date_newest
        ),

        ReferenceTagSection(
            id: "nutrition",
            title: "Voeding",
            eyebrow: "Voeding",
            caption: "Bronnen over hondenvoeding, nutritionele adequaatheid, dieetkeuzes en gezondheidsuitkomsten.",
            include: .cynology(
                .diet
            ),
            sort: .date_newest
        ),

        ReferenceTagSection(
            id: "working_dogs",
            title: "Werkhonden",
            eyebrow: "Toepassing",
            caption: "Bronnen over werkhonden, taakgedrag, selectie, training, prestaties en inzetbaarheid.",
            include: .cynology(
                .working_dogs
            ),
            sort: .title_ascending
        ),

        ReferenceTagSection(
            id: "methodology_assessment",
            title: "Methode, assessment en meetinstrumenten",
            eyebrow: "Methodologie",
            caption: "Bronnen over gedragsassessment, temperament, vragenlijsten, meetinstrumenten, onderzoeksmethode en interpretatie van gedragsdata.",
            include: .cynology(
                .methodology,
                .assessment,
                .temperament,
                .impulsivity
            ),
            match: .any,
            sort: .title_ascending
        ),
    ]
}
