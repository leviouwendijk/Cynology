import Primitives
import References

public extension CynologySources {
    enum Physiology: String, CaseIterable, Codable, CynologySourceProviding {
        public static let namespace = "cynology.physiology"

        // MARK: - ClinicalBehavior

        // old: CynologyClinicalSource.hammerle_horst_levine_overall_radosta_rafter_ritchie_yin_aaha_behavior_guidelines
        case aaha_behavior_guidelines

        // old: CynologyClinicalSource.overall_manual_clinical_behavioral_medicine
        case manual_clinical_behavioral_medicine

        // old: CynologyClinicalSource.van_haevermaet_soulsbury_mills_reactive_risky_dog_reactive_dogs
        case reactive_and_risky

        // old: CynologyClinicalSource.tiira_lohi_early_life_experiences_exercise_canine_anxieties
        case early_life_experiences_exercise_anxieties

        // old: CynologyClinicalSource.herron_shofer_reisner_diazepam_anxiety_related_behavior_problems
        case diazepam_anxiety_related_behavior

        // old: CynologyClinicalSource.salonen_mikkola_hakanen_sulkama_puurunen_lohi_personality_traits_behavioral_problems
        case personality_unwanted_behavior_survey
        case personality_traits_behavioral_problems

        // old: CynologyClinicalSource.kolkmeyer_baum_warlich_zach_ganslosser_husky_bulldog_castration_breed_groups
        case castration_aggression_fear

        // old: BehaviorAssessmentTemperament.jung_song_yang_yoo_heo_yoon_temperament_cortisol_serotonin
        case temperament_cortisol_serotonin

        // old: CynologyClinicalSource.batista_lavrador_da_graca_pereira_predictors_fear_anxiety_companion_dogs
        case predictors_fear_anxiety

        // old: CynologyClinicalSource.riemer_effectiveness_treatments_firework_fears_dogs
        case firework_fear_treatments
        case firework_aversion_dutch_owners

        // old: CynologyClinicalSource.storengen_lingaas_noise_sensitivity_17_dog_breeds
        case noise_sensitivity_17_breeds

        // old: CynologyClinicalSource.blackwell_bradshaw_casey_fear_responses_noises_prevalence_risk_factors
        case fear_responses_noises

        // old: CynologyClinicalSource.takeuchi_houpt_scarlett_treatments_separation_anxiety_dogs
        case separation_anxiety_treatments

        // old: CynologyClinicalSource.sherman_separation_anxiety_in_dogs
        case separation_anxiety_in_dogs

        // old: CynologyClinicalSource.flannigan_dodman_risk_factors_behaviors_separation_anxiety
        case risk_factors_separation_anxiety

        // old: CynologyClinicalSource.babington_addressing_canine_separation_anxiety_desensitization_counterconditioning
        case separation_anxiety_desensitization_counterconditioning

        // old: CynologyClinicalSource.papuc_deac_purdoiu_behavioral_therapy_separation_anxiety_dog
        case behavioral_therapy_separation_anxiety

        // old: CynologyClinicalSource.parthasarathy_crowell_davis_attachment_owners_separation_anxiety
        case attachment_separation_anxiety

        // old: CynologyClinicalSource.lenkei_farago_bakos_pongracz_separation_related_behavior_frustration_fear
        case separation_related_behavior_frustration_fear

        // old: CynologyClinicalSource.silbermann_ganslosser_isolation_behavior_questionnaire_cortisol_separation
        case isolation_behavior_cortisol

        // old: CynologyClinicalSource.mariti_carlone_protti_diverio_gazzano_petting_before_brief_separation
        case petting_before_brief_separation

        // old: CynologyClinicalSource.borchelt_voith_diagnosis_treatment_separation_related_behavior_problems
        case diagnosis_treatment_separation_related_behavior

        // MARK: - PsychobiologicalEmotion

        case assessing_emotional_behavior_problems
        case psychobiological_framework_discrete_emotions
        case puppy_problem_clusters_emotional_commonalities
        case acute_emotional_state_indicators
        case emotional_arousal_physical_health
        case saliva_sampling_stress_procedures

        // MARK: - AggressionRisk

        // old: CynologyClinicalSource.ragatz_fremouw_thomas_mccoy_vicious_dogs_owner_characteristics
        case vicious_dogs

        // old: CynologyClinicalSource.barnes_boat_putnam_high_risk_vicious_dogs_deviant_behaviors
        case high_risk_dogs_deviant_behaviors

        // old: CynologyClinicalSource.schilder_van_der_borg_vinke_intraspecific_killing_predation_aggression
        case intraspecific_killing

        // old: CynologyClinicalSource.podberscek_serpell_aggressive_behaviour_cocker_spaniels_owner_personality
        case aggressive_cocker_spaniels

        // old: CynologyClinicalSource.hsu_sun_factors_aggressive_responses_pet_dogs
        case aggressive_responses_pet_dogs
        case dog_bites_public_health
        case demographic_environmental_aggression_purebred_dogs
        case human_directed_aggression_professional_opinion
        case aggressive_reactivity_self_control

        // MARK: - Impulsivity

        case canine_hyperactivity_impulsivity_inattention_adhd
        case repetitive_behaviour_adhd_like_environment

        // MARK: - ProblemBehavior

        // old: CynologyClinicalSource.dorey_tobias_udell_wynne_decreasing_problem_behavior_functional_analysis
        case functional_analysis_problem_behavior

        // old: CynologyClinicalSource.mehrkam_perez_self_vollmer_dorey_functional_analysis_food_guarding
        case food_guarding_functional_analysis

        // old: CynologyClinicalSource.giannone_zilocchi_training_effects_on_dog_behavior
        case training_effects_dog_behavior

        // old: CynologyClinicalSource.rowland_de_assis_menteith_winter_zulch_mills_educational_apps_problem_prevention
        case educational_apps_problem_prevention

        // old: CynologyClinicalSource.ofarrell_owner_attitudes_dog_behaviour_problems
        case owner_attitudes_behavior_problems

        // old: CynologyClinicalSource.wells_hepper_prevalence_behaviour_problems_rescue_shelter
        case prevalence_behaviour_problems_rescue_shelter

        // old: CynologyClinicalSource.kwan_bain_owner_attachment_problem_behaviors_training_techniques
        case owner_attachment_problem_behaviors

        // old: CynologyClinicalSource.van_der_borg_netto_planta_shelter_testing_predict_problem_behaviour
        case shelter_testing_predict_problem_behaviour

        // old: CynologyClinicalSource.powell_lee_reinhard_morris_satriale_serpell_watson_returning_shelter_dog
        case returning_a_shelter_dog

        // old: CynologyClinicalSource.clay_paterson_bennett_perry_phillips_shelter_assessments_post_adoption
        case shelter_assessments_post_adoption
        case owner_animal_factors_problem_behaviors

        // MARK: - CanineDiet

        // old: CynologyNutritionSource.knight_vegan_versus_meat_based_dog_food_guardian_reported_health
        case vegan_versus_meat_based_food

        // old: CynologyNutritionSource.linde_lahiff_krantz_sharp_ng_melgarejo_plant_based_diet_one_year_health_outcomes
        case plant_based_diet_one_year

        // old: CynologyNutritionSource.dominguez_oliva_mota_rojas_semendric_whittaker_impact_vegan_diets_indicators_health
        case vegan_diets_indicators_health

        // old: CynologyNutritionSource.brociek_li_broughton_gardner_nutritional_analysis_plant_meat_based_dry_dog_foods
        case plant_meat_dry_foods_nutritional_analysis

        // old: CynologyNutritionSource.roberts_oba_swanson_digestibility_mildly_cooked_human_grade_vegan_dog_foods
        case vegan_dog_food_digestibility

        // old: CynologyNutritionSource.zafalon_risolia_vendramini_rodrigues_pedrinelli_teixeira_rentas_perini_alvarenga_brunetto_nutritional_inadequacies_vegan_pet_foods
        case vegan_food_nutritional_inadequacies

        // old: CynologyNutritionSource.knight_relative_benefits_environmental_sustainability_vegan_diets
        case vegan_diets_environmental_sustainability

        // old: CynologyNutritionSource.barrett_jolley_german_owner_perceptions_health_diet_reanalysis
        case owner_perceptions_health_diet

        // MARK: - MedicalPhysiologyBooks

        // old: CynologyTrainingSource.black_murphy_payne_hall_notes_on_canine_internal_medicine
        case notes_on_canine_internal_medicine

        // MARK: - WorkingDogStressPhysiology

        // old: CynologyWorkingDogSource.cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response
        case working_dog_stress_response

        // old: CynologyWorkingDogSource.cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response_correction
        case working_dog_stress_response_correction

        case heart_rate_variability_scent_work

        // MARK: - CanineWelfare

        // old: CynologyWelfareSource.cobb_lill_bennett_not_all_dogs_equal_welfare_context
        case not_all_dogs_equal

        // old: CynologyWelfareSource.rooney_bradshaw_canine_welfare_science_antidote_sentiment_myth
        case canine_welfare_science
        case companion_dog_welfare_living_conditions

        // old: CynologyWelfareSource.englund_cronin_choice_control_animal_welfare
        case choice_control_welfare

        // old: CynologyWelfareSource.littlewood_heslop_cobb_agency_domain_behavioral_interactions
        case agency_domain

        // old: CynologyWelfareSource.rooney_gaines_bradshaw_kenneling_prior_habituation
        case kenneling_prior_habituation

        // old: CynologyWelfareSource.rooney_gaines_hiby_practitioners_guide_working_dog_welfare
        case working_dog_welfare_guide

        // old: CynologyWelfareSource.fernandez_training_as_enrichment
        case training_as_enrichment

        // old: CynologyWelfareSource.hunt_whiteside_prankel_environmental_enrichment_dog_behaviour
        case environmental_enrichment_dog_behaviour

        // MARK: - StressAndLearning

        // old: CynologyWelfareSource.blackwell_bodnariu_tyson_bradshaw_casey_high_urinary_cortisol
        case high_urinary_cortisol

        // MARK: - PainAndMedicalBehavior

        // old: CynologyWelfareSource.mills_demontigny_bedard_gruen_klinck_pain_problem_behavior
        case pain_and_problem_behavior

        // old: CynologyWelfareSource.camps_amat_manteca_medical_conditions_behavioral_problems
        case medical_conditions_behavioral_problems

        // old: CynologyWelfareSource.mills_coutts_mcpeake_pain_paresthesia_behavior_problems
        case pain_paresthesia_behavior_problems

        // MARK: - StressAvoidanceAversives

        // old: CynologyWelfareSource.sherrod_hage_halpern_moore_personal_causation_perceived_control
        case personal_causation_perceived_control

        // old: CynologyWelfareSource.geer_davison_gatchel_nonveridical_perceived_control
        case nonveridical_perceived_control

        // old: CynologyWelfareSource.staub_tursky_schwartz_self_control_predictability
        case self_control_predictability

        // old: CynologyWelfareSource.weiss_psychological_factors_stress_disease
        case psychological_factors_stress_disease

        // old: CynologyWelfareSource.richter_phenomenon_sudden_death_animals_man
        case sudden_death_phenomenon

        // old: CynologyWelfareSource.maier_stressor_controllability_stress_induced_analgesia
        case stressor_controllability_analgesia

        // old: CynologyWelfareSource.maier_seligman_learned_helplessness_at_fifty
        case learned_helplessness_at_fifty

        // old: CynologyWelfareSource.baratta_seligman_maier_helplessness_to_controllability
        case helplessness_to_controllability

        // old: CynologyWelfareSource.kearton_marini_cowley_belson_keshavarzi_mayes_lee_predictability_controllability_virtual_fence
        case predictability_controllability_virtual_fence

        // old: CynologyWelfareSource.ledoux_moscarello_sears_campese_birth_death_resurrection_avoidance
        case avoidance_birth_death_resurrection

        // old: CynologyWelfareSource.cobb_jimenez_dreschel_beyond_cortisol
        case beyond_cortisol

        // old: CynologyWelfareSource.abramowitz_oleary_effectiveness_delayed_punishment_applied_setting
        case delayed_punishment_applied_setting

        // old: CynologyWelfareSource.myer_effects_noncontingent_aversive_stimulation
        case noncontingent_aversive_stimulation

        // MARK: - ElectronicTrainingDevices

        // old: CynologyWelfareSource.christiansen_bakken_braastad_hunting_dogs_confronted_with_sheep
        case hunting_dogs_confronted_with_sheep

        // old: CynologyWelfareSource.christiansen_bakken_braastad_second_year_sheep_aversion_conditioning
        case second_year_sheep_aversion

        // old: CynologyWelfareSource.schilder_van_der_borg_shock_collar_short_long_term_effects
        case shock_collar_effects

        // old: CynologyWelfareSource.salgirli_schalke_boehm_hackbarth_electronic_collar_pinch_quitting_signal
        case electronic_collar_pinch_quitting_signal

        // old: CynologyWelfareSource.blackwell_bolster_richards_loftus_casey_electronic_collars_prevalence_success
        case electronic_collars_prevalence_success

        // old: CynologyWelfareSource.dale_statham_podlesnik_elliffe_kiwi_aversion_acquisition_maintenance
        case kiwi_aversion_acquisition_maintenance

        // old: CynologyWelfareSource.cooper_cracknell_hardiman_wright_mills_remote_electronic_collars_reward_training
        case remote_electronic_collars_reward_training
        case remote_static_pulse_systems_welfare_report

        // old: CynologyWelfareSource.dale_podlesnik_elliffe_aversion_program_reduce_native_bird_predation
        case native_bird_predation_aversion

        // old: CynologyWelfareSource.masson_de_la_vega_gazzano_mariti_pereira_halsberghe_muser_mckeape_schoening_electronic_training_devices
        case electronic_training_devices

        // old: CynologyWelfareSource.china_mills_cooper_remote_electronic_collars_positive_reinforcement
        case remote_collars_positive_reinforcement

        // old: CynologyWelfareSource.sargisson_mclean_commentary_remote_electronic_collars_positive_reinforcement
        case commentary_remote_collars

        // old: CynologyWelfareSource.cooper_mills_china_response_commentary_remote_electronic_training_aids
        case response_commentary_electronic_aids

        // old: CynologyWelfareSource.johnson_wynne_efficacy_welfare_chasing_behavior_training_methods
        case chasing_behavior_training_methods

        case coyote_predation_electronic_training_collar
        case safety_training_avoidance_motivated_aggression
        case salgirli_dissertation_stress_learning_training_methods
        case collar_mounted_electronic_devices_behavior_modification
        case clinical_signs_electric_training_collars
        case bva_bsava_electronic_training_aids_consultation_response
        case victoria_prevention_cruelty_animals_electronic_collars

        // MARK: - DemandCapabilityStress

        // old: CynologyWelfareSource.xie_johns_job_scope_stress_too_high
        case job_scope_too_high

        // old: CynologyWelfareSource.de_jonge_vegchel_shimazu_schaufeli_dormann_demand_control_specific_demands_control
        case demand_control_specific_demands

        // old: CynologyWelfareSource.jex_adams_elacqua_bachrach_type_a_stressors_job_complexity
        case stressors_job_complexity_type_a

        // old: CynologyWelfareSource.forrest_jepson_teacher_stress_achievement_striving_occupational_commitment
        case teacher_stress_achievement_striving

        // old: CynologyWelfareSource.bandura_self_efficacy_unifying_theory_behavioral_change
        case self_efficacy_unifying_theory

        // old: CynologyWelfareSource.bandura_self_efficacy_mechanism_human_agency
        case self_efficacy_human_agency

        // old: CynologyWelfareSource.artino_academic_self_efficacy_educational_theory_instructional_practice
        case academic_self_efficacy

        // MARK: - ChallengeSkillEngagement

        // old: CynologyWelfareSource.csikszentmihalyi_flow_psychology_optimal_experience
        case flow_optimal_experience

        // old: CynologyWelfareSource.westgate_wilson_boring_thoughts_bored_minds_mac_model
        case boring_thoughts_bored_minds

        // old: CynologyWelfareSource.inzlicht_shenhav_olivola_effort_paradox_costly_valued
        case effort_paradox

        // old: CynologyWelfareSource.campbell_wang_inzlicht_effort_increases_meaning
        case effort_increases_meaning

        // old: CynologyWelfareSource.chandler_kapelner_breaking_monotony_with_meaning
        case breaking_monotony_with_meaning

        // old: CynologyWelfareSource.burn_bestial_boredom_biological_perspective
        case bestial_boredom

        // old: CynologyWelfareSource.meagher_mason_environmental_enrichment_reduces_boredom_mink
        case enrichment_reduces_boredom

        // old: CynologyWelfareSource.rothkoff_feng_byosiere_dogs_contrafreeload_willing_not_preference
        case dogs_contrafreeload

        // MARK: - ChallengeCalibrationLearning

        // old: CynologyWelfareSource.guadagnoli_lee_challenge_point_motor_learning
        case challenge_point_motor_learning

        // old: CynologyWelfareSource.wilson_shenhav_straccia_cohen_eighty_five_percent_rule_optimal_learning
        case eighty_five_percent_rule

        // old: CynologyWelfareSource.bjork_bjork_desirable_difficulties_enhance_learning
        case desirable_difficulties

        // old: CynologyWelfareSource.ryan_deci_self_determination_theory_competence_optimal_challenge
        case competence_optimal_challenge

        // old: CynologyWelfareSource.handley_hazel_fountain_fernandez_errorless_learning_trial_error_pet_dogs
        case errorless_learning_pet_dogs

        // old: CynologyWelfareSource.tong_murthy_reddy_adaptive_algorithms_shaping_behavior
        case adaptive_algorithms_shaping_behavior

        // MARK: - PersistenceFrustrationTolerance

        // old: CynologyWelfareSource.ferster_skinner_schedules_of_reinforcement
        case schedules_of_reinforcement

        // old: CynologyWelfareSource.amsel_frustrative_nonreward_partial_reinforcement_discrimination_learning
        case frustrative_nonreward

        // old: CynologyWelfareSource.eisenberger_learned_industriousness
        case learned_industriousness

        // old: CynologyWelfareSource.bustamante_davis_marquez_learned_industriousness_physical_activity_domain
        case learned_industriousness_physical_activity

        // old: CynologyWelfareSource.thrailkill_kacelnik_porritt_bouton_persistence_heterogeneous_behavior_chain_working_dogs
        case persistence_behavior_chain_working_dogs

