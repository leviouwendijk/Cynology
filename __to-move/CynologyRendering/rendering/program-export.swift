import Foundation
import Interfaces
import Implementations
import Cynology
import CynologyFormulas

public enum ProgramExport {
    public struct Request: Sendable {
        public var output: String
        public var title: String
        public var filename: String
        public var margins: Double
        public var debugHTML: Bool

        public var estimateBand: ProgramTally.EstimateBand
        public var placements: Set<FramePlacement>
        public var sessionDuration: Int

        public var sessionRate: Double
        public var homeSessions: Int
        public var travelDistanceKm: Double
        public var travelRatePerKm: Double

        public var includePriceInProgram: Bool

        public var pricingStrategy: PricingStrategy
        public var midpointMarginPercent: Double
        public var weightedHighWeightPercent: Double
        public var weightedMarginPercent: Double

        public var clientName: String
        public var dogName: String

        public init(
            output: String = "",
            title: String = ProgramDefaults.title,
            filename: String = ProgramDefaults.filename,
            margins: Double = ProgramDefaults.margins,
            debugHTML: Bool = false,
            estimateBand: ProgramTally.EstimateBand = ProgramDefaults.estimateBand,
            placements: Set<FramePlacement> = ProgramDefaults.tallyPlacements,
            sessionDuration: Int = ProgramDefaults.sessionDuration,
            sessionRate: Double = ProgramDefaults.sessionRate,
            homeSessions: Int = ProgramDefaults.homeSessions,
            travelDistanceKm: Double = ProgramDefaults.travelDistanceKm,
            travelRatePerKm: Double = ProgramDefaults.travelRatePerKm,
            includePriceInProgram: Bool = ProgramDefaults.includePriceInProgram,
            pricingStrategy: PricingStrategy = ProgramDefaults.pricingStrategy,
            midpointMarginPercent: Double = ProgramDefaults.midpointMarginPercent,
            weightedHighWeightPercent: Double = ProgramDefaults.weightedHighWeightPercent,
            weightedMarginPercent: Double = ProgramDefaults.weightedMarginPercent,
            clientName: String = ProgramDefaults.clientNamePlaceholder,
            dogName: String = ProgramDefaults.dogNamePlaceholder
        ) {
            self.output = output
            self.title = title
            self.filename = filename
            self.margins = margins
            self.debugHTML = debugHTML
            self.estimateBand = estimateBand
            self.placements = placements
            self.sessionDuration = sessionDuration
            self.sessionRate = sessionRate
            self.homeSessions = homeSessions
            self.travelDistanceKm = travelDistanceKm
            self.travelRatePerKm = travelRatePerKm
            self.includePriceInProgram = includePriceInProgram
            self.pricingStrategy = pricingStrategy
            self.midpointMarginPercent = midpointMarginPercent
            self.weightedHighWeightPercent = weightedHighWeightPercent
            self.weightedMarginPercent = weightedMarginPercent
            self.clientName = clientName
            self.dogName = dogName
        }
    }

    public static func export(
        programs: [TrainingProgram],
        request: Request = .init()
    ) throws -> URL {
        let included = programs.filter(\.include)

        let overview = makeOverview(programs: included, request: request)

        let html = ProgramHTML.build(
            programs: included,
            title: request.title,
            overview: overview
        ).render()

        let dest = try resolveDestination(request: request)

        try FileManager.default.createDirectory(
            at: dest.deletingLastPathComponent(),
            withIntermediateDirectories: true
        )

        if request.debugHTML {
            let debugURL = dest.deletingPathExtension().appendingPathExtension("debug.html")
            try? html.write(to: debugURL, atomically: true, encoding: .utf8)
        }

        let cssMargins = CSSMargins(request.margins)
        let css = CSSPageSetting(margins: cssMargins)
        try html.weasyPDF(css: css, destination: dest.path)

        return dest
    }

    // MARK: - Overview

