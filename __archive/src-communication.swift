import Primitives
import References

public enum CynologyCommunicationSource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.communication

    // MARK: - CanineBehavior

    case bryce_nurkin_horowitz_shake_it_off_social_contexts
    case coppinger_coppinger_dogs_origin_behavior_evolution
    case coppinger_feinstein_how_dogs_work
    case coppinger_coppinger_what_is_a_dog

    // MARK: - CanineCommunication

    case cafazzo_natoli_valsecchi_scent_marking_free_ranging_domestic_dogs
    case lisberg_snowdon_countermarking_sex_social_status_gonadectomy
    case mcguire_bemis_scent_marking_shelter_dogs_body_size
    case mcguire_olsen_bemis_orantes_urine_marking_honest_dishonest
    case mcclanahan_rosell_conspecific_recognition_pedal_scent
    case quaranta_dingeo_minunno_straziota_nole_ventriglia_ceci_siniscalchi_urine_marking_physiology_behavior
    case quaranta_siniscalchi_vallortigara_asymmetric_tail_wagging_emotive_stimuli
    case siniscalchi_lusito_vallortigara_quaranta_asymmetric_tail_wagging_emotional_responses
    case ren_wei_yu_zhang_left_right_asymmetry_tail_wagging_dog_human_interactions
    case leonetti_cimarelli_hersh_ravignani_why_dogs_wag_their_tails
    case dankevych_erturk_dog_body_language_literature_review
    case correia_caeiro_guo_mills_visual_perception_emotion_cues_dogs_review
    case ward_greeting_behavior_between_dogs_dog_park
    case capitain_wirobski_onsal_pedretti_bevilacqua_marshall_pescini_range_dog_wolf_human_directed_greeting

    // MARK: - CaninePlay

    case bradshaw_pullen_rooney_why_adult_dogs_play
    case rooney_bradshaw_robinson_comparison_dog_dog_dog_human_play
    case rooney_bradshaw_robinson_play_signals_given_by_humans
    case rooney_bradshaw_experimental_effects_play_dog_human_relationship
    case rooney_bradshaw_links_play_dominance_attachment
    case rooney_bradshaw_effects_games_dog_owner_relationship
    case bauer_smuts_cooperation_competition_dyadic_play_domestic_dogs
    case ward_bauer_smuts_partner_preferences_asymmetries_social_play_littermates
    case ward_smuts_social_play_individual_variation_change_over_time
    case smuts_social_behaviour_companion_dogs_emphasis_play
    case bekoff_play_signals_punctuation_social_play_canids
    case bekoff_allen_intentional_communication_social_play
    case essler_cafazzo_marshall_pescini_viranyi_kotrschal_range_play_behavior_wolves_5050

    // MARK: - DevelopmentSocialization

    case mcevoy_espinosa_crump_arnott_canine_socialisation_review
    case avma_socialization_puppies_kittens_literature_review
    case brand_oneill_belshaw_dale_merritt_clover_tay_pegram_packer_pandemic_puppies_problem_behaviours
    case howell_king_bennett_puppy_parties_socialization_adult_behavior
    case stolzlechner_bonorand_riemer_optimising_puppy_socialisation_training_programme
    case puurunen_hakanen_salonen_mikkola_sulkama_araujo_lohi_inadequate_socialisation_social_fearfulness
    case wormald_lawrence_carter_fisher_early_social_exposure_reported_aggression
    case espinosa_zapata_alvarez_serpell_kukekova_hecht_early_life_adversity_breed_aggression_fear
    case appleby_bradshaw_casey_aggressive_avoidance_first_six_months
    case batt_batt_baguley_mcgreevy_juvenile_training_socialization_guide_dog_success
    case denenberg_landsberg_dog_appeasing_pheromones_puppies_training_socialization
    case duxbury_jackson_line_anderson_retention_home_puppy_socialization_classes
    case seksel_mazurski_taylor_puppy_socialisation_programs_short_long_term_effects
    case ward_behavioural_therapy_success_socialisation_subsequent_behaviour

    // MARK: - DominanceAndSocialStatus

    case van_der_borg_schilder_vinke_de_vries_dominance_quantitative_analysis
    case bradshaw_blackwell_casey_dominance_response_schilder
    case schilder_vinke_van_der_borg_dominance_revisited
    case van_der_borg_schilder_vinke_dominance_behavioral_measures_group_housed_dogs

    // MARK: - HumanDogRelationshipCare

    case wlodarczyk_be_more_dog_human_canine_relationship_training_methodologies
    case kogan_currin_mcculloch_packman_bussolari_dog_training_related_guilt
    case martin_otis_lussier_troncy_co_construction_human_dog_dyadic_relationship
    case warda_interspecies_emotional_labour_guide_dog_work

    // MARK: - AdditionalDogBooks

    case reed_canine_anatomy_and_physiology
    case dk_the_dog_encyclopedia
    case dk_the_complete_dog_breed_book
    case wang_tedford_dogs_fossil_relatives_evolutionary_history
    case kaufer_canine_play_behavior

    public var data: ReferenceData {
        entry.data(
            tags: facets
        )
    }

    private var facets: ReferenceTagSet {
        switch self {
        case .bryce_nurkin_horowitz_shake_it_off_social_contexts,
            .coppinger_coppinger_dogs_origin_behavior_evolution,
            .coppinger_feinstein_how_dogs_work,
            .coppinger_coppinger_what_is_a_dog:
            return .cynology(
                .canine_behavior,
                .communication
            )

        case .cafazzo_natoli_valsecchi_scent_marking_free_ranging_domestic_dogs,
            .lisberg_snowdon_countermarking_sex_social_status_gonadectomy,
            .mcguire_bemis_scent_marking_shelter_dogs_body_size,
            .mcguire_olsen_bemis_orantes_urine_marking_honest_dishonest,
            .mcclanahan_rosell_conspecific_recognition_pedal_scent,
            .quaranta_dingeo_minunno_straziota_nole_ventriglia_ceci_siniscalchi_urine_marking_physiology_behavior,
            .quaranta_siniscalchi_vallortigara_asymmetric_tail_wagging_emotive_stimuli,
            .siniscalchi_lusito_vallortigara_quaranta_asymmetric_tail_wagging_emotional_responses,
            .ren_wei_yu_zhang_left_right_asymmetry_tail_wagging_dog_human_interactions,
            .leonetti_cimarelli_hersh_ravignani_why_dogs_wag_their_tails,
            .dankevych_erturk_dog_body_language_literature_review,
            .correia_caeiro_guo_mills_visual_perception_emotion_cues_dogs_review,
            .ward_greeting_behavior_between_dogs_dog_park,
            .capitain_wirobski_onsal_pedretti_bevilacqua_marshall_pescini_range_dog_wolf_human_directed_greeting:
            return .cynology(
                .communication,
                .canine_body_language
            )

        case .bradshaw_pullen_rooney_why_adult_dogs_play,
            .rooney_bradshaw_robinson_comparison_dog_dog_dog_human_play,
            .rooney_bradshaw_robinson_play_signals_given_by_humans,
            .rooney_bradshaw_experimental_effects_play_dog_human_relationship,
            .rooney_bradshaw_links_play_dominance_attachment,
            .rooney_bradshaw_effects_games_dog_owner_relationship,
            .bauer_smuts_cooperation_competition_dyadic_play_domestic_dogs,
            .ward_bauer_smuts_partner_preferences_asymmetries_social_play_littermates,
            .ward_smuts_social_play_individual_variation_change_over_time,
            .smuts_social_behaviour_companion_dogs_emphasis_play,
            .bekoff_play_signals_punctuation_social_play_canids,
            .bekoff_allen_intentional_communication_social_play,
            .essler_cafazzo_marshall_pescini_viranyi_kotrschal_range_play_behavior_wolves_5050:
            return .cynology(
                .play,
                .canine_behavior,
                .communication
            )

        case .mcevoy_espinosa_crump_arnott_canine_socialisation_review,
            .avma_socialization_puppies_kittens_literature_review,
            .brand_oneill_belshaw_dale_merritt_clover_tay_pegram_packer_pandemic_puppies_problem_behaviours,
            .howell_king_bennett_puppy_parties_socialization_adult_behavior,
            .stolzlechner_bonorand_riemer_optimising_puppy_socialisation_training_programme,
            .puurunen_hakanen_salonen_mikkola_sulkama_araujo_lohi_inadequate_socialisation_social_fearfulness,
            .wormald_lawrence_carter_fisher_early_social_exposure_reported_aggression,
            .espinosa_zapata_alvarez_serpell_kukekova_hecht_early_life_adversity_breed_aggression_fear,
            .appleby_bradshaw_casey_aggressive_avoidance_first_six_months,
            .batt_batt_baguley_mcgreevy_juvenile_training_socialization_guide_dog_success,
            .denenberg_landsberg_dog_appeasing_pheromones_puppies_training_socialization,
            .duxbury_jackson_line_anderson_retention_home_puppy_socialization_classes,
            .seksel_mazurski_taylor_puppy_socialisation_programs_short_long_term_effects,
            .ward_behavioural_therapy_success_socialisation_subsequent_behaviour:
            return .cynology(
                .socialization,
                .canine_behavior,
                .welfare
            )

        case .van_der_borg_schilder_vinke_de_vries_dominance_quantitative_analysis,
            .bradshaw_blackwell_casey_dominance_response_schilder,
            .schilder_vinke_van_der_borg_dominance_revisited,
            .van_der_borg_schilder_vinke_dominance_behavioral_measures_group_housed_dogs:
            return .cynology(
                .dominance,
                .canine_behavior,
                .communication
            )

        case .wlodarczyk_be_more_dog_human_canine_relationship_training_methodologies,
            .kogan_currin_mcculloch_packman_bussolari_dog_training_related_guilt,
            .martin_otis_lussier_troncy_co_construction_human_dog_dyadic_relationship,
            .warda_interspecies_emotional_labour_guide_dog_work:
            return .cynology(
                .human_dog_relationship,
                .communication,
                .training_methods
            )

        case .reed_canine_anatomy_and_physiology,
            .dk_the_dog_encyclopedia,
            .dk_the_complete_dog_breed_book,
            .wang_tedford_dogs_fossil_relatives_evolutionary_history:
            return .cynology(
                .canine_behavior,
                .communication
            )

        case .kaufer_canine_play_behavior:
            return .cynology(
                .play,
                .canine_behavior,
                .communication
            )
        }
    }

    private var entry: Entry {
        switch self {
        case .bryce_nurkin_horowitz_shake_it_off_social_contexts:
            return .init(
                title: "Shake It Off: Investigating the Function of a Domestic Dog Behavior in Social Contexts",
                url: "https://doi.org/10.3390/ani14223248",
                authors: "Ani Bryce, Paige Nurkin, Alexandra Horowitz",
                date: "2024-11-13",
                doi: "10.3390/ani14223248"
            )

        case .coppinger_coppinger_dogs_origin_behavior_evolution:
            return .init(
                title: "Dogs: A Startling New Understanding of Canine Origin, Behavior & Evolution",
                url: "https://press.uchicago.edu/ucp/books/book/chicago/D/bo3614537.html",
                authors: "Raymond Coppinger, Lorna Coppinger",
                date: "2001",
                kind: .book,
                channel: .scholarly
            )

        case .coppinger_feinstein_how_dogs_work:
            return .init(
                title: "How Dogs Work",
                url: "https://press.uchicago.edu/ucp/books/book/chicago/H/bo18670670.html",
                authors: "Raymond Coppinger, Mark Feinstein",
                date: "2015",
                kind: .book,
                channel: .scholarly
            )

        case .coppinger_coppinger_what_is_a_dog:
            return .init(
                title: "What Is a Dog?",
                url: "https://press.uchicago.edu/ucp/books/book/chicago/W/bo23844820.html",
                authors: "Raymond Coppinger, Lorna Coppinger",
                date: "2016",
                kind: .book,
                channel: .scholarly
            )

        case .cafazzo_natoli_valsecchi_scent_marking_free_ranging_domestic_dogs:
            return .init(
                title: "Scent-Marking Behaviour in a Pack of Free-Ranging Domestic Dogs",
                url: "https://doi.org/10.1111/j.1439-0310.2012.02088.x",
                authors: "Simona Cafazzo, Eugenia Natoli, Paola Valsecchi",
                date: "2012",
                doi: "10.1111/j.1439-0310.2012.02088.x"
            )

        case .lisberg_snowdon_countermarking_sex_social_status_gonadectomy:
            return .init(
                title: "The Effects of Sex, Social Status and Gonadectomy on Countermarking by Domestic Dogs, Canis familiaris",
                url: "https://doi.org/10.1016/j.anbehav.2011.01.006",
                authors: "Anneke E. Lisberg, Charles T. Snowdon",
                date: "2011",
                doi: "10.1016/j.anbehav.2011.01.006"
            )

        case .mcguire_bemis_scent_marking_shelter_dogs_body_size:
            return .init(
                title: "Scent Marking in Shelter Dogs: Effects of Body Size",
                url: "https://doi.org/10.1016/j.applanim.2016.11.001",
                authors: "Betty McGuire, Katherine E. Bemis",
                date: "2017",
                doi: "10.1016/j.applanim.2016.11.001"
            )

        case .mcguire_olsen_bemis_orantes_urine_marking_honest_dishonest:
            return .init(
                title: "Urine Marking in Male Domestic Dogs: Honest or Dishonest?",
                url: "https://doi.org/10.1111/jzo.12603",
                authors: "Betty McGuire, Boomer Olsen, Katherine E. Bemis, Destiny Orantes",
                date: "2018",
                doi: "10.1111/jzo.12603"
            )

        case .mcclanahan_rosell_conspecific_recognition_pedal_scent:
            return .init(
                title: "Conspecific Recognition of Pedal Scent in Domestic Dogs",
                url: "https://doi.org/10.1038/s41598-020-74784-5",
                authors: "Kari McClanahan, Frank Rosell",
                date: "2020-10-20",
                doi: "10.1038/s41598-020-74784-5"
            )

        case .quaranta_dingeo_minunno_straziota_nole_ventriglia_ceci_siniscalchi_urine_marking_physiology_behavior:
            return .init(
                title: "Decoding Dog Communication through the Physiology and Behavior of Urine Marking",
                url: "https://doi.org/10.1038/s41598-025-31373-8",
                authors: "Angelo Quaranta, Serenella d’Ingeo, Michele Minunno, Valeria Straziota, Marica Nolè, Gianluca Ventriglia, Edmondo Ceci, Marcello Siniscalchi",
                date: "2025-12-09",
                doi: "10.1038/s41598-025-31373-8"
            )

        case .quaranta_siniscalchi_vallortigara_asymmetric_tail_wagging_emotive_stimuli:
            return .init(
                title: "Asymmetric Tail-Wagging Responses by Dogs to Different Emotive Stimuli",
                url: "https://doi.org/10.1016/j.cub.2007.02.008",
                authors: "Angelo Quaranta, Marcello Siniscalchi, Giorgio Vallortigara",
                date: "2007",
                doi: "10.1016/j.cub.2007.02.008"
            )

        case .siniscalchi_lusito_vallortigara_quaranta_asymmetric_tail_wagging_emotional_responses:
            return .init(
                title: "Seeing Left- or Right-Asymmetric Tail Wagging Produces Different Emotional Responses in Dogs",
                url: "https://doi.org/10.1016/j.cub.2013.09.027",
                authors: "Marcello Siniscalchi, Rita Lusito, Giorgio Vallortigara, Angelo Quaranta",
                date: "2013",
                doi: "10.1016/j.cub.2013.09.027"
            )

        case .ren_wei_yu_zhang_left_right_asymmetry_tail_wagging_dog_human_interactions:
            return .init(
                title: "Left-Right Asymmetry and Attractor-Like Dynamics of Dog’s Tail Wagging during Dog-Human Interactions",
                url: "https://doi.org/10.1016/j.isci.2022.104747",
                authors: "Wei Ren, Pengfei Wei, Shan Yu, Yong Q. Zhang",
                date: "2022-08-19",
                doi: "10.1016/j.isci.2022.104747"
            )

        case .leonetti_cimarelli_hersh_ravignani_why_dogs_wag_their_tails:
            return .init(
                title: "Why Do Dogs Wag Their Tails?",
                url: "https://doi.org/10.1098/rsbl.2023.0407",
                authors: "Silvia Leonetti, Giulia Cimarelli, Taylor A. Hersh, Andrea Ravignani",
                date: "2024-01-17",
                doi: "10.1098/rsbl.2023.0407"
            )

        case .dankevych_erturk_dog_body_language_literature_review:
            return .init(
                title: "Dog Body Language (Literature Review)",
                url: "https://doi.org/10.36016/JVMBBS-2026-12-2-2",
                authors: "N. I. Dankevych, G. Ertürk",
                date: "2026-05",
                doi: "10.36016/JVMBBS-2026-12-2-2"
            )

        case .correia_caeiro_guo_mills_visual_perception_emotion_cues_dogs_review:
            return .init(
                title: "Visual Perception of Emotion Cues in Dogs: A Critical Review of Methodologies",
                url: "https://doi.org/10.1007/s10071-023-01762-5",
                authors: "Catia Correia-Caeiro, Kun Guo, Daniel S. Mills",
                date: "2023-03-04",
                doi: "10.1007/s10071-023-01762-5"
            )

        case .ward_greeting_behavior_between_dogs_dog_park:
            return .init(
                title: "Greeting Behavior Between Dogs in a Dog Park",
                url: "https://doi.org/10.21071/pbs.vi10.12314",
                authors: "Camille Ward",
                date: "2020-06-25",
                doi: "10.21071/pbs.vi10.12314"
            )

        case .capitain_wirobski_onsal_pedretti_bevilacqua_marshall_pescini_range_dog_wolf_human_directed_greeting:
            return .init(
                title: "Differences in Dogs’ and Wolves’ Human-Directed Greeting Behaviour: Facial Expressions, Body Language, and the Problem of Human Biases",
                url: "https://doi.org/10.1007/s10071-025-01978-7",
                authors: "Svenja Capitain, Gwendolyn Wirobski, Çağla Önsal, Giulia Pedretti, Valeria Bevilacqua, Sarah Marshall-Pescini, Friederike Range",
                date: "2025-07-03",
                doi: "10.1007/s10071-025-01978-7"
            )

        case .bradshaw_pullen_rooney_why_adult_dogs_play:
            return .init(
                title: "Why Do Adult Dogs ‘Play’?",
                url: "https://doi.org/10.1016/j.beproc.2014.09.023",
                authors: "John W. S. Bradshaw, Anne J. Pullen, Nicola J. Rooney",
                date: "2015-01",
                doi: "10.1016/j.beproc.2014.09.023"
            )

        case .rooney_bradshaw_robinson_comparison_dog_dog_dog_human_play:
            return .init(
                title: "A Comparison of Dog–Dog and Dog–Human Play Behaviour",
                url: "https://doi.org/10.1016/S0168-1591(99)00078-7",
                authors: "Nicola J. Rooney, John W. S. Bradshaw, Ian H. Robinson",
                date: "2000-02-29",
                doi: "10.1016/S0168-1591(99)00078-7"
            )

        case .rooney_bradshaw_robinson_play_signals_given_by_humans:
            return .init(
                title: "Do Dogs Respond to Play Signals Given by Humans?",
                url: "https://doi.org/10.1006/anbe.2000.1661",
                authors: "Nicola J. Rooney, John W. S. Bradshaw, Ian H. Robinson",
                date: "2001-04",
                doi: "10.1006/anbe.2000.1661"
            )

        case .rooney_bradshaw_experimental_effects_play_dog_human_relationship:
            return .init(
                title: "An Experimental Study of the Effects of Play upon the Dog–Human Relationship",
                url: "https://doi.org/10.1016/S0168-1591(01)00192-7",
                authors: "Nicola J. Rooney, John W. S. Bradshaw",
                date: "2002-01-03",
                doi: "10.1016/S0168-1591(01)00192-7"
            )

        case .rooney_bradshaw_links_play_dominance_attachment:
            return .init(
                title: "Links Between Play and Dominance and Attachment Dimensions of Dog–Human Relationships",
                url: "https://doi.org/10.1207/S15327604JAWS0602_01",
                authors: "Nicola J. Rooney, John W. S. Bradshaw",
                date: "2003",
                doi: "10.1207/S15327604JAWS0602_01"
            )

        case .rooney_bradshaw_effects_games_dog_owner_relationship:
            return .init(
                title: "The Effects of Games on the Dog-Owner Relationship",
                url: "https://doi.org/10.1017/S1752756200011741",
                authors: "Nicola J. Rooney, John W. S. Bradshaw",
                date: "2003",
                doi: "10.1017/S1752756200011741"
            )

        case .bauer_smuts_cooperation_competition_dyadic_play_domestic_dogs:
            return .init(
                title: "Cooperation and Competition during Dyadic Play in Domestic Dogs, Canis familiaris",
                url: "https://doi.org/10.1016/j.anbehav.2006.09.006",
                authors: "Erika B. Bauer, Barbara B. Smuts",
                date: "2007-03",
                doi: "10.1016/j.anbehav.2006.09.006"
            )

        case .ward_bauer_smuts_partner_preferences_asymmetries_social_play_littermates:
            return .init(
                title: "Partner Preferences and Asymmetries in Social Play among Domestic Dog, Canis lupus familiaris, Littermates",
                url: "https://doi.org/10.1016/j.anbehav.2008.06.004",
                authors: "Camille Ward, Erika B. Bauer, Barbara B. Smuts",
                date: "2008",
                doi: "10.1016/j.anbehav.2008.06.004"
            )

        case .ward_smuts_social_play_individual_variation_change_over_time:
            return .init(
                title: "Social Play in Dogs: Individual Variation and Change over Time",
                url: "https://doi.org/10.1016/j.jveb.2008.09.065",
                authors: "Camille Ward, Barbara B. Smuts",
                date: "2009-03",
                doi: "10.1016/j.jveb.2008.09.065"
            )

        case .smuts_social_behaviour_companion_dogs_emphasis_play:
            return .init(
                title: "Social Behaviour among Companion Dogs with an Emphasis on Play",
                url: "https://doi.org/10.1016/B978-0-12-407818-5.00004-8",
                authors: "Barbara B. Smuts",
                date: "2014",
                doi: "10.1016/B978-0-12-407818-5.00004-8",
                kind: .book_chapter
            )

        case .bekoff_play_signals_punctuation_social_play_canids:
            return .init(
                title: "Play Signals as Punctuation: The Structure of Social Play in Canids",
                url: "https://doi.org/10.1163/156853995X00649",
                authors: "Marc Bekoff",
                date: "1995",
                doi: "10.1163/156853995X00649"
            )

        case .bekoff_allen_intentional_communication_social_play:
            return .init(
                title: "Intentional Communication and Social Play: How and Why Animals Negotiate and Agree to Play",
                url: "https://doi.org/10.1017/CBO9780511608575.006",
                authors: "Marc Bekoff, Colin Allen",
                date: "1998",
                doi: "10.1017/CBO9780511608575.006",
                kind: .book_chapter
            )

        case .essler_cafazzo_marshall_pescini_viranyi_kotrschal_range_play_behavior_wolves_5050:
            return .init(
                title: "Play Behavior in Wolves: Using the ‘50:50’ Rule to Test for Egalitarian Play Styles",
                url: "https://doi.org/10.1371/journal.pone.0154150",
                authors: "Jennifer L. Essler, Simona Cafazzo, Sarah Marshall-Pescini, Zsófia Virányi, Kurt Kotrschal, Friederike Range",
                date: "2016-05-11",
                doi: "10.1371/journal.pone.0154150"
            )

        case .mcevoy_espinosa_crump_arnott_canine_socialisation_review:
            return .init(
                title: "Canine Socialisation: A Narrative Systematic Review",
                url: "https://doi.org/10.3390/ani12212895",
                authors: "Victoria McEvoy, Uri Baqueiro Espinosa, Andrew Crump, Gareth Arnott",
                date: "2022-10-22",
                doi: "10.3390/ani12212895"
            )

        case .avma_socialization_puppies_kittens_literature_review:
            return .init(
                title: "Literature Review on the Welfare Implications of Socialization of Puppies and Kittens",
                url: "https://www.avma.org/sites/default/files/2024-09/avma-lit-review-socialization-puppies-kittens-0924.pdf",
                authors: "American Veterinary Medical Association Animal Welfare Division",
                date: "2024-09-10",
                kind: .report,
                channel: .institutional
            )

        case .brand_oneill_belshaw_dale_merritt_clover_tay_pegram_packer_pandemic_puppies_problem_behaviours:
            return .init(
                title: "Impacts of Puppy Early Life Experiences, Puppy-Purchasing Practices, and Owner Characteristics on Owner-Reported Problem Behaviours in a UK Pandemic Puppies Cohort at 21 Months of Age",
                url: "https://doi.org/10.3390/ani14020336",
                authors: "Claire L. Brand, Dan G. O’Neill, Zoe Belshaw, Fiona C. Dale, Bree L. Merritt, Kathryn N. Clover, Mi-Xue Michelle Tay, Camilla L. Pegram, Rowena M. A. Packer",
                date: "2024-01-22",
                doi: "10.3390/ani14020336"
            )

        case .howell_king_bennett_puppy_parties_socialization_adult_behavior:
            return .init(
                title: "Puppy Parties and Beyond: The Role of Early Age Socialization Practices on Adult Dog Behavior",
                url: "https://doi.org/10.2147/VMRR.S62081",
                authors: "Tiffani J. Howell, Tammie King, Pauleen C. Bennett",
                date: "2015",
                doi: "10.2147/VMRR.S62081"
            )

        case .stolzlechner_bonorand_riemer_optimising_puppy_socialisation_training_programme:
            return .init(
                title: "Optimising Puppy Socialisation—Short- and Long-Term Effects of a Training Programme during the Early Socialisation Period",
                url: "https://doi.org/10.3390/ani12223067",
                authors: "Lisa Stolzlechner, Alina Bonorand, Stefanie Riemer",
                date: "2022-11-18",
                doi: "10.3390/ani12223067"
            )

        case .puurunen_hakanen_salonen_mikkola_sulkama_araujo_lohi_inadequate_socialisation_social_fearfulness:
            return .init(
                title: "Inadequate Socialisation, Inactivity, and Urban Living Environment Are Associated with Social Fearfulness in Pet Dogs",
                url: "https://doi.org/10.1038/s41598-020-60546-w",
                authors: "Jenni Puurunen, Emma Hakanen, Milla K. Salonen, Salla Mikkola, Sini Sulkama, César Araujo, Hannes Lohi",
                date: "2020-02-26",
                doi: "10.1038/s41598-020-60546-w"
            )

        case .wormald_lawrence_carter_fisher_early_social_exposure_reported_aggression:
            return .init(
                title: "Analysis of Correlations between Early Social Exposure and Reported Aggression in the Dog",
                url: "https://doi.org/10.1016/j.jveb.2016.08.071",
                authors: "Dennis Wormald, Andrew J. Lawrence, Gabrielle Carter, Andrew D. Fisher",
                date: "2016",
                doi: "10.1016/j.jveb.2016.08.071"
            )

        case .espinosa_zapata_alvarez_serpell_kukekova_hecht_early_life_adversity_breed_aggression_fear:
            return .init(
                title: "Influence of Early Life Adversity and Breed on Aggression and Fear in Dogs",
                url: "https://doi.org/10.1038/s41598-025-18226-0",
                authors: "Julia Espinosa, Isain Zapata, Carlos E. Alvarez, James A. Serpell, Anna V. Kukekova, Erin E. Hecht",
                date: "2025-10-02",
                doi: "10.1038/s41598-025-18226-0"
            )

        case .appleby_bradshaw_casey_aggressive_avoidance_first_six_months:
            return .init(
                title: "Relationship between Aggressive and Avoidance Behaviour by Dogs and Their Experience in the First Six Months of Life",
                url: "https://doi.org/10.1136/vr.150.14.434",
                authors: "David L. Appleby, John W. S. Bradshaw, Rachel A. Casey",
                date: "2002",
                doi: "10.1136/vr.150.14.434"
            )

        case .batt_batt_baguley_mcgreevy_juvenile_training_socialization_guide_dog_success:
            return .init(
                title: "The Effects of Structured Sessions for Juvenile Training and Socialization on Guide Dog Success and Puppy-Raiser Participation",
                url: "https://doi.org/10.1016/j.jveb.2007.10.003",
                authors: "Lisa Batt, Michael Batt, Jennifer Baguley, Paul McGreevy",
                date: "2008",
                doi: "10.1016/j.jveb.2007.10.003"
            )

        case .denenberg_landsberg_dog_appeasing_pheromones_puppies_training_socialization:
            return .init(
                title: "Effects of Dog-Appeasing Pheromones on Anxiety and Fear in Puppies during Training and on Long-Term Socialization",
                url: "https://doi.org/10.2460/javma.233.12.1874",
                authors: "Sagi Denenberg, Gary M. Landsberg",
                date: "2008",
                doi: "10.2460/javma.233.12.1874"
            )

        case .duxbury_jackson_line_anderson_retention_home_puppy_socialization_classes:
            return .init(
                title: "Evaluation of Association between Retention in the Home and Attendance at Puppy Socialization Classes",
                url: "https://doi.org/10.2460/javma.2003.223.61",
                authors: "Margaret M. Duxbury, Julie A. Jackson, Scott W. Line, Robert K. Anderson",
                date: "2003",
                doi: "10.2460/javma.2003.223.61"
            )

        case .seksel_mazurski_taylor_puppy_socialisation_programs_short_long_term_effects:
            return .init(
                title: "Puppy Socialisation Programs: Short and Long Term Behavioural Effects",
                url: "https://doi.org/10.1016/S0168-1591(98)00239-5",
                authors: "Kerstin Seksel, Esther J. Mazurski, Andrew Taylor",
                date: "1999",
                doi: "10.1016/S0168-1591(98)00239-5"
            )

        case .ward_behavioural_therapy_success_socialisation_subsequent_behaviour:
            return .init(
                title: "Behavioural Therapy Success and the Effect of Socialisation on Subsequent Behaviour in Dogs",
                url: "https://mro.massey.ac.nz/items/a4efced6-807f-4da5-b7a4-1e09f4e552bf",
                authors: "Michelle R. Ward",
                date: "2003",
                kind: .thesis,
                channel: .scholarly
            )

        case .van_der_borg_schilder_vinke_de_vries_dominance_quantitative_analysis:
            return .init(
                title: "Dominance in Domestic Dogs: A Quantitative Analysis of Its Behavioural Measures",
                url: "https://doi.org/10.1371/journal.pone.0133978",
                authors: "Joanne A. M. van der Borg, Matthijs B. H. Schilder, Claudia M. Vinke, Han de Vries",
                date: "2015-08-26",
                doi: "10.1371/journal.pone.0133978"
            )

        case .bradshaw_blackwell_casey_dominance_response_schilder:
            return .init(
                title: "Dominance in Domestic Dogs: A Response to Schilder et al. (2014)",
                url: "https://doi.org/10.1016/j.jveb.2015.11.008",
                authors: "John W. S. Bradshaw, Emily-Jayne Blackwell, Rachel A. Casey",
                date: "2016",
                doi: "10.1016/j.jveb.2015.11.008"
            )

        case .schilder_vinke_van_der_borg_dominance_revisited:
            return .init(
                title: "Dominance in Domestic Dogs Revisited: Useful Habit and Useful Construct?",
                url: "https://doi.org/10.1016/j.jveb.2014.04.005",
                authors: "Matthijs B. H. Schilder, Claudia M. Vinke, Joanne A. M. van der Borg",
                date: "2014",
                doi: "10.1016/j.jveb.2014.04.005"
            )

        case .van_der_borg_schilder_vinke_dominance_behavioral_measures_group_housed_dogs:
            return .init(
                title: "Dominance and Its Behavioral Measures in Group Housed Domestic Dogs",
                url: "https://doi.org/10.1016/j.jveb.2013.04.004",
                authors: "Joanne A. M. van der Borg, Matthijs B. H. Schilder, Claudia M. Vinke",
                date: "2013",
                doi: "10.1016/j.jveb.2013.04.004"
            )

        case .wlodarczyk_be_more_dog_human_canine_relationship_training_methodologies:
            return .init(
                title: "Be More Dog: The Human–Canine Relationship in Contemporary Dog-Training Methodologies",
                url: "https://doi.org/10.1080/13528165.2017.1315962",
                authors: "Justyna Włodarczyk",
                date: "2017",
                doi: "10.1080/13528165.2017.1315962"
            )

        case .kogan_currin_mcculloch_packman_bussolari_dog_training_related_guilt:
            return .init(
                title: "Dog Training-Related Guilt: Prevalence and Associations with Owner Demographics and Self-Compassion",
                url: "https://www.cabidigitallibrary.org/doi/10.1079/hai.2025.0043",
                authors: "Lori R. Kogan, Lauren Currin-McCulloch, Wendy Packman, Carla Bussolari",
                date: "2025-09-25",
                doi: "10.1079/hai.2025.0043"
            )

        case .martin_otis_lussier_troncy_co_construction_human_dog_dyadic_relationship:
            return .init(
                title: "A Conceptual Framework for the Co-Construction of Human–Dog Dyadic Relationship",
                url: "https://www.mdpi.com/2076-2615/15/19/2875",
                authors: "Laurie Martin, Colombe Otis, Bertrand Lussier, Eric Troncy",
                date: "2025",
                doi: "10.3390/ani15192875"
            )

        case .warda_interspecies_emotional_labour_guide_dog_work:
            return .init(
                title: "Interspecies Emotional Labour: Unspoken Expectations of Professionalism in Guide Dog Work",
                url: "https://www.taylorfrancis.com/books/mono/10.4324/9781003601708/interspecies-emotional-labour-tiamat-warda",
                authors: "Tiamat Warda",
                date: "2026",
                doi: "10.4324/9781003601708",
                kind: .book,
                channel: .scholarly
            )

        case .reed_canine_anatomy_and_physiology:
            return .init(
                title: "Canine Anatomy and Physiology: A Practical Approach",
                url: "https://www.amazon.com/Canine-Anatomy-Physiology-Practical-Approach/dp/1910488607",
                authors: "Michael Reed",
                date: "2021",
                kind: .book,
                channel: .textbook
            )

        case .dk_the_dog_encyclopedia:
            return .init(
                title: "The Dog Encyclopedia: The Definitive Visual Guide",
                url: "https://books.google.com/books/about/The_Dog_Encyclopedia.html?id=cBGmEAAAQBAJ",
                authors: "DK",
                date: "2023-07-06",
                kind: .book,
                channel: .textbook
            )

        case .dk_the_complete_dog_breed_book:
            return .init(
                title: "The Complete Dog Breed Book: Choose the Perfect Dog for You",
                url: "https://www.amazon.co.uk/Complete-Dog-Breed-Book-Perfect/dp/0241412730",
                authors: "DK",
                date: "2020-03-05",
                kind: .book,
                channel: .textbook
            )

        case .wang_tedford_dogs_fossil_relatives_evolutionary_history:
            return .init(
                title: "Dogs: Their Fossil Relatives and Evolutionary History",
                url: "https://cup.columbia.edu/book/dogs/9780231135290/",
                authors: "Xiaoming Wang, Richard H. Tedford",
                date: "2008",
                kind: .book,
                channel: .textbook
            )

        case .kaufer_canine_play_behavior:
            return .init(
                title: "Canine Play Behavior: The Science of Dogs at Play",
                url: "https://www.amazon.com/Canine-Play-Behavior-Science-Dogs/dp/161781153X",
                authors: "Mechtild Käufer",
                date: "2014-09-11",
                kind: .book,
                channel: .professional
            )
        }
    }
}

private extension CynologyCommunicationSource {
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
