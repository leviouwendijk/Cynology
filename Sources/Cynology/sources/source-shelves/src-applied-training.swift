import Primitives
import References

public extension CynologySources {
    enum AppliedTraining: String, CaseIterable, Codable, CynologySourceProviding {
        public static let namespace = "cynology.applied_training"

        // MARK: - AppliedDogTraining

        // old: CynologyTrainingSource.lindsay_handbook_applied_dog_behavior_and_training_volume_1
        case adaptation_and_learning

        // old: CynologyTrainingSource.lindsay_handbook_applied_dog_behavior_and_training_volume_2
        case etiology_and_assessment

        // old: CynologyTrainingSource.lindsay_handbook_applied_dog_behavior_and_training_volume_3
        case procedures_and_protocols

        // old: CynologyTrainingSource.beaver_canine_behavior_insights_and_answers
        case canine_behavior_insights_and_answers

        // MARK: - TrainingMethods

        // old: CynologyTrainingSource.vieira_de_castro_training_method_matter
        case does_training_method_matter

        // old: CynologyTrainingSource.casey_dogs_more_pessimistic_aversive_training
        case dogs_more_pessimistic

        // old: CynologyTrainingSource.vieira_de_castro_barrett_de_sousa_olsson_carrots_versus_sticks_attachment
        case carrots_versus_sticks

        // old: CynologyTrainingSource.fernandes_olsson_vieira_de_castro_aversive_based_training_compromise_welfare
        case aversive_based_training_welfare

        // old: CynologyTrainingSource.vieira_de_castro_araujo_fonseca_olsson_improving_dog_training_methods
        case improving_dog_training_methods

        // old: CynologyTrainingSource.blackwell_twells_seawright_casey_training_methods_behavior_problems
        case training_methods_behavior_problems

        // old: CynologyTrainingSource.todd_barriers_adoption_humane_dog_training_methods
        case barriers_to_humane_training

        // old: CynologyTrainingSource.rooney_cowan_training_methods_owner_dog_interactions
        case training_methods_owner_dog_interactions

        // old: CynologyTrainingSource.arhant_bubna_littitz_bartels_futschik_troxler_smaller_larger_dogs_training_methods
        case behaviour_smaller_larger_dogs

        // old: CynologyTrainingSource.kim_reward_based_training_program_pet_massage_sensitivity_obedience_problem_behaviors
        case reward_based_training_pet_massage

        // old: CynologyTrainingSource.kim_training_frequency_session_time_acquisition_dogs
        case training_frequency_session_time

        // old: CynologyTrainingSource.deleeuw_williams_professional_dog_trainers_perspectives_training_methods
        case professional_trainers_perspectives

        // old: CynologyTrainingSource.palmer_albohn_matsick_wynne_gender_norms_dominance_theory_aversive_training_methods
        case gender_norms_dominance_aversive_methods

        case leash_equipment_pulling_welfare

        case predatory_behaviour_greyhounds_expert_opinion
        case herding_behavior_reinforcement_punishment

        // MARK: - OperantChoiceAndScentwork

        case default_variant_behaviour_operant_training
        case scentwork_traditional_training_welfare_bond

        // MARK: - BehaviorModification

        // old: CynologyTrainingSource.shnookal_tepper_howell_bennett_counterconditioning_systematic_review
        case counterconditioning_interventions_review

        // old: CynologyTrainingSource.dinwoodie_zottola_dodman_professionals_behavior_modification_medication_aggression
        case behavior_modification_medication_aggression

        // old: CynologyTrainingSource.shnookal_clay_howell_bennett_on_lead_aggressive_behaviours_advice
        case on_lead_aggressive_behaviours_advice

        // old: CynologyTrainingSource.riemer_heritier_windschnurer_pratsch_arhant_affenzeller_fear_aggression_veterinary_setting
        case fear_aggression_veterinary_setting

        // MARK: - TrainingHistory

        // old: CynologyTrainingSource.moix_history_dog_training_modern_day_training_techniques
        case history_of_dog_training

        // old: CynologyTrainingSource.most_training_dogs_a_manual
        case training_dogs_a_manual

        // MARK: - AdditionalDogBooks

        // old: CynologyTrainingSource.reid_excel_erated_learning
        case excel_erated_learning

        // old: CynologyTrainingSource.pryor_dont_shoot_the_dog
        case dont_shoot_the_dog

        // old: CynologyTrainingSource.garrido_common_myths_about_dogs_debunked
        case common_myths_about_dogs

        // MARK: - BehaviorAssessmentTemperament

        // old: CynologyMethodologySource.asher_blythe_roberts_toothill_craigon_evans_green_england_guide_dog_puppy_test
        case standardized_behavior_test_guide_dog_puppies

        // old: CynologyMethodologySource.foyer_bjallerhag_wilsson_jensen_first_year_life_later_temperament_test
        case first_year_life_later_temperament_test

