import Primitives
import References

public enum CynologyMethodologySource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.methodology

    // MARK: - BehaviorAssessmentTemperament

    case asher_blythe_roberts_toothill_craigon_evans_green_england_guide_dog_puppy_test
    case foyer_bjallerhag_wilsson_jensen_first_year_life_later_temperament_test
    case hsu_serpell_cbarq_development_validation_behavior_temperament_traits
    case wilkins_evans_park_fitzpatrick_creevy_ruple_shortened_cbarq_validation
    case hare_essler_otto_ebbecke_serpell_modified_cbarq_working_dogs
    case hilby_rendahl_russenberger_zimmermann_mickelson_mccue_temporal_consistency_guide_dogs
    case mcgreevy_georgevsky_carrasco_valenzuela_duffy_serpell_behavior_covaries_height_bodyweight_skull_shape
    case riemer_mills_wright_impulsive_for_life_dogs
    case jung_song_yang_yoo_heo_yoon_temperament_cortisol_serotonin

    public var data: ReferenceData {
        entry.data(
            tags: facets
        )
    }

    private var facets: ReferenceTagSet {
        switch self {
        case .asher_blythe_roberts_toothill_craigon_evans_green_england_guide_dog_puppy_test,
            .foyer_bjallerhag_wilsson_jensen_first_year_life_later_temperament_test,
            .hilby_rendahl_russenberger_zimmermann_mickelson_mccue_temporal_consistency_guide_dogs:
            return .cynology(
                .methodology,
                .assessment,
                .temperament,
                .working_dogs
            )

        case .hsu_serpell_cbarq_development_validation_behavior_temperament_traits,
            .wilkins_evans_park_fitzpatrick_creevy_ruple_shortened_cbarq_validation:
            return .cynology(
                .methodology,
                .assessment,
                .temperament
            )

        case .hare_essler_otto_ebbecke_serpell_modified_cbarq_working_dogs:
            return .cynology(
                .methodology,
                .assessment,
                .temperament,
                .working_dogs
            )

        case .mcgreevy_georgevsky_carrasco_valenzuela_duffy_serpell_behavior_covaries_height_bodyweight_skull_shape:
            return .cynology(
                .methodology,
                .assessment,
                .temperament,
                .canine_behavior
            )

        case .riemer_mills_wright_impulsive_for_life_dogs:
            return .cynology(
                .methodology,
                .assessment,
                .temperament,
                .affective_state
            )

        case .jung_song_yang_yoo_heo_yoon_temperament_cortisol_serotonin:
            return .cynology(
                .methodology,
                .assessment,
                .temperament,
                .physiology
            )
        }
    }

    private var entry: Entry {
        switch self {
        case .asher_blythe_roberts_toothill_craigon_evans_green_england_guide_dog_puppy_test:
            return .init(
                title: "A Standardized Behavior Test for Potential Guide Dog Puppies: Methods and Association with Subsequent Success in Guide Dog Training",
                url: "https://doi.org/10.1016/j.jveb.2013.08.004",
                authors: "Lucy Asher, Simon Blythe, Rena Roberts, Lisa Toothill, Peter J. Craigon, Katy M. Evans, Martin J. Green, Gary C. W. England",
                date: "2013",
                doi: "10.1016/j.jveb.2013.08.004"
            )

        case .foyer_bjallerhag_wilsson_jensen_first_year_life_later_temperament_test:
            return .init(
                title: "Behaviour and Experiences of Dogs During the First Year of Life Predict the Outcome in a Later Temperament Test",
                url: "https://doi.org/10.1016/j.applanim.2014.12.006",
                authors: "Pernilla Foyer, Anna C. Bjällerhag, Erik Wilsson, Per Jensen",
                date: "2016",
                doi: "10.1016/j.applanim.2014.12.006"
            )

        case .hsu_serpell_cbarq_development_validation_behavior_temperament_traits:
            return .init(
                title: "Development and Validation of a Questionnaire for Measuring Behavior and Temperament Traits in Pet Dogs",
                url: "https://doi.org/10.2460/javma.2003.223.1293",
                authors: "Yuying Hsu, James A. Serpell",
                date: "2003",
                doi: "10.2460/javma.2003.223.1293"
            )

        case .wilkins_evans_park_fitzpatrick_creevy_ruple_shortened_cbarq_validation:
            return .init(
                title: "Validation and Application of a Shortened Canine Behavioral Assessment and Research Questionnaire (C-BARQ) to Detect Behavioral Traits in Companion Dogs",
                url: "https://doi.org/10.1371/journal.pone.0239025",
                authors: "Amy M. Wilkins, Jeremy B. Evans, Robert M. Park, Anne L. Fitzpatrick, Kate E. Creevy, Audrey Ruple",
                date: "2020-09-14",
                doi: "10.1371/journal.pone.0239025"
            )

        case .hare_essler_otto_ebbecke_serpell_modified_cbarq_working_dogs:
            return .init(
                title: "A Modified C-BARQ as a Tool for Evaluating Working Dogs",
                url: "https://doi.org/10.3389/fvets.2018.00241",
                authors: "Evan Hare, Jennifer Essler, Cynthia M. Otto, Marcia Ebbecke, James A. Serpell",
                date: "2018-10-04",
                doi: "10.3389/fvets.2018.00241"
            )

        case .hilby_rendahl_russenberger_zimmermann_mickelson_mccue_temporal_consistency_guide_dogs:
            return .init(
                title: "Temporal Consistency of Behavioral Responses in a Standardized Behavior Test for Potential Guide Dog Puppies",
                url: "https://doi.org/10.3389/fvets.2022.887665",
                authors: "Eva F. Hilby, Annette K. Rendahl, Jeanne Russenberger, Megan B. Zimmermann, James R. Mickelson, Molly E. McCue",
                date: "2022-06-09",
                doi: "10.3389/fvets.2022.887665"
            )

        case .mcgreevy_georgevsky_carrasco_valenzuela_duffy_serpell_behavior_covaries_height_bodyweight_skull_shape:
            return .init(
                title: "Dog Behavior Co-Varies with Height, Bodyweight and Skull Shape",
                url: "https://doi.org/10.1371/journal.pone.0080529",
                authors: "Paul D. McGreevy, Dana Georgevsky, Johanna Carrasco, Macarena Valenzuela, Deborah L. Duffy, James A. Serpell",
                date: "2013-12-16",
                doi: "10.1371/journal.pone.0080529"
            )

        case .riemer_mills_wright_impulsive_for_life_dogs:
            return .init(
                title: "Impulsive for Life? The Nature of Long-Term Impulsivity in Domestic Dogs",
                url: "https://doi.org/10.1007/s10071-013-0701-4",
                authors: "Stefanie Riemer, Daniel S. Mills, Hannah Wright",
                date: "2014",
                doi: "10.1007/s10071-013-0701-4"
            )

        case .jung_song_yang_yoo_heo_yoon_temperament_cortisol_serotonin:
            return .init(
                title: "Associations Between Canine Temperament and Salivary Concentrations of Cortisol and Serotonin",
                url: "https://doi.org/10.1371/journal.pone.0337781",
                authors: "Youngwook Jung, Yujin Song, Kayoung Yang, Kyongwon Yoo, Youngtae Heo, Minjung Yoon",
                date: "2026-02-04",
                doi: "10.1371/journal.pone.0337781"
            )
        }
    }
}

private extension CynologyMethodologySource {
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
