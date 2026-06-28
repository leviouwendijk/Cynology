public enum TrainingStyle: String, Sendable, Codable, Hashable, CaseIterable {
    case compulsion_free
    case reward_based
    case compulsion_based

    public var label: String {
        profile.label
    }

    public var summary: String {
        profile.summary
    }

    public var tags: [TrainingStyleTag] {
        profile.tags
    }

    public var profile: TrainingStyleProfile {
        TrainingStyleProfile.profile(for: self)
    }

    public static var profiles: [TrainingStyleProfile] {
        allCases.map(\.profile)
    }
}

public struct TrainingStyleProfile: Sendable, Codable, Hashable, Identifiable {
    public var id: String {
        style.rawValue
    }

    public let style: TrainingStyle
    public let label: String
    public let summary: String
    public let tags: [TrainingStyleTag]

    public let includes: [String]
    public let excludes: [String]
    public let benefits: [String]
    public let limitations: [String]
    public let hazards: [String]

    public let foundation: String
    public let adaptation_model: String
    public let fallout_risk: String
    public let resilience_effect: String

    public init(
        style: TrainingStyle,
        label: String,
        summary: String,
        tags: [TrainingStyleTag],
        includes: [String],
        excludes: [String] = [],
        benefits: [String],
        limitations: [String],
        hazards: [String] = [],
        foundation: String,
        adaptation_model: String,
        fallout_risk: String,
        resilience_effect: String
    ) {
        self.style = style
        self.label = label
        self.summary = summary
        self.tags = tags
        self.includes = includes
        self.excludes = excludes
        self.benefits = benefits
        self.limitations = limitations
        self.hazards = hazards
        self.foundation = foundation
        self.adaptation_model = adaptation_model
        self.fallout_risk = fallout_risk
        self.resilience_effect = resilience_effect
    }
}

