import Primitives
import References

public enum CynologyTrainingSource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.training

    // MARK: - AppliedDogTraining

    case lindsay_handbook_applied_dog_behavior_and_training_volume_1
    case lindsay_handbook_applied_dog_behavior_and_training_volume_2
    case lindsay_handbook_applied_dog_behavior_and_training_volume_3
    case beaver_canine_behavior_insights_and_answers
    case black_murphy_payne_hall_notes_on_canine_internal_medicine

    // MARK: - TrainingMethods

    case vieira_de_castro_training_method_matter
    case casey_dogs_more_pessimistic_aversive_training
    case vieira_de_castro_barrett_de_sousa_olsson_carrots_versus_sticks_attachment
    case fernandes_olsson_vieira_de_castro_aversive_based_training_compromise_welfare
    case vieira_de_castro_araujo_fonseca_olsson_improving_dog_training_methods
    case blackwell_twells_seawright_casey_training_methods_behavior_problems
    case todd_barriers_adoption_humane_dog_training_methods
    case rooney_cowan_training_methods_owner_dog_interactions
    case arhant_bubna_littitz_bartels_futschik_troxler_smaller_larger_dogs_training_methods
    case kim_reward_based_training_program_pet_massage_sensitivity_obedience_problem_behaviors
    case kim_training_frequency_session_time_acquisition_dogs
    case deleeuw_williams_professional_dog_trainers_perspectives_training_methods
    case palmer_albohn_matsick_wynne_gender_norms_dominance_theory_aversive_training_methods

    // MARK: - BehaviorModification

    case shnookal_tepper_howell_bennett_counterconditioning_systematic_review
    case dinwoodie_zottola_dodman_professionals_behavior_modification_medication_aggression
    case shnookal_clay_howell_bennett_on_lead_aggressive_behaviours_advice
    case riemer_heritier_windschnurer_pratsch_arhant_affenzeller_fear_aggression_veterinary_setting

    // MARK: - TrainingHistory

    case moix_history_dog_training_modern_day_training_techniques
    case most_training_dogs_a_manual

    // MARK: - AdditionalDogBooks

    case reid_excel_erated_learning
    case pryor_dont_shoot_the_dog
    case garrido_common_myths_about_dogs_debunked

    public var data: ReferenceData {
        entry.data(
            tags: facets
        )
    }

    private var facets: ReferenceTagSet {
        switch self {
        case .lindsay_handbook_applied_dog_behavior_and_training_volume_1,
            .lindsay_handbook_applied_dog_behavior_and_training_volume_2,
            .lindsay_handbook_applied_dog_behavior_and_training_volume_3,
            .beaver_canine_behavior_insights_and_answers:
            return .cynology(
                .training_methods,
                .learning_theory,
                .canine_behavior
            )

        case .black_murphy_payne_hall_notes_on_canine_internal_medicine:
            return .cynology(
                .training_methods,
                .clinical_behavior,
                .pain_medical
            )

        case .vieira_de_castro_training_method_matter,
            .casey_dogs_more_pessimistic_aversive_training,
            .vieira_de_castro_barrett_de_sousa_olsson_carrots_versus_sticks_attachment,
            .fernandes_olsson_vieira_de_castro_aversive_based_training_compromise_welfare,
            .vieira_de_castro_araujo_fonseca_olsson_improving_dog_training_methods,
            .blackwell_twells_seawright_casey_training_methods_behavior_problems,
            .todd_barriers_adoption_humane_dog_training_methods,
            .rooney_cowan_training_methods_owner_dog_interactions,
            .arhant_bubna_littitz_bartels_futschik_troxler_smaller_larger_dogs_training_methods,
            .kim_reward_based_training_program_pet_massage_sensitivity_obedience_problem_behaviors,
            .kim_training_frequency_session_time_acquisition_dogs,
            .deleeuw_williams_professional_dog_trainers_perspectives_training_methods,
            .palmer_albohn_matsick_wynne_gender_norms_dominance_theory_aversive_training_methods:
            return .cynology(
                .training_methods,
                .reinforcement,
                .aversives,
                .welfare
            )

        case .shnookal_tepper_howell_bennett_counterconditioning_systematic_review:
            return .cynology(
                .behavior_modification,
                .classical_conditioning,
                .clinical_behavior
            )

        case .dinwoodie_zottola_dodman_professionals_behavior_modification_medication_aggression,
            .shnookal_clay_howell_bennett_on_lead_aggressive_behaviours_advice:
            return .cynology(
                .behavior_modification,
                .aggression,
                .reactivity,
                .clinical_behavior
            )

        case .riemer_heritier_windschnurer_pratsch_arhant_affenzeller_fear_aggression_veterinary_setting:
            return .cynology(
                .behavior_modification,
                .anxiety,
                .aggression,
                .clinical_behavior
            )

        case .moix_history_dog_training_modern_day_training_techniques,
            .most_training_dogs_a_manual:
            return .cynology(
                .training_methods
            )

        case .reid_excel_erated_learning,
            .pryor_dont_shoot_the_dog:
            return .cynology(
                .training_methods,
                .learning_theory,
                .reinforcement
            )

        case .garrido_common_myths_about_dogs_debunked:
            return .cynology(
                .training_methods,
                .canine_behavior
            )
        }
    }

    private var entry: Entry {
        switch self {
        case .lindsay_handbook_applied_dog_behavior_and_training_volume_1:
            return .init(
                title: "Handbook of Applied Dog Behavior and Training, Volume 1: Adaptation and Learning",
                url: "https://www.wiley.com/en-us/Handbook%2Bof%2BApplied%2BDog%2BBehavior%2Band%2BTraining%2C%2BVolume%2B1%2C%2BAdaptation%2Band%2BLearning-p-9780813807546",
                authors: "Steven R. Lindsay",
                date: "2000",
                kind: .book,
                channel: .scholarly
            )

        case .lindsay_handbook_applied_dog_behavior_and_training_volume_2:
            return .init(
                title: "Handbook of Applied Dog Behavior and Training, Volume 2: Etiology and Assessment of Behavior Problems",
                url: "https://www.wiley.com/-p-9780813828688",
                authors: "Steve Lindsay",
                date: "2001",
                kind: .book,
                channel: .scholarly
            )

        case .lindsay_handbook_applied_dog_behavior_and_training_volume_3:
            return .init(
                title: "Handbook of Applied Dog Behavior and Training, Volume 3: Procedures and Protocols",
                url: "https://www.wiley.com/en-sg/Handbook%2Bof%2BApplied%2BDog%2BBehavior%2Band%2BTraining%2C%2BVolume%2B3%2C%2BProcedures%2Band%2BProtocols-p-9780813807386",
                authors: "Steven R. Lindsay",
                date: "2005",
                kind: .book,
                channel: .scholarly
            )

        case .beaver_canine_behavior_insights_and_answers:
            return .init(
                title: "Canine Behavior: Insights and Answers",
                url: "https://shop.elsevier.com/books/canine-behavior-e-book/beaver/978-1-4377-0200-2",
                authors: "Bonnie V. Beaver",
                date: "2008-11-11",
                kind: .book,
                channel: .scholarly
            )

        case .black_murphy_payne_hall_notes_on_canine_internal_medicine:
            return .init(
                title: "Notes on Canine Internal Medicine",
                url: "https://doi.org/10.1002/9781119744801",
                authors: "Victoria L. Black, Kathryn F. Murphy, Jessie Rose Payne, Edward J. Hall",
                date: "2022-04-29",
                doi: "10.1002/9781119744801",
                kind: .book,
                channel: .scholarly
            )

        case .vieira_de_castro_training_method_matter:
            return .init(
                title: "Does Training Method Matter? Evidence for the Negative Impact of Aversive-Based Methods on Companion Dog Welfare",
                url: "https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0225023",
                authors: "Ana Catarina Vieira de Castro, I. Anna S. Olsson",
                date: "2020-12-16",
                doi: "10.1371/journal.pone.0225023"
            )

        case .casey_dogs_more_pessimistic_aversive_training:
            return .init(
                title: "Dogs Are More Pessimistic if Their Owners Use Two or More Aversive Training Methods",
                url: "https://doi.org/10.1038/s41598-021-97743-0",
                authors: "Rachel A. Casey et al.",
                date: "2021",
                doi: "10.1038/s41598-021-97743-0"
            )

        case .vieira_de_castro_barrett_de_sousa_olsson_carrots_versus_sticks_attachment:
            return .init(
                title: "Carrots Versus Sticks: The Relationship Between Training Methods and Dog–Owner Attachment",
                url: "https://doi.org/10.1016/j.applanim.2019.104831",
                authors: "Ana Catarina Vieira de Castro, Jennifer Barrett, Liliana de Sousa, I. Anna S. Olsson",
                date: "2019",
                doi: "10.1016/j.applanim.2019.104831"
            )

        case .fernandes_olsson_vieira_de_castro_aversive_based_training_compromise_welfare:
            return .init(
                title: "Do Aversive-Based Training Methods Actually Compromise Dog Welfare?: A Literature Review",
                url: "https://doi.org/10.1016/j.applanim.2017.07.001",
                authors: "Joana Guilherme Fernandes, I. Anna S. Olsson, Ana Catarina Vieira de Castro",
                date: "2017",
                doi: "10.1016/j.applanim.2017.07.001"
            )

        case .vieira_de_castro_araujo_fonseca_olsson_improving_dog_training_methods:
            return .init(
                title: "Improving Dog Training Methods: Efficacy and Efficiency of Reward and Mixed Training Methods",
                url: "https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0247321",
                authors: "Ana Catarina Vieira de Castro, Ângelo Araújo, André Fonseca, I. Anna S. Olsson",
                date: "2021-02-19",
                doi: "10.1371/journal.pone.0247321"
            )

        case .blackwell_twells_seawright_casey_training_methods_behavior_problems:
            return .init(
                title: "The Relationship Between Training Methods and the Occurrence of Behavior Problems, as Reported by Owners, in a Population of Domestic Dogs",
                url: "https://doi.org/10.1016/j.jveb.2007.10.008",
                authors: "Emily J. Blackwell, Caroline Twells, Anne Seawright, Rachel A. Casey",
                date: "2008",
                doi: "10.1016/j.jveb.2007.10.008"
            )

        case .todd_barriers_adoption_humane_dog_training_methods:
            return .init(
                title: "Barriers to the Adoption of Humane Dog Training Methods",
                url: "https://doi.org/10.1016/j.jveb.2018.03.004",
                authors: "Zazie Todd",
                date: "2018",
                doi: "10.1016/j.jveb.2018.03.004"
            )

        case .rooney_cowan_training_methods_owner_dog_interactions:
            return .init(
                title: "Training Methods and Owner–Dog Interactions: Links with Dog Behaviour and Learning Ability",
                url: "https://doi.org/10.1016/j.applanim.2011.03.007",
                authors: "Nicola J. Rooney, Sarah Cowan",
                date: "2011",
                doi: "10.1016/j.applanim.2011.03.007"
            )

        case .arhant_bubna_littitz_bartels_futschik_troxler_smaller_larger_dogs_training_methods:
            return .init(
                title: "Behaviour of Smaller and Larger Dogs: Effects of Training Methods, Inconsistency of Owner Behaviour and Level of Engagement in Activities with the Dog",
                url: "https://doi.org/10.1016/j.applanim.2010.01.003",
                authors: "Christine Arhant, Hermann Bubna-Littitz, Angela Bartels, Andreas Futschik, Josef Troxler",
                date: "2010",
                doi: "10.1016/j.applanim.2010.01.003"
            )

        case .kim_reward_based_training_program_pet_massage_sensitivity_obedience_problem_behaviors:
            return .init(
                title: "The Effects of Reward-Based Training Program and Pet Massage on Dog’s Sensitivity, Obedience Training Level and Problematic Behaviors Modification",
                url: "https://www.kojvs.org/journal/view.html?doi=10.7853/kjvs.2025.48.1.37",
                authors: "Beong Suk Kim",
                date: "2025",
                doi: "10.7853/kjvs.2025.48.1.37"
            )

        case .kim_training_frequency_session_time_acquisition_dogs:
            return .init(
                title: "A Review and Survey Study on the Training Frequency, Session and Time on Acquisition in Dogs",
                url: "https://www.kojvs.org/journal/view.html?doi=10.7853/kjvs.2025.48.3.181",
                authors: "Beong Suk Kim",
                date: "2025-09-26",
                doi: "10.7853/kjvs.2025.48.3.181"
            )

        case .deleeuw_williams_professional_dog_trainers_perspectives_training_methods:
            return .init(
                title: "Professional Dog Trainers’ Perspectives on Training Methods: Ethical and Evidentiary Insights",
                url: "https://www.frontiersin.org/journals/veterinary-science/articles/10.3389/fvets.2026.1744448/full",
                authors: "Jamie L. DeLeeuw, Todd J. Williams",
                date: "2026-02-25",
                doi: "10.3389/fvets.2026.1744448"
            )

        case .palmer_albohn_matsick_wynne_gender_norms_dominance_theory_aversive_training_methods:
            return .init(
                title: "Gender Norms, Dominance Theory, and the Endorsement of Aversive Training Methods With Pet Dogs",
                url: "https://www.tandfonline.com/doi/abs/10.1080/08927936.2026.2667006",
                authors: "Lindsay Palmer, Daniel N. Albohn, Jes L. Matsick, Clive D. L. Wynne",
                date: "2026-05",
                doi: "10.1080/08927936.2026.2667006"
            )

        case .shnookal_tepper_howell_bennett_counterconditioning_systematic_review:
            return .init(
                title: "Counterconditioning-Based Interventions for Companion Dog Behavioural Modification: A Systematic Review",
                url: "https://doi.org/10.1016/j.applanim.2024.106305",
                authors: "Joanna Shnookal, Deanna Tepper, Tiffani Howell, Pauleen Bennett",
                date: "2024",
                doi: "10.1016/j.applanim.2024.106305"
            )

        case .dinwoodie_zottola_dodman_professionals_behavior_modification_medication_aggression:
            return .init(
                title: "An Investigation Into the Effectiveness of Various Professionals and Behavior Modification Programs, With or Without Medication, for the Treatment of Canine Aggression",
                url: "https://doi.org/10.1016/j.jveb.2021.02.002",
                authors: "Ian R. Dinwoodie, Vivian Zottola, Nicholas H. Dodman",
                date: "2021",
                doi: "10.1016/j.jveb.2021.02.002"
            )

        case .shnookal_clay_howell_bennett_on_lead_aggressive_behaviours_advice:
            return .init(
                title: "Exploring Trainer Insights and Understanding of On-Lead Dog Aggressive Behaviours and Behavioural Modification Advice",
                url: "https://doi.org/10.1007/s44338-025-00119-1",
                authors: "Joanna Shnookal, Liam Clay, Tiffani Howell, Pauleen Bennett",
                date: "2025-08-27",
                doi: "10.1007/s44338-025-00119-1"
            )

        case .riemer_heritier_windschnurer_pratsch_arhant_affenzeller_fear_aggression_veterinary_setting:
            return .init(
                title: "A Review on Mitigating Fear and Aggression in Dogs and Cats in a Veterinary Setting",
                url: "https://doi.org/10.3390/ani11010158",
                authors: "Stefanie Riemer, Carmen Heritier, Ines Windschnurer, Lydia Pratsch, Christine Arhant, Nadja Affenzeller",
                date: "2021-01-12",
                doi: "10.3390/ani11010158"
            )

        case .moix_history_dog_training_modern_day_training_techniques:
            return .init(
                title: "The History of Dog Training and Its Importance to Modern Day Training Techniques",
                url: "https://scholarlycommons.obu.edu/honors_theses/924/",
                authors: "Marlaina Moix",
                date: "2024-04-17",
                kind: .thesis,
                channel: .scholarly
            )

        case .most_training_dogs_a_manual:
            return .init(
                title: "Training Dogs: A Manual",
                url: "https://www.dogwise.com/training-dogs-a-manual-reprint/",
                authors: "Konrad Most",
                date: "2014",
                kind: .book,
                channel: .scholarly
            )

        case .reid_excel_erated_learning:
            return .init(
                title: "Excel-Erated Learning: Explaining in Plain English How Dogs Learn and How Best to Teach Them",
                url: "https://www.dogwise.com/excel-erated-learning-explaining-how-dogs-learn-and-how-best-to-teach-them/",
                authors: "Pamela J. Reid",
                date: "1996",
                kind: .book,
                channel: .professional
            )

        case .pryor_dont_shoot_the_dog:
            return .init(
                title: "Don't Shoot the Dog!: The New Art of Teaching and Training",
                url: "https://www.amazon.com/Dont-Shoot-Dog-Teaching-Training/dp/0553380397",
                authors: "Karen Pryor",
                date: "1999",
                kind: .book,
                channel: .professional
            )

        case .garrido_common_myths_about_dogs_debunked:
            return .init(
                title: "Common Myths About Dogs (Debunked): For Dog Owners and Trainers",
                url: "https://www.amazon.com/Common-Myths-about-Dogs-Debunked/dp/1973484676",
                authors: "L. A. Garrido",
                date: "2017",
                kind: .book,
                channel: .professional
            )
        }
    }
}

private extension CynologyTrainingSource {
    struct Entry {
        let title: String
        let url: String
        let authors: String
        let date: String
        let doi: String?
        let kind: ReferenceKind
        let channel: ReferenceChannel

        init(
            title: String,
            url: String,
            authors: String,
            date: String,
            doi: String? = nil,
            kind: ReferenceKind = .article,
            channel: ReferenceChannel = .peer_reviewed
        ) {
            self.title = title
            self.url = url
            self.authors = authors
            self.date = date
            self.doi = doi
            self.kind = kind
            self.channel = channel
        }

        func data(
            tags: ReferenceTagSet
        ) -> ReferenceData {
            ReferenceData(
                title: title,
                location: location,
                source: source,
                authors: ReferenceAuthors(
                    original: authors
                ),
                dates: ReferenceDates(
                    published: try? PartialDate.iso8601(date)
                ),
                doi: doi,
                kind: kind,
                channel: channel,
                tags: tags
            )
        }

        private var location: ReferenceURL {
            if let doi {
                return ReferenceSource.doi.url(doi)
            }

            return ReferenceURL(url)
        }

        private var source: ReferenceSource? {
            doi == nil ? nil : .doi
        }
    }
}
