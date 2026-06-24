import Primitives
import References

public enum CynologyLearningSource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.learning

    // MARK: - ClassicalConditioningFoundations

    case pavlov_conditioned_reflexes
    case rescorla_probability_shock_presence_absence_cs
    case kamin_predictability_surprise_attention_conditioning
    case rescorla_wagner_theory_pavlovian_conditioning
    case dickinson_dearing_appetitive_aversive_interactions_inhibitory_processes
    case rescorla_pavlovian_conditioning_not_what_you_think

    // MARK: - OperantConditioningFoundations

    case ramirez_choosing_right_method_reinforcement_vs_punishment
    case weiss_schindler_positive_negative_reinforcement_operant_baseline_appetitive_aversive_interactions
    case murphy_lupfer_basic_principles_operant_conditioning
    case kubanek_snyder_abrams_reward_punishment_distinct_factors
    case sorgendal_boks_challenging_interfaces_operant_conditioning_interaction_designer

    // MARK: - MatchingLaw

    case herrnstein_relative_absolute_strength_response_frequency_reinforcement
    case herrnstein_on_the_law_of_effect
    case baum_two_types_deviation_matching_law_bias_undermatching
    case herrnstein_matching_law_papers_psychology_economics
    case reed_kaplan_matching_law_tutorial_practitioners
    case mcdowell_matching_theory_natural_human_environments
    case davison_mccarthy_matching_law_research_review
    case baum_rethinking_reinforcement_allocation_induction_contingency

    // MARK: - ActionHabitControl

    case yin_knowlton_basal_ganglia_habit_formation
    case de_wit_kindt_knot_verhoeven_robbins_gasull_camos_evans_mirza_gillan_five_failures_habit_induction
    case balleine_primary_motivation_incentive_learning
    case thrailkill_bouton_outcome_devaluation_discriminated_heterogeneous_chain
    case turner_balleine_stimulus_control_habits_dual_response_task
    case thrailkill_michaud_bouton_reinforcer_predictability_stimulus_salience_habit_learning
    case seger_spiering_critical_review_habit_learning_basal_ganglia
    case pool_pauli_kress_odoherty_parallel_pavlovian_learning_systems

    // MARK: - PunishmentFoundations

    case estes_experimental_study_punishment
    case azrin_punishment_intensity_variable_interval_reinforcement
    case azrin_holz_hake_fixed_ratio_punishment
    case azrin_holz_punishment_operant_behavior
    case van_houten_punishment_animal_laboratory_applied_setting
    case lerman_vorndran_status_knowledge_using_punishment
    case solomon_kamin_wynne_traumatic_avoidance_extinction_dogs
    case walters_glazer_punishment_instinctive_behavior_mongolian_gerbil
    case brown_wagner_resistance_punishment_extinction_shock_nonreinforcement
    case vogel_sprott_partial_reward_resistance_punishment_subsequent_extinction

    // MARK: - ContextRenewal

    case campese_brannigan_ledoux_conditional_control_instrumental_avoidance_context_extinction
    case trask_bouton_retrieval_practice_multiple_context_changes_instrumental_behavior

    // MARK: - AdditionalDogBooks

    case bouton_learning_and_behavior_contemporary_synthesis
    case illeris_contemporary_theories_of_learning

    public var data: ReferenceData {
        entry.data(
            tags: facets
        )
    }

    private var facets: ReferenceTagSet {
        switch self {
        case
            .pavlov_conditioned_reflexes,
            .rescorla_probability_shock_presence_absence_cs,
            .kamin_predictability_surprise_attention_conditioning,
            .rescorla_wagner_theory_pavlovian_conditioning,
            .dickinson_dearing_appetitive_aversive_interactions_inhibitory_processes,
            .rescorla_pavlovian_conditioning_not_what_you_think:
            return .cynology(
                .learning_theory,
                .classical_conditioning
            )

        case
            .ramirez_choosing_right_method_reinforcement_vs_punishment,
            .weiss_schindler_positive_negative_reinforcement_operant_baseline_appetitive_aversive_interactions,
            .murphy_lupfer_basic_principles_operant_conditioning,
            .kubanek_snyder_abrams_reward_punishment_distinct_factors,
            .sorgendal_boks_challenging_interfaces_operant_conditioning_interaction_designer:
            return .cynology(
                .learning_theory,
                .operant_conditioning,
                .reinforcement
            )

        case
            .herrnstein_relative_absolute_strength_response_frequency_reinforcement,
            .herrnstein_on_the_law_of_effect,
            .baum_two_types_deviation_matching_law_bias_undermatching,
            .herrnstein_matching_law_papers_psychology_economics,
            .reed_kaplan_matching_law_tutorial_practitioners,
            .mcdowell_matching_theory_natural_human_environments,
            .davison_mccarthy_matching_law_research_review,
            .baum_rethinking_reinforcement_allocation_induction_contingency:
            return .cynology(
                .learning_theory,
                .operant_conditioning,
                .matching_law,
                .reinforcement
            )

        case
            .yin_knowlton_basal_ganglia_habit_formation,
            .de_wit_kindt_knot_verhoeven_robbins_gasull_camos_evans_mirza_gillan_five_failures_habit_induction,
            .balleine_primary_motivation_incentive_learning,
            .thrailkill_bouton_outcome_devaluation_discriminated_heterogeneous_chain,
            .turner_balleine_stimulus_control_habits_dual_response_task,
            .thrailkill_michaud_bouton_reinforcer_predictability_stimulus_salience_habit_learning,
            .seger_spiering_critical_review_habit_learning_basal_ganglia,
            .pool_pauli_kress_odoherty_parallel_pavlovian_learning_systems:
            return .cynology(
                .learning_theory,
                .action_habit_control
            )

        case
            .estes_experimental_study_punishment,
            .azrin_punishment_intensity_variable_interval_reinforcement,
            .azrin_holz_hake_fixed_ratio_punishment,
            .azrin_holz_punishment_operant_behavior,
            .van_houten_punishment_animal_laboratory_applied_setting,
            .lerman_vorndran_status_knowledge_using_punishment,
            .solomon_kamin_wynne_traumatic_avoidance_extinction_dogs,
            .walters_glazer_punishment_instinctive_behavior_mongolian_gerbil,
            .brown_wagner_resistance_punishment_extinction_shock_nonreinforcement,
            .vogel_sprott_partial_reward_resistance_punishment_subsequent_extinction:
            return .cynology(
                .learning_theory,
                .operant_conditioning,
                .punishment
            )

        case
            .campese_brannigan_ledoux_conditional_control_instrumental_avoidance_context_extinction,
            .trask_bouton_retrieval_practice_multiple_context_changes_instrumental_behavior:
            return .cynology(
                .learning_theory,
                .context_renewal
            )

        case .bouton_learning_and_behavior_contemporary_synthesis,
            .illeris_contemporary_theories_of_learning:
            return .cynology(
                .learning_theory,
                .training_methods,
                .reinforcement
            )
        }
    }

    private var entry: Entry {
        switch self {
        case .pavlov_conditioned_reflexes:
            return Entry(
                title: "Conditioned Reflexes: An Investigation of the Physiological Activity of the Cerebral Cortex",
                url: "https://psychclassics.yorku.ca/Pavlov/",
                authors: "Ivan P. Pavlov",
                date: "1927",
                kind: .article,
                channel: .peer_reviewed
            )

        case .rescorla_probability_shock_presence_absence_cs:
            return Entry(
                title: "Probability of Shock in the Presence and Absence of CS in Fear Conditioning",
                url: "https://doi.org/10.1037/h0025984",
                authors: "Robert A. Rescorla",
                date: "1968",
                doi: "10.1037/h0025984",
                kind: .article,
                channel: .peer_reviewed
            )

        case .kamin_predictability_surprise_attention_conditioning:
            return Entry(
                title: "Predictability, Surprise, Attention, and Conditioning",
                url: "https://www.appstate.edu/~steelekm/classes/psy5300/Documents/Kamin_1969.pdf",
                authors: "Leon J. Kamin",
                date: "1969",
                kind: .article,
                channel: .peer_reviewed
            )

        case .rescorla_wagner_theory_pavlovian_conditioning:
            return Entry(
                title: "A Theory of Pavlovian Conditioning: Variations in the Effectiveness of Reinforcement and Nonreinforcement",
                url: "https://www.columbia.edu/~rk566/Session4/Theory%20of%20Pavlovian%20Conditioning.pdf",
                authors: "Robert A. Rescorla, Allan R. Wagner",
                date: "1972",
                kind: .article,
                channel: .peer_reviewed
            )

        case .dickinson_dearing_appetitive_aversive_interactions_inhibitory_processes:
            return Entry(
                title: "Appetitive—Aversive Interactions and Inhibitory Processes",
                url: "https://doi.org/10.4324/9781315802435-8",
                authors: "Anthony Dickinson, Michael F. Dearing",
                date: "1979",
                doi: "10.4324/9781315802435-8",
                kind: .book_chapter,
                channel: .peer_reviewed
            )

        case .rescorla_pavlovian_conditioning_not_what_you_think:
            return Entry(
                title: "Pavlovian Conditioning: It's Not What You Think It Is",
                url: "https://pubmed.ncbi.nlm.nih.gov/3364852/",
                authors: "Robert A. Rescorla",
                date: "1988-03",
                doi: "10.1037/0003-066X.43.3.151",
                kind: .article,
                channel: .peer_reviewed
            )

        case .ramirez_choosing_right_method_reinforcement_vs_punishment:
            return Entry(
                title: "Choosing the Right Method: Reinforcement vs Punishment",
                url: "https://doi.org/10.1002/9781118968543.ch4",
                authors: "Ken Ramirez",
                date: "2019-12-13",
                doi: "10.1002/9781118968543.ch4",
                kind: .book_chapter,
                channel: .peer_reviewed
            )

        case .weiss_schindler_positive_negative_reinforcement_operant_baseline_appetitive_aversive_interactions:
            return Entry(
                title: "Integrating Control Generated by Positive and Negative Reinforcement on an Operant Baseline: Appetitive-Aversive Interactions",
                url: "https://doi.org/10.3758/BF03205223",
                authors: "Stanley J. Weiss, Charles W. Schindler",
                date: "1989-12",
                doi: "10.3758/BF03205223",
                kind: .article,
                channel: .peer_reviewed
            )

        case .murphy_lupfer_basic_principles_operant_conditioning:
            return Entry(
                title: "Basic Principles of Operant Conditioning",
                url: "https://doi.org/10.1002/9781118468135.ch8",
                authors: "Eric S. Murphy, Gwen J. Lupfer",
                date: "2014-05-19",
                doi: "10.1002/9781118468135.ch8",
                kind: .book_chapter,
                channel: .peer_reviewed
            )

        case .kubanek_snyder_abrams_reward_punishment_distinct_factors:
            return Entry(
                title: "Reward and Punishment Act as Distinct Factors in Guiding Behavior",
                url: "https://doi.org/10.1016/j.cognition.2015.03.005",
                authors: "Jan Kubanek, Lawrence H. Snyder, Richard A. Abrams",
                date: "2015-06-01",
                doi: "10.1016/j.cognition.2015.03.005",
                kind: .article,
                channel: .peer_reviewed
            )

        case .sorgendal_boks_challenging_interfaces_operant_conditioning_interaction_designer:
            return Entry(
                title: "Challenging Interfaces Are More Fun! Operant Conditioning for the Interaction Designer",
                url: "https://doi.org/10.1504/IJLT.2014.064488",
                authors: "Ingrid Sorgendal, Casper Boks",
                date: "2014",
                doi: "10.1504/IJLT.2014.064488",
                kind: .article,
                channel: .peer_reviewed
            )

        case .herrnstein_relative_absolute_strength_response_frequency_reinforcement:
            return Entry(
                title: "Relative and Absolute Strength of Response as a Function of Frequency of Reinforcement",
                url: "https://doi.org/10.1901/jeab.1961.4-267",
                authors: "R. J. Herrnstein",
                date: "1961-07",
                doi: "10.1901/jeab.1961.4-267",
                kind: .article,
                channel: .peer_reviewed
            )

        case .herrnstein_on_the_law_of_effect:
            return Entry(
                title: "On the Law of Effect",
                url: "https://doi.org/10.1901/jeab.1970.13-243",
                authors: "R. J. Herrnstein",
                date: "1970-03",
                doi: "10.1901/jeab.1970.13-243",
                kind: .article,
                channel: .peer_reviewed
            )

        case .baum_two_types_deviation_matching_law_bias_undermatching:
            return Entry(
                title: "On Two Types of Deviation from the Matching Law: Bias and Undermatching",
                url: "https://doi.org/10.1901/jeab.1974.22-231",
                authors: "William M. Baum",
                date: "1974",
                doi: "10.1901/jeab.1974.22-231",
                kind: .article,
                channel: .peer_reviewed
            )

        case .herrnstein_matching_law_papers_psychology_economics:
            return Entry(
                title: "The Matching Law: Papers in Psychology and Economics",
                url: "https://books.google.com/books?id=08msDavsucYC",
                authors: "Richard J. Herrnstein; Howard Rachlin and David I. Laibson (eds.)",
                date: "1997",
                kind: .book,
                channel: .scholarly
            )

        case .reed_kaplan_matching_law_tutorial_practitioners:
            return Entry(
                title: "The Matching Law: A Tutorial for Practitioners",
                url: "https://pmc.ncbi.nlm.nih.gov/articles/PMC3357095/",
                authors: "Derek D. Reed, Brent A. Kaplan",
                date: "2011",
                doi: "10.1007/BF03391780",
                kind: .article,
                channel: .peer_reviewed
            )

        case .mcdowell_matching_theory_natural_human_environments:
            return Entry(
                title: "Matching Theory in Natural Human Environments",
                url: "https://doi.org/10.1901/jeab.1988.49-121",
                authors: "J. J. McDowell",
                date: "1988",
                doi: "10.1901/jeab.1988.49-121",
                kind: .article,
                channel: .peer_reviewed
            )

        case .davison_mccarthy_matching_law_research_review:
            return Entry(
                title: "The Matching Law: A Research Review",
                url: "https://www.routledge.com/The-Matching-Law-A-Research-Review/Davison-McCarthy/p/book/9781138194311",
                authors: "Michael Davison, Dianne McCarthy",
                date: "1988",
                kind: .book,
                channel: .scholarly
            )

        case .baum_rethinking_reinforcement_allocation_induction_contingency:
            return Entry(
                title: "Rethinking Reinforcement: Allocation, Induction, and Contingency",
                url: "https://doi.org/10.1901/jeab.2012.97-101",
                authors: "William M. Baum",
                date: "2012",
                doi: "10.1901/jeab.2012.97-101",
                kind: .article,
                channel: .peer_reviewed
            )

        case .yin_knowlton_basal_ganglia_habit_formation:
            return Entry(
                title: "The Role of the Basal Ganglia in Habit Formation",
                url: "https://doi.org/10.1038/nrn1919",
                authors: "Henry H. Yin, Barbara J. Knowlton",
                date: "2006-06",
                doi: "10.1038/nrn1919",
                kind: .article,
                channel: .peer_reviewed
            )

        case .de_wit_kindt_knot_verhoeven_robbins_gasull_camos_evans_mirza_gillan_five_failures_habit_induction:
            return Entry(
                title: "Shifting the Balance Between Goals and Habits: Five Failures in Experimental Habit Induction",
                url: "https://doi.org/10.1037/xge0000402",
                authors: "Sanne de Wit, Merel Kindt, Sarah L. Knot, Aukje A. C. Verhoeven, Trevor W. Robbins, Julia Gasull-Camos, Michael Evans, Hira Mirza, Claire M. Gillan",
                date: "2018-07",
                doi: "10.1037/xge0000402",
                kind: .article,
                channel: .peer_reviewed
            )

        case .balleine_primary_motivation_incentive_learning:
            return Entry(
                title: "Instrumental Performance Following a Shift in Primary Motivation Depends on Incentive Learning",
                url: "https://doi.org/10.1037/0097-7403.18.3.236",
                authors: "Bernard W. Balleine",
                date: "1992-07",
                doi: "10.1037/0097-7403.18.3.236",
                kind: .article,
                channel: .peer_reviewed
            )

        case .thrailkill_bouton_outcome_devaluation_discriminated_heterogeneous_chain:
            return Entry(
                title: "Effects of Outcome Devaluation on Instrumental Behaviors in a Discriminated Heterogeneous Chain",
                url: "https://doi.org/10.1037/xan0000119",
                authors: "Eric A. Thrailkill, Mark E. Bouton",
                date: "2017-01",
                doi: "10.1037/xan0000119",
                kind: .article,
                channel: .peer_reviewed
            )

        case .turner_balleine_stimulus_control_habits_dual_response_task:
            return Entry(
                title: "Stimulus Control of Habits: Evidence for Both Stimulus Specificity and Devaluation Insensitivity in a Dual-Response Task",
                url: "https://doi.org/10.1002/jeab.898",
                authors: "K. M. Turner, B. W. Balleine",
                date: "2023-12-15",
                doi: "10.1002/jeab.898",
                kind: .article,
                channel: .peer_reviewed
            )

        case .thrailkill_michaud_bouton_reinforcer_predictability_stimulus_salience_habit_learning:
            return Entry(
                title: "Reinforcer Predictability and Stimulus Salience Promote Discriminated Habit Learning",
                url: "https://doi.org/10.1037/xan0000285",
                authors: "Eric A. Thrailkill, Noelle L. Michaud, Mark E. Bouton",
                date: "2021-04",
                doi: "10.1037/xan0000285",
                kind: .article,
                channel: .peer_reviewed
            )

        case .seger_spiering_critical_review_habit_learning_basal_ganglia:
            return Entry(
                title: "A Critical Review of Habit Learning and the Basal Ganglia",
                url: "https://doi.org/10.3389/fnsys.2011.00066",
                authors: "Carol A. Seger, Brian J. Spiering",
                date: "2011-08-30",
                doi: "10.3389/fnsys.2011.00066",
                kind: .article,
                channel: .peer_reviewed
            )

        case .pool_pauli_kress_odoherty_parallel_pavlovian_learning_systems:
            return Entry(
                title: "Behavioural Evidence for Parallel Outcome-Sensitive and Outcome-Insensitive Pavlovian Learning Systems in Humans",
                url: "https://doi.org/10.1038/s41562-018-0527-9",
                authors: "Eva R. Pool, Wolfgang M. Pauli, Carolina S. Kress, John P. O’Doherty",
                date: "2019-03",
                doi: "10.1038/s41562-018-0527-9",
                kind: .article,
                channel: .peer_reviewed
            )

        case .estes_experimental_study_punishment:
            return Entry(
                title: "An Experimental Study of Punishment",
                url: "https://doi.org/10.1037/h0093550",
                authors: "William K. Estes",
                date: "1944",
                doi: "10.1037/h0093550",
                kind: .article,
                channel: .peer_reviewed
            )

        case .azrin_punishment_intensity_variable_interval_reinforcement:
            return Entry(
                title: "Effects of Punishment Intensity During Variable-Interval Reinforcement",
                url: "https://doi.org/10.1901/jeab.1960.3-123",
                authors: "Nathan H. Azrin",
                date: "1960-04",
                doi: "10.1901/jeab.1960.3-123",
                kind: .article,
                channel: .peer_reviewed
            )

        case .azrin_holz_hake_fixed_ratio_punishment:
            return Entry(
                title: "Fixed-Ratio Punishment",
                url: "https://doi.org/10.1901/jeab.1963.6-141",
                authors: "Nathan H. Azrin, W. C. Holz, D. F. Hake",
                date: "1963-04",
                doi: "10.1901/jeab.1963.6-141",
                kind: .article,
                channel: .peer_reviewed
            )

        case .azrin_holz_punishment_operant_behavior:
            return Entry(
                title: "Punishment",
                url: "https://archive.org/details/in.ernet.dli.2015.138766",
                authors: "Nathan H. Azrin, W. C. Holz",
                date: "1966",
                kind: .book_chapter,
                channel: .peer_reviewed
            )

        case .van_houten_punishment_animal_laboratory_applied_setting:
            return Entry(
                title: "Punishment: From the Animal Laboratory to the Applied Setting",
                url: "https://doi.org/10.1016/B978-0-12-068740-4.50007-6",
                authors: "Ron Van Houten",
                date: "1983",
                doi: "10.1016/B978-0-12-068740-4.50007-6",
                kind: .book_chapter,
                channel: .peer_reviewed
            )

        case .lerman_vorndran_status_knowledge_using_punishment:
            return Entry(
                title: "On the Status of Knowledge for Using Punishment: Implications for Treating Behavior Disorders",
                url: "https://doi.org/10.1901/jaba.2002.35-431",
                authors: "Dorothea C. Lerman, Christina M. Vorndran",
                date: "2002",
                doi: "10.1901/jaba.2002.35-431",
                kind: .article,
                channel: .peer_reviewed
            )

        case .solomon_kamin_wynne_traumatic_avoidance_extinction_dogs:
            return Entry(
                title: "Traumatic Avoidance Learning: The Outcomes of Several Extinction Procedures with Dogs",
                url: "https://doi.org/10.1037/h0058943",
                authors: "Richard L. Solomon, Leon J. Kamin, Lyman C. Wynne",
                date: "1953-04",
                doi: "10.1037/h0058943",
                kind: .article,
                channel: .peer_reviewed
            )

        case .walters_glazer_punishment_instinctive_behavior_mongolian_gerbil:
            return Entry(
                title: "Punishment of Instinctive Behavior in the Mongolian Gerbil",
                url: "https://doi.org/10.1037/h0030831",
                authors: "G. C. Walters, Rochelle D. Glazer",
                date: "1971",
                doi: "10.1037/h0030831",
                kind: .article,
                channel: .peer_reviewed
            )

        case .brown_wagner_resistance_punishment_extinction_shock_nonreinforcement:
            return Entry(
                title: "Resistance to Punishment and Extinction Following Training with Shock or Nonreinforcement",
                url: "https://doi.org/10.1037/h0042696",
                authors: "R. T. Brown, A. R. Wagner",
                date: "1964-11",
                doi: "10.1037/h0042696",
                kind: .article,
                channel: .peer_reviewed
            )

        case .vogel_sprott_partial_reward_resistance_punishment_subsequent_extinction:
            return Entry(
                title: "Partial-Reward Training for Resistance to Punishment and to Subsequent Extinction",
                url: "https://doi.org/10.1037/h0024901",
                authors: "M. Vogel-Sprott",
                date: "1967-09",
                doi: "10.1037/h0024901",
                kind: .article,
                channel: .peer_reviewed
            )

        case .campese_brannigan_ledoux_conditional_control_instrumental_avoidance_context_extinction:
            return Entry(
                title: "Conditional Control of Instrumental Avoidance by Context Following Extinction",
                url: "https://doi.org/10.3389/fnbeh.2021.730113",
                authors: "Vincent D. Campese, Lauren A. Brannigan, Joseph E. LeDoux",
                date: "2021-09-28",
                doi: "10.3389/fnbeh.2021.730113",
                kind: .article,
                channel: .peer_reviewed
            )

        case .trask_bouton_retrieval_practice_multiple_context_changes_instrumental_behavior:
            return Entry(
                title: "Retrieval Practice After Multiple Context Changes, but Not Long Retention Intervals, Reduces the Impact of a Final Context Change on Instrumental Behavior",
                url: "https://doi.org/10.3758/s13420-017-0304-z",
                authors: "Sydney Trask, Mark E. Bouton",
                date: "2018-06",
                doi: "10.3758/s13420-017-0304-z",
                kind: .article,
                channel: .peer_reviewed
            )

        case .bouton_learning_and_behavior_contemporary_synthesis:
            return Entry(
                title: "Learning and Behavior: A Contemporary Synthesis",
                url: "https://www.oup.com.au/books/higher-education/psychology/9780878933853-learning-and-behavior",
                authors: "Mark E. Bouton",
                date: "2016-06-22",
                kind: .book,
                channel: .textbook
            )

        case .illeris_contemporary_theories_of_learning:
            return Entry(
                title: "Contemporary Theories of Learning: Learning Theorists … In Their Own Words",
                url: "https://www.routledge.com/Contemporary-Theories-of-Learning-Learning-Theorists--In-Their-Own-Words/Illeris/p/book/9781138550490",
                authors: "Knud Illeris (ed.)",
                date: "2018",
                kind: .book,
                channel: .textbook
            )
        }
    }
}

private extension CynologyLearningSource {
    struct Entry {
        let title: String
        let url: String
        let authors: String?
        let date: String?
        let doi: String?
        let kind: ReferenceKind
        let channel: ReferenceChannel

        init(
            title: String,
            url: String,
            authors: String? = nil,
            date: String? = nil,
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
                authors: authors.map {
                    ReferenceAuthors(original: $0)
                },
                dates: ReferenceDates(
                    published: date.flatMap {
                        try? PartialDate.iso8601($0)
                    }
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
            if doi != nil {
                return .doi
            }

            return nil
        }
    }
}