        // old: CynologyMethodologySource.hsu_serpell_cbarq_development_validation_behavior_temperament_traits
        case cbarq_development_validation

        // old: CynologyMethodologySource.wilkins_evans_park_fitzpatrick_creevy_ruple_shortened_cbarq_validation
        case shortened_cbarq_validation

        // old: CynologyMethodologySource.hare_essler_otto_ebbecke_serpell_modified_cbarq_working_dogs
        case modified_cbarq_working_dogs

        // old: CynologyMethodologySource.hilby_rendahl_russenberger_zimmermann_mickelson_mccue_temporal_consistency_guide_dogs
        case temporal_consistency_guide_dog_puppies

        // old: CynologyMethodologySource.mcgreevy_georgevsky_carrasco_valenzuela_duffy_serpell_behavior_covaries_height_bodyweight_skull_shape
        case dog_behavior_covaries_morphology

        // old: CynologyMethodologySource.riemer_mills_wright_impulsive_for_life_dogs
        case impulsive_for_life

        case dias_development_validation
        case behavioural_physiological_correlates_impulsivity
        case impulsivity_behaviour_problems_rst

        case spatial_discounting_impulsivity

        // MARK: - WorkingDogs

        // old: CynologyWorkingDogSource.hall_johnston_bray_otto_maclean_udell_working_dog_training_twenty_first_century
        case working_dog_training_twenty_first_century

        // old: CynologyWorkingDogSource.bray_otto_udell_hall_johnston_maclean_selection_performance_working_dogs
        case selection_performance_working_dogs

        // old: CynologyWorkingDogSource.cobb_otto_fine_animal_welfare_science_working_dogs
        case animal_welfare_science_working_dogs

        // old: CynologyWorkingDogSource.lazarowski_rogers_collins_pisano_krichbaum_marker_training_detection_dogs
        case detection_dog_training_protocol

        // old: CynologyWorkingDogSource.smith_krichbaum_rogers_waggoner_katz_lazarowski_training_schedules_odor_detection
        case odor_detection_training_schedules

        // old: CynologyWorkingDogSource.fratt_hamre_burak_mutoro_nootbaar_wykstra_differential_reinforcement_extinction_cheetah_scat_detection_dogs
        case cheetah_scat_detection_accuracy

        case exercise_intensity_duration_odor_detection_performance

        // MARK: - WorkingDogBooks

        // old: CynologyWorkingDogSource.raiser_der_schutzhund_the_protection_dog
        case der_schutzhund

        // old: CynologyWorkingDogSource.gerritsen_haak_k9_personal_protection
        case k9_personal_protection

        // old: CynologyWorkingDogSource.gerritsen_haak_k9_schutzhund_training
        case k9_schutzhund_training

