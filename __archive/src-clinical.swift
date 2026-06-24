import References

public enum CynologyClinicalSource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.clinical

    case hammerle_horst_levine_overall_radosta_rafter_ritchie_yin_aaha_behavior_guidelines
    case overall_manual_clinical_behavioral_medicine

    case van_haevermaet_soulsbury_mills_reactive_risky_dog_reactive_dogs

    case tiira_lohi_early_life_experiences_exercise_canine_anxieties
    case herron_shofer_reisner_diazepam_anxiety_related_behavior_problems
    case salonen_mikkola_hakanen_sulkama_puurunen_lohi_personality_traits_behavioral_problems
    case kolkmeyer_baum_warlich_zach_ganslosser_husky_bulldog_castration_breed_groups
    case batista_lavrador_da_graca_pereira_predictors_fear_anxiety_companion_dogs

    case riemer_effectiveness_treatments_firework_fears_dogs
    case storengen_lingaas_noise_sensitivity_17_dog_breeds
    case blackwell_bradshaw_casey_fear_responses_noises_prevalence_risk_factors

    case takeuchi_houpt_scarlett_treatments_separation_anxiety_dogs
    case sherman_separation_anxiety_in_dogs
    case flannigan_dodman_risk_factors_behaviors_separation_anxiety
    case babington_addressing_canine_separation_anxiety_desensitization_counterconditioning
    case papuc_deac_purdoiu_behavioral_therapy_separation_anxiety_dog
    case parthasarathy_crowell_davis_attachment_owners_separation_anxiety
    case lenkei_farago_bakos_pongracz_separation_related_behavior_frustration_fear
    case silbermann_ganslosser_isolation_behavior_questionnaire_cortisol_separation
    case mariti_carlone_protti_diverio_gazzano_petting_before_brief_separation
    case borchelt_voith_diagnosis_treatment_separation_related_behavior_problems

    // MARK: - AggressionRisk

    case ragatz_fremouw_thomas_mccoy_vicious_dogs_owner_characteristics
    case barnes_boat_putnam_high_risk_vicious_dogs_deviant_behaviors
    case schilder_van_der_borg_vinke_intraspecific_killing_predation_aggression
    case podberscek_serpell_aggressive_behaviour_cocker_spaniels_owner_personality
    case hsu_sun_factors_aggressive_responses_pet_dogs

    // MARK: - ProblemBehavior

    case dorey_tobias_udell_wynne_decreasing_problem_behavior_functional_analysis
    case mehrkam_perez_self_vollmer_dorey_functional_analysis_food_guarding
    case giannone_zilocchi_training_effects_on_dog_behavior
    case rowland_de_assis_menteith_winter_zulch_mills_educational_apps_problem_prevention
    case ofarrell_owner_attitudes_dog_behaviour_problems
    case wells_hepper_prevalence_behaviour_problems_rescue_shelter
    case kwan_bain_owner_attachment_problem_behaviors_training_techniques
    case van_der_borg_netto_planta_shelter_testing_predict_problem_behaviour
    case powell_lee_reinhard_morris_satriale_serpell_watson_returning_shelter_dog
    case clay_paterson_bennett_perry_phillips_shelter_assessments_post_adoption

    private var facets: ReferenceTagSet {
        switch self {
        case .hammerle_horst_levine_overall_radosta_rafter_ritchie_yin_aaha_behavior_guidelines,
            .overall_manual_clinical_behavioral_medicine:
            return .cynology(
                .clinical_behavior,
                .behavior_modification,
                .training_methods
            )

        case .van_haevermaet_soulsbury_mills_reactive_risky_dog_reactive_dogs:
            return .cynology(
                .clinical_behavior,
                .reactivity,
                .aggression,
                .stress,
                .behavior_modification
            )

        case .tiira_lohi_early_life_experiences_exercise_canine_anxieties,
            .herron_shofer_reisner_diazepam_anxiety_related_behavior_problems,
            .salonen_mikkola_hakanen_sulkama_puurunen_lohi_personality_traits_behavioral_problems,
            .kolkmeyer_baum_warlich_zach_ganslosser_husky_bulldog_castration_breed_groups,
            .batista_lavrador_da_graca_pereira_predictors_fear_anxiety_companion_dogs:
            return .cynology(
                .clinical_behavior,
                .anxiety,
                .stress,
                .assessment
            )

        case .riemer_effectiveness_treatments_firework_fears_dogs,
            .storengen_lingaas_noise_sensitivity_17_dog_breeds,
            .blackwell_bradshaw_casey_fear_responses_noises_prevalence_risk_factors:
            return .cynology(
                .clinical_behavior,
                .anxiety,
                .noise_sensitivity,
                .stress,
                .behavior_modification
            )

        case .takeuchi_houpt_scarlett_treatments_separation_anxiety_dogs,
            .sherman_separation_anxiety_in_dogs,
            .flannigan_dodman_risk_factors_behaviors_separation_anxiety,
            .babington_addressing_canine_separation_anxiety_desensitization_counterconditioning,
            .papuc_deac_purdoiu_behavioral_therapy_separation_anxiety_dog,
            .parthasarathy_crowell_davis_attachment_owners_separation_anxiety,
            .lenkei_farago_bakos_pongracz_separation_related_behavior_frustration_fear,
            .silbermann_ganslosser_isolation_behavior_questionnaire_cortisol_separation,
            .mariti_carlone_protti_diverio_gazzano_petting_before_brief_separation,
            .borchelt_voith_diagnosis_treatment_separation_related_behavior_problems:
            return .cynology(
                .clinical_behavior,
                .anxiety,
                .separation_distress,
                .behavior_modification
            )


        case .ragatz_fremouw_thomas_mccoy_vicious_dogs_owner_characteristics,
            .barnes_boat_putnam_high_risk_vicious_dogs_deviant_behaviors:
            return .cynology(
                .aggression,
                .problem_behavior,
                .clinical_behavior,
                .assessment
            )

        case .schilder_van_der_borg_vinke_intraspecific_killing_predation_aggression,
            .podberscek_serpell_aggressive_behaviour_cocker_spaniels_owner_personality,
            .hsu_sun_factors_aggressive_responses_pet_dogs:
            return .cynology(
                .aggression,
                .problem_behavior,
                .clinical_behavior
            )

        case .dorey_tobias_udell_wynne_decreasing_problem_behavior_functional_analysis,
            .mehrkam_perez_self_vollmer_dorey_functional_analysis_food_guarding:
            return .cynology(
                .problem_behavior,
                .behavior_modification,
                .clinical_behavior,
                .operant_conditioning
            )

        case .giannone_zilocchi_training_effects_on_dog_behavior,
            .rowland_de_assis_menteith_winter_zulch_mills_educational_apps_problem_prevention:
            return .cynology(
                .problem_behavior,
                .training_methods,
                .behavior_modification
            )

        case .ofarrell_owner_attitudes_dog_behaviour_problems,
            .wells_hepper_prevalence_behaviour_problems_rescue_shelter,
            .kwan_bain_owner_attachment_problem_behaviors_training_techniques:
            return .cynology(
                .problem_behavior,
                .clinical_behavior,
                .human_dog_relationship
            )

        case .van_der_borg_netto_planta_shelter_testing_predict_problem_behaviour,
            .powell_lee_reinhard_morris_satriale_serpell_watson_returning_shelter_dog,
            .clay_paterson_bennett_perry_phillips_shelter_assessments_post_adoption:
            return .cynology(
                .problem_behavior,
                .assessment,
                .methodology,
                .clinical_behavior
            )
        }
    }

    public var data: ReferenceData {
        switch self {
        case .hammerle_horst_levine_overall_radosta_rafter_ritchie_yin_aaha_behavior_guidelines:
            return .init(
                title: "2015 AAHA Canine and Feline Behavior Management Guidelines",
                url: "https://doi.org/10.5326/JAAHA-MS-6527",
                authorLine: "Marcy Hammerle, Christine Horst, Emily Levine, Karen Overall, Lisa Radosta, Marcia Rafter-Ritchie, Sophia Yin",
                dateISO8601: "2015",
                doi: "10.5326/JAAHA-MS-6527",
                kind: .guideline,
                channel: .professional,
                tags: facets
            )

        case .overall_manual_clinical_behavioral_medicine:
            return .init(
                title: "Manual of Clinical Behavioral Medicine for Dogs and Cats",
                url: "https://shop.elsevier.com/books/manual-of-clinical-behavioral-medicine-for-dogs-and-cats/overall/978-0-323-00890-7",
                authorLine: "Karen L. Overall",
                dateISO8601: "2013-06-04",
                kind: .book,
                channel: .textbook,
                tags: facets
            )

        case .van_haevermaet_soulsbury_mills_reactive_risky_dog_reactive_dogs:
            return .init(
                title: "Reactive and Risky: The Behavioural Structuring of 'Dog Reactive Dogs'",
                url: "https://doi.org/10.1016/j.applanim.2026.106961",
                authorLine: "Himara Van Haevermaet, Carl D. Soulsbury, Daniel S. Mills",
                dateISO8601: "2026",
                doi: "10.1016/j.applanim.2026.106961",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .tiira_lohi_early_life_experiences_exercise_canine_anxieties:
            return .init(
                title: "Early Life Experiences and Exercise Associate with Canine Anxieties",
                url: "https://doi.org/10.1371/journal.pone.0141907",
                authorLine: "Katriina Tiira, Hannes Lohi",
                dateISO8601: "2015-11-03",
                doi: "10.1371/journal.pone.0141907",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .herron_shofer_reisner_diazepam_anxiety_related_behavior_problems:
            return .init(
                title: "Retrospective Evaluation of the Effects of Diazepam in Dogs with Anxiety-Related Behavior Problems",
                url: "https://doi.org/10.2460/javma.233.9.1420",
                authorLine: "Meghan E. Herron, Frances S. Shofer, Ilana R. Reisner",
                dateISO8601: "2008",
                doi: "10.2460/javma.233.9.1420",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .salonen_mikkola_hakanen_sulkama_puurunen_lohi_personality_traits_behavioral_problems:
            return .init(
                title: "Reliability and Validity of a Dog Personality and Unwanted Behavior Survey",
                url: "https://doi.org/10.3390/ani11123423",
                authorLine: "Milla Salonen, Sini Mikkola, Emma Hakanen, Sini Sulkama, Jenni Puurunen, Hannes Lohi",
                dateISO8601: "2021-12-01",
                doi: "10.3390/ani11123423",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .kolkmeyer_baum_warlich_zach_ganslosser_husky_bulldog_castration_breed_groups:
            return .init(
                title: "The Relationship Between Castration, Aggression and Fear-Related Behaviour in Domestic Dogs: Breed Group Effects",
                url: "https://doi.org/10.3390/ani13172798",
                authorLine: "B. Kolkmeyer, M. Baum, V. Warlich, V. Zach, U. Gansloßer",
                dateISO8601: "2023-08-31",
                doi: "10.3390/ani13172798",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .batista_lavrador_da_graca_pereira_predictors_fear_anxiety_companion_dogs:
            return .init(
                title: "Predictors of Fear and Anxiety in Companion Dogs: The Role of Caregiver-Related Variables",
                url: "https://www.sciencedirect.com/science/article/abs/pii/S1558787826000122",
                authorLine: "Maria Toscano Batista, Catarina Lavrador, Gonçalo da Graça-Pereira",
                dateISO8601: "2026-05-01",
                doi: "10.1016/j.jveb.2026.02.003",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .riemer_effectiveness_treatments_firework_fears_dogs:
            return .init(
                title: "Effectiveness of Treatments for Firework Fears in Dogs",
                url: "https://doi.org/10.1016/j.jveb.2020.04.005",
                authorLine: "Stefanie Riemer",
                dateISO8601: "2020",
                doi: "10.1016/j.jveb.2020.04.005",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .storengen_lingaas_noise_sensitivity_17_dog_breeds:
            return .init(
                title: "Noise Sensitivity in 17 Dog Breeds: Prevalence, Breed Risk and Correlation with Fear in Other Situations",
                url: "https://doi.org/10.1016/j.applanim.2015.08.020",
                authorLine: "Linn Mari Storengen, Frode Lingaas",
                dateISO8601: "2015",
                doi: "10.1016/j.applanim.2015.08.020",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .blackwell_bradshaw_casey_fear_responses_noises_prevalence_risk_factors:
            return .init(
                title: "Fear Responses to Noises in Domestic Dogs: Prevalence, Risk Factors and Co-Occurrence with Other Fear Related Behaviour",
                url: "https://doi.org/10.1016/j.applanim.2012.12.004",
                authorLine: "Emily J. Blackwell, John W. S. Bradshaw, Rachel A. Casey",
                dateISO8601: "2013",
                doi: "10.1016/j.applanim.2012.12.004",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .takeuchi_houpt_scarlett_treatments_separation_anxiety_dogs:
            return .init(
                title: "Evaluation of Treatments for Separation Anxiety in Dogs",
                url: "https://doi.org/10.2460/javma.2000.217.342",
                authorLine: "Yukari Takeuchi, Katherine A. Houpt, Janet M. Scarlett",
                dateISO8601: "2000",
                doi: "10.2460/javma.2000.217.342",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .sherman_separation_anxiety_in_dogs:
            return .init(
                title: "Separation Anxiety in Dogs",
                url: "https://pubmed.ncbi.nlm.nih.gov/18278745/",
                authorLine: "Barbara L. Sherman",
                dateISO8601: "2008",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .flannigan_dodman_risk_factors_behaviors_separation_anxiety:
            return .init(
                title: "Risk Factors and Behaviors Associated with Separation Anxiety in Dogs",
                url: "https://doi.org/10.2460/javma.2001.219.460",
                authorLine: "Gerrard Flannigan, Nicholas H. Dodman",
                dateISO8601: "2001",
                doi: "10.2460/javma.2001.219.460",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .babington_addressing_canine_separation_anxiety_desensitization_counterconditioning:
            return .init(
                title: "Addressing Canine Separation Anxiety Using Systematic Desensitization and Counter-Conditioning",
                url: "https://researchcommons.waikato.ac.nz/entities/publication/04247b7a-0dfb-4d7a-9cac-640f6b9a571a",
                authorLine: "Ocean Marie Babington",
                dateISO8601: "2019",
                kind: .thesis,
                channel: .scholarly,
                tags: facets
            )

        case .papuc_deac_purdoiu_behavioral_therapy_separation_anxiety_dog:
            return .init(
                title: "The Behavioral Therapy for Separation Anxiety in Dog",
                url: "https://www.researchgate.net/publication/280109690_The_behavioral_therapy_for_separation_anxiety_in_dog",
                authorLine: "Ionel Papuc, Lucia Deac, Robert Cristian Purdoiu",
                dateISO8601: "2013",
                kind: .article,
                channel: .scholarly,
                tags: facets
            )

        case .parthasarathy_crowell_davis_attachment_owners_separation_anxiety:
            return .init(
                title: "Relationship Between Attachment to Owners and Separation Anxiety in Pet Dogs (Canis lupus familiaris)",
                url: "https://doi.org/10.1016/j.jveb.2006.09.005",
                authorLine: "Valli Parthasarathy, Sharon L. Crowell-Davis",
                dateISO8601: "2006",
                doi: "10.1016/j.jveb.2006.09.005",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .lenkei_farago_bakos_pongracz_separation_related_behavior_frustration_fear:
            return .init(
                title: "Separation-Related Behavior of Dogs Shows Association with Their Reactions to Everyday Situations That May Elicit Frustration or Fear",
                url: "https://doi.org/10.1038/s41598-021-98526-3",
                authorLine: "Rita Lenkei, Tamás Faragó, Viktória Bakos, Péter Pongrácz",
                dateISO8601: "2021-09-23",
                doi: "10.1038/s41598-021-98526-3",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .silbermann_ganslosser_isolation_behavior_questionnaire_cortisol_separation:
            return .init(
                title: "Factors Influencing Isolation Behavior of Dogs: A Holder-Based Questionnaire and Behavioral and Saliva Cortisol Responses during Separation",
                url: "https://doi.org/10.3390/ani13233735",
                authorLine: "Jennifer Silbermann, Udo Gansloßer",
                dateISO8601: "2023-12-02",
                doi: "10.3390/ani13233735",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .mariti_carlone_protti_diverio_gazzano_petting_before_brief_separation:
            return .init(
                title: "Effects of Petting Before a Brief Separation from the Owner on Dog Behavior and Physiology: A Pilot Study",
                url: "https://doi.org/10.1016/j.jveb.2018.07.003",
                authorLine: "Chiara Mariti, Beatrice Carlone, Massimiliano Protti, Silvana Diverio, Angelo Gazzano",
                dateISO8601: "2018",
                doi: "10.1016/j.jveb.2018.07.003",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .borchelt_voith_diagnosis_treatment_separation_related_behavior_problems:
            return .init(
                title: "Diagnosis and Treatment of Separation-Related Behavior Problems in Dogs",
                url: "https://doi.org/10.1016/S0195-5616(82)50106-4",
                authorLine: "Peter L. Borchelt, Victoria L. Voith",
                dateISO8601: "1982-11",
                doi: "10.1016/S0195-5616(82)50106-4",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .ragatz_fremouw_thomas_mccoy_vicious_dogs_owner_characteristics:
            return .init(
                title: "Vicious Dogs: The Antisocial Behaviors and Psychological Characteristics of Owners",
                url: "https://doi.org/10.1111/j.1556-4029.2009.01001.x",
                authorLine: "Laurie Ragatz, William Fremouw, Tracy Thomas, Katrina McCoy",
                dateISO8601: "2009",
                doi: "10.1111/j.1556-4029.2009.01001.x",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .barnes_boat_putnam_high_risk_vicious_dogs_deviant_behaviors:
            return .init(
                title: "Ownership of High-Risk (“Vicious”) Dogs as a Marker for Deviant Behaviors: Implications for Risk Assessment",
                url: "https://doi.org/10.1177/0886260506294241",
                authorLine: "Jaclyn E. Barnes, Barbara W. Boat, Frank W. Putnam",
                dateISO8601: "2006",
                doi: "10.1177/0886260506294241",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .schilder_van_der_borg_vinke_intraspecific_killing_predation_aggression:
            return .init(
                title: "Intraspecific Killing in Dogs: Predation Behavior or Aggression? A Study of Aggressors, Victims, Possible Causes, and Motivations",
                url: "https://doi.org/10.1016/j.jveb.2019.08.002",
                authorLine: "Matthijs B. H. Schilder, Joanne A. M. van der Borg, Claudia M. Vinke",
                dateISO8601: "2019",
                doi: "10.1016/j.jveb.2019.08.002",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .podberscek_serpell_aggressive_behaviour_cocker_spaniels_owner_personality:
            return .init(
                title: "Aggressive Behaviour in English Cocker Spaniels and the Personality of Their Owners",
                url: "https://doi.org/10.1136/vr.141.3.73",
                authorLine: "A. L. Podberscek, J. A. Serpell",
                dateISO8601: "1997",
                doi: "10.1136/vr.141.3.73",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .hsu_sun_factors_aggressive_responses_pet_dogs:
            return .init(
                title: "Factors Associated with Aggressive Responses in Pet Dogs",
                url: "https://doi.org/10.1016/j.applanim.2010.01.013",
                authorLine: "Yuying Hsu, Liching Sun",
                dateISO8601: "2010",
                doi: "10.1016/j.applanim.2010.01.013",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .dorey_tobias_udell_wynne_decreasing_problem_behavior_functional_analysis:
            return .init(
                title: "Decreasing Dog Problem Behavior with Functional Analysis: Linking Diagnoses to Treatment",
                url: "https://doi.org/10.1016/j.jveb.2011.10.002",
                authorLine: "Nicole R. Dorey, Jarvon S. Tobias, Monique A. R. Udell, Clive D. L. Wynne",
                dateISO8601: "2012",
                doi: "10.1016/j.jveb.2011.10.002",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .mehrkam_perez_self_vollmer_dorey_functional_analysis_food_guarding:
            return .init(
                title: "Functional Analysis and Operant Treatment of Food Guarding in a Pet Dog",
                url: "https://doi.org/10.1002/jaba.720",
                authorLine: "Lindsay R. Mehrkam, Brandon C. Perez, Victoria N. Self, Timothy R. Vollmer, Nicole R. Dorey",
                dateISO8601: "2020",
                doi: "10.1002/jaba.720",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .giannone_zilocchi_training_effects_on_dog_behavior:
            return .init(
                title: "Training Effects on Dog Behavior",
                url: "https://doi.org/10.4454/db.v5i2.104",
                authorLine: "Beatrice Giannone, Marcella Zilocchi",
                dateISO8601: "2019-12-18",
                doi: "10.4454/db.v5i2.104",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .rowland_de_assis_menteith_winter_zulch_mills_educational_apps_problem_prevention:
            return .init(
                title: "Educational Apps and Dog Behavioural Problem Prevention: Associations Between the Zigzag Dog-Training App and Behavioural Problems",
                url: "https://doi.org/10.3390/ani15040520",
                authorLine: "Tom Rowland, Luciana de Assis, Carolyn Menteith, Lorna Winter, Helen Zulch, Daniel S. Mills",
                dateISO8601: "2025-02-12",
                doi: "10.3390/ani15040520",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .ofarrell_owner_attitudes_dog_behaviour_problems:
            return .init(
                title: "Owner Attitudes and Dog Behaviour Problems",
                url: "https://doi.org/10.1016/S0168-1591(96)01123-9",
                authorLine: "Valerie O’Farrell",
                dateISO8601: "1997",
                doi: "10.1016/S0168-1591(96)01123-9",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .wells_hepper_prevalence_behaviour_problems_rescue_shelter:
            return .init(
                title: "Prevalence of Behaviour Problems Reported by Owners of Dogs Purchased from an Animal Rescue Shelter",
                url: "https://doi.org/10.1016/S0168-1591(00)00118-0",
                authorLine: "Deborah L. Wells, Peter G. Hepper",
                dateISO8601: "2000",
                doi: "10.1016/S0168-1591(00)00118-0",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .kwan_bain_owner_attachment_problem_behaviors_training_techniques:
            return .init(
                title: "Owner Attachment and Problem Behaviors Related to Relinquishment and Training Techniques of Dogs",
                url: "https://doi.org/10.1080/10888705.2013.768923",
                authorLine: "Jennifer Y. Kwan, Melissa J. Bain",
                dateISO8601: "2013",
                doi: "10.1080/10888705.2013.768923",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .van_der_borg_netto_planta_shelter_testing_predict_problem_behaviour:
            return .init(
                title: "Behavioural Testing of Dogs in Animal Shelters to Predict Problem Behaviour",
                url: "https://doi.org/10.1016/S0168-1591(05)80047-4",
                authorLine: "Joanne A. M. van der Borg, Willem J. Netto, Doreen J. U. Planta",
                dateISO8601: "1991",
                doi: "10.1016/S0168-1591(05)80047-4",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .powell_lee_reinhard_morris_satriale_serpell_watson_returning_shelter_dog:
            return .init(
                title: "Returning a Shelter Dog: The Role of Owner Expectations and Dog Behavior",
                url: "https://doi.org/10.3390/ani12091053",
                authorLine: "Lauren Powell, Brittany Lee, Chelsea L. Reinhard, Margaret Morris, Donya Satriale, James Serpell, Brittany Watson",
                dateISO8601: "2022-04-19",
                doi: "10.3390/ani12091053",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )

        case .clay_paterson_bennett_perry_phillips_shelter_assessments_post_adoption:
            return .init(
                title: "Do Behaviour Assessments in a Shelter Predict the Behaviour of Dogs Post-Adoption?",
                url: "https://doi.org/10.3390/ani10071225",
                authorLine: "Liam Clay, Mandy B. A. Paterson, Pauleen Bennett, Gaille Perry, Clive C. J. Phillips",
                dateISO8601: "2020-07-18",
                doi: "10.3390/ani10071225",
                kind: .article,
                channel: .peer_reviewed,
                tags: facets
            )
        }
    }
}