        // old: CynologyWelfareSource.thrailkill_partial_reinforcement_extinction_omission_effects_discriminated_operant_behavior
        case partial_reinforcement_omission_effects

        // old: CynologyWelfareSource.bentosela_barrera_jakovcevic_elgier_mustaca_reinforcement_omission_extinction_communicative_response_dogs
        case reinforcement_omission_extinction_dogs

        // old: CynologyWelfareSource.dickinson_feuerbacher_frustration_impact_search_rescue_canines
        case frustration_search_rescue_canines

        // old: CynologyWelfareSource.pfaller_sadovsky_hurtado_parrado_cardillo_medina_friedman_conditioned_reinforcement_applied_animal_training
        case conditioned_reinforcement_training

        // MARK: - Resilience

        // old: CynologyWelfareSource.feder_nestler_charney_psychobiology_molecular_genetics_resilience
        case psychobiology_resilience

        // old: CynologyWelfareSource.tiira_resilience_in_dogs_lessons_from_other_species
        case resilience_in_dogs

        // old: CynologyWelfareSource.ashokan_sivasubramanian_mitra_seeding_stress_resilience_inoculation
        case stress_resilience_inoculation

        // old: CynologyWelfareSource.parker_buckmaster_schatzberg_lyons_prospective_stress_inoculation_young_monkeys
        case prospective_stress_inoculation

        // old: CynologyWelfareSource.lyons_parker_stress_inoculation_induced_indications_resilience_monkeys
        case stress_inoculation_resilience

        // old: CynologyWelfareSource.admon_leykin_lubin_engert_andrews_pruessner_hendler_hippocampal_volume_vmpfc_stress
        case hippocampal_volume_stress

        // old: CynologyWelfareSource.dong_stress_relief_natural_resilience_mechanism
        case stress_relief_resilience

        // old: CynologyWelfareSource.leknes_lee_berna_andersson_tracey_relief_as_reward
        case relief_as_reward

        // old: CynologyWelfareSource.oleson_gentry_chioma_cheer_dopamine_conditioned_punishment_avoidance
        case dopamine_conditioned_punishment_avoidance

        // old: CynologyWelfareSource.navratilova_xie_okun_qu_eyde_king_pain_relief_negative_reinforcement
        case pain_relief_negative_reinforcement

        // old: CynologyWelfareSource.navratilova_atcherley_porreca_brain_circuits_reward_pain_relief
        case reward_pain_relief_circuits

        // old: CynologyWelfareSource.bergado_acosta_kahl_kogias_uzuneser_fendt_relief_learning_d1_nmda_nacc
        case relief_learning_d1_nmda

        // old: CynologyWelfareSource.mayer_kahl_uzuneser_fendt_mesolimbic_dopamine_relief_learning
        case mesolimbic_dopamine_relief_learning

        // old: CynologyWelfareSource.solomon_corbit_opponent_process_motivation_temporal_dynamics
        case opponent_process_motivation

        // old: CynologyWelfareSource.levine_otis_handling_before_after_weaning_deprivation_resistance
        case handling_deprivation_resistance

        // old: CynologyWelfareSource.mezei_rosen_dominance_behavior_infantile_stimulation_rat
        case infantile_stimulation_dominance

        // old: CynologyWelfareSource.gazzano_mariti_notari_sighieri_mcbride_early_gentling_environment_puppies
        case early_gentling_puppies

        // old: CynologyWelfareSource.battaglia_periods_early_development_stimulation_social_experiences_canine
        case early_development_stimulation

        // MARK: - AthleteResilienceAnalogues

        // old: CynologyWelfareSource.fletcher_sarkar_psychological_resilience_olympic_champions
        case resilience_olympic_champions

        // old: CynologyWelfareSource.sarkar_fletcher_resilience_sport_performers_review
        case resilience_sport_performers

        // old: CynologyWelfareSource.sarkar_fletcher_brown_adversity_superior_olympic_performance
        case adversity_olympic_performance

        // old: CynologyWelfareSource.fletcher_sarkar_mental_fortitude_training_resilience
        case mental_fortitude_training

        // old: CynologyWelfareSource.jones_meijen_mccarthy_sheffield_challenge_threat_states_athletes
        case challenge_threat_states_athletes

        // old: CynologyWelfareSource.meijen_turner_jones_sheffield_mccarthy_revised_challenge_threat_states_athletes
        case revised_challenge_threat_states

        // old: CynologyWelfareSource.oudejans_pijpers_training_with_anxiety_performance_under_pressure
        case training_with_anxiety

        // old: CynologyWelfareSource.low_sandercock_freeman_winter_butt_maynard_pressure_training_meta_analysis
        case pressure_training_meta_analysis

        // old: CynologyWelfareSource.groepel_mesagno_choking_interventions_sports_review
        case choking_interventions_sports

        // old: CynologyWelfareSource.hays_maynard_thomas_bawden_sources_confidence_world_class_performers
        case sources_of_confidence

        // old: CynologyWelfareSource.hays_thomas_maynard_bawden_confidence_world_class_performance
        case confidence_world_class_performance

        // old: CynologyWelfareSource.jones_hanton_swain_anxiety_interpretation_elite_non_elite_performers
        case anxiety_interpretation_performers

        // old: CynologyWelfareSource.driskell_johnston_stress_exposure_training
        case stress_exposure_training

        // MARK: - AffectiveStateFoundations

        // old: CynologyWelfareSource.panksepp_affective_neuroscience_foundations_human_animal_emotions
        case affective_neuroscience

        // old: CynologyWelfareSource.panksepp_affective_consciousness_core_emotional_feelings
        case affective_consciousness

        // old: CynologyWelfareSource.panksepp_affective_neuroscience_emotional_brainmind
        case emotional_brainmind

        // old: CynologyWelfareSource.panksepp_biven_archaeology_mind_neuroevolutionary_origins
        case archaeology_of_mind

        // old: CynologyWelfareSource.russell_circumplex_model_affect
        case circumplex_model_affect

        // old: CynologyWelfareSource.harding_paul_mendl_cognitive_bias_affective_state
        case cognitive_bias_affective_state

        // old: CynologyWelfareSource.mendl_burman_paul_integrative_framework_animal_emotion_mood
        case animal_emotion_mood

        // old: CynologyWelfareSource.mendl_paul_animal_affect_decision_making
        case animal_affect_decision_making

        // old: CynologyWelfareSource.fanselow_defensive_behavior_system_fear
        case defensive_behavior_system

        // old: CynologyWelfareSource.niermann_figner_roelofs_defensive_stress_responses
        case defensive_stress_responses

        // MARK: - MotivationalStates

        // old: CynologyWelfareSource.amsel_frustration_theory_dispositional_learning_memory
        case frustration_theory

        // old: CynologyWelfareSource.crespi_quantitative_variation_incentive_performance_white_rat
        case incentive_and_performance

        // old: CynologyWelfareSource.mcpeake_canine_frustration_questionnaire
        case canine_frustration_questionnaire

        // old: CynologyWelfareSource.mcpeake_behavioural_physiological_correlates_cfq
        case correlates_canine_frustration_questionnaire

        // old: CynologyWelfareSource.bremhorst_positive_anticipation_frustration_awaiting_reward
        case anticipation_and_frustration

        // old: CynologyWelfareSource.dzik_reward_not_as_yummy_successive_negative_contrast_dogs
        case successive_negative_contrast

        // old: CynologyWelfareSource.hendijani_steel_reward_salience_choice_controlling_context
        case reward_salience_choice

        // old: CynologyWelfareSource.pessiglione_brain_translates_money_into_force
        case money_into_force

        // old: CynologyWelfareSource.sternad_kording_carrot_or_stick_motor_learning
        case carrot_or_stick_motor_learning

        // old: CynologyWelfareSource.galea_dissociable_effects_punishment_reward_motor_learning
        case punishment_reward_motor_learning

        // old: CynologyWelfareSource.brucks_reward_type_behavioural_patterns_delay_gratification
        case delay_of_gratification

        // old: CynologyWelfareSource.leonardi_waiting_for_more_exchange_tasks
        case waiting_for_more

