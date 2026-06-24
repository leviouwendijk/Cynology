import Foundation

public enum TrainingModelLayer: String, Sendable, Codable, Hashable, CaseIterable {
    case foundations
    case shaping
    case proofing

    public var label: String {
        switch self {
        case .foundations:
            return "Fundamenten"
        case .shaping:
            return "Vorming"
        case .proofing:
            return "Beproeving"
        }
    }

    public var summary: String {
        switch self {
        case .foundations:
            return "Beginselen die training uitvoerbaar, duidelijk en motiverend maken."
        case .shaping:
            return "Vorming van gedragskaders, associaties en signaal-binding."
        case .proofing:
            return "Gedrag berekenbaar laten functioneren in verscheidene contexten, zonder expliciete hulp."
        }
    }

    public var pillars: [TrainingModelPillar] {
        TrainingModelPillar.allCases.filter { $0.layer == self }
    }

    public var profile: TrainingModelLayerProfile {
        .init(layer: self)
    }

    public static var profiles: [TrainingModelLayerProfile] {
        allCases.map(\.profile)
    }
}

public struct TrainingModelLayerProfile: Sendable, Codable, Hashable, Identifiable {
    public var id: String {
        layer.rawValue
    }

    public let layer: TrainingModelLayer

    public var label: String {
        layer.label
    }

    public var pillars: [TrainingModelPillarProfile] {
        layer.pillars.map(\.profile)
    }

    public init(layer: TrainingModelLayer) {
        self.layer = layer
    }
}