    private static let euroFormatter: NumberFormatter = {
        let f = NumberFormatter()
        f.numberStyle = .currency
        f.locale = Locale(identifier: "nl_NL")
        f.currencyCode = "EUR"
        return f
    }()

    private static func formatEUR(_ value: Double) -> String {
        euroFormatter.string(from: NSNumber(value: value)) ?? "€ \(String(format: "%.2f", value))"
    }

    private static func makeOverview(
        programs: [TrainingProgram],
        request: Request
    ) -> DocDataBox {
        let dateLabel: String = {
            let f = DateFormatter()
            f.locale = Locale(identifier: "nl_NL")
            f.dateFormat = "d MMMM yyyy"
            return f.string(from: Date())
        }()

        let sessions = ProgramTally.sessions(
            programs: programs,
            sessionDuration: request.sessionDuration,
            band: request.estimateBand,
            placements: request.placements
        )

        let estimatedSessions: (low: Int, high: Int)? = {
            let r = sessions.rounded
            if r.low == 0 && r.high == 0 { return nil }
            return r
        }()

        let priced = ProgramPricer.compute(
            .init(
                bandLow: Swift.max(0, sessions.low),
                bandHigh: Swift.max(0, sessions.high),
                pricingStrategy: request.pricingStrategy,
                midpointMarginPercent: request.midpointMarginPercent,
                weightedHighWeightPercent: request.weightedHighWeightPercent,
                weightedMarginPercent: request.weightedMarginPercent,
                sessionRate: request.sessionRate,
                homeSessions: request.homeSessions,
                travelDistanceKm: request.travelDistanceKm,
                travelRatePerKm: request.travelRatePerKm
            )
        )

        let priceLabel: String? = {
            guard request.includePriceInProgram else { return nil }
            if priced.sessionsCeiled == 0 && priced.homeSessions == 0 { return nil }
            return formatEUR(priced.totalCostRounded)
        }()

        return DocDataBox(
            dateLabel: dateLabel,
            clientName: request.clientName,
            dogName: request.dogName,
            estimatedSessions: estimatedSessions,
            includedPackages: programs.map(\.title),
            priceLabel: priceLabel,
            estimateBand: request.estimateBand
        )
    }

    // MARK: - Destination

    private static func resolveDestination(request: Request) throws -> URL {
        let output = normalizePath(request.output)

        if output.isEmpty || output == "/" {
            return ResponderPath.program_default.pdf_url(filename: request.filename)
        }

        var isDir: ObjCBool = false
        if FileManager.default.fileExists(atPath: output, isDirectory: &isDir) {
            if isDir.boolValue {
                return URL(fileURLWithPath: output, isDirectory: true)
                    .appendingPathComponent("\(request.filename).pdf")
                    .standardizedFileURL
            } else {
                return forcePDFExtension(URL(fileURLWithPath: output, isDirectory: false))
                    .standardizedFileURL
            }
        }

        let endsWithSlash = output.hasSuffix("/") || output.hasSuffix("\\")
        let outURL = URL(fileURLWithPath: output, isDirectory: endsWithSlash)

        if endsWithSlash {
            return outURL
                .appendingPathComponent("\(request.filename).pdf")
                .standardizedFileURL
        }

        if outURL.lastPathComponent.contains(".") {
            return forcePDFExtension(outURL).standardizedFileURL
        } else {
            return URL(fileURLWithPath: output, isDirectory: true)
                .appendingPathComponent("\(request.filename).pdf")
                .standardizedFileURL
        }
    }

    private static func forcePDFExtension(_ url: URL) -> URL {
        if url.pathExtension.lowercased() == "pdf" { return url }
        if url.pathExtension.isEmpty { return url.appendingPathExtension("pdf") }
        return url.deletingPathExtension().appendingPathExtension("pdf")
    }

    private static func normalizePath(_ path: String) -> String {
        let trimmed = path.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return "" }
        if trimmed.hasPrefix("~") { return (trimmed as NSString).expandingTildeInPath }
        return trimmed
    }
}
