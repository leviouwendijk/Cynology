import Primitives
import References

public extension CynologySources {
    enum Ethology: String, CaseIterable, Codable, CynologySourceProviding {
        public static let namespace = "cynology.ethology"

        // MARK: - CanineBehavior

        // old: CynologyCommunicationSource.bryce_nurkin_horowitz_shake_it_off_social_contexts
        case shake_it_off

        // old: CynologyCommunicationSource.coppinger_coppinger_dogs_origin_behavior_evolution
        case dogs_origin_behavior_evolution

        // old: CynologyCommunicationSource.coppinger_feinstein_how_dogs_work
        case how_dogs_work

        // old: CynologyCommunicationSource.coppinger_coppinger_what_is_a_dog
        case what_is_a_dog

        // MARK: - CanineCommunication

        // old: CynologyCommunicationSource.cafazzo_natoli_valsecchi_scent_marking_free_ranging_domestic_dogs
        case scent_marking_free_ranging_dogs

        // old: CynologyCommunicationSource.lisberg_snowdon_countermarking_sex_social_status_gonadectomy
        case countermarking_sex_status_gonadectomy

        // old: CynologyCommunicationSource.mcguire_bemis_scent_marking_shelter_dogs_body_size
        case scent_marking_body_size

        // old: CynologyCommunicationSource.mcguire_olsen_bemis_orantes_urine_marking_honest_dishonest
        case urine_marking_honest_or_dishonest

        // old: CynologyCommunicationSource.mcclanahan_rosell_conspecific_recognition_pedal_scent
        case conspecific_recognition_pedal_scent

        // old: CynologyCommunicationSource.quaranta_dingeo_minunno_straziota_nole_ventriglia_ceci_siniscalchi_urine_marking_physiology_behavior
        case urine_marking_physiology_behavior

        // old: CynologyCommunicationSource.quaranta_siniscalchi_vallortigara_asymmetric_tail_wagging_emotive_stimuli
        case asymmetric_tail_wagging_emotive_stimuli

        // old: CynologyCommunicationSource.siniscalchi_lusito_vallortigara_quaranta_asymmetric_tail_wagging_emotional_responses
        case tail_wagging_emotional_responses

        // old: CynologyCommunicationSource.ren_wei_yu_zhang_left_right_asymmetry_tail_wagging_dog_human_interactions
        case tail_wagging_human_interactions

        // old: CynologyCommunicationSource.leonetti_cimarelli_hersh_ravignani_why_dogs_wag_their_tails
        case why_dogs_wag_their_tails

        // old: CynologyCommunicationSource.dankevych_erturk_dog_body_language_literature_review
        case dog_body_language

        case appeasement_signals_dog_human_communication
        case displacement_behaviours_appeasement_function
        case visual_cues_effector_specific_action_prediction

        // old: CynologyCommunicationSource.correia_caeiro_guo_mills_visual_perception_emotion_cues_dogs_review
        case visual_perception_emotion_cues

        // old: CynologyCommunicationSource.ward_greeting_behavior_between_dogs_dog_park
        case greeting_behavior_dog_park

        // old: CynologyCommunicationSource.capitain_wirobski_onsal_pedretti_bevilacqua_marshall_pescini_range_dog_wolf_human_directed_greeting
        case human_directed_greeting

        // MARK: - CaninePlay

        // old: CynologyCommunicationSource.bradshaw_pullen_rooney_why_adult_dogs_play
        case why_adult_dogs_play

        // old: CynologyCommunicationSource.rooney_bradshaw_robinson_comparison_dog_dog_dog_human_play
        case dog_dog_dog_human_play

        // old: CynologyCommunicationSource.rooney_bradshaw_robinson_play_signals_given_by_humans
        case human_play_signals

        // old: CynologyCommunicationSource.rooney_bradshaw_experimental_effects_play_dog_human_relationship
        case play_effects_human_dog_relationship

        // old: CynologyCommunicationSource.rooney_bradshaw_links_play_dominance_attachment
        case play_dominance_attachment

        // old: CynologyCommunicationSource.rooney_bradshaw_effects_games_dog_owner_relationship
        case games_owner_relationship

        // old: CynologyCommunicationSource.bauer_smuts_cooperation_competition_dyadic_play_domestic_dogs
        case cooperation_competition_dyadic_play

        // old: CynologyCommunicationSource.ward_bauer_smuts_partner_preferences_asymmetries_social_play_littermates
        case play_partner_preferences

        // old: CynologyCommunicationSource.ward_smuts_social_play_individual_variation_change_over_time
        case social_play_individual_variation

        // old: CynologyCommunicationSource.smuts_social_behaviour_companion_dogs_emphasis_play
        case social_behaviour_companion_dogs

        // old: CynologyCommunicationSource.bekoff_play_signals_punctuation_social_play_canids
        case play_signals_punctuation

        // old: CynologyCommunicationSource.bekoff_allen_intentional_communication_social_play
        case intentional_communication_social_play

        // old: CynologyCommunicationSource.essler_cafazzo_marshall_pescini_viranyi_kotrschal_range_play_behavior_wolves_5050
        case wolf_dog_play_behavior

        // MARK: - DevelopmentSocialization

        // old: CynologyCommunicationSource.mcevoy_espinosa_crump_arnott_canine_socialisation_review
        case canine_socialisation_review

        // old: CynologyCommunicationSource.avma_socialization_puppies_kittens_literature_review
        case puppy_socialization_literature_review

        // old: CynologyCommunicationSource.brand_oneill_belshaw_dale_merritt_clover_tay_pegram_packer_pandemic_puppies_problem_behaviours
        case pandemic_puppies_problem_behaviours

        // old: CynologyCommunicationSource.howell_king_bennett_puppy_parties_socialization_adult_behavior
        case puppy_parties_socialization

        // old: CynologyCommunicationSource.stolzlechner_bonorand_riemer_optimising_puppy_socialisation_training_programme
        case optimising_puppy_socialisation

        // old: CynologyCommunicationSource.puurunen_hakanen_salonen_mikkola_sulkama_araujo_lohi_inadequate_socialisation_social_fearfulness
        case inadequate_socialisation_fearfulness

