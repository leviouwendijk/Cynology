import Primitives
import References

public enum CynologyWelfareSource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.welfare

    // MARK: - CanineWelfare

    case cobb_lill_bennett_not_all_dogs_equal_welfare_context
    case rooney_bradshaw_canine_welfare_science_antidote_sentiment_myth
    case englund_cronin_choice_control_animal_welfare
    case littlewood_heslop_cobb_agency_domain_behavioral_interactions
    case rooney_gaines_bradshaw_kenneling_prior_habituation
    case rooney_gaines_hiby_practitioners_guide_working_dog_welfare
    case fernandez_training_as_enrichment
    case hunt_whiteside_prankel_environmental_enrichment_dog_behaviour

    // MARK: - StressAndLearning

    case blackwell_bodnariu_tyson_bradshaw_casey_high_urinary_cortisol

    // MARK: - PainAndMedicalBehavior

    case mills_demontigny_bedard_gruen_klinck_pain_problem_behavior
    case camps_amat_manteca_medical_conditions_behavioral_problems
    case mills_coutts_mcpeake_pain_paresthesia_behavior_problems

    // MARK: - StressAvoidanceAversives

    case sherrod_hage_halpern_moore_personal_causation_perceived_control
    case geer_davison_gatchel_nonveridical_perceived_control
    case staub_tursky_schwartz_self_control_predictability
    case weiss_psychological_factors_stress_disease
    case richter_phenomenon_sudden_death_animals_man

    case maier_stressor_controllability_stress_induced_analgesia
    case maier_seligman_learned_helplessness_at_fifty
    case baratta_seligman_maier_helplessness_to_controllability
    case kearton_marini_cowley_belson_keshavarzi_mayes_lee_predictability_controllability_virtual_fence

    case ledoux_moscarello_sears_campese_birth_death_resurrection_avoidance
    case cobb_jimenez_dreschel_beyond_cortisol

    case abramowitz_oleary_effectiveness_delayed_punishment_applied_setting
    case myer_effects_noncontingent_aversive_stimulation

    // MARK: - ElectronicTrainingDevices

    case christiansen_bakken_braastad_hunting_dogs_confronted_with_sheep
    case christiansen_bakken_braastad_second_year_sheep_aversion_conditioning
    case schilder_van_der_borg_shock_collar_short_long_term_effects
    case salgirli_schalke_boehm_hackbarth_electronic_collar_pinch_quitting_signal
    case blackwell_bolster_richards_loftus_casey_electronic_collars_prevalence_success
    case dale_statham_podlesnik_elliffe_kiwi_aversion_acquisition_maintenance
    case cooper_cracknell_hardiman_wright_mills_remote_electronic_collars_reward_training
    case dale_podlesnik_elliffe_aversion_program_reduce_native_bird_predation
    case masson_de_la_vega_gazzano_mariti_pereira_halsberghe_muser_mckeape_schoening_electronic_training_devices
    case china_mills_cooper_remote_electronic_collars_positive_reinforcement
    case sargisson_mclean_commentary_remote_electronic_collars_positive_reinforcement
    case cooper_mills_china_response_commentary_remote_electronic_training_aids
    case johnson_wynne_efficacy_welfare_chasing_behavior_training_methods

    // MARK: - DemandCapabilityStress

    case xie_johns_job_scope_stress_too_high
    case de_jonge_vegchel_shimazu_schaufeli_dormann_demand_control_specific_demands_control
    case jex_adams_elacqua_bachrach_type_a_stressors_job_complexity
    case forrest_jepson_teacher_stress_achievement_striving_occupational_commitment
    case bandura_self_efficacy_unifying_theory_behavioral_change
    case bandura_self_efficacy_mechanism_human_agency
    case artino_academic_self_efficacy_educational_theory_instructional_practice

    // MARK: - ChallengeSkillEngagement

    case csikszentmihalyi_flow_psychology_optimal_experience
    case westgate_wilson_boring_thoughts_bored_minds_mac_model
    case inzlicht_shenhav_olivola_effort_paradox_costly_valued
    case campbell_wang_inzlicht_effort_increases_meaning
    case chandler_kapelner_breaking_monotony_with_meaning
    case burn_bestial_boredom_biological_perspective
    case meagher_mason_environmental_enrichment_reduces_boredom_mink
    case rothkoff_feng_byosiere_dogs_contrafreeload_willing_not_preference

    // MARK: - ChallengeCalibrationLearning

    case guadagnoli_lee_challenge_point_motor_learning
    case wilson_shenhav_straccia_cohen_eighty_five_percent_rule_optimal_learning
    case bjork_bjork_desirable_difficulties_enhance_learning
    case ryan_deci_self_determination_theory_competence_optimal_challenge
    case handley_hazel_fountain_fernandez_errorless_learning_trial_error_pet_dogs
    case tong_murthy_reddy_adaptive_algorithms_shaping_behavior

    // MARK: - PersistenceFrustrationTolerance

    case ferster_skinner_schedules_of_reinforcement
    case amsel_frustrative_nonreward_partial_reinforcement_discrimination_learning
    case eisenberger_learned_industriousness
    case bustamante_davis_marquez_learned_industriousness_physical_activity_domain
    case thrailkill_kacelnik_porritt_bouton_persistence_heterogeneous_behavior_chain_working_dogs
    case thrailkill_partial_reinforcement_extinction_omission_effects_discriminated_operant_behavior
    case bentosela_barrera_jakovcevic_elgier_mustaca_reinforcement_omission_extinction_communicative_response_dogs
    case dickinson_feuerbacher_frustration_impact_search_rescue_canines
    case pfaller_sadovsky_hurtado_parrado_cardillo_medina_friedman_conditioned_reinforcement_applied_animal_training

    // MARK: - Resilience

    case feder_nestler_charney_psychobiology_molecular_genetics_resilience
    case tiira_resilience_in_dogs_lessons_from_other_species
    case ashokan_sivasubramanian_mitra_seeding_stress_resilience_inoculation
    case parker_buckmaster_schatzberg_lyons_prospective_stress_inoculation_young_monkeys
    case lyons_parker_stress_inoculation_induced_indications_resilience_monkeys
    case admon_leykin_lubin_engert_andrews_pruessner_hendler_hippocampal_volume_vmpfc_stress
    case dong_stress_relief_natural_resilience_mechanism

    case leknes_lee_berna_andersson_tracey_relief_as_reward
    case oleson_gentry_chioma_cheer_dopamine_conditioned_punishment_avoidance
    case navratilova_xie_okun_qu_eyde_king_pain_relief_negative_reinforcement
    case navratilova_atcherley_porreca_brain_circuits_reward_pain_relief
    case bergado_acosta_kahl_kogias_uzuneser_fendt_relief_learning_d1_nmda_nacc
    case mayer_kahl_uzuneser_fendt_mesolimbic_dopamine_relief_learning
    case solomon_corbit_opponent_process_motivation_temporal_dynamics

    case levine_otis_handling_before_after_weaning_deprivation_resistance
    case mezei_rosen_dominance_behavior_infantile_stimulation_rat
    case gazzano_mariti_notari_sighieri_mcbride_early_gentling_environment_puppies
    case battaglia_periods_early_development_stimulation_social_experiences_canine

    // MARK: - AthleteResilienceAnalogues

    case fletcher_sarkar_psychological_resilience_olympic_champions
    case sarkar_fletcher_resilience_sport_performers_review
    case sarkar_fletcher_brown_adversity_superior_olympic_performance
    case fletcher_sarkar_mental_fortitude_training_resilience
    case jones_meijen_mccarthy_sheffield_challenge_threat_states_athletes
    case meijen_turner_jones_sheffield_mccarthy_revised_challenge_threat_states_athletes
    case oudejans_pijpers_training_with_anxiety_performance_under_pressure
    case low_sandercock_freeman_winter_butt_maynard_pressure_training_meta_analysis
    case groepel_mesagno_choking_interventions_sports_review
    case hays_maynard_thomas_bawden_sources_confidence_world_class_performers
    case hays_thomas_maynard_bawden_confidence_world_class_performance
    case jones_hanton_swain_anxiety_interpretation_elite_non_elite_performers
    case driskell_johnston_stress_exposure_training


    // MARK: - AffectiveStateFoundations

    case panksepp_affective_neuroscience_foundations_human_animal_emotions
    case panksepp_affective_consciousness_core_emotional_feelings
    case panksepp_affective_neuroscience_emotional_brainmind
    case panksepp_biven_archaeology_mind_neuroevolutionary_origins
    case russell_circumplex_model_affect
    case harding_paul_mendl_cognitive_bias_affective_state
    case mendl_burman_paul_integrative_framework_animal_emotion_mood
    case mendl_paul_animal_affect_decision_making
    case fanselow_defensive_behavior_system_fear
    case niermann_figner_roelofs_defensive_stress_responses

    // MARK: - MotivationalStates

    case amsel_frustration_theory_dispositional_learning_memory
    case crespi_quantitative_variation_incentive_performance_white_rat
    case mcpeake_canine_frustration_questionnaire
    case mcpeake_behavioural_physiological_correlates_cfq
    case bremhorst_positive_anticipation_frustration_awaiting_reward
    case dzik_reward_not_as_yummy_successive_negative_contrast_dogs
    case hendijani_steel_reward_salience_choice_controlling_context
    case pessiglione_brain_translates_money_into_force
    case sternad_kording_carrot_or_stick_motor_learning
    case galea_dissociable_effects_punishment_reward_motor_learning
    case brucks_reward_type_behavioural_patterns_delay_gratification
    case leonardi_waiting_for_more_exchange_tasks

    public var data: ReferenceData {
        entry.data(
            tags: facets
        )
    }

    private var facets: ReferenceTagSet {
        switch self {
        case .cobb_lill_bennett_not_all_dogs_equal_welfare_context,
            .rooney_bradshaw_canine_welfare_science_antidote_sentiment_myth,
            .englund_cronin_choice_control_animal_welfare,
            .littlewood_heslop_cobb_agency_domain_behavioral_interactions,
            .rooney_gaines_bradshaw_kenneling_prior_habituation,
            .rooney_gaines_hiby_practitioners_guide_working_dog_welfare,
            .fernandez_training_as_enrichment,
            .hunt_whiteside_prankel_environmental_enrichment_dog_behaviour:
            return .cynology(
                .welfare
            )

        case .blackwell_bodnariu_tyson_bradshaw_casey_high_urinary_cortisol:
            return .cynology(
                .stress,
                .physiology,
                .learning_theory
            )

        case .mills_demontigny_bedard_gruen_klinck_pain_problem_behavior,
            .camps_amat_manteca_medical_conditions_behavioral_problems,
            .mills_coutts_mcpeake_pain_paresthesia_behavior_problems:
            return .cynology(
                .pain_medical,
                .physiology,
                .welfare
            )

        case .sherrod_hage_halpern_moore_personal_causation_perceived_control,
            .geer_davison_gatchel_nonveridical_perceived_control,
            .staub_tursky_schwartz_self_control_predictability,
            .weiss_psychological_factors_stress_disease,
            .richter_phenomenon_sudden_death_animals_man,
            .maier_stressor_controllability_stress_induced_analgesia,
            .maier_seligman_learned_helplessness_at_fifty,
            .baratta_seligman_maier_helplessness_to_controllability,
            .kearton_marini_cowley_belson_keshavarzi_mayes_lee_predictability_controllability_virtual_fence:
            return .cynology(
                .stress,
                .aversives,
                .welfare,
                .resilience
            )

        case .ledoux_moscarello_sears_campese_birth_death_resurrection_avoidance:
            return .cynology(
                .stress,
                .aversives,
                .learning_theory,
                .behavior_modification
            )

        case .cobb_jimenez_dreschel_beyond_cortisol:
            return .cynology(
                .welfare,
                .stress,
                .physiology
            )

        case .abramowitz_oleary_effectiveness_delayed_punishment_applied_setting,
            .myer_effects_noncontingent_aversive_stimulation:
            return .cynology(
                .aversives,
                .punishment,
                .stress,
                .welfare
            )

        case .christiansen_bakken_braastad_hunting_dogs_confronted_with_sheep,
            .christiansen_bakken_braastad_second_year_sheep_aversion_conditioning,
            .schilder_van_der_borg_shock_collar_short_long_term_effects,
            .salgirli_schalke_boehm_hackbarth_electronic_collar_pinch_quitting_signal,
            .blackwell_bolster_richards_loftus_casey_electronic_collars_prevalence_success,
            .dale_statham_podlesnik_elliffe_kiwi_aversion_acquisition_maintenance,
            .cooper_cracknell_hardiman_wright_mills_remote_electronic_collars_reward_training,
            .dale_podlesnik_elliffe_aversion_program_reduce_native_bird_predation,
            .masson_de_la_vega_gazzano_mariti_pereira_halsberghe_muser_mckeape_schoening_electronic_training_devices,
            .china_mills_cooper_remote_electronic_collars_positive_reinforcement,
            .sargisson_mclean_commentary_remote_electronic_collars_positive_reinforcement,
            .cooper_mills_china_response_commentary_remote_electronic_training_aids,
            .johnson_wynne_efficacy_welfare_chasing_behavior_training_methods:
            return .cynology(
                .electronic_training_devices,
                .aversives,
                .welfare,
                .training_methods
            )

        case .xie_johns_job_scope_stress_too_high,
            .de_jonge_vegchel_shimazu_schaufeli_dormann_demand_control_specific_demands_control,
            .jex_adams_elacqua_bachrach_type_a_stressors_job_complexity,
            .forrest_jepson_teacher_stress_achievement_striving_occupational_commitment,
            .bandura_self_efficacy_unifying_theory_behavioral_change,
            .bandura_self_efficacy_mechanism_human_agency,
            .artino_academic_self_efficacy_educational_theory_instructional_practice:
            return .cynology(
                .stress,
                .resilience,
                .challenge_calibration,
                .assessment
            )

        case .csikszentmihalyi_flow_psychology_optimal_experience,
            .westgate_wilson_boring_thoughts_bored_minds_mac_model,
            .inzlicht_shenhav_olivola_effort_paradox_costly_valued,
            .campbell_wang_inzlicht_effort_increases_meaning,
            .chandler_kapelner_breaking_monotony_with_meaning,
            .burn_bestial_boredom_biological_perspective,
            .meagher_mason_environmental_enrichment_reduces_boredom_mink,
            .rothkoff_feng_byosiere_dogs_contrafreeload_willing_not_preference:
            return .cynology(
                .engagement,
                .challenge_calibration,
                .welfare
            )

        case .guadagnoli_lee_challenge_point_motor_learning,
            .wilson_shenhav_straccia_cohen_eighty_five_percent_rule_optimal_learning,
            .bjork_bjork_desirable_difficulties_enhance_learning,
            .ryan_deci_self_determination_theory_competence_optimal_challenge,
            .handley_hazel_fountain_fernandez_errorless_learning_trial_error_pet_dogs,
            .tong_murthy_reddy_adaptive_algorithms_shaping_behavior:
            return .cynology(
                .learning_theory,
                .challenge_calibration,
                .training_methods
            )

        case .ferster_skinner_schedules_of_reinforcement,
            .amsel_frustrative_nonreward_partial_reinforcement_discrimination_learning,
            .eisenberger_learned_industriousness,
            .bustamante_davis_marquez_learned_industriousness_physical_activity_domain,
            .thrailkill_kacelnik_porritt_bouton_persistence_heterogeneous_behavior_chain_working_dogs,
            .thrailkill_partial_reinforcement_extinction_omission_effects_discriminated_operant_behavior,
            .bentosela_barrera_jakovcevic_elgier_mustaca_reinforcement_omission_extinction_communicative_response_dogs,
            .dickinson_feuerbacher_frustration_impact_search_rescue_canines,
            .pfaller_sadovsky_hurtado_parrado_cardillo_medina_friedman_conditioned_reinforcement_applied_animal_training:
            return .cynology(
                .frustration_tolerance,
                .resilience,
                .reinforcement,
                .operant_conditioning
            )

        case .feder_nestler_charney_psychobiology_molecular_genetics_resilience,
            .tiira_resilience_in_dogs_lessons_from_other_species,
            .ashokan_sivasubramanian_mitra_seeding_stress_resilience_inoculation,
            .parker_buckmaster_schatzberg_lyons_prospective_stress_inoculation_young_monkeys,
            .lyons_parker_stress_inoculation_induced_indications_resilience_monkeys,
            .admon_leykin_lubin_engert_andrews_pruessner_hendler_hippocampal_volume_vmpfc_stress,
            .dong_stress_relief_natural_resilience_mechanism:
            return .cynology(
                .resilience,
                .stress,
                .physiology,
                .welfare
            )

        case .leknes_lee_berna_andersson_tracey_relief_as_reward,
            .oleson_gentry_chioma_cheer_dopamine_conditioned_punishment_avoidance,
            .navratilova_xie_okun_qu_eyde_king_pain_relief_negative_reinforcement,
            .navratilova_atcherley_porreca_brain_circuits_reward_pain_relief,
            .bergado_acosta_kahl_kogias_uzuneser_fendt_relief_learning_d1_nmda_nacc,
            .mayer_kahl_uzuneser_fendt_mesolimbic_dopamine_relief_learning,
            .solomon_corbit_opponent_process_motivation_temporal_dynamics:
            return .cynology(
                .resilience,
                .stress,
                .pain_medical,
                .reinforcement,
                .operant_conditioning
            )

        case .levine_otis_handling_before_after_weaning_deprivation_resistance,
            .mezei_rosen_dominance_behavior_infantile_stimulation_rat,
            .gazzano_mariti_notari_sighieri_mcbride_early_gentling_environment_puppies,
            .battaglia_periods_early_development_stimulation_social_experiences_canine:
            return .cynology(
                .resilience,
                .socialization,
                .welfare
            )

        case .fletcher_sarkar_psychological_resilience_olympic_champions,
            .sarkar_fletcher_resilience_sport_performers_review,
            .sarkar_fletcher_brown_adversity_superior_olympic_performance,
            .fletcher_sarkar_mental_fortitude_training_resilience:
            return .cynology(
                .resilience,
                .stress,
                .challenge_calibration
            )

        case .jones_meijen_mccarthy_sheffield_challenge_threat_states_athletes,
            .meijen_turner_jones_sheffield_mccarthy_revised_challenge_threat_states_athletes,
            .oudejans_pijpers_training_with_anxiety_performance_under_pressure,
            .low_sandercock_freeman_winter_butt_maynard_pressure_training_meta_analysis,
            .groepel_mesagno_choking_interventions_sports_review,
            .hays_maynard_thomas_bawden_sources_confidence_world_class_performers,
            .hays_thomas_maynard_bawden_confidence_world_class_performance,
            .jones_hanton_swain_anxiety_interpretation_elite_non_elite_performers,
            .driskell_johnston_stress_exposure_training:
            return .cynology(
                .stress,
                .resilience,
                .challenge_calibration,
                .assessment
            )

        case .panksepp_affective_neuroscience_foundations_human_animal_emotions,
            .panksepp_affective_consciousness_core_emotional_feelings,
            .panksepp_affective_neuroscience_emotional_brainmind,
            .panksepp_biven_archaeology_mind_neuroevolutionary_origins,
            .russell_circumplex_model_affect,
            .harding_paul_mendl_cognitive_bias_affective_state,
            .mendl_burman_paul_integrative_framework_animal_emotion_mood,
            .mendl_paul_animal_affect_decision_making:
            return .cynology(
                .affective_state,
                .welfare,
                .physiology
            )

        case .fanselow_defensive_behavior_system_fear,
            .niermann_figner_roelofs_defensive_stress_responses:
            return .cynology(
                .affective_state,
                .stress,
                .anxiety,
                .physiology
            )

        case .amsel_frustration_theory_dispositional_learning_memory,
            .crespi_quantitative_variation_incentive_performance_white_rat,
            .mcpeake_canine_frustration_questionnaire,
            .mcpeake_behavioural_physiological_correlates_cfq,
            .bremhorst_positive_anticipation_frustration_awaiting_reward,
            .dzik_reward_not_as_yummy_successive_negative_contrast_dogs:
            return .cynology(
                .motivation,
                .frustration_tolerance,
                .affective_state,
                .welfare
            )

        case .hendijani_steel_reward_salience_choice_controlling_context,
            .pessiglione_brain_translates_money_into_force,
            .sternad_kording_carrot_or_stick_motor_learning,
            .galea_dissociable_effects_punishment_reward_motor_learning:
            return .cynology(
                .motivation,
                .reinforcement,
                .punishment,
                .learning_theory
            )

        case .brucks_reward_type_behavioural_patterns_delay_gratification,
            .leonardi_waiting_for_more_exchange_tasks:
            return .cynology(
                .motivation,
                .frustration_tolerance,
                .assessment
            )
        }
    }

    private var entry: Entry {
        switch self {
        case .cobb_lill_bennett_not_all_dogs_equal_welfare_context:
            return .init(
                title: "Not All Dogs Are Equal: Perception of Canine Welfare Varies with Context",
                url: "https://doi.org/10.7120/09627286.29.1.027",
                authors: "M. L. Cobb, A. Lill, P. C. Bennett",
                date: "2020",
                doi: "10.7120/09627286.29.1.027"
            )

        case .rooney_bradshaw_canine_welfare_science_antidote_sentiment_myth:
            return .init(
                title: "Canine Welfare Science: An Antidote to Sentiment and Myth",
                url: "https://doi.org/10.1007/978-3-642-53994-7_11",
                authors: "Nicola Rooney, John Bradshaw",
                date: "2014-01-01",
                doi: "10.1007/978-3-642-53994-7_11",
                kind: .book_chapter
            )

        case .englund_cronin_choice_control_animal_welfare:
            return .init(
                title: "Choice, Control, and Animal Welfare: Definitions and Essential Inquiries to Advance Animal Welfare Science",
                url: "https://doi.org/10.3389/fvets.2023.1250251",
                authors: "Maisy D. Englund, Katherine A. Cronin",
                date: "2023-08-02",
                doi: "10.3389/fvets.2023.1250251"
            )

        case .littlewood_heslop_cobb_agency_domain_behavioral_interactions:
            return .init(
                title: "The Agency Domain and Behavioral Interactions: Assessing Positive Animal Welfare Using the Five Domains Model",
                url: "https://doi.org/10.3389/fvets.2023.1284869",
                authors: "Katherine E. Littlewood, Madeleine V. Heslop, Mia L. Cobb",
                date: "2023-11-02",
                doi: "10.3389/fvets.2023.1284869"
            )

        case .rooney_gaines_bradshaw_kenneling_prior_habituation:
            return .init(
                title: "Behavioural and Glucocorticoid Responses of Dogs (Canis familiaris) to Kennelling: Investigating Mitigation of Stress by Prior Habituation",
                url: "https://doi.org/10.1016/j.physbeh.2007.06.011",
                authors: "Nicola J. Rooney, Samantha A. Gaines, John W. S. Bradshaw",
                date: "2007-12-05",
                doi: "10.1016/j.physbeh.2007.06.011"
            )

        case .rooney_gaines_hiby_practitioners_guide_working_dog_welfare:
            return .init(
                title: "A Practitioner's Guide to Working Dog Welfare",
                url: "https://doi.org/10.1016/j.jveb.2008.10.037",
                authors: "Nicola Rooney, Samantha Gaines, Elly Hiby",
                date: "2009-05",
                doi: "10.1016/j.jveb.2008.10.037"
            )

        case .fernandez_training_as_enrichment:
            return .init(
                title: "Training as Enrichment: A Critical Review",
                url: "https://doi.org/10.7120/09627286.31.1.001",
                authors: "Eduardo J. Fernandez",
                date: "2022",
                doi: "10.7120/09627286.31.1.001"
            )

        case .hunt_whiteside_prankel_environmental_enrichment_dog_behaviour:
            return .init(
                title: "Effects of Environmental Enrichment on Dog Behaviour: Pilot Study",
                url: "https://doi.org/10.3390/ani12020141",
                authors: "Rachel L. Hunt, Helen Whiteside, Susanna Prankel",
                date: "2022-01-10",
                doi: "10.3390/ani12020141"
            )

        case .blackwell_bodnariu_tyson_bradshaw_casey_high_urinary_cortisol:
            return .init(
                title: "Rapid Shaping of Behaviour Associated with High Urinary Cortisol in Domestic Dogs",
                url: "https://doi.org/10.1016/j.applanim.2010.02.011",
                authors: "Emily-Jayne Blackwell, Alina Bodnariu, Jane Tyson, John W. S. Bradshaw, Rachel A. Casey",
                date: "2010-05",
                doi: "10.1016/j.applanim.2010.02.011"
            )

        case .mills_demontigny_bedard_gruen_klinck_pain_problem_behavior:
            return .init(
                title: "Pain and Problem Behavior in Cats and Dogs",
                url: "https://doi.org/10.3390/ani10020318",
                authors: "Daniel S. Mills et al.",
                date: "2020-02-18",
                doi: "10.3390/ani10020318"
            )

        case .camps_amat_manteca_medical_conditions_behavioral_problems:
            return .init(
                title: "A Review of Medical Conditions and Behavioral Problems in Dogs and Cats",
                url: "https://doi.org/10.3390/ani9121133",
                authors: "Tomàs Camps, Marta Amat, Xavier Manteca",
                date: "2019-12-09",
                doi: "10.3390/ani9121133"
            )

        case .mills_coutts_mcpeake_pain_paresthesia_behavior_problems:
            return .init(
                title: "Behavior Problems Associated with Pain and Paresthesia",
                url: "https://doi.org/10.1016/j.cvsm.2023.08.007",
                authors: "Daniel S. Mills, Fergus M. Coutts, Kevin J. McPeake",
                date: "2024-01",
                doi: "10.1016/j.cvsm.2023.08.007"
            )

        case .sherrod_hage_halpern_moore_personal_causation_perceived_control:
            return .init(
                title: "Effects of Personal Causation and Perceived Control on Responses to an Aversive Environment: The More Control, the Better",
                url: "https://doi.org/10.1016/0022-1031(77)90010-5",
                authors: "Drury R. Sherrod, Jaime N. Hage, Phillip L. Halpern, Bert S. Moore",
                date: "1977",
                doi: "10.1016/0022-1031(77)90010-5"
            )

        case .geer_davison_gatchel_nonveridical_perceived_control:
            return .init(
                title: "Reduction of Stress in Humans Through Nonveridical Perceived Control of Aversive Stimulation",
                url: "https://doi.org/10.1037/h0030014",
                authors: "James H. Geer, Gerald C. Davison, Robert J. Gatchel",
                date: "1970",
                doi: "10.1037/h0030014"
            )

        case .staub_tursky_schwartz_self_control_predictability:
            return .init(
                title: "Self-Control and Predictability: Their Effects on Reactions to Aversive Stimulation",
                url: "https://doi.org/10.1037/h0030851",
                authors: "Ervin Staub, Bernard Tursky, Gary E. Schwartz",
                date: "1971",
                doi: "10.1037/h0030851"
            )

        case .weiss_psychological_factors_stress_disease:
            return .init(
                title: "Psychological Factors in Stress and Disease",
                url: "https://www.jstor.org/stable/24927365",
                authors: "Jay M. Weiss",
                date: "1972",
                doi: "10.1038/scientificamerican0672-104"
            )

        case .richter_phenomenon_sudden_death_animals_man:
            return .init(
                title: "On the Phenomenon of Sudden Death in Animals and Man",
                url: "https://doi.org/10.1097/00006842-195705000-00004",
                authors: "Curt P. Richter",
                date: "1957",
                doi: "10.1097/00006842-195705000-00004"
            )

        case .maier_stressor_controllability_stress_induced_analgesia:
            return .init(
                title: "Stressor Controllability and Stress-Induced Analgesia",
                url: "https://doi.org/10.1111/j.1749-6632.1986.tb14618.x",
                authors: "Steven F. Maier",
                date: "1986",
                doi: "10.1111/j.1749-6632.1986.tb14618.x"
            )

        case .maier_seligman_learned_helplessness_at_fifty:
            return .init(
                title: "Learned Helplessness at Fifty: Insights from Neuroscience",
                url: "https://doi.org/10.1037/rev0000033",
                authors: "Steven F. Maier, Martin E. P. Seligman",
                date: "2016-07",
                doi: "10.1037/rev0000033"
            )

        case .baratta_seligman_maier_helplessness_to_controllability:
            return .init(
                title: "From Helplessness to Controllability: Toward a Neuroscience of Resilience",
                url: "https://doi.org/10.3389/fpsyt.2023.1170417",
                authors: "Michael V. Baratta, Martin E. P. Seligman, Steven F. Maier",
                date: "2023-05-03",
                doi: "10.3389/fpsyt.2023.1170417"
            )

        case .kearton_marini_cowley_belson_keshavarzi_mayes_lee_predictability_controllability_virtual_fence:
            return .init(
                title: "The Influence of Predictability and Controllability on Stress Responses to the Aversive Component of a Virtual Fence",
                url: "https://doi.org/10.3389/fvets.2020.580523",
                authors: "Tellisa Kearton, Danila Marini, Frances Cowley, Sue Belson, Hamideh Keshavarzi, Bonnie Mayes, Caroline Lee",
                date: "2020-11-30",
                doi: "10.3389/fvets.2020.580523"
            )

        case .ledoux_moscarello_sears_campese_birth_death_resurrection_avoidance:
            return .init(
                title: "The Birth, Death and Resurrection of Avoidance: A Reconceptualization of a Troubled Paradigm",
                url: "https://doi.org/10.1038/mp.2016.166",
                authors: "Joseph E. LeDoux, Justin Moscarello, Robert Sears, Vincent Campese",
                date: "2017",
                doi: "10.1038/mp.2016.166"
            )

        case .cobb_jimenez_dreschel_beyond_cortisol:
            return .init(
                title: "Beyond Cortisol! Physiological Indicators of Welfare for Dogs: Deficits, Misunderstandings and Opportunities",
                url: "https://www.tandfonline.com/doi/full/10.1080/10888705.2025.2572616",
                authors: "M. L. Cobb, A. G. Jiménez, N. A. Dreschel",
                date: "2025-10-21",
                doi: "10.1080/10888705.2025.2572616"
            )

        case .abramowitz_oleary_effectiveness_delayed_punishment_applied_setting:
            return .init(
                title: "Effectiveness of Delayed Punishment in an Applied Setting",
                url: "https://doi.org/10.1016/S0005-7894(05)80279-5",
                authors: "Ann J. Abramowitz, Susan G. O’Leary",
                date: "1990",
                doi: "10.1016/S0005-7894(05)80279-5"
            )

        case .myer_effects_noncontingent_aversive_stimulation:
            return .init(
                title: "Some Effects of Noncontingent Aversive Stimulation",
                url: "https://doi.org/10.1016/B978-0-12-137950-6.50013-4",
                authors: "John S. Myer",
                date: "1971",
                doi: "10.1016/B978-0-12-137950-6.50013-4"
            )

        case .christiansen_bakken_braastad_hunting_dogs_confronted_with_sheep:
            return .init(
                title: "Behavioural Differences between Three Breed Groups of Hunting Dogs Confronted with Domestic Sheep",
                url: "https://doi.org/10.1016/S0168-1591(00)00202-1",
                authors: "Frank O. Christiansen, Morten Bakken, Bjarne O. Braastad",
                date: "2001-04-26",
                doi: "10.1016/S0168-1591(00)00202-1"
            )

        case .christiansen_bakken_braastad_second_year_sheep_aversion_conditioning:
            return .init(
                title: "Behavioural Changes and Aversive Conditioning in Hunting Dogs by the Second-Year Confrontation with Domestic Sheep",
                url: "https://doi.org/10.1016/S0168-1591(00)00203-3",
                authors: "Frank O. Christiansen, Morten Bakken, Bjarne O. Braastad",
                date: "2001-04-26",
                doi: "10.1016/S0168-1591(00)00203-3"
            )

        case .schilder_van_der_borg_shock_collar_short_long_term_effects:
            return .init(
                title: "Training Dogs with Help of the Shock Collar: Short and Long Term Behavioural Effects",
                url: "https://doi.org/10.1016/j.applanim.2003.10.004",
                authors: "Matthijs B. H. Schilder, Joanne A. M. van der Borg",
                date: "2004",
                doi: "10.1016/j.applanim.2003.10.004"
            )

        case .salgirli_schalke_boehm_hackbarth_electronic_collar_pinch_quitting_signal:
            return .init(
                title: "Comparison of Learning Effects and Stress between 3 Different Training Methods (Electronic Training Collar, Pinch Collar and Quitting Signal) in Belgian Malinois Police Dogs",
                url: "https://www.tweedekamer.nl/downloads/document?id=2019D36832",
                authors: "Yasemin Salgirli, Esther Schalke, Imke Boehm, Hansjoachim Hackbarth",
                date: "2012",
                doi: nil
            )

        case .blackwell_bolster_richards_loftus_casey_electronic_collars_prevalence_success:
            return .init(
                title: "The Use of Electronic Collars for Training Domestic Dogs: Estimated Prevalence, Reasons and Risk Factors for Use, and Owner Perceived Success as Compared to Other Training Methods",
                url: "https://doi.org/10.1186/1746-6148-8-93",
                authors: "Emily J. Blackwell, Christine Bolster, Gemma Richards, Bethany A. Loftus, Rachel A. Casey",
                date: "2012-06-29",
                doi: "10.1186/1746-6148-8-93"
            )

        case .dale_statham_podlesnik_elliffe_kiwi_aversion_acquisition_maintenance:
            return .init(
                title: "The Acquisition and Maintenance of Dogs’ Aversion Responses to Kiwi (Apteryx spp.) Training Stimuli across Time and Locations",
                url: "https://doi.org/10.1016/j.applanim.2013.04.006",
                authors: "Arnja R. Dale, Shivaun Statham, Christopher A. Podlesnik, Douglas Elliffe",
                date: "2013-06",
                doi: "10.1016/j.applanim.2013.04.006"
            )

        case .cooper_cracknell_hardiman_wright_mills_remote_electronic_collars_reward_training:
            return .init(
                title: "The Welfare Consequences and Efficacy of Training Pet Dogs with Remote Electronic Training Collars in Comparison to Reward Based Training",
                url: "https://doi.org/10.1371/journal.pone.0102722",
                authors: "Jonathan J. Cooper, Nina Cracknell, Jessica Hardiman, Hannah F. Wright, Daniel S. Mills",
                date: "2014-09-03",
                doi: "10.1371/journal.pone.0102722"
            )

        case .dale_podlesnik_elliffe_aversion_program_reduce_native_bird_predation:
            return .init(
                title: "Evaluation of an Aversion-Based Program Designed to Reduce Predation of Native Birds by Dogs: An Analysis of Training Records for 1156 Dogs",
                url: "https://doi.org/10.1016/j.applanim.2017.03.003",
                authors: "Arnja R. Dale, Christopher A. Podlesnik, Douglas Elliffe",
                date: "2017-06",
                doi: "10.1016/j.applanim.2017.03.003"
            )

        case .masson_de_la_vega_gazzano_mariti_pereira_halsberghe_muser_mckeape_schoening_electronic_training_devices:
            return .init(
                title: "Electronic Training Devices: Discussion on the Pros and Cons of Their Use in Dogs as a Basis for the Position Statement of the European Society of Veterinary Clinical Ethology",
                url: "https://doi.org/10.1016/j.jveb.2018.02.006",
                authors: "Sylvia Masson, Silvia de la Vega, Angelo Gazzano, Chiara Mariti, Gonçalo da Graça Pereira, Christine Halsberghe, Anneli Muser Leyvraz, Kevin McPeake, Barbara Schoening",
                date: "2018",
                doi: "10.1016/j.jveb.2018.02.006"
            )

        case .china_mills_cooper_remote_electronic_collars_positive_reinforcement:
            return .init(
                title: "Efficacy of Dog Training With and Without Remote Electronic Collars vs. a Focus on Positive Reinforcement",
                url: "https://doi.org/10.3389/fvets.2020.00508",
                authors: "Lucy China, Daniel S. Mills, Jonathan J. Cooper",
                date: "2020-07-22",
                doi: "10.3389/fvets.2020.00508"
            )

        case .sargisson_mclean_commentary_remote_electronic_collars_positive_reinforcement:
            return .init(
                title: "Commentary: Efficacy of Dog Training With and Without Remote Electronic Collars vs. a Focus on Positive Reinforcement",
                url: "https://doi.org/10.3389/fvets.2021.629746",
                authors: "Rebecca J. Sargisson, Ian G. McLean",
                date: "2021-04-29",
                doi: "10.3389/fvets.2021.629746"
            )

        case .cooper_mills_china_response_commentary_remote_electronic_training_aids:
            return .init(
                title: "Response: Commentary: Remote Electronic Training Aids; Efficacy at Deterring Predatory Behavior in Dogs and Implications for Training and Policy",
                url: "https://doi.org/10.3389/fvets.2021.675005",
                authors: "Jonathan J. Cooper, Daniel S. Mills, Lucy China",
                date: "2021-04-26",
                doi: "10.3389/fvets.2021.675005"
            )

        case .johnson_wynne_efficacy_welfare_chasing_behavior_training_methods:
            return .init(
                title: "Comparison of the Efficacy and Welfare of Different Training Methods in Stopping Chasing Behavior in Dogs",
                url: "https://doi.org/10.3390/ani14182632",
                authors: "Anamarie C. Johnson, Clive D. L. Wynne",
                date: "2024-09-05",
                doi: "10.3390/ani14182632"
            )

        case .xie_johns_job_scope_stress_too_high:
            return .init(
                title: "Job Scope and Stress: Can Job Scope Be Too High?",
                url: "https://doi.org/10.5465/256858",
                authors: "Jia Lin Xie, Gary Johns",
                date: "1995",
                doi: "10.5465/256858"
            )

        case .de_jonge_vegchel_shimazu_schaufeli_dormann_demand_control_specific_demands_control:
            return .init(
                title: "A Longitudinal Test of the Demand-Control Model Using Specific Job Demands and Specific Job Control",
                url: "https://doi.org/10.1007/s12529-010-9081-1",
                authors: "Jan de Jonge, Natasja van Vegchel, Akihito Shimazu, Wilmar Schaufeli, Christian Dormann",
                date: "2010-03-03",
                doi: "10.1007/s12529-010-9081-1"
            )

        case .jex_adams_elacqua_bachrach_type_a_stressors_job_complexity:
            return .init(
                title: "Type A as a Moderator of Stressors and Job Complexity: A Comparison of Achievement Strivings and Impatience-Irritability",
                url: "https://doi.org/10.1111/j.1559-1816.2002.tb00251.x",
                authors: "Steve M. Jex, Gary A. Adams, Tina C. Elacqua, Daniel G. Bachrach",
                date: "2002",
                doi: "10.1111/j.1559-1816.2002.tb00251.x"
            )

        case .forrest_jepson_teacher_stress_achievement_striving_occupational_commitment:
            return .init(
                title: "Individual Contributory Factors in Teacher Stress: The Role of Achievement Striving and Occupational Commitment",
                url: "https://doi.org/10.1348/000709905X37299",
                authors: "Sarah Forrest, Emma Jepson",
                date: "2006",
                doi: "10.1348/000709905X37299"
            )

        case .bandura_self_efficacy_unifying_theory_behavioral_change:
            return .init(
                title: "Self-Efficacy: Toward a Unifying Theory of Behavioral Change",
                url: "https://doi.org/10.1037/0033-295X.84.2.191",
                authors: "Albert Bandura",
                date: "1977",
                doi: "10.1037/0033-295X.84.2.191"
            )

        case .bandura_self_efficacy_mechanism_human_agency:
            return .init(
                title: "Self-Efficacy Mechanism in Human Agency",
                url: "https://doi.org/10.1037/0003-066X.37.2.122",
                authors: "Albert Bandura",
                date: "1982",
                doi: "10.1037/0003-066X.37.2.122"
            )

        case .artino_academic_self_efficacy_educational_theory_instructional_practice:
            return .init(
                title: "Academic Self-Efficacy: From Educational Theory to Instructional Practice",
                url: "https://doi.org/10.1007/s40037-012-0012-5",
                authors: "Anthony R. Artino Jr.",
                date: "2012-04-11",
                doi: "10.1007/s40037-012-0012-5"
            )

        case .csikszentmihalyi_flow_psychology_optimal_experience:
            return .init(
                title: "Flow: The Psychology of Optimal Experience",
                url: "https://www.harpercollins.com/products/flow-mihaly-csikszentmihalyi",
                authors: "Mihaly Csikszentmihalyi",
                date: "1990",
                kind: .book,
                channel: .scholarly
            )

        case .westgate_wilson_boring_thoughts_bored_minds_mac_model:
            return .init(
                title: "Boring Thoughts and Bored Minds: The MAC Model of Boredom and Cognitive Engagement",
                url: "https://doi.org/10.1037/rev0000097",
                authors: "Erin C. Westgate, Timothy D. Wilson",
                date: "2018",
                doi: "10.1037/rev0000097"
            )

        case .inzlicht_shenhav_olivola_effort_paradox_costly_valued:
            return .init(
                title: "The Effort Paradox: Effort Is Both Costly and Valued",
                url: "https://doi.org/10.1016/j.tics.2018.01.007",
                authors: "Michael Inzlicht, Amitai Shenhav, Christopher Y. Olivola",
                date: "2018-04",
                doi: "10.1016/j.tics.2018.01.007"
            )

        case .campbell_wang_inzlicht_effort_increases_meaning:
            return .init(
                title: "Experimental Evidence That Exerting Effort Increases Meaning",
                url: "https://doi.org/10.1016/j.cognition.2025.106065",
                authors: "Aidan V. Campbell, Yiyi Wang, Michael Inzlicht",
                date: "2025-04",
                doi: "10.1016/j.cognition.2025.106065"
            )

        case .chandler_kapelner_breaking_monotony_with_meaning:
            return .init(
                title: "Breaking Monotony with Meaning: Motivation in Crowdsourcing Markets",
                url: "https://doi.org/10.1016/j.jebo.2013.03.003",
                authors: "Dana Chandler, Adam Kapelner",
                date: "2013",
                doi: "10.1016/j.jebo.2013.03.003"
            )

        case .burn_bestial_boredom_biological_perspective:
            return .init(
                title: "Bestial Boredom: A Biological Perspective on Animal Boredom and Suggestions for Its Scientific Investigation",
                url: "https://doi.org/10.1016/j.anbehav.2017.06.006",
                authors: "Charlotte C. Burn",
                date: "2017",
                doi: "10.1016/j.anbehav.2017.06.006"
            )

        case .meagher_mason_environmental_enrichment_reduces_boredom_mink:
            return .init(
                title: "Environmental Enrichment Reduces Signs of Boredom in Caged Mink",
                url: "https://doi.org/10.1371/journal.pone.0049180",
                authors: "Rebecca K. Meagher, Georgia J. Mason",
                date: "2012-11-14",
                doi: "10.1371/journal.pone.0049180"
            )

        case .rothkoff_feng_byosiere_dogs_contrafreeload_willing_not_preference:
            return .init(
                title: "Domestic Pet Dogs (Canis lupus familiaris) Do Not Show a Preference to Contrafreeload, but Are Willing",
                url: "https://doi.org/10.1038/s41598-024-51663-x",
                authors: "Liza Rothkoff, Lynna Feng, Sarah-Elizabeth Byosiere",
                date: "2024-01-15",
                doi: "10.1038/s41598-024-51663-x"
            )

        case .guadagnoli_lee_challenge_point_motor_learning:
            return .init(
                title: "Challenge Point: A Framework for Conceptualizing the Effects of Various Practice Conditions in Motor Learning",
                url: "https://doi.org/10.3200/JMBR.36.2.212-224",
                authors: "Mark A. Guadagnoli, Timothy D. Lee",
                date: "2004-06",
                doi: "10.3200/JMBR.36.2.212-224"
            )

        case .wilson_shenhav_straccia_cohen_eighty_five_percent_rule_optimal_learning:
            return .init(
                title: "The Eighty Five Percent Rule for Optimal Learning",
                url: "https://doi.org/10.1038/s41467-019-12552-4",
                authors: "Robert C. Wilson, Amitai Shenhav, Mark Straccia, Jonathan D. Cohen",
                date: "2019-11-05",
                doi: "10.1038/s41467-019-12552-4"
            )

        case .bjork_bjork_desirable_difficulties_enhance_learning:
            return .init(
                title: "Making Things Hard on Yourself, But in a Good Way: Creating Desirable Difficulties to Enhance Learning",
                url: "https://bjorklab.psych.ucla.edu/wp-content/uploads/sites/13/2016/04/EBjork_RBjork_2011.pdf",
                authors: "Elizabeth L. Bjork, Robert A. Bjork",
                date: "2011",
                kind: .book_chapter,
                channel: .scholarly
            )

        case .ryan_deci_self_determination_theory_competence_optimal_challenge:
            return .init(
                title: "Intrinsic and Extrinsic Motivation from a Self-Determination Theory Perspective: Definitions, Theory, Practices, and Future Directions",
                url: "https://doi.org/10.1016/j.cedpsych.2020.101860",
                authors: "Richard M. Ryan, Edward L. Deci",
                date: "2020",
                doi: "10.1016/j.cedpsych.2020.101860"
            )

        case .handley_hazel_fountain_fernandez_errorless_learning_trial_error_pet_dogs:
            return .init(
                title: "Comparing Trial-and-Error to Errorless Learning Procedures in Training Pet Dogs: A Visual Discrimination",
                url: "https://doi.org/10.1016/j.lmot.2023.101944",
                authors: "Kimberley Handley, Susan Hazel, Jade Fountain, Eduardo J. Fernandez",
                date: "2023-11-20",
                doi: "10.1016/j.lmot.2023.101944"
            )

        case .tong_murthy_reddy_adaptive_algorithms_shaping_behavior:
            return .init(
                title: "Adaptive Algorithms for Shaping Behavior",
                url: "https://doi.org/10.1371/journal.pcbi.1013454",
                authors: "William L. Tong, Venkatesh N. Murthy, Gautam Reddy",
                date: "2025-09-12",
                doi: "10.1371/journal.pcbi.1013454"
            )

        case .ferster_skinner_schedules_of_reinforcement:
            return .init(
                title: "Schedules of Reinforcement",
                url: "https://doi.org/10.1037/10627-000",
                authors: "Charles B. Ferster, B. F. Skinner",
                date: "1957",
                doi: "10.1037/10627-000",
                kind: .book,
                channel: .scholarly
            )

        case .amsel_frustrative_nonreward_partial_reinforcement_discrimination_learning:
            return .init(
                title: "Frustrative Nonreward in Partial Reinforcement and Discrimination Learning: Some Recent History and a Theoretical Extension",
                url: "https://doi.org/10.1037/h0046200",
                authors: "Abram Amsel",
                date: "1962",
                doi: "10.1037/h0046200"
            )

        case .eisenberger_learned_industriousness:
            return .init(
                title: "Learned Industriousness",
                url: "https://doi.org/10.1037/0033-295X.99.2.248",
                authors: "Robert Eisenberger",
                date: "1992",
                doi: "10.1037/0033-295X.99.2.248"
            )

        case .bustamante_davis_marquez_learned_industriousness_physical_activity_domain:
            return .init(
                title: "A Test of Learned Industriousness in the Physical Activity Domain",
                url: "https://doi.org/10.5539/ijps.v6n4p12",
                authors: "Eduardo E. Bustamante, Catherine L. Davis, David X. Marquez",
                date: "2014",
                doi: "10.5539/ijps.v6n4p12"
            )

        case .thrailkill_kacelnik_porritt_bouton_persistence_heterogeneous_behavior_chain_working_dogs:
            return .init(
                title: "Increasing the Persistence of a Heterogeneous Behavior Chain: Studies of Extinction in a Rat Model of Search Behavior of Working Dogs",
                url: "https://doi.org/10.1016/j.beproc.2016.05.009",
                authors: "Eric A. Thrailkill, Alex Kacelnik, Fay Porritt, Mark E. Bouton",
                date: "2016-06-13",
                doi: "10.1016/j.beproc.2016.05.009"
            )

        case .thrailkill_partial_reinforcement_extinction_omission_effects_discriminated_operant_behavior:
            return .init(
                title: "Partial Reinforcement Extinction and Omission Effects in the Elimination and Recovery of Discriminated Operant Behavior",
                url: "https://doi.org/10.1037/xan0000354",
                authors: "Eric A. Thrailkill",
                date: "2023-07",
                doi: "10.1037/xan0000354"
            )

        case .bentosela_barrera_jakovcevic_elgier_mustaca_reinforcement_omission_extinction_communicative_response_dogs:
            return .init(
                title: "Effect of Reinforcement, Reinforcer Omission and Extinction on a Communicative Response in Domestic Dogs (Canis familiaris)",
                url: "https://doi.org/10.1016/j.beproc.2008.03.004",
                authors: "Mariana Bentosela, Gabriela Barrera, Adriana Jakovcevic, Angel M. Elgier, Alba E. Mustaca",
                date: "2008-08",
                doi: "10.1016/j.beproc.2008.03.004"
            )

        case .dickinson_feuerbacher_frustration_impact_search_rescue_canines:
            return .init(
                title: "Frustration and Its Impact on Search and Rescue Canines",
                url: "https://doi.org/10.3389/fvets.2025.1546412",
                authors: "Sally Dickinson, Erica N. Feuerbacher",
                date: "2025-03-07",
                doi: "10.3389/fvets.2025.1546412"
            )

        case .pfaller_sadovsky_hurtado_parrado_cardillo_medina_friedman_conditioned_reinforcement_applied_animal_training:
            return .init(
                title: "What’s in a Click? The Efficacy of Conditioned Reinforcement in Applied Animal Training: A Systematic Review and Meta-Analysis",
                url: "https://doi.org/10.3390/ani10101757",
                authors: "Nicole Pfaller-Sadovsky, Camilo Hurtado-Parrado, Daniela Cardillo, Lucia G. Medina, Susan G. Friedman",
                date: "2020-09-28",
                doi: "10.3390/ani10101757"
            )

        case .feder_nestler_charney_psychobiology_molecular_genetics_resilience:
            return .init(
                title: "Psychobiology and Molecular Genetics of Resilience",
                url: "https://doi.org/10.1038/nrn2649",
                authors: "Adriana Feder, Eric J. Nestler, Dennis S. Charney",
                date: "2009-06-01",
                doi: "10.1038/nrn2649"
            )

        case .tiira_resilience_in_dogs_lessons_from_other_species:
            return .init(
                title: "Resilience in Dogs: Lessons from Other Species",
                url: "https://doi.org/10.2147/VMRR.S189566",
                authors: "Katriina Tiira",
                date: "2019-11-15",
                doi: "10.2147/VMRR.S189566"
            )

        case .ashokan_sivasubramanian_mitra_seeding_stress_resilience_inoculation:
            return .init(
                title: "Seeding Stress Resilience Through Inoculation",
                url: "https://doi.org/10.1155/2016/4928081",
                authors: "Archana Ashokan, Meenalochani Sivasubramanian, Rupshi Mitra",
                date: "2016-01-05",
                doi: "10.1155/2016/4928081"
            )

        case .parker_buckmaster_schatzberg_lyons_prospective_stress_inoculation_young_monkeys:
            return .init(
                title: "Prospective Investigation of Stress Inoculation in Young Monkeys",
                url: "https://doi.org/10.1001/archpsyc.61.9.933",
                authors: "Karen J. Parker, Catherine L. Buckmaster, Alan F. Schatzberg, David M. Lyons",
                date: "2004-09",
                doi: "10.1001/archpsyc.61.9.933"
            )

        case .lyons_parker_stress_inoculation_induced_indications_resilience_monkeys:
            return .init(
                title: "Stress Inoculation-Induced Indications of Resilience in Monkeys",
                url: "https://doi.org/10.1002/jts.20265",
                authors: "David M. Lyons, Karen J. Parker",
                date: "2007",
                doi: "10.1002/jts.20265"
            )

        case .admon_leykin_lubin_engert_andrews_pruessner_hendler_hippocampal_volume_vmpfc_stress:
            return .init(
                title: "Stress-Induced Reduction in Hippocampal Volume and Connectivity with the Ventromedial Prefrontal Cortex Are Related to Maladaptive Responses to Stressful Military Service",
                url: "https://doi.org/10.1002/hbm.22100",
                authors: "Roee Admon, Dmitry Leykin, Gad Lubin, Veronika Engert, Julie Andrews, Jens Pruessner, Talma Hendler",
                date: "2013-11",
                doi: "10.1002/hbm.22100"
            )

        case .dong_stress_relief_natural_resilience_mechanism:
            return .init(
                title: "Stress Relief as a Natural Resilience Mechanism Against Depression-Like Behaviors",
                url: "https://doi.org/10.1016/j.neuron.2023.09.004",
                authors: "Yiyan Dong, Yifei Li, Xinkuan Xiang, Zhi-Cheng Xiao, Jianbo Hu, Yulong Li, Haohong Li, Hailan Hu",
                date: "2023-10-18",
                doi: "10.1016/j.neuron.2023.09.004"
            )

        case .leknes_lee_berna_andersson_tracey_relief_as_reward:
            return .init(
                title: "Relief as a Reward: Hedonic and Neural Responses to Safety from Pain",
                url: "https://doi.org/10.1371/journal.pone.0017870",
                authors: "Siri Leknes, Michael Lee, Chantal Berna, Jesper Andersson, Irene Tracey",
                date: "2011-04-07",
                doi: "10.1371/journal.pone.0017870"
            )

        case .oleson_gentry_chioma_cheer_dopamine_conditioned_punishment_avoidance:
            return .init(
                title: "Subsecond Dopamine Release in the Nucleus Accumbens Predicts Conditioned Punishment and Its Successful Avoidance",
                url: "https://doi.org/10.1523/JNEUROSCI.3087-12.2012",
                authors: "Erik B. Oleson, Ronny N. Gentry, Vivian C. Chioma, Joseph F. Cheer",
                date: "2012-10-17",
                doi: "10.1523/JNEUROSCI.3087-12.2012"
            )

        case .navratilova_xie_okun_qu_eyde_king_pain_relief_negative_reinforcement:
            return .init(
                title: "Pain Relief Produces Negative Reinforcement Through Activation of Mesolimbic Reward-Valuation Circuitry",
                url: "https://doi.org/10.1073/pnas.1214605109",
                authors: "Edita Navratilova, Jennifer Yanhua Xie, Alec Okun, Chao Qu, N. Eyde, T. King, Frank Porreca",
                date: "2012-12-11",
                doi: "10.1073/pnas.1214605109"
            )

        case .navratilova_atcherley_porreca_brain_circuits_reward_pain_relief:
            return .init(
                title: "Brain Circuits Encoding Reward from Pain Relief",
                url: "https://doi.org/10.1016/j.tins.2015.09.003",
                authors: "Edita Navratilova, Christopher W. Atcherley, Frank Porreca",
                date: "2015-11",
                doi: "10.1016/j.tins.2015.09.003"
            )

        case .bergado_acosta_kahl_kogias_uzuneser_fendt_relief_learning_d1_nmda_nacc:
            return .init(
                title: "Relief Learning Requires a Coincident Activation of Dopamine D1 and NMDA Receptors Within the Nucleus Accumbens",
                url: "https://doi.org/10.1016/j.neuropharm.2016.11.022",
                authors: "Jorge R. Bergado Acosta, Evelyn Kahl, Georgios Kogias, Tahir C. Uzuneser, Markus Fendt",
                date: "2017-03-01",
                doi: "10.1016/j.neuropharm.2016.11.022"
            )

        case .mayer_kahl_uzuneser_fendt_mesolimbic_dopamine_relief_learning:
            return .init(
                title: "Role of the Mesolimbic Dopamine System in Relief Learning",
                url: "https://doi.org/10.1038/s41386-018-0020-1",
                authors: "D. Mayer, E. Kahl, T. C. Uzuneser, Markus Fendt",
                date: "2018-07",
                doi: "10.1038/s41386-018-0020-1"
            )

        case .solomon_corbit_opponent_process_motivation_temporal_dynamics:
            return .init(
                title: "An Opponent-Process Theory of Motivation: I. Temporal Dynamics of Affect",
                url: "https://doi.org/10.1037/h0036128",
                authors: "Richard L. Solomon, John D. Corbit",
                date: "1974",
                doi: "10.1037/h0036128"
            )

        case .levine_otis_handling_before_after_weaning_deprivation_resistance:
            return .init(
                title: "The Effects of Handling Before and After Weaning on the Resistance of Albino Rats to Later Deprivation",
                url: "https://doi.org/10.1037/h0055722",
                authors: "Seymour Levine, Lawrence S. Otis",
                date: "1958",
                doi: "10.1037/h0055722"
            )

        case .mezei_rosen_dominance_behavior_infantile_stimulation_rat:
            return .init(
                title: "The Effect of Infantile Stimulation on Dominance Behavior in the Rat",
                url: "https://doi.org/10.2466/pr0.1959.5.1.31",
                authors: "L. Mezei, J. Rosen",
                date: "1959",
                doi: "10.2466/pr0.1959.5.1.31"
            )

        case .gazzano_mariti_notari_sighieri_mcbride_early_gentling_environment_puppies:
            return .init(
                title: "Effects of Early Gentling and Early Environment on Emotional Development of Puppies",
                url: "https://doi.org/10.1016/j.applanim.2008.12.007",
                authors: "Angelo Gazzano, Chiara Mariti, Lorella Notari, Claudio Sighieri, E. Anne McBride",
                date: "2008",
                doi: "10.1016/j.applanim.2008.12.007"
            )

        case .battaglia_periods_early_development_stimulation_social_experiences_canine:
            return .init(
                title: "Periods of Early Development and the Effects of Stimulation and Social Experiences in the Canine",
                url: "https://breedingbetterdogs.com/article/early-neurological-stimulation",
                authors: "Carmen L. Battaglia",
                date: "2009",
                kind: .webpage,
                channel: .professional
            )

        case .fletcher_sarkar_psychological_resilience_olympic_champions:
            return .init(
                title: "A Grounded Theory of Psychological Resilience in Olympic Champions",
                url: "https://doi.org/10.1016/j.psychsport.2012.04.007",
                authors: "David Fletcher, Mustafa Sarkar",
                date: "2012",
                doi: "10.1016/j.psychsport.2012.04.007"
            )

        case .sarkar_fletcher_resilience_sport_performers_review:
            return .init(
                title: "Psychological Resilience in Sport Performers: A Review of Stressors and Protective Factors",
                url: "https://doi.org/10.1080/02640414.2014.901551",
                authors: "Mustafa Sarkar, David Fletcher",
                date: "2014",
                doi: "10.1080/02640414.2014.901551"
            )

        case .sarkar_fletcher_brown_adversity_superior_olympic_performance:
            return .init(
                title: "What Doesn't Kill Me...: Adversity-Related Experiences Are Vital in the Development of Superior Olympic Performance",
                url: "https://doi.org/10.1016/j.jsams.2014.06.010",
                authors: "Mustafa Sarkar, David Fletcher, Daniel J. Brown",
                date: "2015",
                doi: "10.1016/j.jsams.2014.06.010"
            )

        case .fletcher_sarkar_mental_fortitude_training_resilience:
            return .init(
                title: "Mental Fortitude Training: An Evidence-Based Approach to Developing Psychological Resilience for Sustained Success",
                url: "https://doi.org/10.1080/21520704.2016.1255496",
                authors: "David Fletcher, Mustafa Sarkar",
                date: "2016",
                doi: "10.1080/21520704.2016.1255496"
            )

        case .jones_meijen_mccarthy_sheffield_challenge_threat_states_athletes:
            return .init(
                title: "A Theory of Challenge and Threat States in Athletes",
                url: "https://doi.org/10.1080/17509840902829331",
                authors: "Marc V. Jones, Carla Meijen, Paul J. McCarthy, David Sheffield",
                date: "2009",
                doi: "10.1080/17509840902829331"
            )

        case .meijen_turner_jones_sheffield_mccarthy_revised_challenge_threat_states_athletes:
            return .init(
                title: "A Theory of Challenge and Threat States in Athletes: A Revised Conceptualization",
                url: "https://doi.org/10.3389/fpsyg.2020.00126",
                authors: "Carla Meijen, Martin Turner, Marc V. Jones, David Sheffield, Paul McCarthy",
                date: "2020-02-06",
                doi: "10.3389/fpsyg.2020.00126"
            )

        case .oudejans_pijpers_training_with_anxiety_performance_under_pressure:
            return .init(
                title: "Training With Anxiety Has a Positive Effect on Expert Perceptual-Motor Performance Under Pressure",
                url: "https://doi.org/10.1080/17470210802557702",
                authors: "Raôul R. D. Oudejans, Jan R. Pijpers",
                date: "2009",
                doi: "10.1080/17470210802557702"
            )

        case .low_sandercock_freeman_winter_butt_maynard_pressure_training_meta_analysis:
            return .init(
                title: "Pressure Training for Performance Domains: A Meta-Analysis",
                url: "https://doi.org/10.1037/spy0000202",
                authors: "William R. Low, Gavin R. H. Sandercock, Paul Freeman, Marie E. Winter, Joanne Butt, Ian Maynard",
                date: "2021",
                doi: "10.1037/spy0000202"
            )

        case .groepel_mesagno_choking_interventions_sports_review:
            return .init(
                title: "Choking Interventions in Sports: A Systematic Review",
                url: "https://doi.org/10.1080/1750984X.2017.1408134",
                authors: "Peter Gröpel, Christopher Mesagno",
                date: "2019",
                doi: "10.1080/1750984X.2017.1408134"
            )

        case .hays_maynard_thomas_bawden_sources_confidence_world_class_performers:
            return .init(
                title: "Sources and Types of Confidence Identified by World Class Sport Performers",
                url: "https://doi.org/10.1080/10413200701599173",
                authors: "Kate Hays, Ian Maynard, Owen Thomas, Mark Bawden",
                date: "2007",
                doi: "10.1080/10413200701599173"
            )

        case .hays_thomas_maynard_bawden_confidence_world_class_performance:
            return .init(
                title: "The Role of Confidence in World-Class Sport Performance",
                url: "https://doi.org/10.1080/02640410903089798",
                authors: "Kate Hays, Owen Thomas, Ian Maynard, Mark Bawden",
                date: "2009-09-21",
                doi: "10.1080/02640410903089798"
            )

        case .jones_hanton_swain_anxiety_interpretation_elite_non_elite_performers:
            return .init(
                title: "Intensity and Interpretation of Anxiety Symptoms in Elite and Non-Elite Sports Performers",
                url: "https://doi.org/10.1016/0191-8869(94)90138-4",
                authors: "Graham Jones, Sheldon Hanton, Austin Swain",
                date: "1994-11",
                doi: "10.1016/0191-8869(94)90138-4"
            )

        case .driskell_johnston_stress_exposure_training:
            return .init(
                title: "Stress Exposure Training",
                url: "https://doi.org/10.1037/10278-007",
                authors: "James E. Driskell, Joan H. Johnston",
                date: "1998",
                doi: "10.1037/10278-007"
            )

        case .panksepp_affective_neuroscience_foundations_human_animal_emotions:
            return .init(
                title: "Affective Neuroscience: The Foundations of Human and Animal Emotions",
                url: "https://academic.oup.com/book/53534",
                authors: "Jaak Panksepp",
                date: "1998",
                kind: .book,
                channel: .scholarly
            )

        case .panksepp_affective_consciousness_core_emotional_feelings:
            return .init(
                title: "Affective Consciousness: Core Emotional Feelings in Animals and Humans",
                url: "https://doi.org/10.1016/j.concog.2004.10.004",
                authors: "Jaak Panksepp",
                date: "2005-03",
                doi: "10.1016/j.concog.2004.10.004",
                kind: .article,
                channel: .peer_reviewed
            )

        case .panksepp_affective_neuroscience_emotional_brainmind:
            return .init(
                title: "Affective Neuroscience of the Emotional BrainMind: Evolutionary Perspectives and Implications for Understanding Depression",
                url: "https://pmc.ncbi.nlm.nih.gov/articles/PMC3181986/",
                authors: "Jaak Panksepp",
                date: "2010",
                kind: .article,
                channel: .peer_reviewed
            )

        case .panksepp_biven_archaeology_mind_neuroevolutionary_origins:
            return .init(
                title: "The Archaeology of Mind: Neuroevolutionary Origins of Human Emotions",
                url: "https://books.google.com/books/about/The_Archaeology_of_Mind.html?id=bVdxXN_vVGEC",
                authors: "Jaak Panksepp, Lucy Biven",
                date: "2012-09-17",
                kind: .book,
                channel: .scholarly
            )

        case .russell_circumplex_model_affect:
            return .init(
                title: "A Circumplex Model of Affect",
                url: "https://doi.org/10.1037/h0077714",
                authors: "James A. Russell",
                date: "1980-12",
                doi: "10.1037/h0077714",
                kind: .article,
                channel: .peer_reviewed
            )

        case .harding_paul_mendl_cognitive_bias_affective_state:
            return .init(
                title: "Animal Behaviour: Cognitive Bias and Affective State",
                url: "https://doi.org/10.1038/427312a",
                authors: "Emma J. Harding, Elizabeth S. Paul, Michael Mendl",
                date: "2004-01-22",
                doi: "10.1038/427312a",
                kind: .article,
                channel: .peer_reviewed
            )

        case .mendl_burman_paul_integrative_framework_animal_emotion_mood:
            return .init(
                title: "An Integrative and Functional Framework for the Study of Animal Emotion and Mood",
                url: "https://doi.org/10.1098/rspb.2010.0303",
                authors: "Michael Mendl, Oliver H. P. Burman, Elizabeth S. Paul",
                date: "2010-10",
                doi: "10.1098/rspb.2010.0303",
                kind: .article,
                channel: .peer_reviewed
            )

        case .mendl_paul_animal_affect_decision_making:
            return .init(
                title: "Animal Affect and Decision-Making",
                url: "https://doi.org/10.1016/j.neubiorev.2020.01.025",
                authors: "Michael Mendl, Elizabeth S. Paul",
                date: "2020-05",
                doi: "10.1016/j.neubiorev.2020.01.025",
                kind: .article,
                channel: .peer_reviewed
            )

        case .fanselow_defensive_behavior_system_fear:
            return .init(
                title: "Neural Organization of the Defensive Behavior System Responsible for Fear",
                url: "https://doi.org/10.3758/BF03210947",
                authors: "Michael S. Fanselow",
                date: "1994-12",
                doi: "10.3758/BF03210947",
                kind: .article,
                channel: .peer_reviewed
            )

        case .niermann_figner_roelofs_defensive_stress_responses:
            return .init(
                title: "Individual Differences in Defensive Stress-Responses: The Potential Relevance for Psychopathology",
                url: "https://doi.org/10.1016/j.cobeha.2017.01.002",
                authors: "Hanneke C. M. Niermann, Bernd Figner, Karin Roelofs",
                date: "2017-04",
                doi: "10.1016/j.cobeha.2017.01.002",
                kind: .article,
                channel: .peer_reviewed
            )

        case .amsel_frustration_theory_dispositional_learning_memory:
            return .init(
                title: "Frustration Theory: An Analysis of Dispositional Learning and Memory",
                url: "https://books.google.com/books/about/Frustration_Theory.html?id=OD2e3xsDTrsC",
                authors: "Abram Amsel",
                date: "1992",
                kind: .book,
                channel: .scholarly
            )

        case .crespi_quantitative_variation_incentive_performance_white_rat:
            return .init(
                title: "Quantitative Variation of Incentive and Performance in the White Rat",
                url: "https://doi.org/10.2307/1417120",
                authors: "Leo P. Crespi",
                date: "1942",
                doi: "10.2307/1417120",
                kind: .article,
                channel: .peer_reviewed
            )

        case .mcpeake_canine_frustration_questionnaire:
            return .init(
                title: "The Canine Frustration Questionnaire—Development of a New Psychometric Tool for Measuring Frustration in Domestic Dogs (Canis familiaris)",
                url: "https://doi.org/10.3389/fvets.2019.00152",
                authors: "Kevin J. McPeake, Jonathan J. Cooper, Hannah S. Wright, Daniel S. Mills",
                date: "2019",
                doi: "10.3389/fvets.2019.00152",
                kind: .article,
                channel: .peer_reviewed
            )

        case .mcpeake_behavioural_physiological_correlates_cfq:
            return .init(
                title: "Behavioural and Physiological Correlates of the Canine Frustration Questionnaire",
                url: "https://doi.org/10.3390/ani11123346",
                authors: "Kevin J. McPeake, Helen Zulch, Lisa M. Collins, Daniel S. Mills",
                date: "2021",
                doi: "10.3390/ani11123346",
                kind: .article,
                channel: .peer_reviewed
            )

        case .bremhorst_positive_anticipation_frustration_awaiting_reward:
            return .init(
                title: "Differences in Facial Expressions During Positive Anticipation and Frustration in Dogs Awaiting a Reward",
                url: "https://doi.org/10.1038/s41598-019-55714-6",
                authors: "Annika Bremhorst, Nicole A. Sutter, Hanno Würbel, Daniel S. Mills, Stefanie Riemer",
                date: "2019-12-17",
                doi: "10.1038/s41598-019-55714-6",
                kind: .article,
                channel: .peer_reviewed
            )

        case .dzik_reward_not_as_yummy_successive_negative_contrast_dogs:
            return .init(
                title: "What if the Reward Is Not as Yummy? Study of the Effects of Successive Negative Contrast in Domestic Dogs in Two Different Tasks",
                url: "https://doi.org/10.1016/j.jveb.2023.12.009",
                authors: "Marina Victoria Dzik, Fabricio Carballo, Camila Cavalli, Micaela Iglesias, Tamás Faragó, Enikő Kubinyi, Mariana Bentosela",
                date: "2024-03",
                doi: "10.1016/j.jveb.2023.12.009",
                kind: .article,
                channel: .peer_reviewed
            )

        case .hendijani_steel_reward_salience_choice_controlling_context:
            return .init(
                title: "Reward Salience and Choice in a Controlling Context: A Lab Experiment",
                url: "https://doi.org/10.3389/fpsyg.2022.862152",
                authors: "Rosa Hendijani, Piers Steel",
                date: "2022-04-25",
                doi: "10.3389/fpsyg.2022.862152",
                kind: .article,
                channel: .peer_reviewed
            )

        case .pessiglione_brain_translates_money_into_force:
            return .init(
                title: "How the Brain Translates Money into Force: A Neuroimaging Study of Subliminal Motivation",
                url: "https://doi.org/10.1126/science.1140459",
                authors: "Mathias Pessiglione, Liane Schmidt, Bogdan Draganski, Raffael Kalisch, Hakwan Lau, Ray J. Dolan, Chris D. Frith",
                date: "2007-05-11",
                doi: "10.1126/science.1140459",
                kind: .article,
                channel: .peer_reviewed
            )

        case .sternad_kording_carrot_or_stick_motor_learning:
            return .init(
                title: "Carrot or Stick in Motor Learning",
                url: "https://doi.org/10.1038/nn.3978",
                authors: "Dagmar Sternad, Konrad Paul Körding",
                date: "2015-04",
                doi: "10.1038/nn.3978",
                kind: .article,
                channel: .peer_reviewed
            )

        case .galea_dissociable_effects_punishment_reward_motor_learning:
            return .init(
                title: "The Dissociable Effects of Punishment and Reward on Motor Learning",
                url: "https://doi.org/10.1038/nn.3956",
                authors: "Joseph M. Galea, Elizabeth Mallia, John Rothwell, Jörn Diedrichsen",
                date: "2015-04",
                doi: "10.1038/nn.3956",
                kind: .article,
                channel: .peer_reviewed
            )

        case .brucks_reward_type_behavioural_patterns_delay_gratification:
            return .init(
                title: "Reward Type and Behavioural Patterns Predict Dogs’ Success in a Delay of Gratification Paradigm",
                url: "https://doi.org/10.1038/srep42459",
                authors: "Désirée Brucks, Matteo Soliani, Friederike Range, Sarah Marshall-Pescini",
                date: "2017-03-08",
                doi: "10.1038/srep42459",
                kind: .article,
                channel: .peer_reviewed
            )

        case .leonardi_waiting_for_more_exchange_tasks:
            return .init(
                title: "Waiting for More: The Performance of Domestic Dogs (Canis familiaris) on Exchange Tasks",
                url: "https://doi.org/10.1007/s10071-011-0437-y",
                authors: "Rebecca J. Leonardi, Sarah-Jane Vick, Valérie Dufour",
                date: "2012",
                doi: "10.1007/s10071-011-0437-y",
                kind: .article,
                channel: .peer_reviewed
            )
        }
    }
}

private extension CynologyWelfareSource {
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