        public var data: ReferenceData {
            switch self {
            case .adaptation_and_learning:
                return CynologySources.entry(
                    title: "Handbook of Applied Dog Behavior and Training, Volume 1: Adaptation and Learning",
                    location: CynologySources.web_location(
                        "https://www.wiley.com/en-us/Handbook%2Bof%2BApplied%2BDog%2BBehavior%2Band%2BTraining%2C%2BVolume%2B1%2C%2BAdaptation%2Band%2BLearning-p-9780813807546"
                    ),
                    authors: CynologySources.authors(
                        "Steven R. Lindsay"
                    ),
                    date: CynologySources.published(
                        "2000"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .etiology_and_assessment:
                return CynologySources.entry(
                    title: "Handbook of Applied Dog Behavior and Training, Volume 2: Etiology and Assessment of Behavior Problems",
                    location: CynologySources.web_location(
                        "https://www.wiley.com/-p-9780813828688"
                    ),
                    authors: CynologySources.authors(
                        "Steve Lindsay"
                    ),
                    date: CynologySources.published(
                        "2001"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .procedures_and_protocols:
                return CynologySources.entry(
                    title: "Handbook of Applied Dog Behavior and Training, Volume 3: Procedures and Protocols",
                    location: CynologySources.web_location(
                        "https://www.wiley.com/en-sg/Handbook%2Bof%2BApplied%2BDog%2BBehavior%2Band%2BTraining%2C%2BVolume%2B3%2C%2BProcedures%2Band%2BProtocols-p-9780813807386"
                    ),
                    authors: CynologySources.authors(
                        "Steven R. Lindsay"
                    ),
                    date: CynologySources.published(
                        "2005"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .canine_behavior_insights_and_answers:
                return CynologySources.entry(
                    title: "Canine Behavior: Insights and Answers",
                    location: CynologySources.web_location(
                        "https://shop.elsevier.com/books/canine-behavior-e-book/beaver/978-1-4377-0200-2"
                    ),
                    authors: CynologySources.authors(
                        "Bonnie V. Beaver"
                    ),
                    date: CynologySources.published(
                        "2008-11-11"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .does_training_method_matter:
                return CynologySources.entry(
                    title: "Does Training Method Matter? Evidence for the Negative Impact of Aversive-Based Methods on Companion Dog Welfare",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0225023"
                    ),
                    authors: CynologySources.authors(
                        "Ana Catarina Vieira de Castro, I. Anna S. Olsson"
                    ),
                    date: CynologySources.published(
                        "2020-12-16"
                    ),
                    doi: "10.1371/journal.pone.0225023",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dogs_more_pessimistic:
                return CynologySources.entry(
                    title: "Dogs Are More Pessimistic if Their Owners Use Two or More Aversive Training Methods",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-021-97743-0"
                    ),
                    authors: CynologySources.authors(
                        "Rachel A. Casey et al."
                    ),
                    date: CynologySources.published(
                        "2021"
                    ),
                    doi: "10.1038/s41598-021-97743-0",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .carrots_versus_sticks:
                return CynologySources.entry(
                    title: "Carrots Versus Sticks: The Relationship Between Training Methods and Dog–Owner Attachment",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2019.104831"
                    ),
                    authors: CynologySources.authors(
                        "Ana Catarina Vieira de Castro, Jennifer Barrett, Liliana de Sousa, I. Anna S. Olsson"
                    ),
                    date: CynologySources.published(
                        "2019"
                    ),
                    doi: "10.1016/j.applanim.2019.104831",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .aversive_based_training_welfare:
                return CynologySources.entry(
                    title: "Do Aversive-Based Training Methods Actually Compromise Dog Welfare?: A Literature Review",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2017.07.001"
                    ),
                    authors: CynologySources.authors(
                        "Joana Guilherme Fernandes, I. Anna S. Olsson, Ana Catarina Vieira de Castro"
                    ),
                    date: CynologySources.published(
                        "2017"
                    ),
                    doi: "10.1016/j.applanim.2017.07.001",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .improving_dog_training_methods:
                return CynologySources.entry(
                    title: "Improving Dog Training Methods: Efficacy and Efficiency of Reward and Mixed Training Methods",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0247321"
                    ),
                    authors: CynologySources.authors(
                        "Ana Catarina Vieira de Castro, Ângelo Araújo, André Fonseca, I. Anna S. Olsson"
                    ),
                    date: CynologySources.published(
                        "2021-02-19"
                    ),
                    doi: "10.1371/journal.pone.0247321",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .training_methods_behavior_problems:
                return CynologySources.entry(
                    title: "The Relationship Between Training Methods and the Occurrence of Behavior Problems, as Reported by Owners, in a Population of Domestic Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2007.10.008"
                    ),
                    authors: CynologySources.authors(
                        "Emily J. Blackwell, Caroline Twells, Anne Seawright, Rachel A. Casey"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    doi: "10.1016/j.jveb.2007.10.008",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .barriers_to_humane_training:
                return CynologySources.entry(
                    title: "Barriers to the Adoption of Humane Dog Training Methods",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2018.03.004"
                    ),
                    authors: CynologySources.authors(
                        "Zazie Todd"
                    ),
                    date: CynologySources.published(
                        "2018"
                    ),
                    doi: "10.1016/j.jveb.2018.03.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .training_methods_owner_dog_interactions:
                return CynologySources.entry(
                    title: "Training Methods and Owner–Dog Interactions: Links with Dog Behaviour and Learning Ability",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2011.03.007"
                    ),
                    authors: CynologySources.authors(
                        "Nicola J. Rooney, Sarah Cowan"
                    ),
                    date: CynologySources.published(
                        "2011"
                    ),
                    doi: "10.1016/j.applanim.2011.03.007",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .behaviour_smaller_larger_dogs:
                return CynologySources.entry(
                    title: "Behaviour of Smaller and Larger Dogs: Effects of Training Methods, Inconsistency of Owner Behaviour and Level of Engagement in Activities with the Dog",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2010.01.003"
                    ),
                    authors: CynologySources.authors(
                        "Christine Arhant, Hermann Bubna-Littitz, Angela Bartels, Andreas Futschik, Josef Troxler"
                    ),
                    date: CynologySources.published(
                        "2010"
                    ),
                    doi: "10.1016/j.applanim.2010.01.003",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .reward_based_training_pet_massage:
                return CynologySources.entry(
                    title: "The Effects of Reward-Based Training Program and Pet Massage on Dog’s Sensitivity, Obedience Training Level and Problematic Behaviors Modification",
                    location: CynologySources.doi_location(
                        "10.7853/kjvs.2025.48.1.37"
                    ),
                    authors: CynologySources.authors(
                        "Beong Suk Kim"
                    ),
                    date: CynologySources.published(
                        "2025"
                    ),
                    doi: "10.7853/kjvs.2025.48.1.37",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .training_frequency_session_time:
                return CynologySources.entry(
                    title: "A Review and Survey Study on the Training Frequency, Session and Time on Acquisition in Dogs",
                    location: CynologySources.doi_location(
                        "10.7853/kjvs.2025.48.3.181"
                    ),
                    authors: CynologySources.authors(
                        "Beong Suk Kim"
                    ),
                    date: CynologySources.published(
                        "2025-09-26"
                    ),
                    doi: "10.7853/kjvs.2025.48.3.181",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .professional_trainers_perspectives:
                return CynologySources.entry(
                    title: "Professional Dog Trainers’ Perspectives on Training Methods: Ethical and Evidentiary Insights",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2026.1744448"
                    ),
                    authors: CynologySources.authors(
                        "Jamie L. DeLeeuw, Todd J. Williams"
                    ),
                    date: CynologySources.published(
                        "2026-02-25"
                    ),
                    doi: "10.3389/fvets.2026.1744448",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .gender_norms_dominance_aversive_methods:
                return CynologySources.entry(
                    title: "Gender Norms, Dominance Theory, and the Endorsement of Aversive Training Methods With Pet Dogs",
                    location: CynologySources.doi_location(
                        "10.1080/08927936.2026.2667006"
                    ),
                    authors: CynologySources.authors(
                        "Lindsay Palmer, Daniel N. Albohn, Jes L. Matsick, Clive D. L. Wynne"
                    ),
                    date: CynologySources.published(
                        "2026-05"
                    ),
                    doi: "10.1080/08927936.2026.2667006",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .leash_equipment_pulling_welfare:
                return CynologySources.entry(
                    title: "Comparing Efficacy in Reducing Pulling and Welfare Impacts of Four Types of Leash Walking Equipment",
                    location: CynologySources.doi_location(
                        "10.7717/peerj.18131"
                    ),
                    authors: CynologySources.authors(
                        "Anamarie C. Johnson, Clive D. L. Wynne"
                    ),
                    date: CynologySources.published(
                        "2024-10-24"
                    ),
                    doi: "10.7717/peerj.18131",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .predatory_behaviour_greyhounds_expert_opinion:
                return CynologySources.entry(
                    title: "Preventing predatory behaviour in greyhounds retired from the racing industry: Expert opinions collected using a survey and interviews",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2020.104988"
                    ),
                    authors: CynologySources.authors(
                        "Tiffani J. Howell, Pauleen C. Bennett"
                    ),
                    date: CynologySources.published(
                        "2020"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Applied Animal Behaviour Science",
                        volume: "226",
                        pages: "104988"
                    ),
                    doi: "10.1016/j.applanim.2020.104988",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .herding_behavior_reinforcement_punishment:
                return CynologySources.entry(
                    title: "Modification of instinctive herding dog behavior using reinforcement and punishment",
                    location: CynologySources.doi_location(
                        "10.2752/089279302786992685"
                    ),
                    authors: CynologySources.authors(
                        "Eve D. Marschark, Ronald Baenninger"
                    ),
                    date: CynologySources.published(
                        "2002"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Anthrozoös",
                        volume: "15",
                        issue: "1",
                        pages: "51-68"
                    ),
                    doi: "10.2752/089279302786992685",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .default_variant_behaviour_operant_training:
                return CynologySources.entry(
                    title: "Behavioural adaptation and stress regulation in operant training: The role of the Default Variant of Behaviour",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2026.106971"
                    ),
                    authors: CynologySources.authors(
                        "Markéta Lukavská, Veronika Rudolfová, Tomáš Bušina, Petra Eretová, Tereza Nekovářová"
                    ),
                    date: CynologySources.published(
                        "2026-06"
                    ),
                    doi: "10.1016/j.applanim.2026.106971",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .scentwork_traditional_training_welfare_bond:
                return CynologySources.entry(
                    title: "Effects of scentwork and traditional training classes on dog welfare, behavior, and human-dog bond",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2026.106924"
                    ),
                    authors: CynologySources.authors(
                        "Sky Sobol, Seana Dowling-Guyer"
                    ),
                    date: CynologySources.published(
                        "2026-04"
                    ),
                    doi: "10.1016/j.applanim.2026.106924",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .counterconditioning_interventions_review:
                return CynologySources.entry(
                    title: "Counterconditioning-Based Interventions for Companion Dog Behavioural Modification: A Systematic Review",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2024.106305"
                    ),
                    authors: CynologySources.authors(
                        "Joanna Shnookal, Deanna Tepper, Tiffani Howell, Pauleen Bennett"
                    ),
                    date: CynologySources.published("2024"),
                    doi: "10.1016/j.applanim.2024.106305",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .behavior_modification_medication_aggression:
                return CynologySources.entry(
                    title: "An Investigation Into the Effectiveness of Various Professionals and Behavior Modification Programs, With or Without Medication, for the Treatment of Canine Aggression",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2021.02.002"
                    ),
                    authors: CynologySources.authors(
                        "Ian R. Dinwoodie, Vivian Zottola, Nicholas H. Dodman"
                    ),
                    date: CynologySources.published("2021"),
                    doi: "10.1016/j.jveb.2021.02.002",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .on_lead_aggressive_behaviours_advice:
                return CynologySources.entry(
                    title: "Exploring Trainer Insights and Understanding of On-Lead Dog Aggressive Behaviours and Behavioural Modification Advice",
                    location: CynologySources.doi_location(
                        "10.1007/s44338-025-00119-1"
                    ),
                    authors: CynologySources.authors(
                        "Joanna Shnookal, Liam Clay, Tiffani Howell, Pauleen Bennett"
                    ),
                    date: CynologySources.published("2025-08-27"),
                    doi: "10.1007/s44338-025-00119-1",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .fear_aggression_veterinary_setting:
                return CynologySources.entry(
                    title: "A Review on Mitigating Fear and Aggression in Dogs and Cats in a Veterinary Setting",
                    location: CynologySources.doi_location(
                        "10.3390/ani11010158"
                    ),
                    authors: CynologySources.authors(
                        "Stefanie Riemer, Carmen Heritier, Ines Windschnurer, Lydia Pratsch, Christine Arhant, Nadja Affenzeller"
                    ),
                    date: CynologySources.published("2021-01-12"),
                    doi: "10.3390/ani11010158",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .history_of_dog_training:
                return CynologySources.entry(
                    title: "The History of Dog Training and Its Importance to Modern Day Training Techniques",
                    location: CynologySources.web_location(
                        "https://scholarlycommons.obu.edu/honors_theses/924/"
                    ),
                    authors: CynologySources.authors(
                        "Marlaina Moix"
                    ),
                    date: CynologySources.published("2024-04-17"),
                    kind: .thesis,
                    channel: .scholarly,
                    tags: facets
                )

            case .training_dogs_a_manual:
                return CynologySources.entry(
                    title: "Training Dogs: A Manual",
                    location: CynologySources.web_location(
                        "https://www.dogwise.com/training-dogs-a-manual-reprint/"
                    ),
                    authors: CynologySources.authors(
                        "Konrad Most"
                    ),
                    date: CynologySources.published("2014"),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .excel_erated_learning:
                return CynologySources.entry(
                    title: "Excel-Erated Learning: Explaining in Plain English How Dogs Learn and How Best to Teach Them",
                    location: CynologySources.web_location(
                        "https://www.dogwise.com/excel-erated-learning-explaining-how-dogs-learn-and-how-best-to-teach-them/"
                    ),
                    authors: CynologySources.authors(
                        "Pamela J. Reid"
                    ),
                    date: CynologySources.published("1996"),
                    kind: .book,
                    channel: .professional,
                    tags: facets
                )

            case .dont_shoot_the_dog:
                return CynologySources.entry(
                    title: "Don't Shoot the Dog!: The New Art of Teaching and Training",
                    location: CynologySources.web_location(
                        "https://www.amazon.com/Dont-Shoot-Dog-Teaching-Training/dp/0553380397"
                    ),
                    authors: CynologySources.authors(
                        "Karen Pryor"
                    ),
                    date: CynologySources.published("1999"),
                    kind: .book,
                    channel: .professional,
                    tags: facets
                )

            case .common_myths_about_dogs:
                return CynologySources.entry(
                    title: "Common Myths About Dogs (Debunked): For Dog Owners and Trainers",
                    location: CynologySources.web_location(
                        "https://www.amazon.com/Common-Myths-about-Dogs-Debunked/dp/1973484676"
                    ),
                    authors: CynologySources.authors(
                        "L. A. Garrido"
                    ),
                    date: CynologySources.published("2017"),
                    kind: .book,
                    channel: .professional,
                    tags: facets
                )

            case .standardized_behavior_test_guide_dog_puppies:
                return CynologySources.entry(
                    title: "A Standardized Behavior Test for Potential Guide Dog Puppies: Methods and Association with Subsequent Success in Guide Dog Training",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2013.08.004"
                    ),
                    authors: CynologySources.authors(
                        "Lucy Asher, Simon Blythe, Rena Roberts, Lisa Toothill, Peter J. Craigon, Katy M. Evans, Martin J. Green, Gary C. W. England"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    doi: "10.1016/j.jveb.2013.08.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .first_year_life_later_temperament_test:
                return CynologySources.entry(
                    title: "Behaviour and Experiences of Dogs During the First Year of Life Predict the Outcome in a Later Temperament Test",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2014.12.006"
                    ),
                    authors: CynologySources.authors(
                        "Pernilla Foyer, Anna C. Bjällerhag, Erik Wilsson, Per Jensen"
                    ),
                    date: CynologySources.published(
                        "2016"
                    ),
                    doi: "10.1016/j.applanim.2014.12.006",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .cbarq_development_validation:
                return CynologySources.entry(
                    title: "Development and Validation of a Questionnaire for Measuring Behavior and Temperament Traits in Pet Dogs",
                    location: CynologySources.doi_location(
                        "10.2460/javma.2003.223.1293"
                    ),
                    authors: CynologySources.authors(
                        "Yuying Hsu, James A. Serpell"
                    ),
                    date: CynologySources.published(
                        "2003"
                    ),
                    doi: "10.2460/javma.2003.223.1293",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .shortened_cbarq_validation:
                return CynologySources.entry(
                    title: "Validation and Application of a Shortened Canine Behavioral Assessment and Research Questionnaire (C-BARQ) to Detect Behavioral Traits in Companion Dogs",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0239025"
                    ),
                    authors: CynologySources.authors(
                        "Amy M. Wilkins, Jeremy B. Evans, Robert M. Park, Anne L. Fitzpatrick, Kate E. Creevy, Audrey Ruple"
                    ),
                    date: CynologySources.published(
                        "2020-09-14"
                    ),
                    doi: "10.1371/journal.pone.0239025",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .modified_cbarq_working_dogs:
                return CynologySources.entry(
                    title: "A Modified C-BARQ as a Tool for Evaluating Working Dogs",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2018.00241"
                    ),
                    authors: CynologySources.authors(
                        "Evan Hare, Jennifer Essler, Cynthia M. Otto, Marcia Ebbecke, James A. Serpell"
                    ),
                    date: CynologySources.published(
                        "2018-10-04"
                    ),
                    doi: "10.3389/fvets.2018.00241",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .temporal_consistency_guide_dog_puppies:
                return CynologySources.entry(
                    title: "Temporal Consistency of Behavioral Responses in a Standardized Behavior Test for Potential Guide Dog Puppies",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2022.887665"
                    ),
                    authors: CynologySources.authors(
                        "Eva F. Hilby, Annette K. Rendahl, Jeanne Russenberger, Megan B. Zimmermann, James R. Mickelson, Molly E. McCue"
                    ),
                    date: CynologySources.published(
                        "2022-06-09"
                    ),
                    doi: "10.3389/fvets.2022.887665",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dog_behavior_covaries_morphology:
                return CynologySources.entry(
                    title: "Dog Behavior Co-Varies with Height, Bodyweight and Skull Shape",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0080529"
                    ),
                    authors: CynologySources.authors(
                        "Paul D. McGreevy, Dana Georgevsky, Johanna Carrasco, Macarena Valenzuela, Deborah L. Duffy, James A. Serpell"
                    ),
                    date: CynologySources.published(
                        "2013-12-16"
                    ),
                    doi: "10.1371/journal.pone.0080529",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .impulsive_for_life:
                return CynologySources.entry(
                    title: "Impulsive for Life? The Nature of Long-Term Impulsivity in Domestic Dogs",
                    location: CynologySources.doi_location(
                        "10.1007/s10071-013-0701-4"
                    ),
                    authors: CynologySources.authors(
                        "Stefanie Riemer, Daniel S. Mills, Hannah Wright"
                    ),
                    date: CynologySources.published(
                        "2014"
                    ),
                    doi: "10.1007/s10071-013-0701-4",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dias_development_validation:
                return CynologySources.entry(
                    title: "Development and Validation of a Psychometric Tool for Assessing Impulsivity in the Domestic Dog (Canis familiaris)",
                    location: CynologySources.web_location(
                        "https://escholarship.org/uc/item/7pb1j56q"
                    ),
                    authors: CynologySources.authors(
                        "Hannah F. Wright, Daniel S. Mills, Petra M. J. Pollux"
                    ),
                    date: CynologySources.published(
                        "2011"
                    ),
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .behavioural_physiological_correlates_impulsivity:
                return CynologySources.entry(
                    title: "Behavioural and Physiological Correlates of Impulsivity in the Domestic Dog (Canis familiaris)",
                    location: CynologySources.doi_location(
                        "10.1016/j.physbeh.2011.09.019"
                    ),
                    authors: CynologySources.authors(
                        "Hannah F. Wright, Daniel S. Mills, Petra M. J. Pollux"
                    ),
                    date: CynologySources.published(
                        "2012"
                    ),
                    doi: "10.1016/j.physbeh.2011.09.019",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .impulsivity_behaviour_problems_rst:
                return CynologySources.entry(
                    title: "Impulsivity and Behaviour Problems in Dogs: A Reinforcement Sensitivity Theory Perspective",
                    location: CynologySources.doi_location(
                        "10.1016/j.beproc.2018.03.012"
                    ),
                    authors: CynologySources.authors(
                        "Patrizia Piotti, Liam Paul Satchell, Tom Steven Lockhart"
                    ),
                    date: CynologySources.published(
                        "2018-06-01"
                    ),
                    doi: "10.1016/j.beproc.2018.03.012",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .spatial_discounting_impulsivity:
                return CynologySources.entry(
                    title: "A Spatial Discounting Test to Assess Impulsivity in Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2018.01.003"
                    ),
                    authors: CynologySources.authors(
                        "Karen Brady, Lynn Hewison, Hannah Wright, Helen Zulch, Nina Cracknell, Daniel Mills"
                    ),
                    date: CynologySources.published(
                        "2018-05-01"
                    ),
                    doi: "10.1016/j.applanim.2018.01.003",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .working_dog_training_twenty_first_century:
                return CynologySources.entry(
                    title: "Working Dog Training for the Twenty-First Century",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2021.646022"
                    ),
                    authors: CynologySources.authors(
                        "Nathaniel J. Hall, Angie M. Johnston, Emily E. Bray, Cynthia M. Otto, Evan L. MacLean, Monique A. R. Udell"
                    ),
                    date: CynologySources.published(
                        "2021-07-27"
                    ),
                    doi: "10.3389/fvets.2021.646022",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .selection_performance_working_dogs:
                return CynologySources.entry(
                    title: "Enhancing the Selection and Performance of Working Dogs",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2021.644431"
                    ),
                    authors: CynologySources.authors(
                        "Emily E. Bray, Cynthia M. Otto, Monique A. R. Udell, Nathaniel J. Hall, Angie M. Johnston, Evan L. MacLean"
                    ),
                    date: CynologySources.published(
                        "2021-04-08"
                    ),
                    doi: "10.3389/fvets.2021.644431",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .animal_welfare_science_working_dogs:
                return CynologySources.entry(
                    title: "The Animal Welfare Science of Working Dogs: Current Perspectives on Recent Advances and Future Directions",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2021.666898"
                    ),
                    authors: CynologySources.authors(
                        "Mia Cobb, Cynthia M. Otto, Aubrey H. Fine"
                    ),
                    date: CynologySources.published(
                        "2021-05-24"
                    ),
                    doi: "10.3389/fvets.2021.666898",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .detection_dog_training_protocol:
                return CynologySources.entry(
                    title: "Validation of a Behavior-Based Protocol for Training Detection Dogs",
                    location: CynologySources.doi_location(
                        "10.3390/ani11061639"
                    ),
                    authors: CynologySources.authors(
                        "Lucia Lazarowski, Belinda Rogers, Stephanie Collins, Julia Pisano, Sarah Krichbaum"
                    ),
                    date: CynologySources.published(
                        "2021-06-01"
                    ),
                    doi: "10.3390/ani11061639",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .odor_detection_training_schedules:
                return CynologySources.entry(
                    title: "A Comparison of Training Schedules for Odor Detection Dogs",
                    location: CynologySources.doi_location(
                        "10.3390/ani12020144"
                    ),
                    authors: CynologySources.authors(
                        "Cynthia A. Smith, Sarah Krichbaum, Belinda Rogers, Larry Paul Waggoner, Jeffrey S. Katz, Lucia Lazarowski"
                    ),
                    date: CynologySources.published(
                        "2022-01-08"
                    ),
                    doi: "10.3390/ani12020144",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .cheetah_scat_detection_accuracy:
                return CynologySources.entry(
                    title: "Use of Differential Reinforcement and Extinction to Increase Detection Accuracy of Cheetah Scat Detection Dogs",
                    location: CynologySources.doi_location(
                        "10.1002/jeab.850"
                    ),
                    authors: CynologySources.authors(
                        "Lindsay Fratt, Jamie Hamre, Jevidah Burak, Jessica Mutoro, Julia Nootbaar, Cailyn Wykstra"
                    ),
                    date: CynologySources.published(
                        "2023-06-27"
                    ),
                    doi: "10.1002/jeab.850",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .exercise_intensity_duration_odor_detection_performance:
                return CynologySources.entry(
                    title: "A preliminary study on the impacts of exercise intensity and duration on gastrointestinal temperature and odor detection performance of dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2026.106970"
                    ),
                    authors: CynologySources.authors(
                        "Liza Rothkoff, Jörg Schultz, Edgar O. Aviles-Rosa, Michele N. Maughan, Eric Best, Nathaniel J. Hall"
                    ),
                    date: CynologySources.published(
                        "2026-06"
                    ),
                    doi: "10.1016/j.applanim.2026.106970",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .der_schutzhund:
                return CynologySources.entry(
                    title: "Der Schutzhund: The Protection Dog",
                    location: CynologySources.web_location(
                        "https://www.dogwise.com/der-schutzhund-the-protection-dog/"
                    ),
                    authors: CynologySources.authors(
                        "Helmut Raiser"
                    ),
                    date: CynologySources.published(
                        "1996"
                    ),
                    container: ReferenceContainer.book(
                        title: "Der Schutzhund: The Protection Dog",
                        publisher: "Armin Winkler Publishing",
                        isbn: "9780692295526"
                    ),
                    kind: .book,
                    channel: .professional,
                    tags: facets
                )

            case .k9_personal_protection:
                return CynologySources.entry(
                    title: "K9 Personal Protection: A Manual for Training Reliable Protection Dogs",
                    location: CynologySources.web_location(
                        "https://www.dogwise.com/k9-personal-protection-a-manual-for-training-reliable-protection-dogs/"
                    ),
                    authors: CynologySources.authors(
                        "Resi Gerritsen, Ruud Haak"
                    ),
                    date: CynologySources.published(
                        "2014"
                    ),
                    kind: .book,
                    channel: .professional,
                    tags: facets
                )

            case .k9_schutzhund_training:
                return CynologySources.entry(
                    title: "K9 Schutzhund Training: A Manual for IPO Training through Positive Reinforcement",
                    location: CynologySources.web_location(
                        "https://www.abebooks.com/9781550595567/Schutzhund-Training-Manual-IPO-Positive-1550595563/plp"
                    ),
                    authors: CynologySources.authors(
                        "Resi Gerritsen, Ruud Haak"
                    ),
                    date: CynologySources.published(
                        "2014"
                    ),
                    container: ReferenceContainer.book(
                        title: "K9 Schutzhund Training: A Manual for IPO Training through Positive Reinforcement",
                        edition: "Second edition",
                        isbn: "9781550595567"
                    ),
                    kind: .book,
                    channel: .professional,
                    tags: facets
                )
            }
        }

        private var facets: ReferenceTagSet {
            switch self {
            case .adaptation_and_learning,
                 .etiology_and_assessment,
                 .procedures_and_protocols,
                 .canine_behavior_insights_and_answers:
                return .cynology(
                    .training_methods,
                    .behavior_modification,
                    .clinical_behavior
                )

            case .does_training_method_matter,
                 .dogs_more_pessimistic,
                 .carrots_versus_sticks,
                 .aversive_based_training_welfare,
                 .improving_dog_training_methods,
                 .training_methods_behavior_problems,
                 .barriers_to_humane_training,
                 .training_methods_owner_dog_interactions,
                 .behaviour_smaller_larger_dogs,
                 .reward_based_training_pet_massage,
                 .training_frequency_session_time,
                 .professional_trainers_perspectives,
                 .gender_norms_dominance_aversive_methods,
                 .leash_equipment_pulling_welfare:
                return .cynology(
                    .training_methods,
                    .aversives,
                    .welfare
                )

            case .predatory_behaviour_greyhounds_expert_opinion:
                return .cynology(
                    .training_methods,
                    .behavior_modification,
                    .canine_behavior,
                    .aversives
                )

            case .herding_behavior_reinforcement_punishment:
                return .cynology(
                    .operant_conditioning,
                    .reinforcement,
                    .punishment,
                    .training_methods
                )

            case .default_variant_behaviour_operant_training:
                return .cynology(
                    .operant_conditioning,
                    .training_methods,
                    .stress,
                    .welfare
                )

            case .scentwork_traditional_training_welfare_bond:
                return .cynology(
                    .training_methods,
                    .welfare,
                    .human_dog_relationship,
                    .engagement
                )

            case .counterconditioning_interventions_review,
                 .behavior_modification_medication_aggression,
                 .on_lead_aggressive_behaviours_advice,
                 .fear_aggression_veterinary_setting:
                return .cynology(
                    .behavior_modification,
                    .clinical_behavior,
                    .aggression
                )

            case .history_of_dog_training,
                 .training_dogs_a_manual,
                 .excel_erated_learning,
                 .dont_shoot_the_dog,
                 .common_myths_about_dogs:
                return .cynology(
                    .training_methods,
                    .reinforcement
                )

            case .standardized_behavior_test_guide_dog_puppies,
                 .first_year_life_later_temperament_test,
                 .cbarq_development_validation,
                 .shortened_cbarq_validation,
                 .temporal_consistency_guide_dog_puppies,
                 .dog_behavior_covaries_morphology:
                return .cynology(
                    .methodology,
                    .assessment,
                    .temperament
                )

            case .dias_development_validation,
                 .behavioural_physiological_correlates_impulsivity,
                 .spatial_discounting_impulsivity,
                 .impulsive_for_life:
                return .cynology(
                    .methodology,
                    .assessment,
                    .temperament,
                    .impulsivity
                )

            case .impulsivity_behaviour_problems_rst:
                return .cynology(
                    .methodology,
                    .assessment,
                    .temperament,
                    .impulsivity,
                    .problem_behavior
                )

            case .modified_cbarq_working_dogs:
                return .cynology(
                    .methodology,
                    .assessment,
                    .temperament,
                    .working_dogs
                )

            case .working_dog_training_twenty_first_century,
                 .selection_performance_working_dogs,
                 .detection_dog_training_protocol,
                 .odor_detection_training_schedules,
                 .cheetah_scat_detection_accuracy,
                 .der_schutzhund,
                 .k9_personal_protection,
                 .k9_schutzhund_training:
                return .cynology(
                    .working_dogs,
                    .training_methods,
                    .reinforcement
                )

            case .exercise_intensity_duration_odor_detection_performance:
                return .cynology(
                    .working_dogs,
                    .physiology,
                    .assessment,
                    .stress
                )

            case .animal_welfare_science_working_dogs:
                return .cynology(
                    .working_dogs,
                    .welfare
                )
            }
        }
    }
}