        case active_social_life_non_social_fearfulness

        // old: CynologyCommunicationSource.wormald_lawrence_carter_fisher_early_social_exposure_reported_aggression
        case early_social_exposure_aggression
        case adult_intraspecific_social_exposure_military_dogs

        // old: CynologyCommunicationSource.espinosa_zapata_alvarez_serpell_kukekova_hecht_early_life_adversity_breed_aggression_fear
        case early_life_adversity_aggression_fear

        // old: CynologyCommunicationSource.appleby_bradshaw_casey_aggressive_avoidance_first_six_months
        case aggressive_avoidance_first_six_months

        // old: CynologyCommunicationSource.batt_batt_baguley_mcgreevy_juvenile_training_socialization_guide_dog_success
        case juvenile_socialization_guide_dog_success
        case nature_nurture_conditions_behavior

        // old: CynologyCommunicationSource.denenberg_landsberg_dog_appeasing_pheromones_puppies_training_socialization
        case dog_appeasing_pheromones_puppies

        // old: CynologyCommunicationSource.duxbury_jackson_line_anderson_retention_home_puppy_socialization_classes
        case puppy_socialization_classes_retention

        // old: CynologyCommunicationSource.seksel_mazurski_taylor_puppy_socialisation_programs_short_long_term_effects
        case puppy_socialisation_programs

        // old: CynologyCommunicationSource.ward_behavioural_therapy_success_socialisation_subsequent_behaviour
        case socialisation_and_subsequent_behaviour

        // MARK: - DominanceAndSocialStatus

        // old: CynologyCommunicationSource.van_der_borg_schilder_vinke_de_vries_dominance_quantitative_analysis
        case dominance_quantitative_analysis

        // old: CynologyCommunicationSource.bradshaw_blackwell_casey_dominance_response_schilder
        case dominance_response

        // old: CynologyCommunicationSource.schilder_vinke_van_der_borg_dominance_revisited
        case dominance_revisited

        // old: CynologyCommunicationSource.van_der_borg_schilder_vinke_dominance_behavioral_measures_group_housed_dogs
        case dominance_behavioral_measures

        // MARK: - HumanDogRelationshipCare

        // old: CynologyCommunicationSource.wlodarczyk_be_more_dog_human_canine_relationship_training_methodologies
        case be_more_dog

        // old: CynologyCommunicationSource.kogan_currin_mcculloch_packman_bussolari_dog_training_related_guilt
        case dog_training_related_guilt

        // old: CynologyCommunicationSource.martin_otis_lussier_troncy_co_construction_human_dog_dyadic_relationship
        case co_construction_human_dog_relationship

        // old: CynologyCommunicationSource.warda_interspecies_emotional_labour_guide_dog_work
        case interspecies_emotional_labour
        case herding_dog_training_interactivity

        case trainability_proxy_attachment_construct_validity

        // MARK: - AdditionalDogBooks

        // old: CynologyCommunicationSource.reed_canine_anatomy_and_physiology
        case canine_anatomy_and_physiology

        // old: CynologyCommunicationSource.dk_the_dog_encyclopedia
        case dog_encyclopedia

        // old: CynologyCommunicationSource.dk_the_complete_dog_breed_book
        case complete_dog_breed_book

        // old: CynologyCommunicationSource.wang_tedford_dogs_fossil_relatives_evolutionary_history
        case dogs_fossil_relatives

        // old: CynologyCommunicationSource.kaufer_canine_play_behavior
        case canine_play_behavior

