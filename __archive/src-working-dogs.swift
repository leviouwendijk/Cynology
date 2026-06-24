import Primitives
import References

public enum CynologyWorkingDogSource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.working_dogs

    // MARK: - WorkingDogs

    case hall_johnston_bray_otto_maclean_udell_working_dog_training_twenty_first_century
    case bray_otto_udell_hall_johnston_maclean_selection_performance_working_dogs
    case cobb_otto_fine_animal_welfare_science_working_dogs
    case lazarowski_rogers_collins_pisano_krichbaum_marker_training_detection_dogs
    case smith_krichbaum_rogers_waggoner_katz_lazarowski_training_schedules_odor_detection
    case fratt_hamre_burak_mutoro_nootbaar_wykstra_differential_reinforcement_extinction_cheetah_scat_detection_dogs
    case cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response
    case cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response_correction

    // MARK: - AdditionalDogBooks

    case raiser_der_schutzhund_the_protection_dog
    case gerritsen_haak_k9_personal_protection
    case gerritsen_haak_k9_schutzhund_training

    public var data: ReferenceData {
        entry.data(
            tags: facets
        )
    }

    private var facets: ReferenceTagSet {
        switch self {
        case .hall_johnston_bray_otto_maclean_udell_working_dog_training_twenty_first_century:
            return .cynology(
                .working_dogs,
                .training_methods,
                .welfare
            )

        case .bray_otto_udell_hall_johnston_maclean_selection_performance_working_dogs:
            return .cynology(
                .working_dogs,
                .assessment,
                .temperament,
                .methodology
            )

        case .cobb_otto_fine_animal_welfare_science_working_dogs:
            return .cynology(
                .working_dogs,
                .welfare,
                .stress
            )

        case .lazarowski_rogers_collins_pisano_krichbaum_marker_training_detection_dogs,
            .smith_krichbaum_rogers_waggoner_katz_lazarowski_training_schedules_odor_detection,
            .fratt_hamre_burak_mutoro_nootbaar_wykstra_differential_reinforcement_extinction_cheetah_scat_detection_dogs:
            return .cynology(
                .working_dogs,
                .training_methods,
                .reinforcement,
                .operant_conditioning
            )

        case .cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response,
            .cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response_correction:
            return .cynology(
                .working_dogs,
                .stress,
                .physiology,
                .welfare
            )

        case .raiser_der_schutzhund_the_protection_dog,
            .gerritsen_haak_k9_personal_protection,
            .gerritsen_haak_k9_schutzhund_training:
            return .cynology(
                .working_dogs,
                .training_methods,
                .reinforcement
            )
        }
    }

    private var entry: Entry {
        switch self {
        case .hall_johnston_bray_otto_maclean_udell_working_dog_training_twenty_first_century:
            return .init(
                title: "Working Dog Training for the Twenty-First Century",
                url: "https://doi.org/10.3389/fvets.2021.646022",
                authors: "Nathaniel J. Hall, Angie M. Johnston, Emily E. Bray, Cynthia M. Otto, Evan L. MacLean, Monique A. R. Udell",
                date: "2021-07-27",
                doi: "10.3389/fvets.2021.646022"
            )

        case .bray_otto_udell_hall_johnston_maclean_selection_performance_working_dogs:
            return .init(
                title: "Enhancing the Selection and Performance of Working Dogs",
                url: "https://doi.org/10.3389/fvets.2021.644431",
                authors: "Emily E. Bray, Cynthia M. Otto, Monique A. R. Udell, Nathaniel J. Hall, Angie M. Johnston, Evan L. MacLean",
                date: "2021-04-08",
                doi: "10.3389/fvets.2021.644431"
            )

        case .cobb_otto_fine_animal_welfare_science_working_dogs:
            return .init(
                title: "The Animal Welfare Science of Working Dogs: Current Perspectives on Recent Advances and Future Directions",
                url: "https://doi.org/10.3389/fvets.2021.666898",
                authors: "Mia Cobb, Cynthia M. Otto, Aubrey H. Fine",
                date: "2021-05-24",
                doi: "10.3389/fvets.2021.666898"
            )

        case .lazarowski_rogers_collins_pisano_krichbaum_marker_training_detection_dogs:
            return .init(
                title: "Validation of a Behavior-Based Protocol for Training Detection Dogs",
                url: "https://doi.org/10.3390/ani11061639",
                authors: "Lucia Lazarowski, Belinda Rogers, Stephanie Collins, Julia Pisano, Sarah Krichbaum",
                date: "2021-06-01",
                doi: "10.3390/ani11061639"
            )

        case .smith_krichbaum_rogers_waggoner_katz_lazarowski_training_schedules_odor_detection:
            return .init(
                title: "A Comparison of Training Schedules for Odor Detection Dogs",
                url: "https://doi.org/10.3390/ani12020144",
                authors: "Cynthia A. Smith, Sarah Krichbaum, Belinda Rogers, Larry Paul Waggoner, Jeffrey S. Katz, Lucia Lazarowski",
                date: "2022-01-08",
                doi: "10.3390/ani12020144"
            )

        case .fratt_hamre_burak_mutoro_nootbaar_wykstra_differential_reinforcement_extinction_cheetah_scat_detection_dogs:
            return .init(
                title: "Use of Differential Reinforcement and Extinction to Increase Detection Accuracy of Cheetah Scat Detection Dogs",
                url: "https://doi.org/10.1002/jeab.850",
                authors: "Lindsay Fratt, Jamie Hamre, Jevidah Burak, Jessica Mutoro, Julia Nootbaar, Cailyn Wykstra",
                date: "2023-06-27",
                doi: "10.1002/jeab.850"
            )

        case .cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response:
            return .init(
                title: "Take a Look Towards the Stress Response of Working Dogs: Cortisol and Lactate Trend Mismatches During Training",
                url: "https://www.mdpi.com/2076-2615/15/21/3175",
                authors: "Raffaella Cocco, Sara Sechi, Giulia Sisia, Maria Luisa Pinna Parpaglia, Maria Rizzo, Federica Arrigo, Claudia Giannetto, Giuseppe Piccione, Francesca Arfuso",
                date: "2025-10-31",
                doi: "10.3390/ani15213175"
            )

        case .cocco_sechi_sisia_pinna_parpaglia_rizzo_arrigo_giannetto_piccione_arfuso_working_dog_stress_response_correction:
            return .init(
                title: "Correction: Cocco et al. Take a Look Towards the Stress Response of Working Dogs: Cortisol and Lactate Trend Mismatches During Training. Animals 2025, 15, 3175",
                url: "https://www.mdpi.com/2076-2615/16/5/739",
                authors: "Raffaella Cocco, Sara Sechi, Giulia Sisia, Maria Luisa Pinna Parpaglia, Maria Rizzo, Federica Arrigo, Claudia Giannetto, Giuseppe Piccione, Francesca Arfuso",
                date: "2026-02-27",
                doi: "10.3390/ani16050739"
            )

        case .raiser_der_schutzhund_the_protection_dog:
            return .init(
                title: "Der Schutzhund: The Protection Dog",
                url: "https://www.amazon.com/Schutzhund-Protection-Dog-Helmut-Raiser/dp/0966302001",
                authors: "Helmut Raiser",
                date: "1996",
                kind: .book,
                channel: .professional
            )

        case .gerritsen_haak_k9_personal_protection:
            return .init(
                title: "K9 Personal Protection: A Manual for Training Reliable Protection Dogs",
                url: "https://www.amazon.com/K9-Personal-Protection-Reliable-Training/dp/1550595881",
                authors: "Resi Gerritsen, Ruud Haak",
                date: "2014",
                kind: .book,
                channel: .professional
            )

        case .gerritsen_haak_k9_schutzhund_training:
            return .init(
                title: "K9 Schutzhund Training: A Manual for IPO Training through Positive Reinforcement",
                url: "https://www.amazon.com/K9-Schutzhund-Training-Positive-Reinforcement/dp/1550596519",
                authors: "Resi Gerritsen, Ruud Haak",
                date: "2014",
                kind: .book,
                channel: .professional
            )
        }
    }
}

private extension CynologyWorkingDogSource {
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
