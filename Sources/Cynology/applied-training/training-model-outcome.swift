import Foundation

public enum TrainingModelOutcome: String, Sendable, Codable, Hashable, CaseIterable {
    case predictability

    case safety
    case optimism
    case stability

    case attraction
    case bonding
    case routine

    case resilience
    case recovery

    case ability
    case competence
    case agency

    case valence

    case freedom
    case antifragility

    public var label: String {
        switch self {
        case .predictability:
            return "Voorspelbaarheid"

        case .safety:
            return "Veiligheid"
        case .optimism:
            return "Optimisme"
        case .stability:
            return "Stabiliteit"

        case .attraction:
            return "Aantrekkingskracht"
        case .bonding:
            return "Verbinding"
        case .routine:
            return "Routine"

        case .resilience:
            return "Weerbaarheid"
        case .recovery:
            return "Herstel"

        case .ability:
            return "Vermogen"
        case .competence:
            return "Competentie"
        case .agency:
            return "Autonomie"

        case .valence:
            return "Valentie"

        case .freedom:
            return "Vrijheid"
        case .antifragility:
            return "Anti-fragiliteit"
        }
    }

    public var summary: String {
        switch self {
        case .predictability:
            return "De hond kan gebeurtenissen, signalen, grenzen en consequenties beter voorspellen."

        case .safety:
            return "De hond ervaart de situatie minder als bedreigend, onveilig of chaotisch."
        case .optimism:
            return "De hond verwacht dat toenadering, proberen en samenwerking iets goeds kunnen opleveren."
        case .stability:
            return "De hond blijft emotioneel en gedragsmatig beter georiënteerd onder wisselende omstandigheden."

        case .attraction:
            return "De geleider, taak of gekozen respons krijgt voldoende waarde om gedrag te trekken."
        case .bonding:
            return "De hond blijft aangesloten bij de geleider, ook wanneer de omgeving prikkelt."
        case .routine:
            return "De hond herkent terugkerende patronen, volgordes en communicatieve overgangen."

        case .resilience:
            return "De hond kan functioneren ondanks druk of tegenslag."
        case .recovery:
            return "De hond herstelt van belasting of tegenslag."

        case .ability:
            return "De hond kan de aangeleerde respons motorisch, cognitief en contextueel uitvoeren (vaardigheid)."
        case .competence:
            return "De hond beschikt over concrete gedragsopties waarmee hij onafhankelijk situaties kan beantwoorden."
        case .agency:
            return "De hond leert dat eigen gedrag verschil maakt binnen voorspelbare consequenties."

        case .valence:
            return "Prikkels, contexten en sociale situaties krijgen een specifieke affectieve (emotionele) betekenis."

        case .freedom:
            return "Verruiming van keuzevrijheid en verrijkende opties."
        case .antifragility:
            return "Gedrag en verwachting worden sterker door gecontroleerde belasting, consequentie en herstel."
        }
    }

    public var layers: [TrainingModelLayer] {
        TrainingModelLayer.allCases.filter { layer in
            layer.outcomes.contains(self)
        }
    }

    public var pillars: [TrainingModelPillar] {
        TrainingModelPillar.allCases.filter { pillar in
            pillar.outcomes.contains(self)
        }
    }
}

public extension TrainingModelLayer {
    var outcomes: [TrainingModelOutcome] {
        unique_training_model_outcomes(
            pillars.flatMap(\.outcomes)
        )
    }
}

public extension TrainingModelLayerProfile {
    var outcomes: [TrainingModelOutcome] {
        layer.outcomes
    }
}

public extension TrainingModelPillar {
    var outcomes: [TrainingModelOutcome] {
        switch self {
        case .restriction:
            return [
                .stability,
                .safety,
            ]

        case .motivation:
            return [
                .attraction,
            ]

        case .engagement:
            return [
                .bonding,
            ]

        case .communication:
            return [
                .predictability,
                .routine,
            ]

        case .pressure:
            return [
                .resilience,
                .recovery,
            ]

        case .frames:
            return [
                .ability,
                .agency
            ]

        case .association:
            return [
                .valence,
                .optimism,
                .safety,
            ]

        case .signaling:
            return [
                .predictability,
                .routine
            ]

        case .difficulty:
            return [
                .competence,
                .resilience,
                .agency
            ]

        case .reliability:
            return [
                .freedom,
                .stability,
                .antifragility,
            ]
        }
    }
}

public extension TrainingModelPillarProfile {
    var outcomes: [TrainingModelOutcome] {
        pillar.outcomes
    }
}

private func unique_training_model_outcomes(
    _ outcomes: [TrainingModelOutcome]
) -> [TrainingModelOutcome] {
    var seen = Set<TrainingModelOutcome>()

    return outcomes.filter { outcome in
        seen.insert(outcome).inserted
    }
}