        public var data: ReferenceData {
            switch self {
            case .shake_it_off:
                return CynologySources.entry(
                    title: "Shake It Off: Investigating the Function of a Domestic Dog Behavior in Social Contexts",
                    location: CynologySources.doi_location(
                        "10.3390/ani14223248"
                    ),
                    authors: CynologySources.authors(
                        "Ani Bryce, Paige Nurkin, Alexandra Horowitz"
                    ),
                    date: CynologySources.published(
                        "2024-11-13"
                    ),
                    doi: "10.3390/ani14223248",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dogs_origin_behavior_evolution:
                return CynologySources.entry(
                    title: "Dogs: A Startling New Understanding of Canine Origin, Behavior & Evolution",
                    location: CynologySources.web_location(
                        "https://press.uchicago.edu/ucp/books/book/chicago/D/bo3614537.html"
                    ),
                    authors: CynologySources.authors(
                        "Raymond Coppinger, Lorna Coppinger"
                    ),
                    date: CynologySources.published(
                        "2001"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .how_dogs_work:
                return CynologySources.entry(
                    title: "How Dogs Work",
                    location: CynologySources.web_location(
                        "https://press.uchicago.edu/ucp/books/book/chicago/H/bo18670670.html"
                    ),
                    authors: CynologySources.authors(
                        "Raymond Coppinger, Mark Feinstein"
                    ),
                    date: CynologySources.published(
                        "2015"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .what_is_a_dog:
                return CynologySources.entry(
                    title: "What Is a Dog?",
                    location: CynologySources.web_location(
                        "https://press.uchicago.edu/ucp/books/book/chicago/W/bo23844820.html"
                    ),
                    authors: CynologySources.authors(
                        "Raymond Coppinger, Lorna Coppinger"
                    ),
                    date: CynologySources.published(
                        "2016"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .scent_marking_free_ranging_dogs:
                return CynologySources.entry(
                    title: "Scent-Marking Behaviour in a Pack of Free-Ranging Domestic Dogs",
                    location: CynologySources.doi_location(
                        "10.1111/j.1439-0310.2012.02088.x"
                    ),
                    authors: CynologySources.authors(
                        "Simona Cafazzo, Eugenia Natoli, Paola Valsecchi"
                    ),
                    date: CynologySources.published(
                        "2012"
                    ),
                    doi: "10.1111/j.1439-0310.2012.02088.x",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .countermarking_sex_status_gonadectomy:
                return CynologySources.entry(
                    title: "The Effects of Sex, Social Status and Gonadectomy on Countermarking by Domestic Dogs, Canis familiaris",
                    location: CynologySources.doi_location(
                        "10.1016/j.anbehav.2011.01.006"
                    ),
                    authors: CynologySources.authors(
                        "Anneke E. Lisberg, Charles T. Snowdon"
                    ),
                    date: CynologySources.published(
                        "2011"
                    ),
                    doi: "10.1016/j.anbehav.2011.01.006",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .scent_marking_body_size:
                return CynologySources.entry(
                    title: "Scent Marking in Shelter Dogs: Effects of Body Size",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2016.11.001"
                    ),
                    authors: CynologySources.authors(
                        "Betty McGuire, Katherine E. Bemis"
                    ),
                    date: CynologySources.published(
                        "2017"
                    ),
                    doi: "10.1016/j.applanim.2016.11.001",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .urine_marking_honest_or_dishonest:
                return CynologySources.entry(
                    title: "Urine Marking in Male Domestic Dogs: Honest or Dishonest?",
                    location: CynologySources.doi_location(
                        "10.1111/jzo.12603"
                    ),
                    authors: CynologySources.authors(
                        "Betty McGuire, Boomer Olsen, Katherine E. Bemis, Destiny Orantes"
                    ),
                    date: CynologySources.published(
                        "2018"
                    ),
                    doi: "10.1111/jzo.12603",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .conspecific_recognition_pedal_scent:
                return CynologySources.entry(
                    title: "Conspecific Recognition of Pedal Scent in Domestic Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-020-74784-5"
                    ),
                    authors: CynologySources.authors(
                        "Kari McClanahan, Frank Rosell"
                    ),
                    date: CynologySources.published(
                        "2020-10-20"
                    ),
                    doi: "10.1038/s41598-020-74784-5",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .urine_marking_physiology_behavior:
                return CynologySources.entry(
                    title: "Decoding Dog Communication through the Physiology and Behavior of Urine Marking",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-025-31373-8"
                    ),
                    authors: CynologySources.authors(
                        "Angelo Quaranta, Serenella d’Ingeo, Michele Minunno, Valeria Straziota, Marica Nolè, Gianluca Ventriglia, Edmondo Ceci, Marcello Siniscalchi"
                    ),
                    date: CynologySources.published(
                        "2025-12-09"
                    ),
                    doi: "10.1038/s41598-025-31373-8",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .asymmetric_tail_wagging_emotive_stimuli:
                return CynologySources.entry(
                    title: "Asymmetric Tail-Wagging Responses by Dogs to Different Emotive Stimuli",
                    location: CynologySources.doi_location(
                        "10.1016/j.cub.2007.02.008"
                    ),
                    authors: CynologySources.authors(
                        "Angelo Quaranta, Marcello Siniscalchi, Giorgio Vallortigara"
                    ),
                    date: CynologySources.published(
                        "2007"
                    ),
                    doi: "10.1016/j.cub.2007.02.008",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .tail_wagging_emotional_responses:
                return CynologySources.entry(
                    title: "Seeing Left- or Right-Asymmetric Tail Wagging Produces Different Emotional Responses in Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.cub.2013.09.027"
                    ),
                    authors: CynologySources.authors(
                        "Marcello Siniscalchi, Rita Lusito, Giorgio Vallortigara, Angelo Quaranta"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    doi: "10.1016/j.cub.2013.09.027",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .tail_wagging_human_interactions:
                return CynologySources.entry(
                    title: "Left-Right Asymmetry and Attractor-Like Dynamics of Dog’s Tail Wagging during Dog-Human Interactions",
                    location: CynologySources.doi_location(
                        "10.1016/j.isci.2022.104747"
                    ),
                    authors: CynologySources.authors(
                        "Wei Ren, Pengfei Wei, Shan Yu, Yong Q. Zhang"
                    ),
                    date: CynologySources.published(
                        "2022-08-19"
                    ),
                    doi: "10.1016/j.isci.2022.104747",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .why_dogs_wag_their_tails:
                return CynologySources.entry(
                    title: "Why Do Dogs Wag Their Tails?",
                    location: CynologySources.doi_location(
                        "10.1098/rsbl.2023.0407"
                    ),
                    authors: CynologySources.authors(
                        "Silvia Leonetti, Giulia Cimarelli, Taylor A. Hersh, Andrea Ravignani"
                    ),
                    date: CynologySources.published(
                        "2024-01-17"
                    ),
                    doi: "10.1098/rsbl.2023.0407",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dog_body_language:
                return CynologySources.entry(
                    title: "Dog Body Language (Literature Review)",
                    location: CynologySources.doi_location(
                        "10.36016/JVMBBS-2026-12-2-2"
                    ),
                    authors: CynologySources.authors(
                        "N. I. Dankevych, G. Ertürk"
                    ),
                    date: CynologySources.published(
                        "2026-05"
                    ),
                    doi: "10.36016/JVMBBS-2026-12-2-2",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .visual_perception_emotion_cues:
                return CynologySources.entry(
                    title: "Visual Perception of Emotion Cues in Dogs: A Critical Review of Methodologies",
                    location: CynologySources.doi_location(
                        "10.1007/s10071-023-01762-5"
                    ),
                    authors: CynologySources.authors(
                        "Catia Correia-Caeiro, Kun Guo, Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2023-03-04"
                    ),
                    doi: "10.1007/s10071-023-01762-5",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .greeting_behavior_dog_park:
                return CynologySources.entry(
                    title: "Greeting Behavior Between Dogs in a Dog Park",
                    location: CynologySources.doi_location(
                        "10.21071/pbs.vi10.12314"
                    ),
                    authors: CynologySources.authors(
                        "Camille Ward"
                    ),
                    date: CynologySources.published(
                        "2020-06-25"
                    ),
                    doi: "10.21071/pbs.vi10.12314",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .human_directed_greeting:
                return CynologySources.entry(
                    title: "Differences in Dogs’ and Wolves’ Human-Directed Greeting Behaviour: Facial Expressions, Body Language, and the Problem of Human Biases",
                    location: CynologySources.doi_location(
                        "10.1007/s10071-025-01978-7"
                    ),
                    authors: CynologySources.authors(
                        "Svenja Capitain, Gwendolyn Wirobski, Çağla Önsal, Giulia Pedretti, Valeria Bevilacqua, Sarah Marshall-Pescini, Friederike Range"
                    ),
                    date: CynologySources.published(
                        "2025-07-03"
                    ),
                    doi: "10.1007/s10071-025-01978-7",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .appeasement_signals_dog_human_communication:
                return CynologySources.entry(
                    title: "Appeasement Signals Used by Dogs During Dog–Human Communication",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2016.12.012"
                    ),
                    authors: CynologySources.authors(
                        "Angelika Firnkes, Angela Bartels, Emilie Bidoli, Michael Erhard"
                    ),
                    date: CynologySources.published(
                        "2017"
                    ),
                    doi: "10.1016/j.jveb.2016.12.012",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .displacement_behaviours_appeasement_function:
                return CynologySources.entry(
                    title: "Appeasement Function of Displacement Behaviours? Dogs’ Behavioural Displays Exhibited Towards Threatening and Neutral Humans",
                    location: CynologySources.doi_location(
                        "10.1007/s10071-023-01742-9"
                    ),
                    authors: CynologySources.authors(
                        "Giulia Pedretti, Chiara Canori, Eleonora Biffi, Sarah Marshall-Pescini, Paola Valsecchi"
                    ),
                    date: CynologySources.published(
                        "2023-01-20"
                    ),
                    doi: "10.1007/s10071-023-01742-9",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .visual_cues_effector_specific_action_prediction:
                return CynologySources.entry(
                    title: "Dogs Rely On Visual Cues Rather Than On Effector-Specific Movement Representations to Predict Human Action Targets",
                    location: CynologySources.doi_location(
                        "10.1162/opmi_a_00096"
                    ),
                    authors: CynologySources.authors(
                        "Lucrezia Lonardo, Christoph J. Völter, Claus Lamm, Ludwig Huber"
                    ),
                    date: CynologySources.published(
                        "2023-08-20"
                    ),
                    doi: "10.1162/opmi_a_00096",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .why_adult_dogs_play:
                return CynologySources.entry(
                    title: "Why Do Adult Dogs ‘Play’?",
                    location: CynologySources.doi_location(
                        "10.1016/j.beproc.2014.09.023"
                    ),
                    authors: CynologySources.authors(
                        "John W. S. Bradshaw, Anne J. Pullen, Nicola J. Rooney"
                    ),
                    date: CynologySources.published(
                        "2015-01"
                    ),
                    doi: "10.1016/j.beproc.2014.09.023",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dog_dog_dog_human_play:
                return CynologySources.entry(
                    title: "A Comparison of Dog–Dog and Dog–Human Play Behaviour",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(99)00078-7"
                    ),
                    authors: CynologySources.authors(
                        "Nicola J. Rooney, John W. S. Bradshaw, Ian H. Robinson"
                    ),
                    date: CynologySources.published(
                        "2000-02-29"
                    ),
                    doi: "10.1016/S0168-1591(99)00078-7",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .human_play_signals:
                return CynologySources.entry(
                    title: "Do Dogs Respond to Play Signals Given by Humans?",
                    location: CynologySources.doi_location(
                        "10.1006/anbe.2000.1661"
                    ),
                    authors: CynologySources.authors(
                        "Nicola J. Rooney, John W. S. Bradshaw, Ian H. Robinson"
                    ),
                    date: CynologySources.published(
                        "2001-04"
                    ),
                    doi: "10.1006/anbe.2000.1661",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .play_effects_human_dog_relationship:
                return CynologySources.entry(
                    title: "An Experimental Study of the Effects of Play upon the Dog–Human Relationship",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(01)00192-7"
                    ),
                    authors: CynologySources.authors(
                        "Nicola J. Rooney, John W. S. Bradshaw"
                    ),
                    date: CynologySources.published(
                        "2002-01-03"
                    ),
                    doi: "10.1016/S0168-1591(01)00192-7",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .play_dominance_attachment:
                return CynologySources.entry(
                    title: "Links Between Play and Dominance and Attachment Dimensions of Dog–Human Relationships",
                    location: CynologySources.doi_location(
                        "10.1207/S15327604JAWS0602_01"
                    ),
                    authors: CynologySources.authors(
                        "Nicola J. Rooney, John W. S. Bradshaw"
                    ),
                    date: CynologySources.published(
                        "2003"
                    ),
                    doi: "10.1207/S15327604JAWS0602_01",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .games_owner_relationship:
                return CynologySources.entry(
                    title: "The Effects of Games on the Dog-Owner Relationship",
                    location: CynologySources.doi_location(
                        "10.1017/S1752756200011741"
                    ),
                    authors: CynologySources.authors(
                        "Nicola J. Rooney, John W. S. Bradshaw"
                    ),
                    date: CynologySources.published(
                        "2003"
                    ),
                    doi: "10.1017/S1752756200011741",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .cooperation_competition_dyadic_play:
                return CynologySources.entry(
                    title: "Cooperation and Competition during Dyadic Play in Domestic Dogs, Canis familiaris",
                    location: CynologySources.doi_location(
                        "10.1016/j.anbehav.2006.09.006"
                    ),
                    authors: CynologySources.authors(
                        "Erika B. Bauer, Barbara B. Smuts"
                    ),
                    date: CynologySources.published(
                        "2007-03"
                    ),
                    doi: "10.1016/j.anbehav.2006.09.006",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .play_partner_preferences:
                return CynologySources.entry(
                    title: "Partner Preferences and Asymmetries in Social Play among Domestic Dog, Canis lupus familiaris, Littermates",
                    location: CynologySources.doi_location(
                        "10.1016/j.anbehav.2008.06.004"
                    ),
                    authors: CynologySources.authors(
                        "Camille Ward, Erika B. Bauer, Barbara B. Smuts"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    doi: "10.1016/j.anbehav.2008.06.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .social_play_individual_variation:
                return CynologySources.entry(
                    title: "Social Play in Dogs: Individual Variation and Change over Time",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2008.09.065"
                    ),
                    authors: CynologySources.authors(
                        "Camille Ward, Barbara B. Smuts"
                    ),
                    date: CynologySources.published(
                        "2009-03"
                    ),
                    doi: "10.1016/j.jveb.2008.09.065",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .social_behaviour_companion_dogs:
                return CynologySources.entry(
                    title: "Social Behaviour among Companion Dogs with an Emphasis on Play",
                    location: CynologySources.doi_location(
                        "10.1016/B978-0-12-407818-5.00004-8"
                    ),
                    authors: CynologySources.authors(
                        "Barbara B. Smuts"
                    ),
                    date: CynologySources.published(
                        "2014"
                    ),
                    doi: "10.1016/B978-0-12-407818-5.00004-8",
                    kind: .book_chapter,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .play_signals_punctuation:
                return CynologySources.entry(
                    title: "Play Signals as Punctuation: The Structure of Social Play in Canids",
                    location: CynologySources.doi_location(
                        "10.1163/156853995X00649"
                    ),
                    authors: CynologySources.authors(
                        "Marc Bekoff"
                    ),
                    date: CynologySources.published(
                        "1995"
                    ),
                    doi: "10.1163/156853995X00649",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .intentional_communication_social_play:
                return CynologySources.entry(
                    title: "Intentional Communication and Social Play: How and Why Animals Negotiate and Agree to Play",
                    location: CynologySources.doi_location(
                        "10.1017/CBO9780511608575.006"
                    ),
                    authors: CynologySources.authors(
                        "Marc Bekoff, Colin Allen"
                    ),
                    date: CynologySources.published(
                        "1998"
                    ),
                    doi: "10.1017/CBO9780511608575.006",
                    kind: .book_chapter,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .wolf_dog_play_behavior:
                return CynologySources.entry(
                    title: "Play Behavior in Wolves: Using the ‘50:50’ Rule to Test for Egalitarian Play Styles",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0154150"
                    ),
                    authors: CynologySources.authors(
                        "Jennifer L. Essler, Simona Cafazzo, Sarah Marshall-Pescini, Zsófia Virányi, Kurt Kotrschal, Friederike Range"
                    ),
                    date: CynologySources.published(
                        "2016-05-11"
                    ),
                    doi: "10.1371/journal.pone.0154150",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .canine_socialisation_review:
                return CynologySources.entry(
                    title: "Canine Socialisation: A Narrative Systematic Review",
                    location: CynologySources.doi_location(
                        "10.3390/ani12212895"
                    ),
                    authors: CynologySources.authors(
                        "Victoria McEvoy, Uri Baqueiro Espinosa, Andrew Crump, Gareth Arnott"
                    ),
                    date: CynologySources.published(
                        "2022-10-22"
                    ),
                    doi: "10.3390/ani12212895",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .puppy_socialization_literature_review:
                return CynologySources.entry(
                    title: "Literature Review on the Welfare Implications of Socialization of Puppies and Kittens",
                    location: CynologySources.web_location(
                        "https://www.avma.org/sites/default/files/2024-09/avma-lit-review-socialization-puppies-kittens-0924.pdf"
                    ),
                    authors: CynologySources.authors(
                        "American Veterinary Medical Association Animal Welfare Division"
                    ),
                    date: CynologySources.published(
                        "2024-09-10"
                    ),
                    kind: .report,
                    channel: .institutional,
                    tags: facets
                )

            case .pandemic_puppies_problem_behaviours:
                return CynologySources.entry(
                    title: "Impacts of Puppy Early Life Experiences, Puppy-Purchasing Practices, and Owner Characteristics on Owner-Reported Problem Behaviours in a UK Pandemic Puppies Cohort at 21 Months of Age",
                    location: CynologySources.doi_location(
                        "10.3390/ani14020336"
                    ),
                    authors: CynologySources.authors(
                        "Claire L. Brand, Dan G. O’Neill, Zoe Belshaw, Fiona C. Dale, Bree L. Merritt, Kathryn N. Clover, Mi-Xue Michelle Tay, Camilla L. Pegram, Rowena M. A. Packer"
                    ),
                    date: CynologySources.published(
                        "2024-01-22"
                    ),
                    doi: "10.3390/ani14020336",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .puppy_parties_socialization:
                return CynologySources.entry(
                    title: "Puppy Parties and Beyond: The Role of Early Age Socialization Practices on Adult Dog Behavior",
                    location: CynologySources.doi_location(
                        "10.2147/VMRR.S62081"
                    ),
                    authors: CynologySources.authors(
                        "Tiffani J. Howell, Tammie King, Pauleen C. Bennett"
                    ),
                    date: CynologySources.published(
                        "2015"
                    ),
                    doi: "10.2147/VMRR.S62081",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .optimising_puppy_socialisation:
                return CynologySources.entry(
                    title: "Optimising Puppy Socialisation—Short- and Long-Term Effects of a Training Programme during the Early Socialisation Period",
                    location: CynologySources.doi_location(
                        "10.3390/ani12223067"
                    ),
                    authors: CynologySources.authors(
                        "Lisa Stolzlechner, Alina Bonorand, Stefanie Riemer"
                    ),
                    date: CynologySources.published(
                        "2022-11-18"
                    ),
                    doi: "10.3390/ani12223067",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .inadequate_socialisation_fearfulness:
                return CynologySources.entry(
                    title: "Inadequate Socialisation, Inactivity, and Urban Living Environment Are Associated with Social Fearfulness in Pet Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-020-60546-w"
                    ),
                    authors: CynologySources.authors(
                        [
                            CynologySources.author(
                                given: "Jenni",
                                family: "Puurunen"
                            ),
                            CynologySources.author(
                                given: "Emma",
                                family: "Hakanen"
                            ),
                            CynologySources.author(
                                given: "Milla K.",
                                family: "Salonen"
                            ),
                            CynologySources.author(
                                given: "Salla",
                                family: "Mikkola"
                            ),
                            CynologySources.author(
                                given: "Sini",
                                family: "Sulkama"
                            ),
                            CynologySources.author(
                                given: "César",
                                family: "Araujo"
                            ),
                            CynologySources.author(
                                given: "Hannes",
                                family: "Lohi"
                            ),
                        ],
                        original: "Jenni Puurunen, Emma Hakanen, Milla K. Salonen, Salla Mikkola, Sini Sulkama, César Araujo, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2020-02-26"
                    ),
                    doi: "10.1038/s41598-020-60546-w",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .active_social_life_non_social_fearfulness:
                return CynologySources.entry(
                    title: "Active and Social Life Is Associated with Lower Non-Social Fearfulness in Pet Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-020-70722-7"
                    ),
                    authors: CynologySources.authors(
                        "Emma Hakanen, Salla Mikkola, Milla Salonen, Jenni Puurunen, Sini Sulkama, César Araujo, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2020-08-13"
                    ),
                    doi: "10.1038/s41598-020-70722-7",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .early_social_exposure_aggression:
                return CynologySources.entry(
                    title: "Analysis of Correlations between Early Social Exposure and Reported Aggression in the Dog",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2016.08.071"
                    ),
                    authors: CynologySources.authors(
                        "Dennis Wormald, Andrew J. Lawrence, Gabrielle Carter, Andrew D. Fisher"
                    ),
                    date: CynologySources.published(
                        "2016"
                    ),
                    doi: "10.1016/j.jveb.2016.08.071",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .adult_intraspecific_social_exposure_military_dogs:
                return CynologySources.entry(
                    title: "Benefits of Intraspecific Social Exposure in Adult Swiss Military Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2017.12.016"
                    ),
                    authors: CynologySources.authors(
                        "Nastassja Gfrerer, Michael Taborsky, Hanno Würbel"
                    ),
                    date: CynologySources.published(
                        "2018-04"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Applied Animal Behaviour Science",
                        volume: "201",
                        pages: "54-60"
                    ),
                    doi: "10.1016/j.applanim.2017.12.016",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .early_life_adversity_aggression_fear:
                return CynologySources.entry(
                    title: "Influence of Early Life Adversity and Breed on Aggression and Fear in Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-025-18226-0"
                    ),
                    authors: CynologySources.authors(
                        "Julia Espinosa, Isain Zapata, Carlos E. Alvarez, James A. Serpell, Anna V. Kukekova, Erin E. Hecht"
                    ),
                    date: CynologySources.published(
                        "2025-10-02"
                    ),
                    doi: "10.1038/s41598-025-18226-0",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .nature_nurture_conditions_behavior:
                return CynologySources.entry(
                    title: "Nature and Nurture—How Different Conditions Affect the Behavior of Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2016.10.002"
                    ),
                    authors: CynologySources.authors(
                        "Erik Wilsson"
                    ),
                    date: CynologySources.published(
                        "2016"
                    ),
                    doi: "10.1016/j.jveb.2016.10.002",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .aggressive_avoidance_first_six_months:
                return CynologySources.entry(
                    title: "Relationship between Aggressive and Avoidance Behaviour by Dogs and Their Experience in the First Six Months of Life",
                    location: CynologySources.doi_location(
                        "10.1136/vr.150.14.434"
                    ),
                    authors: CynologySources.authors(
                        "David L. Appleby, John W. S. Bradshaw, Rachel A. Casey"
                    ),
                    date: CynologySources.published(
                        "2002"
                    ),
                    doi: "10.1136/vr.150.14.434",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .juvenile_socialization_guide_dog_success:
                return CynologySources.entry(
                    title: "The Effects of Structured Sessions for Juvenile Training and Socialization on Guide Dog Success and Puppy-Raiser Participation",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2008.05.001"
                    ),
                    authors: CynologySources.authors(
                        [
                            CynologySources.author(
                                given: "Lara S.",
                                family: "Batt"
                            ),
                            CynologySources.author(
                                given: "Marjolyn S.",
                                family: "Batt"
                            ),
                            CynologySources.author(
                                given: "John A.",
                                family: "Baguley"
                            ),
                            CynologySources.author(
                                given: "Paul D.",
                                family: "McGreevy"
                            ),
                        ],
                        original: "L. S. Batt, M. S. Batt, J. A. Baguley, P. D. McGreevy"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    doi: "10.1016/j.jveb.2008.05.001",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dog_appeasing_pheromones_puppies:
                return CynologySources.entry(
                    title: "Effects of Dog-Appeasing Pheromones on Anxiety and Fear in Puppies During Training and on Long-Term Socialization",
                    location: CynologySources.doi_location(
                        "10.2460/javma.233.12.1874"
                    ),
                    authors: CynologySources.authors(
                        "Sagi Denenberg, Gary M. Landsberg"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    doi: "10.2460/javma.233.12.1874",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .puppy_socialization_classes_retention:
                return CynologySources.entry(
                    title: "Evaluation of Association between Retention in the Home and Attendance at Puppy Socialization Classes",
                    location: CynologySources.doi_location(
                        "10.2460/javma.2003.223.61"
                    ),
                    authors: CynologySources.authors(
                        "Margaret M. Duxbury, Julie A. Jackson, Scott W. Line, Robert K. Anderson"
                    ),
                    date: CynologySources.published(
                        "2003"
                    ),
                    doi: "10.2460/javma.2003.223.61",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .puppy_socialisation_programs:
                return CynologySources.entry(
                    title: "Puppy Socialisation Programs: Short and Long Term Behavioural Effects",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(98)00239-5"
                    ),
                    authors: CynologySources.authors(
                        "Kerstin Seksel, Esther J. Mazurski, Andrew Taylor"
                    ),
                    date: CynologySources.published(
                        "1999"
                    ),
                    doi: "10.1016/S0168-1591(98)00239-5",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .socialisation_and_subsequent_behaviour:
                return CynologySources.entry(
                    title: "Behavioural Therapy Success and the Effect of Socialisation on Subsequent Behaviour in Dogs",
                    location: CynologySources.web_location(
                        "https://mro.massey.ac.nz/items/a4efced6-807f-4da5-b7a4-1e09f4e552bf"
                    ),
                    authors: CynologySources.authors(
                        "Michelle R. Ward"
                    ),
                    date: CynologySources.published(
                        "2003"
                    ),
                    kind: .thesis,
                    channel: .scholarly,
                    tags: facets
                )

            case .dominance_quantitative_analysis:
                return CynologySources.entry(
                    title: "Dominance in Domestic Dogs: A Quantitative Analysis of Its Behavioural Measures",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0133978"
                    ),
                    authors: CynologySources.authors(
                        "Joanne A. M. van der Borg, Matthijs B. H. Schilder, Claudia M. Vinke, Han de Vries"
                    ),
                    date: CynologySources.published(
                        "2015-08-26"
                    ),
                    doi: "10.1371/journal.pone.0133978",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dominance_response:
                return CynologySources.entry(
                    title: "Dominance in Domestic Dogs: A Response to Schilder et al. (2014)",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2015.11.008"
                    ),
                    authors: CynologySources.authors(
                        "John W. S. Bradshaw, Emily-Jayne Blackwell, Rachel A. Casey"
                    ),
                    date: CynologySources.published(
                        "2016"
                    ),
                    doi: "10.1016/j.jveb.2015.11.008",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dominance_revisited:
                return CynologySources.entry(
                    title: "Dominance in Domestic Dogs Revisited: Useful Habit and Useful Construct?",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2014.04.005"
                    ),
                    authors: CynologySources.authors(
                        "Matthijs B. H. Schilder, Claudia M. Vinke, Joanne A. M. van der Borg"
                    ),
                    date: CynologySources.published(
                        "2014"
                    ),
                    doi: "10.1016/j.jveb.2014.04.005",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dominance_behavioral_measures:
                return CynologySources.entry(
                    title: "Dominance and Its Behavioral Measures in Group Housed Domestic Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2013.04.004"
                    ),
                    authors: CynologySources.authors(
                        "Joanne A. M. van der Borg, Matthijs B. H. Schilder, Claudia M. Vinke"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    doi: "10.1016/j.jveb.2013.04.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .be_more_dog:
                return CynologySources.entry(
                    title: "Be More Dog: The Human–Canine Relationship in Contemporary Dog-Training Methodologies",
                    location: CynologySources.doi_location(
                        "10.1080/13528165.2017.1315962"
                    ),
                    authors: CynologySources.authors(
                        "Justyna Włodarczyk"
                    ),
                    date: CynologySources.published(
                        "2017"
                    ),
                    doi: "10.1080/13528165.2017.1315962",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dog_training_related_guilt:
                return CynologySources.entry(
                    title: "Dog Training-Related Guilt: Prevalence and Associations with Owner Demographics and Self-Compassion",
                    location: CynologySources.doi_location(
                        "10.1079/hai.2025.0043"
                    ),
                    authors: CynologySources.authors(
                        "Lori R. Kogan, Lauren Currin-McCulloch, Wendy Packman, Carla Bussolari"
                    ),
                    date: CynologySources.published(
                        "2025-09-25"
                    ),
                    doi: "10.1079/hai.2025.0043",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .co_construction_human_dog_relationship:
                return CynologySources.entry(
                    title: "A Conceptual Framework for the Co-Construction of Human–Dog Dyadic Relationship",
                    location: CynologySources.doi_location(
                        "10.3390/ani15192875"
                    ),
                    authors: CynologySources.authors(
                        "Laurie Martin, Colombe Otis, Bertrand Lussier, Eric Troncy"
                    ),
                    date: CynologySources.published(
                        "2025"
                    ),
                    doi: "10.3390/ani15192875",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .interspecies_emotional_labour:
                return CynologySources.entry(
                    title: "Interspecies Emotional Labour: Unspoken Expectations of Professionalism in Guide Dog Work",
                    location: CynologySources.doi_location(
                        "10.4324/9781003601708"
                    ),
                    authors: CynologySources.authors(
                        "Tiamat Warda"
                    ),
                    date: CynologySources.published(
                        "2026"
                    ),
                    doi: "10.4324/9781003601708",
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .herding_dog_training_interactivity:
                return CynologySources.entry(
                    title: "Teaching the Dog and Learning from the Dog: Interactivity in Herding Dog Training and Use",
                    location: CynologySources.doi_location(
                        "10.2752/175303713X13534238631515"
                    ),
                    authors: CynologySources.authors(
                        "Nathalie Savalois, Nicolas Lescureux, Florence Brunois"
                    ),
                    date: CynologySources.published(
                        "2013-03"
                    ),
                    doi: "10.2752/175303713X13534238631515",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .trainability_proxy_attachment_construct_validity:
                return CynologySources.entry(
                    title: "Is trainability a proxy for attachment? Revisiting construct validity in canine–human bond research",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2026.107007"
                    ),
                    authors: CynologySources.authors(
                        "Muhammad Fadhlirrahman Latief, Baharuddin Baharuddin, Amelia Ramadhani Anshar"
                    ),
                    date: CynologySources.published(
                        "2026-07"
                    ),
                    doi: "10.1016/j.applanim.2026.107007",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .canine_anatomy_and_physiology:
                return CynologySources.entry(
                    title: "Canine Anatomy and Physiology: A Practical Approach",
                    location: CynologySources.web_location(
                        "https://www.amazon.com/Canine-Anatomy-Physiology-Practical-Approach/dp/1910488607"
                    ),
                    authors: CynologySources.authors(
                        "Michael Reed"
                    ),
                    date: CynologySources.published(
                        "2021"
                    ),
                    kind: .book,
                    channel: .textbook,
                    tags: facets
                )

            case .dog_encyclopedia:
                return CynologySources.entry(
                    title: "The Dog Encyclopedia: The Definitive Visual Guide",
                    location: CynologySources.web_location(
                        "https://books.google.com/books/about/The_Dog_Encyclopedia.html?id=cBGmEAAAQBAJ"
                    ),
                    authors: CynologySources.authors(
                        "DK"
                    ),
                    date: CynologySources.published(
                        "2023-07-06"
                    ),
                    kind: .book,
                    channel: .textbook,
                    tags: facets
                )

            case .complete_dog_breed_book:
                return CynologySources.entry(
                    title: "The Complete Dog Breed Book: Choose the Perfect Dog for You",
                    location: CynologySources.web_location(
                        "https://www.amazon.co.uk/Complete-Dog-Breed-Book-Perfect/dp/0241412730"
                    ),
                    authors: CynologySources.authors(
                        "DK"
                    ),
                    date: CynologySources.published(
                        "2020-03-05"
                    ),
                    kind: .book,
                    channel: .textbook,
                    tags: facets
                )

            case .dogs_fossil_relatives:
                return CynologySources.entry(
                    title: "Dogs: Their Fossil Relatives and Evolutionary History",
                    location: CynologySources.web_location(
                        "https://cup.columbia.edu/book/dogs/9780231135290/"
                    ),
                    authors: CynologySources.authors(
                        "Xiaoming Wang, Richard H. Tedford"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    kind: .book,
                    channel: .textbook,
                    tags: facets
                )

            case .canine_play_behavior:
                return CynologySources.entry(
                    title: "Canine Play Behavior: The Science of Dogs at Play",
                    location: CynologySources.web_location(
                        "https://www.amazon.com/Canine-Play-Behavior-Science-Dogs/dp/161781153X"
                    ),
                    authors: CynologySources.authors(
                        "Mechtild Käufer"
                    ),
                    date: CynologySources.published(
                        "2014-09-11"
                    ),
                    kind: .book,
                    channel: .professional,
                    tags: facets
                )
            }
        }

        private var facets: ReferenceTagSet {
            switch self {
            case .shake_it_off,
                 .dogs_origin_behavior_evolution,
                 .how_dogs_work,
                 .what_is_a_dog:
                return .cynology(
                    .canine_behavior,
                    .communication
                )

            case .scent_marking_free_ranging_dogs,
                 .countermarking_sex_status_gonadectomy,
                 .scent_marking_body_size,
                 .urine_marking_honest_or_dishonest,
                 .conspecific_recognition_pedal_scent,
                 .urine_marking_physiology_behavior,
                 .asymmetric_tail_wagging_emotive_stimuli,
                 .tail_wagging_emotional_responses,
                 .tail_wagging_human_interactions,
                 .why_dogs_wag_their_tails,
                 .dog_body_language,
                 .visual_perception_emotion_cues,
                 .greeting_behavior_dog_park,
                 .human_directed_greeting:
                return .cynology(
                    .communication,
                    .canine_body_language,
                    .canine_behavior
                )

            case .appeasement_signals_dog_human_communication,
                 .displacement_behaviours_appeasement_function:
                return .cynology(
                    .communication,
                    .canine_body_language,
                    .stress,
                    .canine_behavior
                )

            case .visual_cues_effector_specific_action_prediction:
                return .cynology(
                    .communication,
                    .human_dog_relationship,
                    .methodology,
                    .canine_behavior
                )

            case .why_adult_dogs_play,
                 .dog_dog_dog_human_play,
                 .human_play_signals,
                 .play_effects_human_dog_relationship,
                 .play_dominance_attachment,
                 .games_owner_relationship,
                 .cooperation_competition_dyadic_play,
                 .play_partner_preferences,
                 .social_play_individual_variation,
                 .social_behaviour_companion_dogs,
                 .play_signals_punctuation,
                 .intentional_communication_social_play,
                 .wolf_dog_play_behavior,
                 .canine_play_behavior:
                return .cynology(
                    .play,
                    .canine_behavior,
                    .communication
                )

            case .canine_socialisation_review,
                 .puppy_socialization_literature_review,
                 .pandemic_puppies_problem_behaviours,
                 .puppy_parties_socialization,
                 .optimising_puppy_socialisation,
                 .early_social_exposure_aggression,
                 .early_life_adversity_aggression_fear,
                 .nature_nurture_conditions_behavior,
                 .aggressive_avoidance_first_six_months,
                 .juvenile_socialization_guide_dog_success,
                 .dog_appeasing_pheromones_puppies,
                 .puppy_socialization_classes_retention,
                 .puppy_socialisation_programs,
                 .socialisation_and_subsequent_behaviour:
                return .cynology(
                    .socialization,
                    .canine_behavior,
                    .welfare
                )

            case .adult_intraspecific_social_exposure_military_dogs:
                return .cynology(
                    .socialization,
                    .canine_behavior,
                    .welfare,
                    .enrichment
                )

            case .inadequate_socialisation_fearfulness:
                return .cynology(
                    .socialization,
                    .canine_behavior,
                    .welfare,
                    .exercise,
                    .anxiety
                )

            case .active_social_life_non_social_fearfulness:
                return .cynology(
                    .socialization,
                    .canine_behavior,
                    .welfare,
                    .exercise,
                    .anxiety,
                    .noise_sensitivity
                )

            case .dominance_quantitative_analysis,
                 .dominance_response,
                 .dominance_revisited,
                 .dominance_behavioral_measures:
                return .cynology(
                    .dominance,
                    .canine_behavior,
                    .communication
                )

            case .be_more_dog,
                 .dog_training_related_guilt,
                 .co_construction_human_dog_relationship,
                 .interspecies_emotional_labour:
                return .cynology(
                    .human_dog_relationship,
                    .communication,
                    .training_methods
                )

            case .herding_dog_training_interactivity:
                return .cynology(
                    .working_dogs,
                    .training_methods,
                    .human_dog_relationship,
                    .communication
                )

            case .trainability_proxy_attachment_construct_validity:
                return .cynology(
                    .human_dog_relationship,
                    .assessment,
                    .methodology,
                    .canine_behavior
                )

            case .canine_anatomy_and_physiology,
                 .dog_encyclopedia,
                 .complete_dog_breed_book,
                 .dogs_fossil_relatives:
                return .cynology(
                    .canine_behavior,
                    .communication
                )
            }
        }
    }
}
