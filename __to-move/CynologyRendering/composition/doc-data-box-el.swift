import Foundation
import HTML
import CSS
import Cynology
import CynologyFormulas

/// Data for the overview box at the top of a rendered program document.
public struct DocDataBox: Sendable {
    public var dateLabel: String
    public var clientName: String
    public var dogName: String
    public var estimatedSessions: (low: Int, high: Int)?
    public var includedPackages: [String]?
    public var priceLabel: String?
    public var estimateBand: ProgramTally.EstimateBand?

    public init(
        dateLabel: String,
        clientName: String,
        dogName: String,
        estimatedSessions: (low: Int, high: Int)? = nil,
        includedPackages: [String]? = nil,
        priceLabel: String? = nil,
        estimateBand: ProgramTally.EstimateBand? = nil
    ) {
        self.dateLabel = dateLabel
        self.clientName = clientName
        self.dogName = dogName
        self.estimatedSessions = estimatedSessions
        self.includedPackages = includedPackages
        self.priceLabel = priceLabel
        self.estimateBand = estimateBand
    }

    public func html() -> HTMLFragment {
        var contentNodes: [any HTMLNode] = [
            docDataLine(label: "Datum:", value: dateLabel),
            docDataLine(label: "Client:", value: clientName),
            docDataLine(label: "Hond:", value: dogName),
        ]

        let sessionsLabel: String? = estimatedSessions.map { sessions in
            "\(sessions.low)–\(sessions.high)"
        }

        if let sessionsLabel {
            contentNodes.append(
                docDataLine(label: "Sessies:", value: sessionsLabel)
            )
        }

        if let packages = includedPackages, !packages.isEmpty {
            contentNodes.append(
                docDataPackageLine(label: "Pakketsamenstelling:", value: packages.first!)
            )
            for pkg in packages.dropFirst() {
                contentNodes.append(
                    docDataPackageLine(label: "", value: pkg)
                )
            }
        }

        if let priceLabel, !priceLabel.isEmpty {
            contentNodes.append(
                docDataLine(label: "Prijs:", value: priceLabel)
            )
        }

        return [
            HTML.div(["class": "ph-docdata-box"]) {
                contentNodes
            }
        ]
    }

    private func docDataLine(label: String, value: String) -> any HTMLNode {
        HTML.div(["class": "ph-docdata-line"]) {
            HTML.span(["class": "ph-docdata-label"]) { HTML.text(label) }
            HTML.span(["class": "ph-docdata-value"]) { HTML.text(value) }
        }
    }

    private func docDataPackageLine(label: String, value: String) -> any HTMLNode {
        HTML.div(["class": "ph-docdata-line ph-docdata-package-line"]) {
            HTML.span(["class": "ph-docdata-label"]) { HTML.text(label) }
            HTML.span(["class": "ph-docdata-value"]) { HTML.text(value) }
        }
    }
}
