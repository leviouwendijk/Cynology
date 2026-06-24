import Foundation
import CSS

@resultBuilder
public enum ProgramCSSBlockBuilder {
    public static func buildBlock(
        _ parts: [CSSBlock]...
    ) -> [CSSBlock] {
        parts.flatMap { $0 }
    }

    public static func buildExpression(
        _ rule: CSSRule
    ) -> [CSSBlock] {
        [
            .rule(rule)
        ]
    }

    public static func buildExpression(
        _ media: CSSMedia
    ) -> [CSSBlock] {
        [
            .media(media)
        ]
    }

    public static func buildExpression(
        _ keyframes: CSSKeyframes
    ) -> [CSSBlock] {
        [
            .keyframes(keyframes)
        ]
    }

    public static func buildExpression(
        _ blocks: [CSSBlock]
    ) -> [CSSBlock] {
        blocks
    }

    public static func buildOptional(
        _ part: [CSSBlock]?
    ) -> [CSSBlock] {
        part ?? []
    }

    public static func buildEither(
        first: [CSSBlock]
    ) -> [CSSBlock] {
        first
    }

    public static func buildEither(
        second: [CSSBlock]
    ) -> [CSSBlock] {
        second
    }

    public static func buildArray(
        _ parts: [[CSSBlock]]
    ) -> [CSSBlock] {
        parts.flatMap { $0 }
    }
}

