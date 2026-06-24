import SwiftUI
import Cynology
import CynologyFormulas

@MainActor
public final class ProgramEditorViewModel: ObservableObject {
    @Published public var programs: [TrainingProgram]
    @Published public var selectedProgramID: TrainingProgram.ID?

    @Published public var estimateBand: ProgramTally.EstimateBand = ProgramDefaults.estimateBand
    @Published public var tallyPlacements: Set<FramePlacement> = ProgramDefaults.tallyPlacements

    @Published public var sessionRate: Double = ProgramDefaults.sessionRate
    @Published public var homeSessions: Int = ProgramDefaults.homeSessions
    @Published public var travelDistanceKm: Double = ProgramDefaults.travelDistanceKm
    @Published public var travelRatePerKm: Double = ProgramDefaults.travelRatePerKm

    @Published public var includePriceInProgram: Bool = ProgramDefaults.includePriceInProgram

    @Published public var pricingStrategy: PricingStrategy = ProgramDefaults.pricingStrategy
    @Published public var midpointMarginPercent: Double = ProgramDefaults.midpointMarginPercent
    @Published public var weightedHighWeightPercent: Double = ProgramDefaults.weightedHighWeightPercent
    @Published public var weightedMarginPercent: Double = ProgramDefaults.weightedMarginPercent

    @Published public var priceRoundingStep: Double = ProgramDefaults.priceRoundingStep

    // MARK: - Euro formatting

    private static let euroFormatter: NumberFormatter = {
        let f = NumberFormatter()
        f.numberStyle = .currency
        f.locale = Locale(identifier: "en_US_POSIX")
        f.currencyCode = "EUR"
        f.currencySymbol = "€"
        f.usesGroupingSeparator = true
        f.groupingSeparator = ","
        f.decimalSeparator = "."
        f.minimumFractionDigits = 2
        f.maximumFractionDigits = 2
        return f
    }()

    private static func formatEUR(_ value: Double) -> String {
        euroFormatter.string(from: NSNumber(value: value)) ?? "€ \(String(format: "%.2f", value))"
    }

    // MARK: - Init

    public init(programs: [TrainingProgram] = ProgramDefaults.defaultProgram()) {
        self.programs = programs
        self.selectedProgramID = programs.first?.id
    }

    // MARK: - Selection

    public var selectedProgramIndex: Int? {
        guard let id = selectedProgramID else { return nil }
        return programs.firstIndex(where: { $0.id == id })
    }

    // MARK: - Program management

    public func addTemplate(_ template: TrainingProgram) {
        let instance = template.instantiate()
        programs.append(instance)
        selectedProgramID = instance.id
    }

    public func deleteProgram(at offsets: IndexSet) {
        programs.remove(atOffsets: offsets)
        if selectedProgramIndex == nil {
            selectedProgramID = programs.first?.id
        }
    }

    public func moveProgram(from: IndexSet, to: Int) {
        programs.move(fromOffsets: from, toOffset: to)
    }

    public func addCustomProgram() {
        let p = TrainingProgram(
            title: "Nieuw pakket",
            sections: [ProgramSection(title: "Nieuwe module", plans: [])]
        )
        programs.append(p)
        selectedProgramID = p.id
    }

    public func restoreDefaults() {
        programs = ProgramDefaults.defaultProgram()
        selectedProgramID = programs.first?.id

        estimateBand = ProgramDefaults.estimateBand
        tallyPlacements = ProgramDefaults.tallyPlacements

        sessionRate = ProgramDefaults.sessionRate
        homeSessions = ProgramDefaults.homeSessions
        travelDistanceKm = ProgramDefaults.travelDistanceKm
        travelRatePerKm = ProgramDefaults.travelRatePerKm

        includePriceInProgram = ProgramDefaults.includePriceInProgram

        pricingStrategy = ProgramDefaults.pricingStrategy
        midpointMarginPercent = ProgramDefaults.midpointMarginPercent
        weightedHighWeightPercent = ProgramDefaults.weightedHighWeightPercent
        weightedMarginPercent = ProgramDefaults.weightedMarginPercent

        priceRoundingStep = ProgramDefaults.priceRoundingStep
    }

    // MARK: - Tally

    public var sessionDuration: Int { 60 }

    public var totalSessions: SessionTallyRange {
        ProgramTally.sessions(
            programs: programs,
            sessionDuration: sessionDuration
        )
    }

    public var totalSessionsLabel: String {
        totalSessions.label
    }

    // MARK: - Priced sessions

    private var includedPrograms: [TrainingProgram] {
        programs.filter(\.include)
    }

    public var pricedSessionRange: SessionTallyRange {
        ProgramTally.sessions(
            programs: includedPrograms,
            sessionDuration: sessionDuration,
            band: estimateBand,
            placements: tallyPlacements
        )
    }

    public var pricedSessionRangeRounded: (low: Int, high: Int) {
        pricedSessionRange.rounded
    }

    private var pricerInput: ProgramPricer.Input {
        let r = pricedSessionRange
        return .init(
            bandLow: max(0, r.low),
            bandHigh: max(0, r.high),
            pricingStrategy: pricingStrategy,
            midpointMarginPercent: midpointMarginPercent,
            weightedHighWeightPercent: weightedHighWeightPercent,
            weightedMarginPercent: weightedMarginPercent,
            sessionRate: sessionRate,
            homeSessions: homeSessions,
            travelDistanceKm: travelDistanceKm,
            travelRatePerKm: travelRatePerKm
        )
    }

    private var pricerResult: ProgramPricer.Result {
        ProgramPricer.compute(pricerInput)
    }

    public var estimatedSessionCost: Double { pricerResult.sessionCostPrecise }
    public var estimatedTravelCost: Double { pricerResult.travelCost }
    public var estimatedSubtotalCost: Double { pricerResult.subtotal }
    public var pricingMarginPercent: Double { pricerResult.marginPercent }
    public var pricingMarginFraction: Double { pricerResult.marginFraction }
    public var estimatedTotalCost: Double { pricerResult.totalCost }

    public var estimatedTotalCostLabel: String {
        Self.formatEUR(estimatedTotalCost)
    }

    public var estimatedTotalCostRoundedLine: String {
        pricerResult.roundedTotalLine(toNearest: priceRoundingStep, formatMoney: formatMoney)
    }

    // MARK: - Debug

    public typealias PricingDebug = ProgramPricer.Result

    private func makeDebug(strategy: PricingStrategy) -> PricingDebug {
        let r = pricedSessionRange
        let input = ProgramPricer.Input(
            bandLow: max(0, r.low),
            bandHigh: max(0, r.high),
            pricingStrategy: strategy,
            midpointMarginPercent: midpointMarginPercent,
            weightedHighWeightPercent: weightedHighWeightPercent,
            weightedMarginPercent: weightedMarginPercent,
            sessionRate: sessionRate,
            homeSessions: homeSessions,
            travelDistanceKm: travelDistanceKm,
            travelRatePerKm: travelRatePerKm
        )
        return ProgramPricer.compute(input)
    }

    public var pricingDebugWeighted: PricingDebug {
        makeDebug(strategy: .weighted_average)
    }

    public var pricingDebugMidpoint: PricingDebug {
        makeDebug(strategy: .midpoint)
    }

    public func formatMoney(_ value: Double) -> String {
        Self.formatEUR(value)
    }

    public func formatNumber2(_ value: Double) -> String {
        String(format: "%.2f", value)
    }
}
