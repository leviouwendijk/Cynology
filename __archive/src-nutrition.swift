import Primitives
import References

public enum CynologyNutritionSource: String, CaseIterable, Codable, CynologySourceProviding {
    public static let shelf = CynologyShelf.nutrition

    // MARK: - CanineDiet

    case knight_vegan_versus_meat_based_dog_food_guardian_reported_health
    case linde_lahiff_krantz_sharp_ng_melgarejo_plant_based_diet_one_year_health_outcomes
    case dominguez_oliva_mota_rojas_semendric_whittaker_impact_vegan_diets_indicators_health
    case brociek_li_broughton_gardner_nutritional_analysis_plant_meat_based_dry_dog_foods
    case roberts_oba_swanson_digestibility_mildly_cooked_human_grade_vegan_dog_foods
    case zafalon_risolia_vendramini_rodrigues_pedrinelli_teixeira_rentas_perini_alvarenga_brunetto_nutritional_inadequacies_vegan_pet_foods
    case knight_relative_benefits_environmental_sustainability_vegan_diets
    case barrett_jolley_german_owner_perceptions_health_diet_reanalysis

    public var data: ReferenceData {
        entry.data(
            tags: facets
        )
    }

    private var facets: ReferenceTagSet {
        switch self {
        case .knight_vegan_versus_meat_based_dog_food_guardian_reported_health,
            .linde_lahiff_krantz_sharp_ng_melgarejo_plant_based_diet_one_year_health_outcomes,
            .dominguez_oliva_mota_rojas_semendric_whittaker_impact_vegan_diets_indicators_health,
            .barrett_jolley_german_owner_perceptions_health_diet_reanalysis:
            return .cynology(
                .diet,
                .welfare
            )

        case .brociek_li_broughton_gardner_nutritional_analysis_plant_meat_based_dry_dog_foods,
            .roberts_oba_swanson_digestibility_mildly_cooked_human_grade_vegan_dog_foods,
            .zafalon_risolia_vendramini_rodrigues_pedrinelli_teixeira_rentas_perini_alvarenga_brunetto_nutritional_inadequacies_vegan_pet_foods:
            return .cynology(
                .diet,
                .physiology
            )

        case .knight_relative_benefits_environmental_sustainability_vegan_diets:
            return .cynology(
                .diet,
                .welfare
            )
        }
    }

    private var entry: Entry {
        switch self {
        case .knight_vegan_versus_meat_based_dog_food_guardian_reported_health:
            return .init(
                title: "Vegan versus Meat-Based Dog Food: Guardian-Reported Indicators of Health",
                url: "https://doi.org/10.1371/journal.pone.0265662",
                authors: "Andrew Knight",
                date: "2022-04-13",
                doi: "10.1371/journal.pone.0265662"
            )

        case .linde_lahiff_krantz_sharp_ng_melgarejo_plant_based_diet_one_year_health_outcomes:
            return .init(
                title: "Domestic Dogs Maintain Clinical, Nutritional, and Hematological Health Outcomes When Fed a Commercial Plant-Based Diet for a Year",
                url: "https://doi.org/10.1371/journal.pone.0298942",
                authors: "Annika Linde, Maureen Lahiff, Adam Krantz, Nathan Sharp, Theros T. Ng, Tonatiuh Melgarejo",
                date: "2024-04-16",
                doi: "10.1371/journal.pone.0298942"
            )

        case .dominguez_oliva_mota_rojas_semendric_whittaker_impact_vegan_diets_indicators_health:
            return .init(
                title: "The Impact of Vegan Diets on Indicators of Health in Dogs and Cats: A Systematic Review",
                url: "https://doi.org/10.3390/vetsci10010052",
                authors: "Adriana Domínguez-Oliva et al.",
                date: "2023-01-06",
                doi: "10.3390/vetsci10010052"
            )

        case .brociek_li_broughton_gardner_nutritional_analysis_plant_meat_based_dry_dog_foods:
            return .init(
                title: "Nutritional Analysis of Commercially Available, Complete Plant- and Meat-Based Dry Dog Foods in the UK",
                url: "https://doi.org/10.1371/journal.pone.0328506",
                authors: "R. A. Brociek, D. Li, R. Broughton, D. S. Gardner",
                date: "2025-09-03",
                doi: "10.1371/journal.pone.0328506"
            )

        case .roberts_oba_swanson_digestibility_mildly_cooked_human_grade_vegan_dog_foods:
            return .init(
                title: "Apparent Total Tract Macronutrient Digestibility of Mildly Cooked Human-Grade Vegan Dog Foods and Their Effects on the Blood Metabolites and Fecal Characteristics, Microbiota, and Metabolites of Adult Dogs",
                url: "https://doi.org/10.1093/jas/skad093",
                authors: "Leah J. Roberts, Patricia M. Oba, Kelly S. Swanson",
                date: "2023-03-27",
                doi: "10.1093/jas/skad093"
            )

        case .zafalon_risolia_vendramini_rodrigues_pedrinelli_teixeira_rentas_perini_alvarenga_brunetto_nutritional_inadequacies_vegan_pet_foods:
            return .init(
                title: "Nutritional Inadequacies in Commercial Vegan Foods for Dogs and Cats",
                url: "https://doi.org/10.1371/journal.pone.0227046",
                authors: "Rafael Vessecchi Amorim Zafalon, Larissa Wünsche Risolia, Thiago Henrique Annibale Vendramini, Roberta Bueno Ayres Rodrigues, Vivian Pedrinelli, Fabio Alves Teixeira, Mariana Fragoso Rentas, Mariana Pamplona Perini, Isabella Corsato Alvarenga, Marcio Antonio Brunetto",
                date: "2020-01-17",
                doi: "10.1371/journal.pone.0227046"
            )

        case .knight_relative_benefits_environmental_sustainability_vegan_diets:
            return .init(
                title: "The Relative Benefits for Environmental Sustainability of Vegan Diets for Dogs, Cats and People",
                url: "https://doi.org/10.1371/journal.pone.0291791",
                authors: "Andrew Knight",
                date: "2023-10-04",
                doi: "10.1371/journal.pone.0291791"
            )

        case .barrett_jolley_german_owner_perceptions_health_diet_reanalysis:
            return .init(
                title: "Variables Associated with Owner Perceptions of the Health of Their Dog: Further Analysis of Data from a Large International Survey",
                url: "https://doi.org/10.1371/journal.pone.0280173",
                authors: "Richard Barrett-Jolley, Alexander J. German",
                date: "2024-05-15",
                doi: "10.1371/journal.pone.0280173"
            )
        }
    }
}

private extension CynologyNutritionSource {
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