public extension TrainingStyleProfile {
    static func profile(
        for style: TrainingStyle
    ) -> TrainingStyleProfile {
        switch style {
        case .compulsion_free:
            return .init(
                style: style,
                label: "Dwangvrij",
                summary: "Training waarin beloning, management en geleidelijke opbouw centraal staan, terwijl intentionele dwang en aversieven worden vermeden.",
                tags: [
                    .force_free,
                    .reward_only,
                    .positive_reinforcement,
                    .lima
                ],
                includes: [
                    "Beloning",
                    "Management",
                    "Restrictie",
                    "Geleidelijke blootstelling",
                    "Minimale niet-dwingende druk"
                ],
                excludes: [
                    "Intentionele aversieven",
                    "Dwang",
                    "Hoge druk",
                    "Correctie als stuurmiddel",
                    "Compulsie"
                ],
                benefits: [
                    "Lage kans op aversieve bijwerkingen",
                    "Past goed bij geleidelijke progressie",
                    "Veilig uitgangspunt bij angst, onzekerheid en onbekende honden",
                    "Duidelijke welzijnsgrens voor doorsnee eigenaren"
                ],
                limitations: [
                    "Kan restrictief worden wanneer elke vorm van druk wordt vermeden",
                    "Kan weerbaarheid onderontwikkelen wanneer beheersbare stress structureel wordt vermeden",
                    "Kan gedragsopties blijven toevoegen zonder verkeerd gedrag voldoende te verminderen"
                ],
                hazards: [
                    "Te vroeg loslaten van management omdat men alleen op beloning vertrouwt",
                    "Ondertraining van frustratietolerantie",
                    "Ondertraining van herstel na tegenslag"
                ],
                foundation: "Beloning en preventie",
                adaptation_model: "Geleidelijke progressie",
                fallout_risk: "Laag in reactie op directe handelingen",
                resilience_effect: "Afhankelijk van blootstelling aan natuurlijke stressoren"
            )

        case .reward_based:
            return .init(
                style: style,
                label: "Beloningsgericht",
                summary: "Training waarin beloning de basis blijft, maar druk, correctie of aversieve informatie beperkt en doelgericht beschikbaar kan zijn.",
                tags: [
                    .balanced,
                    .lima
                ],
                includes: [
                    "Beloning",
                    "Management",
                    "Restrictie",
                    "Drukbegrip",
                    "Beperkte correctie",
                    "Aversieven onder voorwaarden",
                    "Enige compulsie binnen begrensde toepassing"
                ],
                excludes: [
                    "Dwang als dragende basis",
                    "Correctie-heavy training",
                    "Hoge-conflict druk",
                    "Onvoorspelbare of oncontroleerbare aversieven",
                    "Straf zonder beloningsfundament"
                ],
                benefits: [
                    "Kan effectiever zijn wanneer alleen toevoegen te traag of te zwak is",
                    "Behoudt beloning als relationele en motiverende basis",
                    "Kan sneller aanpassen bij veiligheids- of betrouwbaarheidseisen",
                    "Kan weerbaarheid en herstelvermogen trainen onder beheersbare belasting",
                    "Kan voorkomen dat restrictie eindeloos nodig blijft"
                ],
                limitations: [
                    "Kan te veel focussen op operante uitkomsten",
                    "Kan restrictie te vroeg loslaten omdat correctie beschikbaar is",
                    "Vraagt scherpere timing, voorspelbaarheid en controle",
                    "Vraagt betere inschatting van draagkracht, stress en herstel"
                ],
                hazards: [
                    "Bijgeloof of verkeerde associatievorming",
                    "Onbedoelde stress wanneer druk niet controleerbaar of voorspelbaar is",
                    "Escalatie naar correction-heavy werken wanneer beloningsopbouw verwaarloosd wordt"
                ],
                foundation: "Beloning met begrenzing",
                adaptation_model: "Snellere aanpassing onder beheersbare belasting",
                fallout_risk: "Laag tot middelmatig in reactie op directe handelingen",
                resilience_effect: "Hoog"
            )

        case .compulsion_based:
            return .init(
                style: style,
                label: "Dwanggericht",
                summary: "Training waarin dwang, druk of correctie de dragende manier worden om gedrag te onderdrukken of af te dwingen.",
                tags: [
                    .dominance,
                    .traditional,
                    .punishment_based,
                    .aversive_based,
                    .correction_heavy
                ],
                includes: [
                    "Hoge druk",
                    "Aversieven",
                    "Correctie",
                    "Gedwongen gehoorzaamheid",
                    "Gedragsonderdrukking",
                    "Beperkte of ontbrekende beloningsopbouw"
                ],
                excludes: [
                    "Sterke beloningsbasis",
                    "Meaningful choice-building",
                    "Geleidelijke weerbaarheidsopbouw",
                    "Lage-conflict progressie",
                    "Controleerbare agency voor de hond"
                ],
                benefits: [
                    "Kan gedrag acuut onderdrukken",
                    "Kan voor de mens duidelijk, direct of daadkrachtig voelen",
                    "Kan korte-termijn gehoorzaamheid tonen in sterk gecontroleerde context"
                ],
                limitations: [
                    "Leert op basis van uitsluitingen, niet aanwijzingen",
                    "Kan gedrag onderdrukken zonder de emotionele gronding te veranderen",
                    "Verhoogt risico op conflict en vermijding",
                    "Kan afhankelijk maken van druk of aanwezigheid van de handler",
                    "Kan beloningsgerichte activiteit en initiatief ondermijnen"
                ],
                hazards: [
                    "Fear-induction",
                    "Conflict-geïnduceerde agressie",
                    "Pessimisme",
                    "Excessieve stress door gebrek aan controle en voorspelbaarheid",
                    "Druk-desensitisatie",
                    "Aangeleerde hulpeloosheid",
                    "Bijgeloof of verkeerde associatievorming",
                    "Relatieverlies door gebrek aan loning (blijvend bekrachtigingspatroon in drukvorm)"
                ],
                foundation: "Dwang en onderdrukking",
                adaptation_model: "Snelle onderdrukking met hogere nevenrisico's",
                fallout_risk: "Hoog in reactie op directe handelingen",
                resilience_effect: "Negatief of schijnbaar hardend"
            )
        }
    }
}
