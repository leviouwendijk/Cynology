import Foundation
import Cynology

public enum ProgramDefaults {
    public static func defaultProgram() -> [TrainingProgram] {
        [PrebuiltPrograms.startersvaardigheden]
    }

    // Tally
    public static let estimateBand: ProgramTally.EstimateBand = .low_medium
    public static let tallyPlacements: Set<FramePlacement> = [.elementary]
    public static let sessionDuration: Int = 60

    // Pricing
    public static let sessionRate: Double = 300
    public static let homeSessions: Int = 0
    public static let travelDistanceKm: Double = 0
    public static let travelRatePerKm: Double = 2.50

    public static let includePriceInProgram: Bool = true

    public static let pricingStrategy: PricingStrategy = .weighted_average
    public static let midpointMarginPercent: Double = 15
    public static let weightedHighWeightPercent: Double = 65
    public static let weightedMarginPercent: Double = 0

    public static let priceRoundingStep: Double = 10

    // Export
    public static let margins: Double = 35
    public static let title: String = "Pakketsamenstelling"
    public static let filename: String = "programma-overzicht"

    public static let clientNamePlaceholder: String = "—"
    public static let dogNamePlaceholder: String = "—"
}