public enum ProgramHTMLStyles {
    @ProgramCSSBlockBuilder
    public static func blocks() -> [CSSBlock] {
        CSS.rule("*", CSS.decl("box-sizing", "border-box"))

        CSS.rule(
            "body",
            CSS.decl("margin", "0"),
            CSS.decl("color", "#16181d"),
            CSS.decl("font-family", "-apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, Helvetica, Arial, sans-serif"),
            CSS.decl("font-size", "13px"),
            CSS.decl("line-height", "1.35")
        )

        CSS.rule(
            ".ph-sheet",
            CSS.decl("max-width", "900px"),
            CSS.decl("margin", "24px auto"),
            CSS.decl("padding", "22px")
        )

        // MARK: - Header

        CSS.rule(".ph-doc-header", CSS.decl("margin-bottom", "16px"))

        CSS.rule(
            ".ph-header-top",
            CSS.decl("display", "flex"),
            CSS.decl("justify-content", "space-between"),
            CSS.decl("align-items", "flex-start")
        )

        CSS.rule(
            ".ph-brand-name",
            CSS.decl("font-size", "14px"),
            CSS.decl("font-weight", "700"),
            CSS.decl("letter-spacing", "1.2px")
        )

        CSS.rule(
            ".ph-company-info",
            CSS.decl("font-size", "12px"),
            CSS.decl("font-weight", "200"),
            CSS.decl("color", "gray"),
            CSS.decl("text-align", "right"),
            CSS.decl("line-height", "1.5"),
            CSS.decl("margin", "0")
        )

        CSS.rule(".ph-company-info p", CSS.decl("margin", "0"))

        CSS.rule(
            ".ph-header-divider",
            CSS.decl("border", "0"),
            CSS.decl("border-top", "0.5px solid black"),
            CSS.decl("margin", "10px 0 12px")
        )

        CSS.rule(
            ".ph-header-bottom",
            CSS.decl("display", "flex"),
            CSS.decl("justify-content", "space-between"),
            CSS.decl("align-items", "flex-start"),
            CSS.decl("gap", "24px")
        )

        CSS.rule(
            ".ph-subtitle-main",
            CSS.decl("letter-spacing", "1.0px"),
            CSS.decl("font-size", "13px"),
            CSS.decl("font-weight", "300"),
            CSS.decl("white-space", "nowrap")
        )

        CSS.rule(
            ".ph-doc-title-inline",
            CSS.decl("font-size", "13px"),
            CSS.decl("font-weight", "400"),
            CSS.decl("opacity", "0.9"),
            CSS.decl("text-align", "right")
        )

        // MARK: - Overview / DocData

        CSS.rule(
            ".ph-overview",
            CSS.decl("padding", "12px 14px"),
            CSS.decl("background", "#fbfbfd"),
            CSS.decl("border", "1px solid #ececf2"),
            CSS.decl("border-radius", "12px"),
            CSS.decl("margin", "0 0 14px")
        )

        CSS.rule(
            ".ph-docdata-box",
            CSS.decl("border", "0"),
            CSS.decl("border-radius", "0"),
            CSS.decl("background", "transparent"),
            CSS.decl("padding", "0")
        )

        CSS.rule(
            ".ph-docdata-line",
            CSS.decl("display", "flex"),
            CSS.decl("justify-content", "space-between"),
            CSS.decl("align-items", "center"),
            CSS.decl("margin", "4px 0")
        )

        CSS.rule(
            ".ph-docdata-package-line .ph-docdata-label",
            CSS.decl("min-width", "140px"),
            CSS.decl("flex-shrink", "0"),
            CSS.decl("white-space", "nowrap")
        )

        CSS.rule(
            ".ph-docdata-package-line .ph-docdata-value",
            CSS.decl("white-space", "nowrap"),
            CSS.decl("overflow", "hidden"),
            CSS.decl("text-overflow", "ellipsis")
        )

        CSS.rule(
            ".ph-docdata-label",
            CSS.decl("font-weight", "500"),
            CSS.decl("flex-shrink", "0")
        )

        CSS.rule(
            ".ph-docdata-value",
            CSS.decl("font-weight", "300"),
            CSS.decl("word-break", "break-word")
        )

        // MARK: - Package

        CSS.rule(
            ".ph-package",
            CSS.decl("margin", "28px 0 22px")
        )

        CSS.rule(
            ".ph-package:first-of-type",
            CSS.decl("margin-top", "18px")
        )

        CSS.rule(
            ".ph-package-title",
            CSS.decl("margin", "0 0 10px"),
            CSS.decl("font-size", "13px"),
            CSS.decl("font-weight", "750"),
            CSS.decl("letter-spacing", "0.6px"),
            CSS.decl("text-transform", "uppercase"),
            CSS.decl("color", "#111827"),
            CSS.decl("padding-bottom", "8px"),
            CSS.decl("border-bottom", "1px solid #ececf2")
        )

        CSS.rule(
            ".ph-package-body",
            CSS.decl("margin-top", "10px"),
            CSS.decl("border-left", "3px solid #ececf2"),
            CSS.decl("padding-left", "14px"),
            CSS.decl("-webkit-box-decoration-break", "clone"),
            CSS.decl("box-decoration-break", "clone")
        )

        CSS.rule(
            ".ph-package-body .ph-box",
            CSS.decl("margin", "0 0 14px")
        )

        CSS.rule(
            ".ph-package-body .ph-box:last-child",
            CSS.decl("margin-bottom", "0")
        )

        // MARK: - Eyebrows

        CSS.rule(
            ".ph-eyebrow",
            CSS.decl("font-size", "10px"),
            CSS.decl("font-weight", "600"),
            CSS.decl("letter-spacing", "1.1px"),
            CSS.decl("text-transform", "uppercase"),
            CSS.decl("color", "#6b7280"),
            CSS.decl("opacity", "0.85"),
            CSS.decl("line-height", "1.0")
        )

        CSS.rule(
            ".ph-eyebrow--package",
            CSS.decl("margin", "0 0 4px")
        )

        CSS.rule(
            ".ph-eyebrow--module",
            CSS.decl("margin", "0 0 3px")
        )

        CSS.rule(
            ".ph-eyebrow--component",
            CSS.decl("font-size", "9px"),
            CSS.decl("font-weight", "600"),
            CSS.decl("letter-spacing", "1.0px"),
            CSS.decl("opacity", "0.60"),
            CSS.decl("margin", "0 0 2px")
        )

        // MARK: - Box (module card)

        CSS.rule(
            ".ph-box",
            CSS.decl("border", "1px solid #ececf2"),
            CSS.decl("border-radius", "12px"),
            CSS.decl("background", "#ffffff"),
            CSS.decl("overflow", "hidden"),
            CSS.decl("margin", "0 0 14px")
        )

        CSS.rule(
            ".ph-box__head",
            CSS.decl("padding", "12px 14px"),
            CSS.decl("border-bottom", "1px solid #ececf2")
        )

        CSS.rule(
            ".ph-box__title",
            CSS.decl("font-weight", "700"),
            CSS.decl("font-size", "14px"),
            CSS.decl("margin", "0")
        )

        CSS.rule(".ph-box__body", CSS.decl("padding", "12px 14px"))

        // MARK: - Component list

        CSS.rule(
            ".ph-component-list",
            CSS.decl("display", "flex"),
            CSS.decl("flex-direction", "column")
        )

        CSS.rule(
            ".ph-component-row",
            CSS.decl("padding", "10px 0"),
            CSS.decl("border-top", "1px solid #ececf2")
        )

        CSS.rule(
            ".ph-component-row:first-child",
            CSS.decl("border-top", "0")
        )

        CSS.rule(
            ".ph-component-main",
            CSS.decl("display", "flex"),
            CSS.decl("flex-direction", "column"),
            CSS.decl("gap", "6px")
        )

        CSS.rule(
            ".ph-component-chips",
            CSS.decl("display", "flex"),
            CSS.decl("flex-wrap", "wrap"),
            CSS.decl("gap", "6px"),
            CSS.decl("align-items", "center")
        )

        CSS.rule(
            ".ph-chip",
            CSS.decl("display", "inline-flex"),
            CSS.decl("align-items", "center"),
            CSS.decl("justify-content", "center"),
            CSS.decl("flex", "0 0 auto"),
            CSS.decl("padding", "2px 7px"),
            CSS.decl("border-radius", "999px"),
            CSS.decl("border", "0"),
            CSS.decl("background", "#fbfbfd"),
            CSS.decl("box-shadow", "inset 0 0 0 1px #ececf2"),
            CSS.decl("outline", "0"),
            CSS.decl("filter", "none"),
            CSS.decl("font-size", "11px"),
            CSS.decl("line-height", "1.1"),
            CSS.decl("color", "#374151"),
            CSS.decl("white-space", "nowrap")
        )

        CSS.rule(
            ".ph-component-title",
            CSS.decl("font-size", "13px"),
            CSS.decl("font-weight", "400"),
            CSS.decl("color", "#16181d")
        )

        CSS.rule(
            ".ph-component-subtitle",
            CSS.decl("margin-top", "4px"),
            CSS.decl("font-size", "12.5px"),
            CSS.decl("font-weight", "400"),
            CSS.decl("color", "#374151")
        )

        // MARK: - Exchangeable box

        CSS.rule(
            ".ph-exchangeable-box",
            CSS.decl("margin-top", "12px"),
            CSS.decl("padding", "10px 12px"),
            CSS.decl("border", "1px solid #ececf2"),
            CSS.decl("border-radius", "10px"),
            CSS.decl("background", "#f8fafc")
        )

        CSS.rule(
            ".ph-exchangeable-title",
            CSS.decl("margin", "0 0 6px"),
            CSS.decl("font-weight", "700"),
            CSS.decl("font-size", "12px"),
            CSS.decl("color", "#374151")
        )

        CSS.rule(
            ".ph-component-list--exchangeable .ph-component-row",
            CSS.decl("border-top", "1px solid #ececf2"),
            CSS.decl("padding", "7px 0")
        )

        CSS.rule(
            ".ph-component-list--exchangeable .ph-component-row:first-child",
            CSS.decl("border-top", "0"),
            CSS.decl("padding-top", "0")
        )

        CSS.rule(
            ".ph-component-row--exchangeable",
            CSS.decl("border-top", "1px solid #ececf2")
        )

        // MARK: - Program banner

        CSS.rule(
            ".ph-program-banner",
            CSS.decl("margin", "0 0 16px")
        )

        CSS.rule(
            ".ph-program-banner__inner",
            CSS.decl("padding", "12px 14px"),
            CSS.decl("border-radius", "12px"),
            CSS.decl("background", "#fffbeb"),
            CSS.decl("border", "1px solid #fde68a"),
            CSS.decl("border-left-width", "4px"),
            CSS.decl("border-left-style", "solid"),
            CSS.decl("border-left-color", "#f59e0b")
        )

        CSS.rule(
            ".ph-program-banner__top",
            CSS.decl("display", "flex"),
            CSS.decl("justify-content", "space-between"),
            CSS.decl("align-items", "center"),
            CSS.decl("gap", "14px"),
            CSS.decl("margin", "0 0 8px")
        )

        CSS.rule(
            ".ph-program-banner__title",
            CSS.decl("font-weight", "800"),
            CSS.decl("font-size", "12.5px"),
            CSS.decl("letter-spacing", "0.3px"),
            CSS.decl("color", "#92400e")
        )

        CSS.rule(
            ".ph-program-banner__body",
            CSS.decl("margin", "0"),
            CSS.decl("font-size", "12.5px"),
            CSS.decl("color", "#78350f"),
            CSS.decl("line-height", "1.45")
        )

        CSS.rule(
            ".ph-program-banner__dots",
            CSS.decl("display", "inline-flex"),
            CSS.decl("align-items", "center"),
            CSS.decl("flex", "0 0 auto"),
            CSS.decl("padding", "4px 8px"),
            CSS.decl("border-radius", "999px"),
            CSS.decl("background", "rgba(255, 255, 255, 0.7)"),
            CSS.decl("box-shadow", "inset 0 0 0 1px rgba(0,0,0,0.06)")
        )

        CSS.rule(
            ".ph-program-banner__dots-value",
            CSS.decl("font-size", "12px"),
            CSS.decl("font-weight", "900"),
            CSS.decl("letter-spacing", "1.4px"),
            CSS.decl("color", "#92400e"),
            CSS.decl("white-space", "nowrap")
        )

        // MARK: - Print

        CSS.media(
            "print",
            CSS.rule(".ph-sheet", CSS.decl("margin", "0")),
            CSS.rule(".ph-sheet", CSS.decl("padding", "0"))
        )

        CSS.media(
            "print",
            CSS.rule(
                ".ph-exchangeable-box",
                CSS.decl("break-inside", "auto"),
                CSS.decl("page-break-inside", "auto")
            ),
            CSS.rule(
                ".ph-exchangeable-title",
                CSS.decl("break-after", "avoid"),
                CSS.decl("page-break-after", "avoid")
            ),
            CSS.rule(
                ".ph-component-list--exchangeable .ph-component-row",
                CSS.decl("break-inside", "avoid"),
                CSS.decl("page-break-inside", "avoid")
            )
        )

        CSS.media(
            "print",
            CSS.rule(
                ".ph-program-banner__inner",
                CSS.decl("break-inside", "avoid"),
                CSS.decl("page-break-inside", "avoid")
            )
        )

        CSS.media(
            "print",

            CSS.rule(
                ".ph-component-main",
                CSS.decl("display", "block")
            ),
            CSS.rule(
                ".ph-component-main > * + *",
                CSS.decl("margin-top", "6px")
            ),

            CSS.rule(
                ".ph-component-list",
                CSS.decl("display", "block")
            ),
            CSS.rule(
                ".ph-component-list--exchangeable",
                CSS.decl("display", "block")
            ),
            CSS.rule(
                ".ph-exchangeable-box",
                CSS.decl("display", "block")
            ),

            CSS.rule(
                ".ph-component-chips",
                CSS.decl("display", "block")
            ),
            CSS.rule(
                ".ph-chip",
                CSS.decl("display", "inline-block"),
                CSS.decl("margin", "0 6px 6px 0")
            ),

            CSS.rule(
                ".ph-exchangeable-box",
                CSS.decl("break-inside", "auto"),
                CSS.decl("page-break-inside", "auto")
            ),
            CSS.rule(
                ".ph-exchangeable-title",
                CSS.decl("break-after", "avoid"),
                CSS.decl("page-break-after", "avoid")
            ),
            CSS.rule(
                ".ph-component-list--exchangeable .ph-component-row",
                CSS.decl("break-inside", "avoid"),
                CSS.decl("page-break-inside", "avoid")
            ),

            CSS.rule(
                ".ph-docdata-line",
                CSS.decl("display", "grid"),
                CSS.decl("grid-template-columns", "140px 1fr"),
                CSS.decl("column-gap", "10px"),
                CSS.decl("align-items", "start")
            ),
            CSS.rule(
                ".ph-docdata-label",
                CSS.decl("white-space", "nowrap")
            ),
            CSS.rule(
                ".ph-docdata-value",
                CSS.decl("min-width", "0"),
                CSS.decl("word-break", "break-word")
            )
        )
    }
}