        public var data: ReferenceData {
            switch self {
            case .aaha_behavior_guidelines:
                return CynologySources.entry(
                    title: "2015 AAHA Canine and Feline Behavior Management Guidelines",
                    location: CynologySources.doi_location(
                        "10.5326/JAAHA-MS-6527"
                    ),
                    authors: CynologySources.authors(
                        "Marcy Hammerle, Christine Horst, Emily Levine, Karen Overall, Lisa Radosta, Marcia Rafter-Ritchie, Sophia Yin"
                    ),
                    date: CynologySources.published(
                        "2015"
                    ),
                    doi: "10.5326/JAAHA-MS-6527",
                    kind: .guideline,
                    channel: .professional,
                    tags: facets
                )

            case .manual_clinical_behavioral_medicine:
                return CynologySources.entry(
                    title: "Manual of Clinical Behavioral Medicine for Dogs and Cats",
                    location: CynologySources.web_location(
                        "https://shop.elsevier.com/books/manual-of-clinical-behavioral-medicine-for-dogs-and-cats/overall/978-0-323-00890-7"
                    ),
                    authors: CynologySources.authors(
                        "Karen L. Overall"
                    ),
                    date: CynologySources.published(
                        "2013-06-04"
                    ),
                    kind: .book,
                    channel: .textbook,
                    tags: facets
                )

            case .reactive_and_risky:
                return CynologySources.entry(
                    title: "Reactive and Risky: The Behavioural Structuring of 'Dog Reactive Dogs'",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2026.106961"
                    ),
                    authors: CynologySources.authors(
                        "Himara Van Haevermaet, Carl D. Soulsbury, Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2026"
                    ),
                    doi: "10.1016/j.applanim.2026.106961",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .early_life_experiences_exercise_anxieties:
                return CynologySources.entry(
                    title: "Early Life Experiences and Exercise Associate with Canine Anxieties",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0141907"
                    ),
                    authors: CynologySources.authors(
                        "Katriina Tiira, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2015-11-03"
                    ),
                    doi: "10.1371/journal.pone.0141907",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .diazepam_anxiety_related_behavior:
                return CynologySources.entry(
                    title: "Retrospective Evaluation of the Effects of Diazepam in Dogs with Anxiety-Related Behavior Problems",
                    location: CynologySources.doi_location(
                        "10.2460/javma.233.9.1420"
                    ),
                    authors: CynologySources.authors(
                        "Meghan E. Herron, Frances S. Shofer, Ilana R. Reisner"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    doi: "10.2460/javma.233.9.1420",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .personality_unwanted_behavior_survey:
                return CynologySources.entry(
                    title: "Reliability and Validity of a Dog Personality and Unwanted Behavior Survey",
                    location: CynologySources.doi_location(
                        "10.3390/ani11123423"
                    ),
                    authors: CynologySources.authors(
                        "Milla Salonen, Sini Mikkola, Emma Hakanen, Sini Sulkama, Jenni Puurunen, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2021-12-01"
                    ),
                    doi: "10.3390/ani11123423",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .personality_traits_behavioral_problems:
                return CynologySources.entry(
                    title: "Personality Traits Associate with Behavioral Problems in Pet Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41398-022-01841-0"
                    ),
                    authors: CynologySources.authors(
                        "Milla Salonen, Salla Mikkola, Emma Hakanen, Sini Sulkama, Jenni Puurunen, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2022-02-23"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Translational Psychiatry",
                        volume: "12",
                        pages: "78"
                    ),
                    doi: "10.1038/s41398-022-01841-0",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .castration_aggression_fear:
                return CynologySources.entry(
                    title: "From \"Husky\" to \"Bulldog\"– behavioural correlates between castration and breed groups in the domestic dog (Canis lupus familiaris)",
                    location: CynologySources.doi_location(
                        "10.1186/s12917-024-04097-6"
                    ),
                    authors: CynologySources.authors(
                        "C.A. Kolkmeyer, J. Baum, N. Warlich-Zach, U. Gansloßer"
                    ),
                    date: CynologySources.published(
                        "2024-06-03"
                    ),
                    doi: "10.1186/s12917-024-04097-6",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .temperament_cortisol_serotonin:
                return CynologySources.entry(
                    title: "Associations Between Canine Temperament and Salivary Concentrations of Cortisol and Serotonin",
                    location: CynologySources.web_location(
                        "https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0337781"
                    ),
                    authors: CynologySources.authors(
                        "Youngwook Jung, Yujin Song, Kayoung Yang, Kyongwon Yoo, Youngtae Heo, Minjung Yoon"
                    ),
                    date: CynologySources.published(
                        "2026-02-04"
                    ),
                    doi: "10.1371/journal.pone.0337781",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .predictors_fear_anxiety:
                return CynologySources.entry(
                    title: "Predictors of Fear and Anxiety in Companion Dogs: The Role of Caregiver-Related Variables",
                    location: CynologySources.web_location(
                        "https://www.sciencedirect.com/science/article/abs/pii/S1558787826000122"
                    ),
                    authors: CynologySources.authors(
                        "Maria Toscano Batista, Catarina Lavrador, Gonçalo da Graça-Pereira"
                    ),
                    date: CynologySources.published(
                        "2026-05-01"
                    ),
                    doi: "10.1016/j.jveb.2026.02.003",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .firework_fear_treatments:
                return CynologySources.entry(
                    title: "Effectiveness of Treatments for Firework Fears in Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2020.04.005"
                    ),
                    authors: CynologySources.authors(
                        "Stefanie Riemer"
                    ),
                    date: CynologySources.published(
                        "2020"
                    ),
                    doi: "10.1016/j.jveb.2020.04.005",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .firework_aversion_dutch_owners:
                return CynologySources.entry(
                    title: "Firework Aversion in Cats and Dogs as Reported by Dutch Animal Owners",
                    location: CynologySources.doi_location(
                        "10.1016/j.vas.2024.100402"
                    ),
                    authors: CynologySources.authors(
                        "Ineke R. van Herwijnen, Claudia M. Vinke, Saskia S. Arndt, Pascalle E. M. Roulaux"
                    ),
                    date: CynologySources.published(
                        "2024-12"
                    ),
                    doi: "10.1016/j.vas.2024.100402",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .noise_sensitivity_17_breeds:
                return CynologySources.entry(
                    title: "Noise Sensitivity in 17 Dog Breeds: Prevalence, Breed Risk and Correlation with Fear in Other Situations",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2015.08.020"
                    ),
                    authors: CynologySources.authors(
                        "Linn Mari Storengen, Frode Lingaas"
                    ),
                    date: CynologySources.published(
                        "2015"
                    ),
                    doi: "10.1016/j.applanim.2015.08.020",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .fear_responses_noises:
                return CynologySources.entry(
                    title: "Fear Responses to Noises in Domestic Dogs: Prevalence, Risk Factors and Co-Occurrence with Other Fear Related Behaviour",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2012.12.004"
                    ),
                    authors: CynologySources.authors(
                        "Emily J. Blackwell, John W. S. Bradshaw, Rachel A. Casey"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    doi: "10.1016/j.applanim.2012.12.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .separation_anxiety_treatments:
                return CynologySources.entry(
                    title: "Evaluation of Treatments for Separation Anxiety in Dogs",
                    location: CynologySources.doi_location(
                        "10.2460/javma.2000.217.342"
                    ),
                    authors: CynologySources.authors(
                        "Yukari Takeuchi, Katherine A. Houpt, Janet M. Scarlett"
                    ),
                    date: CynologySources.published(
                        "2000"
                    ),
                    doi: "10.2460/javma.2000.217.342",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .separation_anxiety_in_dogs:
                return CynologySources.entry(
                    title: "Separation Anxiety in Dogs",
                    location: CynologySources.web_location(
                        "https://pubmed.ncbi.nlm.nih.gov/18278745/"
                    ),
                    authors: CynologySources.authors(
                        "Barbara L. Sherman"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .risk_factors_separation_anxiety:
                return CynologySources.entry(
                    title: "Risk Factors and Behaviors Associated with Separation Anxiety in Dogs",
                    location: CynologySources.doi_location(
                        "10.2460/javma.2001.219.460"
                    ),
                    authors: CynologySources.authors(
                        "Gerrard Flannigan, Nicholas H. Dodman"
                    ),
                    date: CynologySources.published(
                        "2001"
                    ),
                    doi: "10.2460/javma.2001.219.460",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .separation_anxiety_desensitization_counterconditioning:
                return CynologySources.entry(
                    title: "Addressing Canine Separation Anxiety Using Systematic Desensitization and Counter-Conditioning",
                    location: CynologySources.web_location(
                        "https://researchcommons.waikato.ac.nz/entities/publication/04247b7a-0dfb-4d7a-9cac-640f6b9a571a"
                    ),
                    authors: CynologySources.authors(
                        "Ocean Marie Babington"
                    ),
                    date: CynologySources.published(
                        "2019"
                    ),
                    kind: .thesis,
                    channel: .scholarly,
                    notes: [
                        .note(
                            "Master's thesis. Useful as a cautious source for the observation that systematic desensitization and counter-conditioning, applied independently, did not reduce or eliminate separation-related behaviours as a long-term solution in this sample. Limitations include reduced owner compliance during systematic desensitization and possible over- or under-reporting from fixed-camera placement."
                        ),
                        .note(
                            "Best used to support a narrow claim about limits of SD/CC-alone protocols, not as peer-reviewed clinical evidence against SD/CC as a whole."
                        )
                    ],
                    tags: facets
                )

            case .behavioral_therapy_separation_anxiety:
                return CynologySources.entry(
                    title: "The Behavioral Therapy for Separation Anxiety in Dog",
                    location: CynologySources.web_location(
                        "https://www.researchgate.net/publication/280109690_The_behavioral_therapy_for_separation_anxiety_in_dog"
                    ),
                    authors: CynologySources.authors(
                        "Ionel Papuc, Lucia Deac, Robert Cristian Purdoiu"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    kind: .article,
                    channel: .scholarly,
                    tags: facets
                )

            case .attachment_separation_anxiety:
                return CynologySources.entry(
                    title: "Relationship Between Attachment to Owners and Separation Anxiety in Pet Dogs (Canis lupus familiaris)",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2006.09.005"
                    ),
                    authors: CynologySources.authors(
                        "Valli Parthasarathy, Sharon L. Crowell-Davis"
                    ),
                    date: CynologySources.published(
                        "2006"
                    ),
                    doi: "10.1016/j.jveb.2006.09.005",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .separation_related_behavior_frustration_fear:
                return CynologySources.entry(
                    title: "Separation-Related Behavior of Dogs Shows Association with Their Reactions to Everyday Situations That May Elicit Frustration or Fear",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-021-98526-3"
                    ),
                    authors: CynologySources.authors(
                        "Rita Lenkei, Tamás Faragó, Viktória Bakos, Péter Pongrácz"
                    ),
                    date: CynologySources.published(
                        "2021-09-23"
                    ),
                    doi: "10.1038/s41598-021-98526-3",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .isolation_behavior_cortisol:
                return CynologySources.entry(
                    title: "Factors Influencing Isolation Behavior of Dogs: A Holder-Based Questionnaire and Behavioral and Saliva Cortisol Responses during Separation",
                    location: CynologySources.doi_location(
                        "10.3390/ani13233735"
                    ),
                    authors: CynologySources.authors(
                        "Jennifer Silbermann, Udo Gansloßer"
                    ),
                    date: CynologySources.published(
                        "2023-12-02"
                    ),
                    doi: "10.3390/ani13233735",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .petting_before_brief_separation:
                return CynologySources.entry(
                    title: "Effects of Petting Before a Brief Separation from the Owner on Dog Behavior and Physiology: A Pilot Study",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2018.07.003"
                    ),
                    authors: CynologySources.authors(
                        "Chiara Mariti, Beatrice Carlone, Massimiliano Protti, Silvana Diverio, Angelo Gazzano"
                    ),
                    date: CynologySources.published(
                        "2018"
                    ),
                    doi: "10.1016/j.jveb.2018.07.003",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .diagnosis_treatment_separation_related_behavior:
                return CynologySources.entry(
                    title: "Diagnosis and Treatment of Separation-Related Behavior Problems in Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/S0195-5616(82)50106-4"
                    ),
                    authors: CynologySources.authors(
                        "Peter L. Borchelt, Victoria L. Voith"
                    ),
                    date: CynologySources.published(
                        "1982-11"
                    ),
                    doi: "10.1016/S0195-5616(82)50106-4",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .assessing_emotional_behavior_problems:
                return CynologySources.entry(
                    title: "Perspectives on Assessing the Emotional Behavior of Animals with Behavior Problems",
                    location: CynologySources.doi_location(
                        "10.1016/j.cobeha.2017.04.002"
                    ),
                    authors: CynologySources.authors(
                        "Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2017-08"
                    ),
                    doi: "10.1016/j.cobeha.2017.04.002",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .psychobiological_framework_discrete_emotions:
                return CynologySources.entry(
                    title: "A Psychobiological Framework for Defining Discrete Emotions in Animals",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2025.106595"
                    ),
                    authors: CynologySources.authors(
                        "Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2025-05"
                    ),
                    doi: "10.1016/j.applanim.2025.106595",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .puppy_problem_clusters_emotional_commonalities:
                return CynologySources.entry(
                    title: "Clustering of Behavioural Problems in Dogs Aged 3–6 Months Reflect Underlying Emotional Commonalities",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2025.106591"
                    ),
                    authors: CynologySources.authors(
                        "Tom Rowland, Helen Zulch, Lorna Winter, Carolyn Menteith, Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2025-04"
                    ),
                    doi: "10.1016/j.applanim.2025.106591",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .acute_emotional_state_indicators:
                return CynologySources.entry(
                    title: "Evaluation of Indicators of Acute Emotional States in Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-024-56859-9"
                    ),
                    authors: CynologySources.authors(
                        "Hannah E. Flint et al."
                    ),
                    date: CynologySources.published(
                        "2024-03-17"
                    ),
                    doi: "10.1038/s41598-024-56859-9",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .emotional_arousal_physical_health:
                return CynologySources.entry(
                    title: "Emotional Arousal Impacts Physical Health in Dogs: A Review of Factors Influencing Arousal, with Exemplary Case and Framework",
                    location: CynologySources.doi_location(
                        "10.3390/ani13030465"
                    ),
                    authors: CynologySources.authors(
                        "Carrie Tooley, Sarah E. Heath"
                    ),
                    date: CynologySources.published(
                        "2023-01-28"
                    ),
                    doi: "10.3390/ani13030465",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .saliva_sampling_stress_procedures:
                return CynologySources.entry(
                    title: "Assessing Stress in Dogs During Saliva Sampling in Socio-Psychological Research: Preliminary Development of Animal-Friendly Practical Procedures",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2025.106868"
                    ),
                    authors: CynologySources.authors(
                        "Natalia Treder-Rochna, Elżbieta Chruściel, M. A. Gajewska"
                    ),
                    date: CynologySources.published(
                        "2026"
                    ),
                    doi: "10.1016/j.applanim.2025.106868",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .vicious_dogs:
                return CynologySources.entry(
                    title: "Vicious Dogs: The Antisocial Behaviors and Psychological Characteristics of Owners",
                    location: CynologySources.doi_location(
                        "10.1111/j.1556-4029.2009.01001.x"
                    ),
                    authors: CynologySources.authors(
                        "Laurie Ragatz, William Fremouw, Tracy Thomas, Katrina McCoy"
                    ),
                    date: CynologySources.published(
                        "2009"
                    ),
                    doi: "10.1111/j.1556-4029.2009.01001.x",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .high_risk_dogs_deviant_behaviors:
                return CynologySources.entry(
                    title: "Ownership of High-Risk (“Vicious”) Dogs as a Marker for Deviant Behaviors: Implications for Risk Assessment",
                    location: CynologySources.doi_location(
                        "10.1177/0886260506294241"
                    ),
                    authors: CynologySources.authors(
                        "Jaclyn E. Barnes, Barbara W. Boat, Frank W. Putnam"
                    ),
                    date: CynologySources.published(
                        "2006"
                    ),
                    doi: "10.1177/0886260506294241",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .intraspecific_killing:
                return CynologySources.entry(
                    title: "Intraspecific Killing in Dogs: Predation Behavior or Aggression? A Study of Aggressors, Victims, Possible Causes, and Motivations",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2019.08.002"
                    ),
                    authors: CynologySources.authors(
                        "Matthijs B. H. Schilder, Joanne A. M. van der Borg, Claudia M. Vinke"
                    ),
                    date: CynologySources.published(
                        "2019"
                    ),
                    doi: "10.1016/j.jveb.2019.08.002",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .aggressive_cocker_spaniels:
                return CynologySources.entry(
                    title: "Aggressive Behaviour in English Cocker Spaniels and the Personality of Their Owners",
                    location: CynologySources.doi_location(
                        "10.1136/vr.141.3.73"
                    ),
                    authors: CynologySources.authors(
                        "A. L. Podberscek, J. A. Serpell"
                    ),
                    date: CynologySources.published(
                        "1997"
                    ),
                    doi: "10.1136/vr.141.3.73",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .aggressive_responses_pet_dogs:
                return CynologySources.entry(
                    title: "Factors Associated with Aggressive Responses in Pet Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2010.01.013"
                    ),
                    authors: CynologySources.authors(
                        "Yuying Hsu, Liching Sun"
                    ),
                    date: CynologySources.published(
                        "2010"
                    ),
                    doi: "10.1016/j.applanim.2010.01.013",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dog_bites_public_health:
                return CynologySources.entry(
                    title: "Dog Bites",
                    location: CynologySources.doi_location(
                        "10.1136/bmj.39105.659919.BE"
                    ),
                    authors: CynologySources.authors(
                        "Marina Morgan, John Palmer"
                    ),
                    date: CynologySources.published(
                        "2007-02-24"
                    ),
                    doi: "10.1136/bmj.39105.659919.BE",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .demographic_environmental_aggression_purebred_dogs:
                return CynologySources.entry(
                    title: "Aggressive Behaviour Is Affected by Demographic, Environmental and Behavioural Factors in Purebred Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-021-88793-5"
                    ),
                    authors: CynologySources.authors(
                        "Salla Mikkola, Milla Salonen, Jenni Puurunen, Emma Hakanen, Sini Sulkama, César Araujo, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2021-05-03"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Scientific Reports",
                        volume: "11",
                        pages: "9433"
                    ),
                    doi: "10.1038/s41598-021-88793-5",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .human_directed_aggression_professional_opinion:
                return CynologySources.entry(
                    title: "Factors influencing the expression of human directed dog aggression. A qualitative study of professional opinion",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2026.106999"
                    ),
                    authors: CynologySources.authors(
                        "Helen Howell, Ann Baslington-Davies, Daniel S. Mills, Todd E. Hogue"
                    ),
                    date: CynologySources.published(
                        "2026-07"
                    ),
                    doi: "10.1016/j.applanim.2026.106999",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .aggressive_reactivity_self_control:
                return CynologySources.entry(
                    title: "Dogs Exhibiting High Levels of Aggressive Reactivity Show Impaired Self-Control Abilities",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2022.869068"
                    ),
                    authors: CynologySources.authors(
                        "Elena Gobbo, Manja Zupan Šemrov"
                    ),
                    date: CynologySources.published(
                        "2022-03-24"
                    ),
                    doi: "10.3389/fvets.2022.869068",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .canine_hyperactivity_impulsivity_inattention_adhd:
                return CynologySources.entry(
                    title: "Canine Hyperactivity, Impulsivity, and Inattention Share Similar Demographic Risk Factors and Behavioural Comorbidities with Human ADHD",
                    location: CynologySources.doi_location(
                        "10.1038/s41398-021-01626-x"
                    ),
                    authors: CynologySources.authors(
                        "Sini Sulkama, Jenni Puurunen, Milla Salonen, Salla Mikkola, Emma Hakanen, César Araujo, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2021-10-01"
                    ),
                    doi: "10.1038/s41398-021-01626-x",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .repetitive_behaviour_adhd_like_environment:
                return CynologySources.entry(
                    title: "Aggressiveness, ADHD-like Behaviour, and Environment Influence Repetitive Behaviour in Dogs",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-022-07443-6"
                    ),
                    authors: CynologySources.authors(
                        "Sini Sulkama, Milla Salonen, Salla Mikkola, Emma Hakanen, Jenni Puurunen, César Araujo, Hannes Lohi"
                    ),
                    date: CynologySources.published(
                        "2022-03-24"
                    ),
                    doi: "10.1038/s41598-022-07443-6",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .functional_analysis_problem_behavior:
                return CynologySources.entry(
                    title: "Decreasing Dog Problem Behavior with Functional Analysis: Linking Diagnoses to Treatment",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2011.10.002"
                    ),
                    authors: CynologySources.authors(
                        "Nicole R. Dorey, Jarvon S. Tobias, Monique A. R. Udell, Clive D. L. Wynne"
                    ),
                    date: CynologySources.published(
                        "2012"
                    ),
                    doi: "10.1016/j.jveb.2011.10.002",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .food_guarding_functional_analysis:
                return CynologySources.entry(
                    title: "Functional Analysis and Operant Treatment of Food Guarding in a Pet Dog",
                    location: CynologySources.doi_location(
                        "10.1002/jaba.720"
                    ),
                    authors: CynologySources.authors(
                        "Lindsay R. Mehrkam, Brandon C. Perez, Victoria N. Self, Timothy R. Vollmer, Nicole R. Dorey"
                    ),
                    date: CynologySources.published(
                        "2020"
                    ),
                    doi: "10.1002/jaba.720",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .training_effects_dog_behavior:
                return CynologySources.entry(
                    title: "Training Effects on Dog Behavior",
                    location: CynologySources.doi_location(
                        "10.4454/db.v5i2.104"
                    ),
                    authors: CynologySources.authors(
                        "Beatrice Giannone, Marcella Zilocchi"
                    ),
                    date: CynologySources.published(
                        "2019-12-18"
                    ),
                    doi: "10.4454/db.v5i2.104",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .educational_apps_problem_prevention:
                return CynologySources.entry(
                    title: "Educational Apps and Dog Behavioural Problem Prevention: Associations Between the Zigzag Dog-Training App and Behavioural Problems",
                    location: CynologySources.doi_location(
                        "10.3390/ani15040520"
                    ),
                    authors: CynologySources.authors(
                        "Tom Rowland, Luciana de Assis, Carolyn Menteith, Lorna Winter, Helen Zulch, Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2025-02-12"
                    ),
                    doi: "10.3390/ani15040520",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .owner_attitudes_behavior_problems:
                return CynologySources.entry(
                    title: "Owner Attitudes and Dog Behaviour Problems",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(96)01123-9"
                    ),
                    authors: CynologySources.authors(
                        "Valerie O’Farrell"
                    ),
                    date: CynologySources.published(
                        "1997"
                    ),
                    doi: "10.1016/S0168-1591(96)01123-9",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .prevalence_behaviour_problems_rescue_shelter:
                return CynologySources.entry(
                    title: "Prevalence of Behaviour Problems Reported by Owners of Dogs Purchased from an Animal Rescue Shelter",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(00)00118-0"
                    ),
                    authors: CynologySources.authors(
                        "Deborah L. Wells, Peter G. Hepper"
                    ),
                    date: CynologySources.published(
                        "2000"
                    ),
                    doi: "10.1016/S0168-1591(00)00118-0",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .owner_attachment_problem_behaviors:
                return CynologySources.entry(
                    title: "Owner Attachment and Problem Behaviors Related to Relinquishment and Training Techniques of Dogs",
                    location: CynologySources.doi_location(
                        "10.1080/10888705.2013.768923"
                    ),
                    authors: CynologySources.authors(
                        "Jennifer Y. Kwan, Melissa J. Bain"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    doi: "10.1080/10888705.2013.768923",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .shelter_testing_predict_problem_behaviour:
                return CynologySources.entry(
                    title: "Behavioural Testing of Dogs in Animal Shelters to Predict Problem Behaviour",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(05)80047-4"
                    ),
                    authors: CynologySources.authors(
                        "Joanne A. M. van der Borg, Willem J. Netto, Doreen J. U. Planta"
                    ),
                    date: CynologySources.published(
                        "1991"
                    ),
                    doi: "10.1016/S0168-1591(05)80047-4",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .returning_a_shelter_dog:
                return CynologySources.entry(
                    title: "Returning a Shelter Dog: The Role of Owner Expectations and Dog Behavior",
                    location: CynologySources.doi_location(
                        "10.3390/ani12091053"
                    ),
                    authors: CynologySources.authors(
                        "Lauren Powell, Brittany Lee, Chelsea L. Reinhard, Margaret Morris, Donya Satriale, James Serpell, Brittany Watson"
                    ),
                    date: CynologySources.published(
                        "2022-04-19"
                    ),
                    doi: "10.3390/ani12091053",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .shelter_assessments_post_adoption:
                return CynologySources.entry(
                    title: "Do Behaviour Assessments in a Shelter Predict the Behaviour of Dogs Post-Adoption?",
                    location: CynologySources.doi_location(
                        "10.3390/ani10071225"
                    ),
                    authors: CynologySources.authors(
                        "Liam Clay, Mandy B. A. Paterson, Pauleen Bennett, Gaille Perry, Clive C. J. Phillips"
                    ),
                    date: CynologySources.published(
                        "2020-07-18"
                    ),
                    doi: "10.3390/ani10071225",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .owner_animal_factors_problem_behaviors:
                return CynologySources.entry(
                    title: "Owner and Animal Factors Predict the Incidence of, and Owner Reaction Toward, Problematic Behaviors in Companion Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2015.03.004"
                    ),
                    authors: CynologySources.authors(
                        "Federica Pirrone, Ludovica Pierantoni, Silvia Michela Mazzola, Daniele Vigo, Mariangela Albertini"
                    ),
                    date: CynologySources.published(
                        "2015"
                    ),
                    doi: "10.1016/j.jveb.2015.03.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .vegan_versus_meat_based_food:
                return CynologySources.entry(
                    title: "Vegan versus Meat-Based Dog Food: Guardian-Reported Indicators of Health",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0265662"
                    ),
                    authors: CynologySources.authors(
                        "Andrew Knight"
                    ),
                    date: CynologySources.published(
                        "2022-04-13"
                    ),
                    doi: "10.1371/journal.pone.0265662",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .plant_based_diet_one_year:
                return CynologySources.entry(
                    title: "Domestic Dogs Maintain Clinical, Nutritional, and Hematological Health Outcomes When Fed a Commercial Plant-Based Diet for a Year",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0298942"
                    ),
                    authors: CynologySources.authors(
                        "Annika Linde, Maureen Lahiff, Adam Krantz, Nathan Sharp, Theros T. Ng, Tonatiuh Melgarejo"
                    ),
                    date: CynologySources.published(
                        "2024-04-16"
                    ),
                    doi: "10.1371/journal.pone.0298942",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .vegan_diets_indicators_health:
                return CynologySources.entry(
                    title: "The Impact of Vegan Diets on Indicators of Health in Dogs and Cats: A Systematic Review",
                    location: CynologySources.doi_location(
                        "10.3390/vetsci10010052"
                    ),
                    authors: CynologySources.authors(
                        "Adriana Domínguez-Oliva et al."
                    ),
                    date: CynologySources.published(
                        "2023-01-06"
                    ),
                    doi: "10.3390/vetsci10010052",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .plant_meat_dry_foods_nutritional_analysis:
                return CynologySources.entry(
                    title: "Nutritional Analysis of Commercially Available, Complete Plant- and Meat-Based Dry Dog Foods in the UK",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0328506"
                    ),
                    authors: CynologySources.authors(
                        "R. A. Brociek, D. Li, R. Broughton, D. S. Gardner"
                    ),
                    date: CynologySources.published(
                        "2025-09-03"
                    ),
                    doi: "10.1371/journal.pone.0328506",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .vegan_dog_food_digestibility:
                return CynologySources.entry(
                    title: "Apparent Total Tract Macronutrient Digestibility of Mildly Cooked Human-Grade Vegan Dog Foods and Their Effects on the Blood Metabolites and Fecal Characteristics, Microbiota, and Metabolites of Adult Dogs",
                    location: CynologySources.doi_location(
                        "10.1093/jas/skad093"
                    ),
                    authors: CynologySources.authors(
                        "Leah J. Roberts, Patricia M. Oba, Kelly S. Swanson"
                    ),
                    date: CynologySources.published(
                        "2023-03-27"
                    ),
                    doi: "10.1093/jas/skad093",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .vegan_food_nutritional_inadequacies:
                return CynologySources.entry(
                    title: "Nutritional Inadequacies in Commercial Vegan Foods for Dogs and Cats",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0227046"
                    ),
                    authors: CynologySources.authors(
                        "Rafael Vessecchi Amorim Zafalon, Larissa Wünsche Risolia, Thiago Henrique Annibale Vendramini, Roberta Bueno Ayres Rodrigues, Vivian Pedrinelli, Fabio Alves Teixeira, Mariana Fragoso Rentas, Mariana Pamplona Perini, Isabella Corsato Alvarenga, Marcio Antonio Brunetto"
                    ),
                    date: CynologySources.published(
                        "2020-01-17"
                    ),
                    doi: "10.1371/journal.pone.0227046",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .vegan_diets_environmental_sustainability:
                return CynologySources.entry(
                    title: "The Relative Benefits for Environmental Sustainability of Vegan Diets for Dogs, Cats and People",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0291791"
                    ),
                    authors: CynologySources.authors(
                        "Andrew Knight"
                    ),
                    date: CynologySources.published(
                        "2023-10-04"
                    ),
                    doi: "10.1371/journal.pone.0291791",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .owner_perceptions_health_diet:
                return CynologySources.entry(
                    title: "Variables Associated with Owner Perceptions of the Health of Their Dog: Further Analysis of Data from a Large International Survey",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0280173"
                    ),
                    authors: CynologySources.authors(
                        "Richard Barrett-Jolley, Alexander J. German"
                    ),
                    date: CynologySources.published(
                        "2024-05-15"
                    ),
                    doi: "10.1371/journal.pone.0280173",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .notes_on_canine_internal_medicine:
                return CynologySources.entry(
                    title: "Notes on Canine Internal Medicine",
                    location: CynologySources.doi_location(
                        "10.1002/9781119744801"
                    ),
                    authors: CynologySources.authors(
                        "Victoria L. Black, Kathryn F. Murphy, Jessie Rose Payne, Edward J. Hall"
                    ),
                    date: CynologySources.published(
                        "2022-04-29"
                    ),
                    doi: "10.1002/9781119744801",
                    kind: .book,
                    channel: .textbook,
                    tags: facets
                )

            case .working_dog_stress_response:
                return CynologySources.entry(
                    title: "Take a Look Towards the Stress Response of Working Dogs: Cortisol and Lactate Trend Mismatches During Training",
                    location: CynologySources.doi_location(
                        "10.3390/ani15213175"
                    ),
                    authors: CynologySources.authors(
                        "Raffaella Cocco, Sara Sechi, Giulia Sisia, Maria Luisa Pinna Parpaglia, Maria Rizzo, Federica Arrigo, Claudia Giannetto, Giuseppe Piccione, Francesca Arfuso"
                    ),
                    date: CynologySources.published(
                        "2025-10-31"
                    ),
                    doi: "10.3390/ani15213175",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .working_dog_stress_response_correction:
                return CynologySources.entry(
                    title: "Correction: Cocco et al. Take a Look Towards the Stress Response of Working Dogs: Cortisol and Lactate Trend Mismatches During Training. Animals 2025, 15, 3175",
                    location: CynologySources.doi_location(
                        "10.3390/ani16050739"
                    ),
                    authors: CynologySources.authors(
                        "Raffaella Cocco, Sara Sechi, Giulia Sisia, Maria Luisa Pinna Parpaglia, Maria Rizzo, Federica Arrigo, Claudia Giannetto, Giuseppe Piccione, Francesca Arfuso"
                    ),
                    date: CynologySources.published(
                        "2026-02-27"
                    ),
                    doi: "10.3390/ani16050739",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .heart_rate_variability_scent_work:
                return CynologySources.entry(
                    title: "Heart rate variability and behaviour in dogs during and after scent work",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2026.106986"
                    ),
                    authors: CynologySources.authors(
                        "Jade Fountain, Todd J. McWhorter, Marie-Claire Seeley, Aidan D. Bindoff, Kimberley Handley, Robert Hewings, Susan J. Hazel"
                    ),
                    date: CynologySources.published(
                        "2026-06"
                    ),
                    doi: "10.1016/j.applanim.2026.106986",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .not_all_dogs_equal:
                return CynologySources.entry(
                    title: "Not All Dogs Are Equal: Perception of Canine Welfare Varies with Context",
                    location: CynologySources.doi_location(
                        "10.7120/09627286.29.1.027"
                    ),
                    authors: CynologySources.authors(
                        "Mia L. Cobb, Alan Lill, Pauleen C. Bennett"
                    ),
                    date: CynologySources.published(
                        "2020"
                    ),
                    doi: "10.7120/09627286.29.1.027",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .canine_welfare_science:
                return CynologySources.entry(
                    title: "Canine Welfare Science: An Antidote to Sentiment and Myth",
                    location: CynologySources.doi_location(
                        "10.1007/978-3-642-53994-7_11"
                    ),
                    authors: CynologySources.authors(
                        "Nicola Rooney, John Bradshaw"
                    ),
                    date: CynologySources.published(
                        "2014-01-01"
                    ),
                    doi: "10.1007/978-3-642-53994-7_11",
                    kind: .book_chapter,
                    channel: .scholarly,
                    tags: facets
                )

            case .companion_dog_welfare_living_conditions:
                return CynologySources.entry(
                    title: "Pampered Pets or Poor Bastards? The Welfare of Dogs Kept as Companion Animals",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2022.105640"
                    ),
                    authors: CynologySources.authors(
                        "Iben Meyer, Björn Forkman, Merete Fredholm, Carmen Glanville, Bernt Guldbrandtsen, Eliza M. Ruiz Izaguirre, Clare Palmer, Peter Sandøe"
                    ),
                    date: CynologySources.published(
                        "2022-04-25"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Applied Animal Behaviour Science",
                        volume: "251",
                        pages: "105640"
                    ),
                    doi: "10.1016/j.applanim.2022.105640",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .choice_control_welfare:
                return CynologySources.entry(
                    title: "Choice, Control, and Animal Welfare: Definitions and Essential Inquiries to Advance Animal Welfare Science",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2023.1250251"
                    ),
                    authors: CynologySources.authors(
                        "Maisy D. Englund, Katherine A. Cronin"
                    ),
                    date: CynologySources.published(
                        "2023-08-02"
                    ),
                    doi: "10.3389/fvets.2023.1250251",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .agency_domain:
                return CynologySources.entry(
                    title: "The Agency Domain and Behavioral Interactions: Assessing Positive Animal Welfare Using the Five Domains Model",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2023.1284869"
                    ),
                    authors: CynologySources.authors(
                        "Katherine E. Littlewood, Madeleine V. Heslop, Mia L. Cobb"
                    ),
                    date: CynologySources.published(
                        "2023-11-02"
                    ),
                    doi: "10.3389/fvets.2023.1284869",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .kenneling_prior_habituation:
                return CynologySources.entry(
                    title: "Behavioural and Glucocorticoid Responses of Dogs (Canis familiaris) to Kennelling: Investigating Mitigation of Stress by Prior Habituation",
                    location: CynologySources.doi_location(
                        "10.1016/j.physbeh.2007.06.011"
                    ),
                    authors: CynologySources.authors(
                        "Nicola J. Rooney, Samantha A. Gaines, John W. S. Bradshaw"
                    ),
                    date: CynologySources.published(
                        "2007-12-05"
                    ),
                    doi: "10.1016/j.physbeh.2007.06.011",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .working_dog_welfare_guide:
                return CynologySources.entry(
                    title: "A Practitioner’s Guide to Working Dog Welfare",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2008.10.037"
                    ),
                    authors: CynologySources.authors(
                        "Nicola Rooney, Samantha Gaines, Elly Hiby"
                    ),
                    date: CynologySources.published(
                        "2009-05"
                    ),
                    doi: "10.1016/j.jveb.2008.10.037",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .training_as_enrichment:
                return CynologySources.entry(
                    title: "Training as Enrichment: A Critical Review",
                    location: CynologySources.doi_location(
                        "10.7120/09627286.31.1.001"
                    ),
                    authors: CynologySources.authors(
                        "Eduardo J. Fernandez"
                    ),
                    date: CynologySources.published(
                        "2022"
                    ),
                    doi: "10.7120/09627286.31.1.001",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .environmental_enrichment_dog_behaviour:
                return CynologySources.entry(
                    title: "Effects of Environmental Enrichment on Dog Behaviour: Pilot Study",
                    location: CynologySources.doi_location(
                        "10.3390/ani12020141"
                    ),
                    authors: CynologySources.authors(
                        "Rachel L. Hunt, Helen Whiteside, Susanna Prankel"
                    ),
                    date: CynologySources.published(
                        "2022-01-10"
                    ),
                    doi: "10.3390/ani12020141",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .high_urinary_cortisol:
                return CynologySources.entry(
                    title: "Rapid Shaping of Behaviour Associated with High Urinary Cortisol in Domestic Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2010.02.011"
                    ),
                    authors: CynologySources.authors(
                        [
                            CynologySources.author(
                                given: "Emily-Jayne",
                                family: "Blackwell"
                            ),
                            CynologySources.author(
                                given: "Alina",
                                family: "Bodnariu"
                            ),
                            CynologySources.author(
                                given: "Jane",
                                family: "Tyson"
                            ),
                            CynologySources.author(
                                given: "John W. S.",
                                family: "Bradshaw"
                            ),
                            CynologySources.author(
                                given: "Rachel A.",
                                family: "Casey"
                            ),
                        ],
                        original: "Emily-Jayne Blackwell, Alina Bodnariu, Jane Tyson, John W. S. Bradshaw, Rachel A. Casey"
                    ),
                    date: CynologySources.published(
                        "2010-05"
                    ),
                    doi: "10.1016/j.applanim.2010.02.011",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .pain_and_problem_behavior:
                return CynologySources.entry(
                    title: "Pain and Problem Behavior in Cats and Dogs",
                    location: CynologySources.doi_location(
                        "10.3390/ani10020318"
                    ),
                    authors: CynologySources.authors(
                        "Daniel S. Mills et al."
                    ),
                    date: CynologySources.published(
                        "2020-02-18"
                    ),
                    doi: "10.3390/ani10020318",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .medical_conditions_behavioral_problems:
                return CynologySources.entry(
                    title: "A Review of Medical Conditions and Behavioral Problems in Dogs and Cats",
                    location: CynologySources.doi_location(
                        "10.3390/ani9121133"
                    ),
                    authors: CynologySources.authors(
                        "Tomàs Camps, Marta Amat, Xavier Manteca"
                    ),
                    date: CynologySources.published(
                        "2019-12-09"
                    ),
                    doi: "10.3390/ani9121133",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .pain_paresthesia_behavior_problems:
                return CynologySources.entry(
                    title: "Behavior Problems Associated with Pain and Paresthesia",
                    location: CynologySources.doi_location(
                        "10.1016/j.cvsm.2023.08.007"
                    ),
                    authors: CynologySources.authors(
                        "Daniel S. Mills, Fergus M. Coutts, Kevin J. McPeake"
                    ),
                    date: CynologySources.published(
                        "2024-01"
                    ),
                    doi: "10.1016/j.cvsm.2023.08.007",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .personal_causation_perceived_control:
                return CynologySources.entry(
                    title: "Effects of Personal Causation and Perceived Control on Responses to an Aversive Environment: The More Control, the Better",
                    location: CynologySources.doi_location(
                        "10.1016/0022-1031(77)90010-5"
                    ),
                    authors: CynologySources.authors(
                        "Drury R. Sherrod, Jaime N. Hage, Phillip L. Halpern, Bert S. Moore"
                    ),
                    date: CynologySources.published(
                        "1977"
                    ),
                    doi: "10.1016/0022-1031(77)90010-5",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .nonveridical_perceived_control:
                return CynologySources.entry(
                    title: "Reduction of Stress in Humans Through Nonveridical Perceived Control of Aversive Stimulation",
                    location: CynologySources.doi_location(
                        "10.1037/h0030014"
                    ),
                    authors: CynologySources.authors(
                        "James H. Geer, Gerald C. Davison, Robert J. Gatchel"
                    ),
                    date: CynologySources.published(
                        "1970"
                    ),
                    doi: "10.1037/h0030014",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .self_control_predictability:
                return CynologySources.entry(
                    title: "Self-Control and Predictability: Their Effects on Reactions to Aversive Stimulation",
                    location: CynologySources.doi_location(
                        "10.1037/h0030851"
                    ),
                    authors: CynologySources.authors(
                        "Ervin Staub, Bernard Tursky, Gary E. Schwartz"
                    ),
                    date: CynologySources.published(
                        "1971"
                    ),
                    doi: "10.1037/h0030851",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .psychological_factors_stress_disease:
                return CynologySources.entry(
                    title: "Psychological Factors in Stress and Disease",
                    location: CynologySources.doi_location(
                        "10.1038/scientificamerican0672-104"
                    ),
                    authors: CynologySources.authors(
                        "Jay M. Weiss"
                    ),
                    date: CynologySources.published(
                        "1972"
                    ),
                    doi: "10.1038/scientificamerican0672-104",
                    kind: .article,
                    channel: .scholarly,
                    tags: facets
                )

            case .sudden_death_phenomenon:
                return CynologySources.entry(
                    title: "On the Phenomenon of Sudden Death in Animals and Man",
                    location: CynologySources.doi_location(
                        "10.1097/00006842-195705000-00004"
                    ),
                    authors: CynologySources.authors(
                        "Curt P. Richter"
                    ),
                    date: CynologySources.published(
                        "1957"
                    ),
                    doi: "10.1097/00006842-195705000-00004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .stressor_controllability_analgesia:
                return CynologySources.entry(
                    title: "Stressor Controllability and Stress-Induced Analgesia",
                    location: CynologySources.doi_location(
                        "10.1111/j.1749-6632.1986.tb14618.x"
                    ),
                    authors: CynologySources.authors(
                        "Steven F. Maier"
                    ),
                    date: CynologySources.published(
                        "1986"
                    ),
                    doi: "10.1111/j.1749-6632.1986.tb14618.x",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .learned_helplessness_at_fifty:
                return CynologySources.entry(
                    title: "Learned Helplessness at Fifty: Insights from Neuroscience",
                    location: CynologySources.doi_location(
                        "10.1037/rev0000033"
                    ),
                    authors: CynologySources.authors(
                        "Steven F. Maier, Martin E. P. Seligman"
                    ),
                    date: CynologySources.published(
                        "2016-07"
                    ),
                    doi: "10.1037/rev0000033",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .helplessness_to_controllability:
                return CynologySources.entry(
                    title: "From Helplessness to Controllability: Toward a Neuroscience of Resilience",
                    location: CynologySources.doi_location(
                        "10.3389/fpsyt.2023.1170417"
                    ),
                    authors: CynologySources.authors(
                        "Michael V. Baratta, Martin E. P. Seligman, Steven F. Maier"
                    ),
                    date: CynologySources.published(
                        "2023-05-03"
                    ),
                    doi: "10.3389/fpsyt.2023.1170417",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .predictability_controllability_virtual_fence:
                return CynologySources.entry(
                    title: "The Influence of Predictability and Controllability on Stress Responses to the Aversive Component of a Virtual Fence",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2020.580523"
                    ),
                    authors: CynologySources.authors(
                        "Tellisa Kearton, Danila Marini, Frances Cowley, Sue Belson, Hamideh Keshavarzi, Bonnie Mayes, Caroline Lee"
                    ),
                    date: CynologySources.published(
                        "2020-11-30"
                    ),
                    doi: "10.3389/fvets.2020.580523",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .avoidance_birth_death_resurrection:
                return CynologySources.entry(
                    title: "The Birth, Death and Resurrection of Avoidance: A Reconceptualization of a Troubled Paradigm",
                    location: CynologySources.doi_location(
                        "10.1038/mp.2016.166"
                    ),
                    authors: CynologySources.authors(
                        "Joseph E. LeDoux, Justin Moscarello, Robert Sears, Vincent Campese"
                    ),
                    date: CynologySources.published(
                        "2017"
                    ),
                    doi: "10.1038/mp.2016.166",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .beyond_cortisol:
                return CynologySources.entry(
                    title: "Beyond Cortisol! Physiological Indicators of Welfare for Dogs: Deficits, Misunderstandings and Opportunities",
                    location: CynologySources.doi_location(
                        "10.1080/10888705.2025.2572616"
                    ),
                    authors: CynologySources.authors(
                        "M. L. Cobb, A. G. Jiménez, N. A. Dreschel"
                    ),
                    date: CynologySources.published(
                        "2025-10-21"
                    ),
                    doi: "10.1080/10888705.2025.2572616",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .delayed_punishment_applied_setting:
                return CynologySources.entry(
                    title: "Effectiveness of Delayed Punishment in an Applied Setting",
                    location: CynologySources.doi_location(
                        "10.1016/S0005-7894(05)80279-5"
                    ),
                    authors: CynologySources.authors(
                        "Ann J. Abramowitz, Susan G. O’Leary"
                    ),
                    date: CynologySources.published(
                        "1990"
                    ),
                    doi: "10.1016/S0005-7894(05)80279-5",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .noncontingent_aversive_stimulation:
                return CynologySources.entry(
                    title: "Some Effects of Noncontingent Aversive Stimulation",
                    location: CynologySources.doi_location(
                        "10.1016/B978-0-12-137950-6.50013-4"
                    ),
                    authors: CynologySources.authors(
                        "John S. Myer"
                    ),
                    date: CynologySources.published(
                        "1971"
                    ),
                    doi: "10.1016/B978-0-12-137950-6.50013-4",
                    kind: .book_chapter,
                    channel: .scholarly,
                    tags: facets
                )

            case .hunting_dogs_confronted_with_sheep:
                return CynologySources.entry(
                    title: "Behavioural Differences between Three Breed Groups of Hunting Dogs Confronted with Domestic Sheep",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(00)00202-1"
                    ),
                    authors: CynologySources.authors(
                        "Frank O. Christiansen, Morten Bakken, Bjarne O. Braastad"
                    ),
                    date: CynologySources.published(
                        "2001-04-26"
                    ),
                    doi: "10.1016/S0168-1591(00)00202-1",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .second_year_sheep_aversion:
                return CynologySources.entry(
                    title: "Behavioural Changes and Aversive Conditioning in Hunting Dogs by the Second-Year Confrontation with Domestic Sheep",
                    location: CynologySources.doi_location(
                        "10.1016/S0168-1591(00)00203-3"
                    ),
                    authors: CynologySources.authors(
                        "Frank O. Christiansen, Morten Bakken, Bjarne O. Braastad"
                    ),
                    date: CynologySources.published(
                        "2001-04-26"
                    ),
                    doi: "10.1016/S0168-1591(00)00203-3",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .shock_collar_effects:
                return CynologySources.entry(
                    title: "Training Dogs with Help of the Shock Collar: Short and Long Term Behavioural Effects",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2003.10.004"
                    ),
                    authors: CynologySources.authors(
                        "Matthijs B. H. Schilder, Joanne A. M. van der Borg"
                    ),
                    date: CynologySources.published(
                        "2004"
                    ),
                    doi: "10.1016/j.applanim.2003.10.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .electronic_collar_pinch_quitting_signal:
                return CynologySources.entry(
                    title: "Comparison of Learning Effects and Stress between 3 Different Training Methods (Electronic Training Collar, Pinch Collar and Quitting Signal) in Belgian Malinois Police Dogs",
                    location: CynologySources.web_location(
                        "https://www.tweedekamer.nl/downloads/document?id=2019D36832"
                    ),
                    authors: CynologySources.authors(
                        "Yasemin Salgirli, Esther Schalke, Imke Boehm, Hansjoachim Hackbarth"
                    ),
                    date: CynologySources.published(
                        "2012"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Revue de Médecine Vétérinaire",
                        volume: "163",
                        issue: "11",
                        pages: "530-535"
                    ),
                    kind: .article,
                    channel: .scholarly,
                    relations: [
                        ReferenceRelation.sameWork(
                            title: "Eerste Kamer PDF mirror",
                            location: CynologySources.web_location(
                                "https://www.eerstekamer.nl/overig/20190920/comparison_of_learning_effects_and/document"
                            )
                        ),
                        ReferenceRelation.sameWork(
                            title: "Leerburg PDF mirror",
                            location: CynologySources.web_location(
                                "https://leerburg.com/pdf/comparingecollarprongandquittingsignal.pdf"
                            )
                        ),
                        ReferenceRelation.sameWork(
                            title: "ResearchGate metadata and mirror",
                            location: CynologySources.web_location(
                                "https://www.researchgate.net/publication/298421203_Comparison_of_learning_effects_and_stress_between_3_different_training_methods_Electronic_training_collar_pinch_collar_and_quitting_signal_in_Belgian_Malinois_Police_Dogs"
                            )
                        ),
                        ReferenceRelation(
                            kind: .related,
                            targetID: "cynology.physiology.salgirli_dissertation_stress_learning_training_methods",
                            title: "Full doctoral dissertation behind the larger study"
                        )
                    ],
                    tags: facets
                )

            case .electronic_collars_prevalence_success:
                return CynologySources.entry(
                    title: "The Use of Electronic Collars for Training Domestic Dogs: Estimated Prevalence, Reasons and Risk Factors for Use, and Owner Perceived Success as Compared to Other Training Methods",
                    location: CynologySources.doi_location(
                        "10.1186/1746-6148-8-93"
                    ),
                    authors: CynologySources.authors(
                        "Emily J. Blackwell, Christine Bolster, Gemma Richards, Bethany A. Loftus, Rachel A. Casey"
                    ),
                    date: CynologySources.published(
                        "2012-06-29"
                    ),
                    doi: "10.1186/1746-6148-8-93",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .kiwi_aversion_acquisition_maintenance:
                return CynologySources.entry(
                    title: "The Acquisition and Maintenance of Dogs’ Aversion Responses to Kiwi (Apteryx spp.) Training Stimuli across Time and Locations",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2013.04.006"
                    ),
                    authors: CynologySources.authors(
                        "Arnja R. Dale, Shivaun Statham, Christopher A. Podlesnik, Douglas Elliffe"
                    ),
                    date: CynologySources.published(
                        "2013-06"
                    ),
                    doi: "10.1016/j.applanim.2013.04.006",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .remote_electronic_collars_reward_training:
                return CynologySources.entry(
                    title: "The Welfare Consequences and Efficacy of Training Pet Dogs with Remote Electronic Training Collars in Comparison to Reward Based Training",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0102722"
                    ),
                    authors: CynologySources.authors(
                        "Jonathan J. Cooper, Nina Cracknell, Jessica Hardiman, Hannah F. Wright, Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2014-09-03"
                    ),
                    doi: "10.1371/journal.pone.0102722",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .remote_static_pulse_systems_welfare_report:
                return CynologySources.entry(
                    title: "Studies to Assess the Effect of Pet Training Aids, Specifically Remote Static Pulse Systems, on the Welfare of Domestic Dogs",
                    location: CynologySources.web_location(
                        "https://repository.lincoln.ac.uk/articles/report/Studies_to_assess_the_effect_of_pet_training_aids_specifically_remote_static_pulse_systems_on_the_welfare_of_domestic_dogs/24337009"
                    ),
                    authors: CynologySources.authors(
                        "Jonathan J. Cooper, Hannah F. Wright, Daniel S. Mills, Rachel A. Casey, Emily J. Blackwell, Katja van Driel, Jeff Lines"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    kind: .report,
                    channel: .institutional,
                    tags: facets
                )

            case .native_bird_predation_aversion:
                return CynologySources.entry(
                    title: "Evaluation of an Aversion-Based Program Designed to Reduce Predation of Native Birds by Dogs: An Analysis of Training Records for 1156 Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2017.03.003"
                    ),
                    authors: CynologySources.authors(
                        "Arnja R. Dale, Christopher A. Podlesnik, Douglas Elliffe"
                    ),
                    date: CynologySources.published(
                        "2017-06"
                    ),
                    doi: "10.1016/j.applanim.2017.03.003",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .electronic_training_devices:
                return CynologySources.entry(
                    title: "Electronic Training Devices: Discussion on the Pros and Cons of Their Use in Dogs as a Basis for the Position Statement of the European Society of Veterinary Clinical Ethology",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2018.02.006"
                    ),
                    authors: CynologySources.authors(
                        "Sylvia Masson, Silvia de la Vega, Angelo Gazzano, Chiara Mariti, Gonçalo da Graça Pereira, Christine Halsberghe, Anneli Muser Leyvraz, Kevin McPeake, Barbara Schoening"
                    ),
                    date: CynologySources.published(
                        "2018"
                    ),
                    doi: "10.1016/j.jveb.2018.02.006",
                    kind: .position_statement,
                    channel: .professional,
                    tags: facets
                )

            case .remote_collars_positive_reinforcement:
                return CynologySources.entry(
                    title: "Efficacy of Dog Training With and Without Remote Electronic Collars vs. a Focus on Positive Reinforcement",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2020.00508"
                    ),
                    authors: CynologySources.authors(
                        "Lucy China, Daniel S. Mills, Jonathan J. Cooper"
                    ),
                    date: CynologySources.published(
                        "2020-07-22"
                    ),
                    doi: "10.3389/fvets.2020.00508",
                    kind: .article,
                    channel: .peer_reviewed,
                    // reviews: [
                    //     ReferenceReview(
                    //         id: "managed-field-context-review",
                    //         date: CynologySources.published(
                    //             "2026-06-26"
                    //         ),
                    //         title: "Niet neutraal, maar ook geen vrije probleemgedragstest",
                    //         summary: .summary(
                    //             "De setting was niet neutraal: de honden werkten in veldcontexten met relevante prikkels zoals omheinde schapen, omheinde kippen en andere aangelijnde honden. Tegelijk was de situatie sterk gemanaged: honden waren meestal aan 10 meter lange lijnen, dicht bij de trainer en zelden op grotere afstand. De studie meet daardoor vooral cue-responsen onder gecontroleerde trainingscondities."
                    //         ),
                    //         entries: [
                    //             ReferenceReviewEntry(
                    //                 id: "relevant-distractors",
                    //                 kind: .method,
                    //                 title: "Relevante prikkels",
                    //                 body: .note(
                    //                     "De veldlocaties bevatten omheinde schapen, omheinde kippen en andere aangelijnde honden als potentiële distractoren. Voor honden die waren verwezen voor achtervolgen, livestock-worrying of slechte recall is dat geen neutrale omgeving."
                    //                 )
                    //             ),
                    //             ReferenceReviewEntry(
                    //                 id: "managed-proximity",
                    //                 kind: .method,
                    //                 title: "Lijn en afstand",
                    //                 body: .note(
                    //                     "De honden werden meestal aan 10 meter lange lijnen gewerkt. Zij bevonden zich ongeveer 70% van de tijd binnen 1 meter van de trainer en minder dan 5% van de tijd verder dan 5 meter van de trainer."
                    //                 )
                    //             ),
                    //             ReferenceReviewEntry(
                    //                 id: "measured-behaviour",
                    //                 kind: .limitation,
                    //                 title: "Gemeten gedrag",
                    //                 body: .note(
                    //                     "De video-analyse ging vooral over reacties op “Come” en “Sit”: reageren na één cue, reageren na meerdere cues, niet reageren en responssnelheid. Dat zijn gehoorzaamheidsmaten, geen directe meting van vrij jagen, najagen of agressie."
                    //                 )
                    //             ),
                    //             ReferenceReviewEntry(
                    //                 id: "scope-of-finding",
                    //                 kind: .interpretation,
                    //                 title: "Begrenzing",
                    //                 body: .note(
                    //                     "De studie ondersteunt vooral uitspraken over cue-responsen in een gemanagede trainingscontext met relevante afleiding. Zij zegt minder over suppressie op grotere afstand, zonder lijn, zonder trainer-nabijheid of wanneer het volledige probleemgedrag vrij kan ontstaan."
                    //                 )
                    //             )
                    //         ]
                    //     )
                    // ],
                    tags: facets
                )

            case .commentary_remote_collars:
                return CynologySources.entry(
                    title: "Commentary: Efficacy of Dog Training With and Without Remote Electronic Collars vs. a Focus on Positive Reinforcement",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2021.629746"
                    ),
                    authors: CynologySources.authors(
                        "Rebecca J. Sargisson, Ian G. McLean"
                    ),
                    date: CynologySources.published(
                        "2021-04-29"
                    ),
                    doi: "10.3389/fvets.2021.629746",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .response_commentary_electronic_aids:
                return CynologySources.entry(
                    title: "Response: Commentary: Remote Electronic Training Aids; Efficacy at Deterring Predatory Behavior in Dogs and Implications for Training and Policy",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2021.675005"
                    ),
                    authors: CynologySources.authors(
                        "Jonathan J. Cooper, Daniel S. Mills, Lucy China"
                    ),
                    date: CynologySources.published(
                        "2021-04-26"
                    ),
                    doi: "10.3389/fvets.2021.675005",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .chasing_behavior_training_methods:
                return CynologySources.entry(
                    title: "Comparison of the Efficacy and Welfare of Different Training Methods in Stopping Chasing Behavior in Dogs",
                    location: CynologySources.doi_location(
                        "10.3390/ani14182632"
                    ),
                    authors: CynologySources.authors(
                        "Anamarie C. Johnson, Clive D. L. Wynne"
                    ),
                    date: CynologySources.published(
                        "2024-09-05"
                    ),
                    doi: "10.3390/ani14182632",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .coyote_predation_electronic_training_collar:
                return CynologySources.entry(
                    title: "Coyote Predation on Domestic Sheep Deterred with Electronic Dog-Training Collar",
                    location: CynologySources.web_location(
                        "https://www.jstor.org/stable/3783933"
                    ),
                    authors: CynologySources.authors(
                        "William F. Andelt, Robert L. Phillips, Kenneth S. Gruver, John W. Guthrie"
                    ),
                    date: CynologySources.published(
                        "1999"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Wildlife Society Bulletin",
                        volume: "27",
                        issue: "1",
                        pages: "12-18"
                    ),
                    kind: .article,
                    channel: .peer_reviewed,
                    relations: [
                        ReferenceRelation.sameWork(
                            title: "ResearchGate full-text mirror",
                            location: CynologySources.web_location(
                                "https://www.researchgate.net/publication/258098937_Coyote_predation_on_domestic_sheep_deterred_with_electronic_dog-training_collar"
                            )
                        )
                    ],
                    tags: facets
                )

            case .safety_training_avoidance_motivated_aggression:
                return CynologySources.entry(
                    title: "Safety Training: The Elimination of Avoidance-Motivated Aggression in Dogs",
                    location: CynologySources.doi_location(
                        "10.1037/0096-3445.112.2.176"
                    ),
                    authors: CynologySources.authors(
                        "Daniel F. Tortora"
                    ),
                    date: CynologySources.published(
                        "1983"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Journal of Experimental Psychology: General",
                        volume: "112",
                        issue: "2",
                        pages: "176-214"
                    ),
                    doi: "10.1037/0096-3445.112.2.176",
                    kind: .article,
                    channel: .peer_reviewed,
                    relations: [
                        ReferenceRelation.sameWork(
                            title: "PubMed record",
                            location: CynologySources.web_location(
                                "https://pubmed.ncbi.nlm.nih.gov/6875580/"
                            )
                        ),
                        ReferenceRelation.sameWork(
                            title: "Illinois State University PDF mirror",
                            location: CynologySources.web_location(
                                "https://cpb-us-w2.wpmucdn.com/about.illinoisstate.edu/dist/6/45/files/2019/10/tortora-1983-safety-signal-training-elimination-of-avoidance-motivated-aggression-in-dogs.pdf"
                            )
                        )
                    ],
                    tags: facets
                )

            case .salgirli_dissertation_stress_learning_training_methods:
                return CynologySources.entry(
                    title: "Comparison of Stress and Learning Effects of Three Different Training Methods: Electric Training Collar, Pinch Collar and Quitting Signal",
                    location: CynologySources.web_location(
                        "https://d-nb.info/992370272/34"
                    ),
                    authors: CynologySources.authors(
                        "Yasemin Salgirli"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    container: ReferenceContainer(
                        kind: .repository,
                        title: "Deutsche Nationalbibliothek",
                        publisher: "University of Veterinary Medicine Hannover"
                    ),
                    kind: .dissertation,
                    channel: .scholarly,
                    relations: [
                        ReferenceRelation(
                            kind: .related,
                            targetID: "cynology.physiology.electronic_collar_pinch_quitting_signal",
                            title: "Condensed 2012 journal-article version"
                        )
                    ],
                    tags: facets
                )

            case .collar_mounted_electronic_devices_behavior_modification:
                return CynologySources.entry(
                    title: "Collar Mounted Electronic Devices for Behaviour Modification in Dogs",
                    location: CynologySources.web_location(
                        "http://aiam.org.au/resources/Documents/2000%20UAM/PUB_Pro00_TaniaColeman_RichardMurray.pdf"
                    ),
                    authors: CynologySources.authors(
                        "Tania Coleman, Richard Murray"
                    ),
                    date: CynologySources.published(
                        "2000"
                    ),
                    container: ReferenceContainer.proceedings(
                        title: "Urban Animal Management Conference Proceedings",
                        publisher: "Australian Institute of Animal Management"
                    ),
                    kind: .article,
                    channel: .professional,
                    tags: facets
                )

            case .clinical_signs_electric_training_collars:
                return CynologySources.entry(
                    title: "Clinical Signs Caused by the Use of Electric Training Collars on Dogs in Everyday Life Situations",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2006.11.002"
                    ),
                    authors: CynologySources.authors(
                        "Esther Schalke, Julia Stichnoth, Sandra Ott, Rainer Jones-Baade"
                    ),
                    date: CynologySources.published(
                        "2007"
                    ),
                    container: ReferenceContainer.journal(
                        title: "Applied Animal Behaviour Science",
                        volume: "105",
                        issue: "4",
                        pages: "369-380"
                    ),
                    doi: "10.1016/j.applanim.2006.11.002",
                    kind: .article,
                    channel: .peer_reviewed,
                    relations: [
                        ReferenceRelation.sameWork(
                            title: "ScienceDirect abstract",
                            location: CynologySources.web_location(
                                "https://www.sciencedirect.com/science/article/abs/pii/S0168159106003820"
                            )
                        )
                    ],
                    tags: facets
                )

            case .bva_bsava_electronic_training_aids_consultation_response:
                return CynologySources.entry(
                    title: "Potential Controls or Prohibition of Electronic Training Aids in Scotland: British Veterinary Association and British Small Animal Veterinary Association Consultation Response",
                    location: CynologySources.web_location(
                        "https://www.bsava.com/wp-content/uploads/2022/02/BVA-and-BSAVA-consultation-response-electronic-training-collars-in-Scotland-.pdf"
                    ),
                    authors: CynologySources.authors(
                        "British Veterinary Association, British Small Animal Veterinary Association"
                    ),
                    date: CynologySources.published(
                        "2016-01-29"
                    ),
                    container: ReferenceContainer.website(
                        title: "British Small Animal Veterinary Association",
                        publisher: "British Small Animal Veterinary Association"
                    ),
                    kind: .position_statement,
                    channel: .professional,
                    relations: [
                        ReferenceRelation.sameWork(
                            title: "Scottish Government consultation response page",
                            location: CynologySources.web_location(
                                "https://consult.gov.scot/animal-welfare/electronic-training-aids/consultation/view_respondent?show_all_questions=0&sort=submitted&order=ascending&_q__text=British+Veterinary+Association&uuId=622589211"
                            )
                        )
                    ],
                    tags: facets
                )

            case .victoria_prevention_cruelty_animals_electronic_collars:
                return CynologySources.entry(
                    title: "Prevention of Cruelty to Animals Regulations 2019",
                    location: CynologySources.web_location(
                        "https://www.legislation.vic.gov.au/as-made/statutory-rules/prevention-cruelty-animals-regulations-2019"
                    ),
                    authors: CynologySources.authors(
                        "State Government of Victoria"
                    ),
                    date: CynologySources.published(
                        "2019"
                    ),
                    container: ReferenceContainer.website(
                        title: "Victorian Legislation",
                        publisher: "State Government of Victoria"
                    ),
                    kind: .regulation,
                    channel: .institutional,
                    relations: [
                        ReferenceRelation.sameWork(
                            title: "Authorised regulations PDF",
                            location: CynologySources.web_location(
                                "https://content.legislation.vic.gov.au/sites/default/files/9cc60c2d-63c4-35b6-95ad-c39254a5d170_19-133sra%20authorised.pdf"
                            )
                        )
                    ],
                    tags: facets
                )

            case .job_scope_too_high:
                return CynologySources.entry(
                    title: "Job Scope and Stress: Can Job Scope Be Too High?",
                    location: CynologySources.doi_location(
                        "10.5465/256858"
                    ),
                    authors: CynologySources.authors(
                        "Jia Lin Xie, Gary Johns"
                    ),
                    date: CynologySources.published(
                        "1995"
                    ),
                    doi: "10.5465/256858",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .demand_control_specific_demands:
                return CynologySources.entry(
                    title: "A Longitudinal Test of the Demand-Control Model Using Specific Job Demands and Specific Job Control",
                    location: CynologySources.doi_location(
                        "10.1007/s12529-010-9081-1"
                    ),
                    authors: CynologySources.authors(
                        "Jan de Jonge, Natasja van Vegchel, Akihito Shimazu, Wilmar Schaufeli, Christian Dormann"
                    ),
                    date: CynologySources.published(
                        "2010-03-03"
                    ),
                    doi: "10.1007/s12529-010-9081-1",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .stressors_job_complexity_type_a:
                return CynologySources.entry(
                    title: "Type A as a Moderator of Stressors and Job Complexity: A Comparison of Achievement Strivings and Impatience-Irritability",
                    location: CynologySources.doi_location(
                        "10.1111/j.1559-1816.2002.tb00251.x"
                    ),
                    authors: CynologySources.authors(
                        "Steve M. Jex, Gary A. Adams, Tina C. Elacqua, Daniel G. Bachrach"
                    ),
                    date: CynologySources.published(
                        "2002"
                    ),
                    doi: "10.1111/j.1559-1816.2002.tb00251.x",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .teacher_stress_achievement_striving:
                return CynologySources.entry(
                    title: "Individual Contributory Factors in Teacher Stress: The Role of Achievement Striving and Occupational Commitment",
                    location: CynologySources.doi_location(
                        "10.1348/000709905X37299"
                    ),
                    authors: CynologySources.authors(
                        "Sarah Forrest, Emma Jepson"
                    ),
                    date: CynologySources.published(
                        "2006"
                    ),
                    doi: "10.1348/000709905X37299",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .self_efficacy_unifying_theory:
                return CynologySources.entry(
                    title: "Self-Efficacy: Toward a Unifying Theory of Behavioral Change",
                    location: CynologySources.doi_location(
                        "10.1037/0033-295X.84.2.191"
                    ),
                    authors: CynologySources.authors(
                        "Albert Bandura"
                    ),
                    date: CynologySources.published(
                        "1977"
                    ),
                    doi: "10.1037/0033-295X.84.2.191",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .self_efficacy_human_agency:
                return CynologySources.entry(
                    title: "Self-Efficacy Mechanism in Human Agency",
                    location: CynologySources.doi_location(
                        "10.1037/0003-066X.37.2.122"
                    ),
                    authors: CynologySources.authors(
                        "Albert Bandura"
                    ),
                    date: CynologySources.published(
                        "1982"
                    ),
                    doi: "10.1037/0003-066X.37.2.122",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .academic_self_efficacy:
                return CynologySources.entry(
                    title: "Academic Self-Efficacy: From Educational Theory to Instructional Practice",
                    location: CynologySources.doi_location(
                        "10.1007/s40037-012-0012-5"
                    ),
                    authors: CynologySources.authors(
                        "Anthony R. Artino Jr."
                    ),
                    date: CynologySources.published(
                        "2012-04-11"
                    ),
                    doi: "10.1007/s40037-012-0012-5",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .flow_optimal_experience:
                return CynologySources.entry(
                    title: "Flow: The Psychology of Optimal Experience",
                    location: CynologySources.web_location(
                        "https://www.harpercollins.com/products/flow-mihaly-csikszentmihalyi"
                    ),
                    authors: CynologySources.authors(
                        "Mihaly Csikszentmihalyi"
                    ),
                    date: CynologySources.published(
                        "1990"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .boring_thoughts_bored_minds:
                return CynologySources.entry(
                    title: "Boring Thoughts and Bored Minds: The MAC Model of Boredom and Cognitive Engagement",
                    location: CynologySources.doi_location(
                        "10.1037/rev0000097"
                    ),
                    authors: CynologySources.authors(
                        "Erin C. Westgate, Timothy D. Wilson"
                    ),
                    date: CynologySources.published(
                        "2018"
                    ),
                    doi: "10.1037/rev0000097",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .effort_paradox:
                return CynologySources.entry(
                    title: "The Effort Paradox: Effort Is Both Costly and Valued",
                    location: CynologySources.doi_location(
                        "10.1016/j.tics.2018.01.007"
                    ),
                    authors: CynologySources.authors(
                        "Michael Inzlicht, Amitai Shenhav, Christopher Y. Olivola"
                    ),
                    date: CynologySources.published(
                        "2018-04"
                    ),
                    doi: "10.1016/j.tics.2018.01.007",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .effort_increases_meaning:
                return CynologySources.entry(
                    title: "Experimental Evidence That Exerting Effort Increases Meaning",
                    location: CynologySources.doi_location(
                        "10.1016/j.cognition.2025.106065"
                    ),
                    authors: CynologySources.authors(
                        "Aidan V. Campbell, Yiyi Wang, Michael Inzlicht"
                    ),
                    date: CynologySources.published(
                        "2025-04"
                    ),
                    doi: "10.1016/j.cognition.2025.106065",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .breaking_monotony_with_meaning:
                return CynologySources.entry(
                    title: "Breaking Monotony with Meaning: Motivation in Crowdsourcing Markets",
                    location: CynologySources.doi_location(
                        "10.1016/j.jebo.2013.03.003"
                    ),
                    authors: CynologySources.authors(
                        "Dana Chandler, Adam Kapelner"
                    ),
                    date: CynologySources.published(
                        "2013"
                    ),
                    doi: "10.1016/j.jebo.2013.03.003",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .bestial_boredom:
                return CynologySources.entry(
                    title: "Bestial Boredom: A Biological Perspective on Animal Boredom and Suggestions for Its Scientific Investigation",
                    location: CynologySources.doi_location(
                        "10.1016/j.anbehav.2017.06.006"
                    ),
                    authors: CynologySources.authors(
                        "Charlotte C. Burn"
                    ),
                    date: CynologySources.published(
                        "2017"
                    ),
                    doi: "10.1016/j.anbehav.2017.06.006",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .enrichment_reduces_boredom:
                return CynologySources.entry(
                    title: "Environmental Enrichment Reduces Signs of Boredom in Caged Mink",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0049180"
                    ),
                    authors: CynologySources.authors(
                        "Rebecca K. Meagher, Georgia J. Mason"
                    ),
                    date: CynologySources.published(
                        "2012-11-14"
                    ),
                    doi: "10.1371/journal.pone.0049180",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dogs_contrafreeload:
                return CynologySources.entry(
                    title: "Domestic Pet Dogs (Canis lupus familiaris) Do Not Show a Preference to Contrafreeload, but Are Willing",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-024-51663-x"
                    ),
                    authors: CynologySources.authors(
                        "Liza Rothkoff, Lynna Feng, Sarah-Elizabeth Byosiere"
                    ),
                    date: CynologySources.published(
                        "2024-01-15"
                    ),
                    doi: "10.1038/s41598-024-51663-x",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .challenge_point_motor_learning:
                return CynologySources.entry(
                    title: "Challenge Point: A Framework for Conceptualizing the Effects of Various Practice Conditions in Motor Learning",
                    location: CynologySources.doi_location(
                        "10.3200/JMBR.36.2.212-224"
                    ),
                    authors: CynologySources.authors(
                        "Mark A. Guadagnoli, Timothy D. Lee"
                    ),
                    date: CynologySources.published(
                        "2004-06"
                    ),
                    doi: "10.3200/JMBR.36.2.212-224",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .eighty_five_percent_rule:
                return CynologySources.entry(
                    title: "The Eighty Five Percent Rule for Optimal Learning",
                    location: CynologySources.doi_location(
                        "10.1038/s41467-019-12552-4"
                    ),
                    authors: CynologySources.authors(
                        "Robert C. Wilson, Amitai Shenhav, Mark Straccia, Jonathan D. Cohen"
                    ),
                    date: CynologySources.published(
                        "2019-11-05"
                    ),
                    doi: "10.1038/s41467-019-12552-4",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .desirable_difficulties:
                return CynologySources.entry(
                    title: "Making Things Hard on Yourself, But in a Good Way: Creating Desirable Difficulties to Enhance Learning",
                    location: CynologySources.web_location(
                        "https://bjorklab.psych.ucla.edu/wp-content/uploads/sites/13/2016/04/EBjork_RBjork_2011.pdf"
                    ),
                    authors: CynologySources.authors(
                        "Elizabeth L. Bjork, Robert A. Bjork"
                    ),
                    date: CynologySources.published(
                        "2011"
                    ),
                    kind: .book_chapter,
                    channel: .scholarly,
                    tags: facets
                )

            case .competence_optimal_challenge:
                return CynologySources.entry(
                    title: "Intrinsic and Extrinsic Motivation from a Self-Determination Theory Perspective: Definitions, Theory, Practices, and Future Directions",
                    location: CynologySources.doi_location(
                        "10.1016/j.cedpsych.2020.101860"
                    ),
                    authors: CynologySources.authors(
                        "Richard M. Ryan, Edward L. Deci"
                    ),
                    date: CynologySources.published(
                        "2020"
                    ),
                    doi: "10.1016/j.cedpsych.2020.101860",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .errorless_learning_pet_dogs:
                return CynologySources.entry(
                    title: "Comparing Trial-and-Error to Errorless Learning Procedures in Training Pet Dogs: A Visual Discrimination",
                    location: CynologySources.doi_location(
                        "10.1016/j.lmot.2023.101944"
                    ),
                    authors: CynologySources.authors(
                        "Kimberley Handley, Susan Hazel, Jade Fountain, Eduardo J. Fernandez"
                    ),
                    date: CynologySources.published(
                        "2023-11-20"
                    ),
                    doi: "10.1016/j.lmot.2023.101944",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .adaptive_algorithms_shaping_behavior:
                return CynologySources.entry(
                    title: "Adaptive Algorithms for Shaping Behavior",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pcbi.1013454"
                    ),
                    authors: CynologySources.authors(
                        "William L. Tong, Venkatesh N. Murthy, Gautam Reddy"
                    ),
                    date: CynologySources.published(
                        "2025-09-12"
                    ),
                    doi: "10.1371/journal.pcbi.1013454",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .schedules_of_reinforcement:
                return CynologySources.entry(
                    title: "Schedules of Reinforcement",
                    location: CynologySources.doi_location(
                        "10.1037/10627-000"
                    ),
                    authors: CynologySources.authors(
                        "Charles B. Ferster, B. F. Skinner"
                    ),
                    date: CynologySources.published(
                        "1957"
                    ),
                    doi: "10.1037/10627-000",
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .frustrative_nonreward:
                return CynologySources.entry(
                    title: "Frustrative Nonreward in Partial Reinforcement and Discrimination Learning: Some Recent History and a Theoretical Extension",
                    location: CynologySources.doi_location(
                        "10.1037/h0046200"
                    ),
                    authors: CynologySources.authors(
                        "Abram Amsel"
                    ),
                    date: CynologySources.published(
                        "1962"
                    ),
                    doi: "10.1037/h0046200",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .learned_industriousness:
                return CynologySources.entry(
                    title: "Learned Industriousness",
                    location: CynologySources.doi_location(
                        "10.1037/0033-295X.99.2.248"
                    ),
                    authors: CynologySources.authors(
                        "Robert Eisenberger"
                    ),
                    date: CynologySources.published(
                        "1992"
                    ),
                    doi: "10.1037/0033-295X.99.2.248",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .learned_industriousness_physical_activity:
                return CynologySources.entry(
                    title: "A Test of Learned Industriousness in the Physical Activity Domain",
                    location: CynologySources.doi_location(
                        "10.5539/ijps.v6n4p12"
                    ),
                    authors: CynologySources.authors(
                        "Eduardo E. Bustamante, Catherine L. Davis, David X. Marquez"
                    ),
                    date: CynologySources.published(
                        "2014"
                    ),
                    doi: "10.5539/ijps.v6n4p12",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .persistence_behavior_chain_working_dogs:
                return CynologySources.entry(
                    title: "Increasing the Persistence of a Heterogeneous Behavior Chain: Studies of Extinction in a Rat Model of Search Behavior of Working Dogs",
                    location: CynologySources.doi_location(
                        "10.1016/j.beproc.2016.05.009"
                    ),
                    authors: CynologySources.authors(
                        "Eric A. Thrailkill, Alex Kacelnik, Fay Porritt, Mark E. Bouton"
                    ),
                    date: CynologySources.published(
                        "2016-06-13"
                    ),
                    doi: "10.1016/j.beproc.2016.05.009",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .partial_reinforcement_omission_effects:
                return CynologySources.entry(
                    title: "Partial Reinforcement Extinction and Omission Effects in the Elimination and Recovery of Discriminated Operant Behavior",
                    location: CynologySources.doi_location(
                        "10.1037/xan0000354"
                    ),
                    authors: CynologySources.authors(
                        "Eric A. Thrailkill"
                    ),
                    date: CynologySources.published(
                        "2023-07"
                    ),
                    doi: "10.1037/xan0000354",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .reinforcement_omission_extinction_dogs:
                return CynologySources.entry(
                    title: "Effect of Reinforcement, Reinforcer Omission and Extinction on a Communicative Response in Domestic Dogs (Canis familiaris)",
                    location: CynologySources.doi_location(
                        "10.1016/j.beproc.2008.03.004"
                    ),
                    authors: CynologySources.authors(
                        "Mariana Bentosela, Gabriela Barrera, Adriana Jakovcevic, Angel M. Elgier, Alba E. Mustaca"
                    ),
                    date: CynologySources.published(
                        "2008-08"
                    ),
                    doi: "10.1016/j.beproc.2008.03.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .frustration_search_rescue_canines:
                return CynologySources.entry(
                    title: "Frustration and Its Impact on Search and Rescue Canines",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2025.1546412"
                    ),
                    authors: CynologySources.authors(
                        "Sally Dickinson, Erica N. Feuerbacher"
                    ),
                    date: CynologySources.published(
                        "2025-03-07"
                    ),
                    doi: "10.3389/fvets.2025.1546412",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .conditioned_reinforcement_training:
                return CynologySources.entry(
                    title: "What’s in a Click? The Efficacy of Conditioned Reinforcement in Applied Animal Training: A Systematic Review and Meta-Analysis",
                    location: CynologySources.doi_location(
                        "10.3390/ani10101757"
                    ),
                    authors: CynologySources.authors(
                        "Nicole Pfaller-Sadovsky, Camilo Hurtado-Parrado, Daniela Cardillo, Lucia G. Medina, Susan G. Friedman"
                    ),
                    date: CynologySources.published(
                        "2020-09-28"
                    ),
                    doi: "10.3390/ani10101757",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .psychobiology_resilience:
                return CynologySources.entry(
                    title: "Psychobiology and Molecular Genetics of Resilience",
                    location: CynologySources.doi_location(
                        "10.1038/nrn2649"
                    ),
                    authors: CynologySources.authors(
                        "Adriana Feder, Eric J. Nestler, Dennis S. Charney"
                    ),
                    date: CynologySources.published(
                        "2009-06-01"
                    ),
                    doi: "10.1038/nrn2649",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .resilience_in_dogs:
                return CynologySources.entry(
                    title: "Resilience in Dogs: Lessons from Other Species",
                    location: CynologySources.doi_location(
                        "10.2147/VMRR.S189566"
                    ),
                    authors: CynologySources.authors(
                        "Katriina Tiira"
                    ),
                    date: CynologySources.published(
                        "2019-11-15"
                    ),
                    doi: "10.2147/VMRR.S189566",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .stress_resilience_inoculation:
                return CynologySources.entry(
                    title: "Seeding Stress Resilience Through Inoculation",
                    location: CynologySources.doi_location(
                        "10.1155/2016/4928081"
                    ),
                    authors: CynologySources.authors(
                        "Archana Ashokan, Meenalochani Sivasubramanian, Rupshi Mitra"
                    ),
                    date: CynologySources.published(
                        "2016-01-05"
                    ),
                    doi: "10.1155/2016/4928081",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .prospective_stress_inoculation:
                return CynologySources.entry(
                    title: "Prospective Investigation of Stress Inoculation in Young Monkeys",
                    location: CynologySources.doi_location(
                        "10.1001/archpsyc.61.9.933"
                    ),
                    authors: CynologySources.authors(
                        "Karen J. Parker, Catherine L. Buckmaster, Alan F. Schatzberg, David M. Lyons"
                    ),
                    date: CynologySources.published(
                        "2004-09"
                    ),
                    doi: "10.1001/archpsyc.61.9.933",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .stress_inoculation_resilience:
                return CynologySources.entry(
                    title: "Stress Inoculation-Induced Indications of Resilience in Monkeys",
                    location: CynologySources.doi_location(
                        "10.1002/jts.20265"
                    ),
                    authors: CynologySources.authors(
                        "David M. Lyons, Karen J. Parker"
                    ),
                    date: CynologySources.published(
                        "2007"
                    ),
                    doi: "10.1002/jts.20265",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .hippocampal_volume_stress:
                return CynologySources.entry(
                    title: "Stress-Induced Reduction in Hippocampal Volume and Connectivity with the Ventromedial Prefrontal Cortex Are Related to Maladaptive Responses to Stressful Military Service",
                    location: CynologySources.doi_location(
                        "10.1002/hbm.22100"
                    ),
                    authors: CynologySources.authors(
                        "Roee Admon, Dmitry Leykin, Gad Lubin, Veronika Engert, Julie Andrews, Jens Pruessner, Talma Hendler"
                    ),
                    date: CynologySources.published(
                        "2013-11"
                    ),
                    doi: "10.1002/hbm.22100",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .stress_relief_resilience:
                return CynologySources.entry(
                    title: "Stress Relief as a Natural Resilience Mechanism Against Depression-Like Behaviors",
                    location: CynologySources.doi_location(
                        "10.1016/j.neuron.2023.09.004"
                    ),
                    authors: CynologySources.authors(
                        "Yiyan Dong, Yifei Li, Xinkuan Xiang, Zhi-Cheng Xiao, Jianbo Hu, Yulong Li, Haohong Li, Hailan Hu"
                    ),
                    date: CynologySources.published(
                        "2023-10-18"
                    ),
                    doi: "10.1016/j.neuron.2023.09.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .relief_as_reward:
                return CynologySources.entry(
                    title: "Relief as a Reward: Hedonic and Neural Responses to Safety from Pain",
                    location: CynologySources.doi_location(
                        "10.1371/journal.pone.0017870"
                    ),
                    authors: CynologySources.authors(
                        "Siri Leknes, Michael Lee, Chantal Berna, Jesper Andersson, Irene Tracey"
                    ),
                    date: CynologySources.published(
                        "2011-04-07"
                    ),
                    doi: "10.1371/journal.pone.0017870",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .dopamine_conditioned_punishment_avoidance:
                return CynologySources.entry(
                    title: "Subsecond Dopamine Release in the Nucleus Accumbens Predicts Conditioned Punishment and Its Successful Avoidance",
                    location: CynologySources.doi_location(
                        "10.1523/JNEUROSCI.3087-12.2012"
                    ),
                    authors: CynologySources.authors(
                        "Erik B. Oleson, Ronny N. Gentry, Vivian C. Chioma, Joseph F. Cheer"
                    ),
                    date: CynologySources.published(
                        "2012-10-17"
                    ),
                    doi: "10.1523/JNEUROSCI.3087-12.2012",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .pain_relief_negative_reinforcement:
                return CynologySources.entry(
                    title: "Pain Relief Produces Negative Reinforcement Through Activation of Mesolimbic Reward-Valuation Circuitry",
                    location: CynologySources.doi_location(
                        "10.1073/pnas.1214605109"
                    ),
                    authors: CynologySources.authors(
                        "Edita Navratilova, Jennifer Yanhua Xie, Alec Okun, Chao Qu, N. Eyde, T. King, Frank Porreca"
                    ),
                    date: CynologySources.published(
                        "2012-12-11"
                    ),
                    doi: "10.1073/pnas.1214605109",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .reward_pain_relief_circuits:
                return CynologySources.entry(
                    title: "Brain Circuits Encoding Reward from Pain Relief",
                    location: CynologySources.doi_location(
                        "10.1016/j.tins.2015.09.003"
                    ),
                    authors: CynologySources.authors(
                        "Edita Navratilova, Christopher W. Atcherley, Frank Porreca"
                    ),
                    date: CynologySources.published(
                        "2015-11"
                    ),
                    doi: "10.1016/j.tins.2015.09.003",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .relief_learning_d1_nmda:
                return CynologySources.entry(
                    title: "Relief Learning Requires a Coincident Activation of Dopamine D1 and NMDA Receptors Within the Nucleus Accumbens",
                    location: CynologySources.doi_location(
                        "10.1016/j.neuropharm.2016.11.022"
                    ),
                    authors: CynologySources.authors(
                        "Jorge R. Bergado Acosta, Evelyn Kahl, Georgios Kogias, Tahir C. Uzuneser, Markus Fendt"
                    ),
                    date: CynologySources.published(
                        "2017-03-01"
                    ),
                    doi: "10.1016/j.neuropharm.2016.11.022",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .mesolimbic_dopamine_relief_learning:
                return CynologySources.entry(
                    title: "Role of the Mesolimbic Dopamine System in Relief Learning",
                    location: CynologySources.doi_location(
                        "10.1038/s41386-018-0020-1"
                    ),
                    authors: CynologySources.authors(
                        "D. Mayer, E. Kahl, T. C. Uzuneser, Markus Fendt"
                    ),
                    date: CynologySources.published(
                        "2018-07"
                    ),
                    doi: "10.1038/s41386-018-0020-1",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .opponent_process_motivation:
                return CynologySources.entry(
                    title: "An Opponent-Process Theory of Motivation: I. Temporal Dynamics of Affect",
                    location: CynologySources.doi_location(
                        "10.1037/h0036128"
                    ),
                    authors: CynologySources.authors(
                        "Richard L. Solomon, John D. Corbit"
                    ),
                    date: CynologySources.published(
                        "1974"
                    ),
                    doi: "10.1037/h0036128",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .handling_deprivation_resistance:
                return CynologySources.entry(
                    title: "The Effects of Handling Before and After Weaning on the Resistance of Albino Rats to Later Deprivation",
                    location: CynologySources.doi_location(
                        "10.1037/h0055722"
                    ),
                    authors: CynologySources.authors(
                        "Seymour Levine, Lawrence S. Otis"
                    ),
                    date: CynologySources.published(
                        "1958"
                    ),
                    doi: "10.1037/h0055722",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .infantile_stimulation_dominance:
                return CynologySources.entry(
                    title: "The Effect of Infantile Stimulation on Dominance Behavior in the Rat",
                    location: CynologySources.doi_location(
                        "10.2466/pr0.1959.5.1.31"
                    ),
                    authors: CynologySources.authors(
                        "L. Mezei, J. Rosen"
                    ),
                    date: CynologySources.published(
                        "1959"
                    ),
                    doi: "10.2466/pr0.1959.5.1.31",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .early_gentling_puppies:
                return CynologySources.entry(
                    title: "Effects of Early Gentling and Early Environment on Emotional Development of Puppies",
                    location: CynologySources.doi_location(
                        "10.1016/j.applanim.2008.12.007"
                    ),
                    authors: CynologySources.authors(
                        "Angelo Gazzano, Chiara Mariti, Lorella Notari, Claudio Sighieri, E. Anne McBride"
                    ),
                    date: CynologySources.published(
                        "2008"
                    ),
                    doi: "10.1016/j.applanim.2008.12.007",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .early_development_stimulation:
                return CynologySources.entry(
                    title: "Periods of Early Development and the Effects of Stimulation and Social Experiences in the Canine",
                    location: CynologySources.web_location(
                        "https://breedingbetterdogs.com/article/early-neurological-stimulation"
                    ),
                    authors: CynologySources.authors(
                        "Carmen L. Battaglia"
                    ),
                    date: CynologySources.published(
                        "2009"
                    ),
                    kind: .webpage,
                    channel: .professional,
                    tags: facets
                )

            case .resilience_olympic_champions:
                return CynologySources.entry(
                    title: "A Grounded Theory of Psychological Resilience in Olympic Champions",
                    location: CynologySources.doi_location(
                        "10.1016/j.psychsport.2012.04.007"
                    ),
                    authors: CynologySources.authors(
                        "David Fletcher, Mustafa Sarkar"
                    ),
                    date: CynologySources.published(
                        "2012"
                    ),
                    doi: "10.1016/j.psychsport.2012.04.007",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .resilience_sport_performers:
                return CynologySources.entry(
                    title: "Psychological Resilience in Sport Performers: A Review of Stressors and Protective Factors",
                    location: CynologySources.doi_location(
                        "10.1080/02640414.2014.901551"
                    ),
                    authors: CynologySources.authors(
                        "Mustafa Sarkar, David Fletcher"
                    ),
                    date: CynologySources.published(
                        "2014"
                    ),
                    doi: "10.1080/02640414.2014.901551",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .adversity_olympic_performance:
                return CynologySources.entry(
                    title: "What Doesn't Kill Me...: Adversity-Related Experiences Are Vital in the Development of Superior Olympic Performance",
                    location: CynologySources.doi_location(
                        "10.1016/j.jsams.2014.06.010"
                    ),
                    authors: CynologySources.authors(
                        "Mustafa Sarkar, David Fletcher, Daniel J. Brown"
                    ),
                    date: CynologySources.published(
                        "2015"
                    ),
                    doi: "10.1016/j.jsams.2014.06.010",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .mental_fortitude_training:
                return CynologySources.entry(
                    title: "Mental Fortitude Training: An Evidence-Based Approach to Developing Psychological Resilience for Sustained Success",
                    location: CynologySources.doi_location(
                        "10.1080/21520704.2016.1255496"
                    ),
                    authors: CynologySources.authors(
                        "David Fletcher, Mustafa Sarkar"
                    ),
                    date: CynologySources.published(
                        "2016"
                    ),
                    doi: "10.1080/21520704.2016.1255496",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .challenge_threat_states_athletes:
                return CynologySources.entry(
                    title: "A Theory of Challenge and Threat States in Athletes",
                    location: CynologySources.doi_location(
                        "10.1080/17509840902829331"
                    ),
                    authors: CynologySources.authors(
                        "Marc V. Jones, Carla Meijen, Paul J. McCarthy, David Sheffield"
                    ),
                    date: CynologySources.published(
                        "2009"
                    ),
                    doi: "10.1080/17509840902829331",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .revised_challenge_threat_states:
                return CynologySources.entry(
                    title: "A Theory of Challenge and Threat States in Athletes: A Revised Conceptualization",
                    location: CynologySources.doi_location(
                        "10.3389/fpsyg.2020.00126"
                    ),
                    authors: CynologySources.authors(
                        "Carla Meijen, Martin Turner, Marc V. Jones, David Sheffield, Paul McCarthy"
                    ),
                    date: CynologySources.published(
                        "2020-02-06"
                    ),
                    doi: "10.3389/fpsyg.2020.00126",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .training_with_anxiety:
                return CynologySources.entry(
                    title: "Training With Anxiety Has a Positive Effect on Expert Perceptual-Motor Performance Under Pressure",
                    location: CynologySources.doi_location(
                        "10.1080/17470210802557702"
                    ),
                    authors: CynologySources.authors(
                        "Raôul R. D. Oudejans, Jan R. Pijpers"
                    ),
                    date: CynologySources.published(
                        "2009"
                    ),
                    doi: "10.1080/17470210802557702",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .pressure_training_meta_analysis:
                return CynologySources.entry(
                    title: "Pressure Training for Performance Domains: A Meta-Analysis",
                    location: CynologySources.doi_location(
                        "10.1037/spy0000202"
                    ),
                    authors: CynologySources.authors(
                        "William R. Low, Gavin R. H. Sandercock, Paul Freeman, Marie E. Winter, Joanne Butt, Ian Maynard"
                    ),
                    date: CynologySources.published(
                        "2021"
                    ),
                    doi: "10.1037/spy0000202",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .choking_interventions_sports:
                return CynologySources.entry(
                    title: "Choking Interventions in Sports: A Systematic Review",
                    location: CynologySources.doi_location(
                        "10.1080/1750984X.2017.1408134"
                    ),
                    authors: CynologySources.authors(
                        "Peter Gröpel, Christopher Mesagno"
                    ),
                    date: CynologySources.published(
                        "2019"
                    ),
                    doi: "10.1080/1750984X.2017.1408134",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .sources_of_confidence:
                return CynologySources.entry(
                    title: "Sources and Types of Confidence Identified by World Class Sport Performers",
                    location: CynologySources.doi_location(
                        "10.1080/10413200701599173"
                    ),
                    authors: CynologySources.authors(
                        "Kate Hays, Ian Maynard, Owen Thomas, Mark Bawden"
                    ),
                    date: CynologySources.published(
                        "2007"
                    ),
                    doi: "10.1080/10413200701599173",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .confidence_world_class_performance:
                return CynologySources.entry(
                    title: "The Role of Confidence in World-Class Sport Performance",
                    location: CynologySources.doi_location(
                        "10.1080/02640410903089798"
                    ),
                    authors: CynologySources.authors(
                        "Kate Hays, Owen Thomas, Ian Maynard, Mark Bawden"
                    ),
                    date: CynologySources.published(
                        "2009-09-21"
                    ),
                    doi: "10.1080/02640410903089798",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .anxiety_interpretation_performers:
                return CynologySources.entry(
                    title: "Intensity and Interpretation of Anxiety Symptoms in Elite and Non-Elite Sports Performers",
                    location: CynologySources.doi_location(
                        "10.1016/0191-8869(94)90138-4"
                    ),
                    authors: CynologySources.authors(
                        "Graham Jones, Sheldon Hanton, Austin Swain"
                    ),
                    date: CynologySources.published(
                        "1994-11"
                    ),
                    doi: "10.1016/0191-8869(94)90138-4",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .stress_exposure_training:
                return CynologySources.entry(
                    title: "Stress Exposure Training",
                    location: CynologySources.doi_location(
                        "10.1037/10278-007"
                    ),
                    authors: CynologySources.authors(
                        "James E. Driskell, Joan H. Johnston"
                    ),
                    date: CynologySources.published(
                        "1998"
                    ),
                    doi: "10.1037/10278-007",
                    kind: .book_chapter,
                    channel: .scholarly,
                    tags: facets
                )

            case .affective_neuroscience:
                return CynologySources.entry(
                    title: "Affective Neuroscience: The Foundations of Human and Animal Emotions",
                    location: CynologySources.web_location(
                        "https://academic.oup.com/book/53534"
                    ),
                    authors: CynologySources.authors(
                        "Jaak Panksepp"
                    ),
                    date: CynologySources.published(
                        "1998"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .affective_consciousness:
                return CynologySources.entry(
                    title: "Affective Consciousness: Core Emotional Feelings in Animals and Humans",
                    location: CynologySources.doi_location(
                        "10.1016/j.concog.2004.10.004"
                    ),
                    authors: CynologySources.authors(
                        "Jaak Panksepp"
                    ),
                    date: CynologySources.published(
                        "2005-03"
                    ),
                    doi: "10.1016/j.concog.2004.10.004",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .emotional_brainmind:
                return CynologySources.entry(
                    title: "Affective Neuroscience of the Emotional BrainMind: Evolutionary Perspectives and Implications for Understanding Depression",
                    location: CynologySources.web_location(
                        "https://pmc.ncbi.nlm.nih.gov/articles/PMC3181986/"
                    ),
                    authors: CynologySources.authors(
                        "Jaak Panksepp"
                    ),
                    date: CynologySources.published(
                        "2010"
                    ),
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .archaeology_of_mind:
                return CynologySources.entry(
                    title: "The Archaeology of Mind: Neuroevolutionary Origins of Human Emotions",
                    location: CynologySources.web_location(
                        "https://books.google.com/books/about/The_Archaeology_of_Mind.html?id=bVdxXN_vVGEC"
                    ),
                    authors: CynologySources.authors(
                        "Jaak Panksepp, Lucy Biven"
                    ),
                    date: CynologySources.published(
                        "2012-09-17"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .circumplex_model_affect:
                return CynologySources.entry(
                    title: "A Circumplex Model of Affect",
                    location: CynologySources.doi_location(
                        "10.1037/h0077714"
                    ),
                    authors: CynologySources.authors(
                        "James A. Russell"
                    ),
                    date: CynologySources.published(
                        "1980-12"
                    ),
                    doi: "10.1037/h0077714",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .cognitive_bias_affective_state:
                return CynologySources.entry(
                    title: "Animal Behaviour: Cognitive Bias and Affective State",
                    location: CynologySources.doi_location(
                        "10.1038/427312a"
                    ),
                    authors: CynologySources.authors(
                        "Emma J. Harding, Elizabeth S. Paul, Michael Mendl"
                    ),
                    date: CynologySources.published(
                        "2004-01-22"
                    ),
                    doi: "10.1038/427312a",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .animal_emotion_mood:
                return CynologySources.entry(
                    title: "An Integrative and Functional Framework for the Study of Animal Emotion and Mood",
                    location: CynologySources.doi_location(
                        "10.1098/rspb.2010.0303"
                    ),
                    authors: CynologySources.authors(
                        "Michael Mendl, Oliver H. P. Burman, Elizabeth S. Paul"
                    ),
                    date: CynologySources.published(
                        "2010-10"
                    ),
                    doi: "10.1098/rspb.2010.0303",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .animal_affect_decision_making:
                return CynologySources.entry(
                    title: "Animal Affect and Decision-Making",
                    location: CynologySources.doi_location(
                        "10.1016/j.neubiorev.2020.01.025"
                    ),
                    authors: CynologySources.authors(
                        "Michael Mendl, Elizabeth S. Paul"
                    ),
                    date: CynologySources.published(
                        "2020-05"
                    ),
                    doi: "10.1016/j.neubiorev.2020.01.025",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .defensive_behavior_system:
                return CynologySources.entry(
                    title: "Neural Organization of the Defensive Behavior System Responsible for Fear",
                    location: CynologySources.doi_location(
                        "10.3758/BF03210947"
                    ),
                    authors: CynologySources.authors(
                        "Michael S. Fanselow"
                    ),
                    date: CynologySources.published(
                        "1994-12"
                    ),
                    doi: "10.3758/BF03210947",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .defensive_stress_responses:
                return CynologySources.entry(
                    title: "Individual Differences in Defensive Stress-Responses: The Potential Relevance for Psychopathology",
                    location: CynologySources.doi_location(
                        "10.1016/j.cobeha.2017.01.002"
                    ),
                    authors: CynologySources.authors(
                        "Hanneke C. M. Niermann, Bernd Figner, Karin Roelofs"
                    ),
                    date: CynologySources.published(
                        "2017-04"
                    ),
                    doi: "10.1016/j.cobeha.2017.01.002",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .frustration_theory:
                return CynologySources.entry(
                    title: "Frustration Theory: An Analysis of Dispositional Learning and Memory",
                    location: CynologySources.web_location(
                        "https://books.google.com/books/about/Frustration_Theory.html?id=OD2e3xsDTrsC"
                    ),
                    authors: CynologySources.authors(
                        "Abram Amsel"
                    ),
                    date: CynologySources.published(
                        "1992"
                    ),
                    kind: .book,
                    channel: .scholarly,
                    tags: facets
                )

            case .incentive_and_performance:
                return CynologySources.entry(
                    title: "Quantitative Variation of Incentive and Performance in the White Rat",
                    location: CynologySources.doi_location(
                        "10.2307/1417120"
                    ),
                    authors: CynologySources.authors(
                        "Leo P. Crespi"
                    ),
                    date: CynologySources.published(
                        "1942"
                    ),
                    doi: "10.2307/1417120",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .canine_frustration_questionnaire:
                return CynologySources.entry(
                    title: "The Canine Frustration Questionnaire—Development of a New Psychometric Tool for Measuring Frustration in Domestic Dogs (Canis familiaris)",
                    location: CynologySources.doi_location(
                        "10.3389/fvets.2019.00152"
                    ),
                    authors: CynologySources.authors(
                        "Kevin J. McPeake, Jonathan J. Cooper, Hannah S. Wright, Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2019"
                    ),
                    doi: "10.3389/fvets.2019.00152",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .correlates_canine_frustration_questionnaire:
                return CynologySources.entry(
                    title: "Behavioural and Physiological Correlates of the Canine Frustration Questionnaire",
                    location: CynologySources.doi_location(
                        "10.3390/ani11123346"
                    ),
                    authors: CynologySources.authors(
                        "Kevin J. McPeake, Helen Zulch, Lisa M. Collins, Daniel S. Mills"
                    ),
                    date: CynologySources.published(
                        "2021"
                    ),
                    doi: "10.3390/ani11123346",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .anticipation_and_frustration:
                return CynologySources.entry(
                    title: "Differences in Facial Expressions During Positive Anticipation and Frustration in Dogs Awaiting a Reward",
                    location: CynologySources.doi_location(
                        "10.1038/s41598-019-55714-6"
                    ),
                    authors: CynologySources.authors(
                        "Annika Bremhorst, Nicole A. Sutter, Hanno Würbel, Daniel S. Mills, Stefanie Riemer"
                    ),
                    date: CynologySources.published(
                        "2019-12-17"
                    ),
                    doi: "10.1038/s41598-019-55714-6",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .successive_negative_contrast:
                return CynologySources.entry(
                    title: "What if the Reward Is Not as Yummy? Study of the Effects of Successive Negative Contrast in Domestic Dogs in Two Different Tasks",
                    location: CynologySources.doi_location(
                        "10.1016/j.jveb.2023.12.009"
                    ),
                    authors: CynologySources.authors(
                        "Marina Victoria Dzik, Fabricio Carballo, Camila Cavalli, Micaela Iglesias, Tamás Faragó, Enikő Kubinyi, Mariana Bentosela"
                    ),
                    date: CynologySources.published(
                        "2024-03"
                    ),
                    doi: "10.1016/j.jveb.2023.12.009",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .reward_salience_choice:
                return CynologySources.entry(
                    title: "Reward Salience and Choice in a Controlling Context: A Lab Experiment",
                    location: CynologySources.doi_location(
                        "10.3389/fpsyg.2022.862152"
                    ),
                    authors: CynologySources.authors(
                        "Rosa Hendijani, Piers Steel"
                    ),
                    date: CynologySources.published(
                        "2022-04-25"
                    ),
                    doi: "10.3389/fpsyg.2022.862152",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .money_into_force:
                return CynologySources.entry(
                    title: "How the Brain Translates Money into Force: A Neuroimaging Study of Subliminal Motivation",
                    location: CynologySources.doi_location(
                        "10.1126/science.1140459"
                    ),
                    authors: CynologySources.authors(
                        "Mathias Pessiglione, Liane Schmidt, Bogdan Draganski, Raffael Kalisch, Hakwan Lau, Ray J. Dolan, Chris D. Frith"
                    ),
                    date: CynologySources.published(
                        "2007-05-11"
                    ),
                    doi: "10.1126/science.1140459",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .carrot_or_stick_motor_learning:
                return CynologySources.entry(
                    title: "Carrot or Stick in Motor Learning",
                    location: CynologySources.doi_location(
                        "10.1038/nn.3978"
                    ),
                    authors: CynologySources.authors(
                        "Dagmar Sternad, Konrad Paul Körding"
                    ),
                    date: CynologySources.published(
                        "2015-04"
                    ),
                    doi: "10.1038/nn.3978",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .punishment_reward_motor_learning:
                return CynologySources.entry(
                    title: "The Dissociable Effects of Punishment and Reward on Motor Learning",
                    location: CynologySources.doi_location(
                        "10.1038/nn.3956"
                    ),
                    authors: CynologySources.authors(
                        "Joseph M. Galea, Elizabeth Mallia, John Rothwell, Jörn Diedrichsen"
                    ),
                    date: CynologySources.published(
                        "2015-04"
                    ),
                    doi: "10.1038/nn.3956",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .delay_of_gratification:
                return CynologySources.entry(
                    title: "Reward Type and Behavioural Patterns Predict Dogs’ Success in a Delay of Gratification Paradigm",
                    location: CynologySources.doi_location(
                        "10.1038/srep42459"
                    ),
                    authors: CynologySources.authors(
                        "Désirée Brucks, Matteo Soliani, Friederike Range, Sarah Marshall-Pescini"
                    ),
                    date: CynologySources.published(
                        "2017-03-08"
                    ),
                    doi: "10.1038/srep42459",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )

            case .waiting_for_more:
                return CynologySources.entry(
                    title: "Waiting for More: The Performance of Domestic Dogs (Canis familiaris) on Exchange Tasks",
                    location: CynologySources.doi_location(
                        "10.1007/s10071-011-0437-y"
                    ),
                    authors: CynologySources.authors(
                        "Rebecca J. Leonardi, Sarah-Jane Vick, Valérie Dufour"
                    ),
                    date: CynologySources.published(
                        "2012"
                    ),
                    doi: "10.1007/s10071-011-0437-y",
                    kind: .article,
                    channel: .peer_reviewed,
                    tags: facets
                )
            }
        }

        private var facets: ReferenceTagSet {
            switch self {
            case .aaha_behavior_guidelines,
                 .manual_clinical_behavioral_medicine:
                return .cynology(
                    .clinical_behavior,
                    .behavior_modification,
                    .welfare
                )

            case .reactive_and_risky:
                return .cynology(
                    .reactivity,
                    .clinical_behavior,
                    .problem_behavior
                )

            case .early_life_experiences_exercise_anxieties:
                return .cynology(
                    .clinical_behavior,
                    .anxiety,
                    .welfare,
                    .exercise
                )

            case .diazepam_anxiety_related_behavior,
                 .predictors_fear_anxiety:
                return .cynology(
                    .clinical_behavior,
                    .anxiety,
                    .welfare
                )

            case .personality_unwanted_behavior_survey:
                return .cynology(
                    .clinical_behavior,
                    .assessment,
                    .temperament
                )

            case .personality_traits_behavioral_problems:
                return .cynology(
                    .clinical_behavior,
                    .problem_behavior,
                    .temperament,
                    .assessment,
                    .affective_state
                )

            case .castration_aggression_fear:
                return .cynology(
                    .clinical_behavior,
                    .aggression,
                    .stress,
                    .assessment
                )

            case .temperament_cortisol_serotonin:
                return .cynology(
                    .methodology,
                    .assessment,
                    .temperament,
                    .physiology
                )

            case .firework_fear_treatments,
                 .firework_aversion_dutch_owners,
                 .noise_sensitivity_17_breeds,
                 .fear_responses_noises:
                return .cynology(
                    .clinical_behavior,
                    .anxiety,
                    .noise_sensitivity
                )

            case .separation_anxiety_treatments,
                 .separation_anxiety_in_dogs,
                 .risk_factors_separation_anxiety,
                 .separation_anxiety_desensitization_counterconditioning,
                 .behavioral_therapy_separation_anxiety,
                 .attachment_separation_anxiety,
                 .separation_related_behavior_frustration_fear,
                 .isolation_behavior_cortisol,
                 .petting_before_brief_separation,
                 .diagnosis_treatment_separation_related_behavior:
                return .cynology(
                    .clinical_behavior,
                    .separation_distress,
                    .anxiety
                )

            case .assessing_emotional_behavior_problems,
                 .psychobiological_framework_discrete_emotions:
                return .cynology(
                    .clinical_behavior,
                    .affective_state,
                    .assessment,
                    .methodology,
                    .welfare
                )

            case .puppy_problem_clusters_emotional_commonalities:
                return .cynology(
                    .clinical_behavior,
                    .problem_behavior,
                    .affective_state,
                    .assessment,
                    .anxiety,
                    .frustration_tolerance,
                    .separation_distress
                )

            case .acute_emotional_state_indicators:
                return .cynology(
                    .affective_state,
                    .assessment,
                    .physiology,
                    .welfare,
                    .stress,
                    .canine_behavior
                )

            case .emotional_arousal_physical_health:
                return .cynology(
                    .affective_state,
                    .physiology,
                    .welfare,
                    .stress,
                    .pain_medical
                )

            case .saliva_sampling_stress_procedures:
                return .cynology(
                    .methodology,
                    .assessment,
                    .stress,
                    .physiology,
                    .welfare
                )

            case .vicious_dogs,
                 .high_risk_dogs_deviant_behaviors,
                 .intraspecific_killing,
                 .aggressive_cocker_spaniels,
                 .aggressive_responses_pet_dogs,
                 .dog_bites_public_health:
                return .cynology(
                    .clinical_behavior,
                    .aggression,
                    .problem_behavior
                )

            case .demographic_environmental_aggression_purebred_dogs:
                return .cynology(
                    .clinical_behavior,
                    .aggression,
                    .problem_behavior,
                    .assessment
                )

            case .human_directed_aggression_professional_opinion:
                return .cynology(
                    .clinical_behavior,
                    .aggression,
                    .problem_behavior,
                    .methodology
                )

            case .aggressive_reactivity_self_control:
                return .cynology(
                    .clinical_behavior,
                    .aggression,
                    .problem_behavior,
                    .impulsivity,
                    .assessment
                )

            case .canine_hyperactivity_impulsivity_inattention_adhd:
                return .cynology(
                    .clinical_behavior,
                    .problem_behavior,
                    .impulsivity,
                    .assessment,
                    .canine_behavior
                )

            case .repetitive_behaviour_adhd_like_environment:
                return .cynology(
                    .clinical_behavior,
                    .problem_behavior,
                    .impulsivity,
                    .canine_behavior,
                    .welfare,
                    .exercise
                )

            case .functional_analysis_problem_behavior,
                 .food_guarding_functional_analysis,
                 .training_effects_dog_behavior,
                 .educational_apps_problem_prevention,
                 .owner_attitudes_behavior_problems,
                 .prevalence_behaviour_problems_rescue_shelter,
                 .owner_attachment_problem_behaviors,
                 .shelter_testing_predict_problem_behaviour,
                 .returning_a_shelter_dog,
                 .shelter_assessments_post_adoption,
                 .owner_animal_factors_problem_behaviors:
                return .cynology(
                    .problem_behavior,
                    .clinical_behavior,
                    .behavior_modification
                )

            case .vegan_versus_meat_based_food,
                 .plant_based_diet_one_year,
                 .vegan_diets_indicators_health,
                 .plant_meat_dry_foods_nutritional_analysis,
                 .vegan_dog_food_digestibility,
                 .vegan_food_nutritional_inadequacies,
                 .vegan_diets_environmental_sustainability,
                 .owner_perceptions_health_diet:
                return .cynology(
                    .diet,
                    .physiology,
                    .welfare
                )

            case .notes_on_canine_internal_medicine:
                return .cynology(
                    .physiology,
                    .pain_medical
                )

            case .working_dog_stress_response,
                 .working_dog_stress_response_correction:
                return .cynology(
                    .working_dogs,
                    .stress,
                    .physiology
                )

            case .heart_rate_variability_scent_work:
                return .cynology(
                    .physiology,
                    .welfare,
                    .engagement,
                    .canine_behavior
                )

            case .not_all_dogs_equal,
                 .canine_welfare_science,
                 .choice_control_welfare,
                 .agency_domain,
                 .kenneling_prior_habituation,
                 .working_dog_welfare_guide:
                return .cynology(
                    .welfare,
                    .physiology
                )

            case .companion_dog_welfare_living_conditions:
                return .cynology(
                    .welfare,
                    .canine_behavior,
                    .human_dog_relationship
                )

            case .training_as_enrichment,
                 .environmental_enrichment_dog_behaviour:
                return .cynology(
                    .welfare,
                    .enrichment,
                    .engagement,
                    .training_methods
                )

            case .high_urinary_cortisol,
                 .beyond_cortisol:
                return .cynology(
                    .stress,
                    .physiology,
                    .welfare
                )

            case .pain_and_problem_behavior,
                 .medical_conditions_behavioral_problems,
                 .pain_paresthesia_behavior_problems:
                return .cynology(
                    .pain_medical,
                    .problem_behavior,
                    .clinical_behavior,
                    .physiology
                )

            case .personal_causation_perceived_control,
                 .nonveridical_perceived_control,
                 .self_control_predictability,
                 .psychological_factors_stress_disease,
                 .sudden_death_phenomenon,
                 .stressor_controllability_analgesia,
                 .learned_helplessness_at_fifty,
                 .helplessness_to_controllability,
                 .predictability_controllability_virtual_fence,
                 .avoidance_birth_death_resurrection:
                return .cynology(
                    .stress,
                    .welfare,
                    .aversives
                )

            case .delayed_punishment_applied_setting,
                 .noncontingent_aversive_stimulation:
                return .cynology(
                    .aversives,
                    .punishment,
                    .stress
                )

            case .hunting_dogs_confronted_with_sheep,
                 .second_year_sheep_aversion,
                 .shock_collar_effects,
                 .electronic_collar_pinch_quitting_signal,
                 .electronic_collars_prevalence_success,
                 .kiwi_aversion_acquisition_maintenance,
                 .remote_electronic_collars_reward_training,
                 .remote_static_pulse_systems_welfare_report,
                 .native_bird_predation_aversion,
                 .electronic_training_devices,
                 .remote_collars_positive_reinforcement,
                 .commentary_remote_collars,
                 .response_commentary_electronic_aids,
                 .chasing_behavior_training_methods,
                 .coyote_predation_electronic_training_collar,
                 .safety_training_avoidance_motivated_aggression,
                 .salgirli_dissertation_stress_learning_training_methods,
                 .collar_mounted_electronic_devices_behavior_modification,
                 .clinical_signs_electric_training_collars,
                 .bva_bsava_electronic_training_aids_consultation_response,
                 .victoria_prevention_cruelty_animals_electronic_collars:
                return .cynology(
                    .electronic_training_devices,
                    .aversives,
                    .welfare
                )

            case .job_scope_too_high,
                 .demand_control_specific_demands,
                 .stressors_job_complexity_type_a,
                 .teacher_stress_achievement_striving,
                 .self_efficacy_unifying_theory,
                 .self_efficacy_human_agency,
                 .academic_self_efficacy:
                return .cynology(
                    .stress,
                    .challenge_calibration,
                    .assessment
                )

            case .flow_optimal_experience,
                 .boring_thoughts_bored_minds,
                 .effort_paradox,
                 .effort_increases_meaning,
                 .breaking_monotony_with_meaning,
                 .bestial_boredom:
                return .cynology(
                    .engagement,
                    .motivation,
                    .welfare
                )

            case .enrichment_reduces_boredom,
                 .dogs_contrafreeload:
                return .cynology(
                    .engagement,
                    .motivation,
                    .welfare,
                    .enrichment
                )

            case .challenge_point_motor_learning,
                 .eighty_five_percent_rule,
                 .desirable_difficulties,
                 .competence_optimal_challenge,
                 .errorless_learning_pet_dogs,
                 .adaptive_algorithms_shaping_behavior:
                return .cynology(
                    .challenge_calibration,
                    .learning_theory,
                    .engagement
                )

            case .schedules_of_reinforcement,
                 .frustrative_nonreward,
                 .learned_industriousness,
                 .persistence_behavior_chain_working_dogs,
                 .partial_reinforcement_omission_effects,
                 .reinforcement_omission_extinction_dogs,
                 .frustration_search_rescue_canines,
                 .conditioned_reinforcement_training:
                return .cynology(
                    .frustration_tolerance,
                    .resilience,
                    .reinforcement
                )

            case .learned_industriousness_physical_activity:
                return .cynology(
                    .frustration_tolerance,
                    .resilience,
                    .reinforcement,
                    .exercise
                )

            case .psychobiology_resilience,
                 .resilience_in_dogs,
                 .stress_resilience_inoculation,
                 .prospective_stress_inoculation,
                 .stress_inoculation_resilience,
                 .hippocampal_volume_stress,
                 .stress_relief_resilience:
                return .cynology(
                    .resilience,
                    .stress,
                    .physiology
                )

            case .relief_as_reward,
                 .dopamine_conditioned_punishment_avoidance,
                 .pain_relief_negative_reinforcement,
                 .reward_pain_relief_circuits,
                 .relief_learning_d1_nmda,
                 .mesolimbic_dopamine_relief_learning,
                 .opponent_process_motivation:
                return .cynology(
                    .motivation,
                    .reinforcement,
                    .physiology
                )

            case .handling_deprivation_resistance,
                 .infantile_stimulation_dominance,
                 .early_gentling_puppies,
                 .early_development_stimulation:
                return .cynology(
                    .resilience,
                    .socialization,
                    .stress
                )

            case .resilience_olympic_champions,
                 .resilience_sport_performers,
                 .adversity_olympic_performance,
                 .mental_fortitude_training,
                 .challenge_threat_states_athletes,
                 .revised_challenge_threat_states,
                 .training_with_anxiety,
                 .pressure_training_meta_analysis,
                 .choking_interventions_sports,
                 .sources_of_confidence,
                 .confidence_world_class_performance,
                 .anxiety_interpretation_performers,
                 .stress_exposure_training:
                return .cynology(
                    .stress,
                    .resilience,
                    .challenge_calibration,
                    .assessment
                )

            case .affective_neuroscience,
                 .affective_consciousness,
                 .emotional_brainmind,
                 .archaeology_of_mind,
                 .circumplex_model_affect,
                 .cognitive_bias_affective_state,
                 .animal_emotion_mood,
                 .animal_affect_decision_making:
                return .cynology(
                    .affective_state,
                    .welfare,
                    .physiology
                )

            case .defensive_behavior_system,
                 .defensive_stress_responses:
                return .cynology(
                    .affective_state,
                    .stress,
                    .anxiety,
                    .physiology
                )

            case .frustration_theory,
                 .incentive_and_performance,
                 .canine_frustration_questionnaire,
                 .correlates_canine_frustration_questionnaire,
                 .anticipation_and_frustration,
                 .successive_negative_contrast:
                return .cynology(
                    .motivation,
                    .frustration_tolerance,
                    .affective_state,
                    .welfare
                )

            case .reward_salience_choice,
                 .money_into_force,
                 .carrot_or_stick_motor_learning,
                 .punishment_reward_motor_learning:
                return .cynology(
                    .motivation,
                    .reinforcement,
                    .punishment,
                    .learning_theory
                )

            case .delay_of_gratification,
                 .waiting_for_more:
                return .cynology(
                    .motivation,
                    .frustration_tolerance,
                    .impulsivity,
                    .assessment
                )
            }
        }
    }
}
