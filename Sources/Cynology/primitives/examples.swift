import Foundation
// import Cynology

// ══════════════════════════════════════════════════════════════
// EXAMPLES: PerformanceSpec compositions for real cases
// ══════════════════════════════════════════════════════════════
//
// These validate the primitive types by composing them into
// the kind of specs that appear on a client quote.

// ── Recall at 10m near controlled social distraction ─────────
//
// "Appèl bij gecontroleerde statische sociale afleiding,
//  binnen 2 prompts terugkomen vanaf 10 meter,
//  in 4 van 5 herhalingen."

let recallSpec = PerformanceSpec(
    context: .init(
        distraction: .init(
            control: .controlled,
            movement: .static,
            nature: .social,
            intensity: .medium
        ),
        distance: .init(meters: 10)
    ),
    criterion: .init(
        successRate: .proportion(successes: 4, of: 5),
        latency: .init(maxSeconds: 2),
        promptBudget: .init(max: 2)
    )
)

// recallSpec.label →
//   "gecontroleerd, statisch, sociaal (middel), op 10 m.
//    Binnen 2 prompts, binnen 2 sec, 4 van 5 herhalingen."

// ── Non-reactivity near barking dog ──────────────────────────
//
// "Afdraai bij blaffende honden op 8–12 m,
//  geen escalatie, herstel binnen 5 sec,
//  3 opeenvolgend."

let nonReactivitySpec = PerformanceSpec(
    context: .init(
        distraction: .init(
            control: .uncontrolled,
            movement: .dynamic,
            nature: .trigger,
            intensity: .medium
        ),
        triggers: [.barking_dogs],
        distance: .init(minMeters: 8, maxMeters: 12)
    ),
    criterion: .init(
        successRate: .consecutive(3),
        maxEscalationEvents: 0,
        recovery: .init(maxSeconds: 5)
    )
)

// ── Busy urban environment walk ──────────────────────────────
//
// "Werkbaarheid in stadscentrum of markt,
//  15 minuten, max 3 escalaties, herstel binnen 5 sec."

let urbanWalkSpec = PerformanceSpec(
    context: .init(
        environments: [.city_center, .market],
        threshold: .init(position: .below)
    ),
    criterion: .init(
        duration: .init(minMinutes: 15),
        maxEscalationEvents: 3,
        recovery: .init(maxSeconds: 5)
    )
)

// ── Separation tolerance ─────────────────────────────────────
//
// "20 minuten alleen thuis (binnen) zonder escalatie."

let separationSpec = PerformanceSpec(
    context: .init(
        environments: [.home_indoor]
    ),
    criterion: .init(
        duration: .init(minMinutes: 20),
        maxEscalationEvents: 0
    )
)

// ── Settle at veterinary clinic ──────────────────────────────
//
// "Rustig blijven in dierenartspraktijk,
//  5 minuten, onder drempelwaarde."

let vetSettleSpec = PerformanceSpec(
    context: .init(
        environments: [.veterinary_clinic],
        threshold: .init(position: .below)
    ),
    criterion: .init(
        duration: .init(minMinutes: 5),
        maxEscalationEvents: 0
    )
)

// ── Equipment introduction (muzzle) ─────────────────────────
//
// "Muilkorf aandoen en dragen thuis,
//  2 minuten, zonder vermijding of escalatie."

let muzzleSpec = PerformanceSpec(
    context: .init(
        environments: [.home_indoor],
        triggers: [.equipment]
    ),
    criterion: .init(
        duration: .init(minMinutes: 2),
        maxEscalationEvents: 0
    )
)

// ══════════════════════════════════════════════════════════════
// These compose with BehaviorFrame on FramePlan:
//
//   FramePlan(
//       frame: .obedience(.recall),
//       spec: recallSpec,
//       concepts: [.shaping(.cue_transfer), .engagement(.engagement)],
//       problems: [.gehoorzaamheid(.recall)]
//   )
//
// The quote renderer reads frame.label + spec.label.
// The curriculum renderer reads concepts + problems.
// Same data, different projections.
// ══════════════════════════════════════════════════════════════
