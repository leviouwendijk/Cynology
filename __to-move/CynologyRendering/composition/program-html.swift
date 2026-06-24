import Foundation
import HTML
import CSS
import Cynology
import CynologyFormulas

public enum ProgramHTML {
    public static func build(
        programs: [TrainingProgram],
        title: String = "Programma",
        overview: DocDataBox? = nil
    ) -> HTMLDocument {
        let blocks = ProgramHTMLStyles.blocks()

        let sheet = CSSStyleSheet(
            rules: blocks.compactMap {
                if case .rule(let rule) = $0 { return rule }
                return nil
            },
            media: blocks.compactMap {
                if case .media(let media) = $0 { return media }
                return nil
            },
            keyframes: blocks.compactMap {
                if case .keyframes(let keyframes) = $0 { return keyframes }
                return nil
            }
        )
        return HTML.document {
            HTML.html(["lang": "nl"]) {
                HTML.head {
                    HTML.meta(.charset())
                    HTML.meta(.viewport())
                    HTML.title(title)
                    HTML.style(sheet.render())
                }

                HTML.body {
                    HTML.div(["class": "ph-sheet"]) {
                        renderHeader(title: title)

                        if let overview {
                            HTML.section(["class": "ph-overview"]) {
                                overview.html()
                            }

                            HTML.section(["class": "ph-program-banner"]) {
                                renderProgramBanner(band: overview.estimateBand)
                            }
                        }

                        for program in programs where program.include {
                            renderProgram(program)
                        }
                    }
                }
            }
        }
    }

    // MARK: - Header

    private static func renderHeader(title: String) -> any HTMLNode {
        HTML.div(["class": "ph-doc-header"]) {
            HTML.div(["class": "ph-header-top"]) {
                HTML.div(["class": "ph-brand"]) {
                    HTML.div(["class": "ph-brand-name"]) { HTML.text("HONDENMEESTERS") }
                }

                HTML.div(["class": "ph-company-info"]) {
                    HTML.p {
                        HTML.text("Hondenmeesters V.O.F.")
                    }
                }
            }

            HTML.hr(["class": "ph-header-divider"])

            HTML.div(["class": "ph-header-bottom"]) {
                HTML.div(["class": "ph-header-left"]) {
                    HTML.div(["class": "ph-subtitle-main"]) {
                        HTML.text("Programma-overzicht")
                    }
                }

                HTML.div(["class": "ph-header-right"]) {
                    HTML.div(["class": "ph-doc-title-inline"]) {
                        HTML.text(title)
                    }
                }
            }
        }
    }

    private static func renderProgramBanner(band: ProgramTally.EstimateBand?) -> any HTMLNode {
        let dots: String? = band.map { b in
            b.dotString(filled: b.dot_spread_count)
        }

        return HTML.div(["class": "ph-program-banner__inner"]) {
            HTML.div(["class": "ph-program-banner__top"]) {
                HTML.div(["class": "ph-program-banner__title"]) {
                    HTML.text("Over dit programma")
                }

                if let dots {
                    HTML.div(["class": "ph-program-banner__dots"]) {
                        HTML.span(["class": "ph-program-banner__dots-value"]) {
                            HTML.text(dots)
                        }
                    }
                }
            }

            HTML.p(["class": "ph-program-banner__body"]) {
                HTML.text(
                    "Dit programma-overzicht is een richtlijn en geeft " +
                    "richting aan de opbouw. " +
                    "In de praktijk kunnen onderdelen, volgorde en " +
                    "tijdsbesteding wijzigen op basis van voortgang en behoeften. "
                )
            }
        }
    }

    // MARK: - Program → Package visual

    private static func renderProgram(_ program: TrainingProgram) -> HTMLFragment {
        return [
            HTML.section(["class": "ph-package"]) {

                HTML.div(["class": "ph-eyebrow ph-eyebrow--package"]) {
                    HTML.text("PAKKET")
                }

                HTML.div(["class": "ph-package-title"]) {
                    HTML.text(program.title)
                }

                HTML.div(["class": "ph-package-body"]) {
                    for section in program.sections {
                        renderSection(section)
                    }
                }
            }
        ]
    }

    // MARK: - Section → Module visual

    private static func renderSection(_ section: ProgramSection) -> HTMLFragment {
        guard section.hasVisibleContent else { return [] }

        return [
            HTML.div(["class": "ph-box ph-box--module"]) {
                HTML.div(["class": "ph-box__head"]) {
                    HTML.div(["class": "ph-box__head-text"]) {
                        HTML.div(["class": "ph-eyebrow ph-eyebrow--module"]) {
                            HTML.text("MODULE")
                        }

                        HTML.div(["class": "ph-box__title"]) { HTML.text(section.title) }
                    }
                }

                HTML.div(["class": "ph-box__body"]) {
                    renderPlans(section.plans)
                }
            }
        ]
    }

    // MARK: - Plans → Entry visual

    private static func renderPlans(_ plans: [FramePlan]) -> HTMLFragment {
        let elem = plans.elementary
        let exch = plans.exchangeable

        var nodes: HTMLFragment = []

        nodes.append(
            HTML.div(["class": "ph-component-list"]) {
                for plan in elem {
                    renderPlan(plan, kind: .included)
                }
            }
        )

        if !exch.isEmpty {
            nodes.append(
                HTML.div(["class": "ph-exchangeable-box"]) {
                    HTML.div(["class": "ph-exchangeable-title"]) {
                        HTML.text("Mogelijke aanvullingen of inwisselingen")
                    }

                    HTML.div(["class": "ph-component-list ph-component-list--exchangeable"]) {
                        for plan in exch {
                            renderPlan(plan, kind: .exchangeable)
                        }
                    }
                }
            )
        }

        return nodes
    }

    private enum EntryKind {
        case included
        case exchangeable
    }

    private static func renderPlan(
        _ plan: FramePlan,
        kind: EntryKind
    ) -> any HTMLNode {
        let titleText = plan.tagline

        let rowClass = (kind == .exchangeable)
            ? "ph-component-row ph-component-row--exchangeable"
            : "ph-component-row"

        return HTML.div(["class": rowClass]) {
            HTML.div(["class": "ph-component-main"]) {
                HTML.div(["class": "ph-eyebrow ph-eyebrow--component"]) {
                    HTML.text("LESONDERDEEL")
                }

                HTML.div(["class": "ph-component-title"]) {
                    HTML.text(titleText)
                }
            }

            if let notes = plan.notes, !notes.isEmpty {
                HTML.div(["class": "ph-component-subtitle"]) {
                    HTML.text(notes)
                }
            }
        }
    }
}
