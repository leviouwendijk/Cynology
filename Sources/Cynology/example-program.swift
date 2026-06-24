import Foundation
// import Cynology

// ──────────────────────────────────────────────────────────────────
// EXAMPLE: Malinois × Dutch Shepherd puppy — continued program
// ──────────────────────────────────────────────────────────────────
//
// Context: puppy, 3 prior lessons (puppy management, bite inhibition).
// Owner wants to continue toward obedience + eventual service dog work
// for handicapped daughter.
//
// This shows how FramePlan composes for a real case.
// ──────────────────────────────────────────────────────────────────
public enum CynologyExample {
    public enum Program {
        static let malinois: [FramePlan] = [

            // ── Obedience frames ─────────────────────────────────────────

            FramePlan(
                frame: .obedience(.stop),
                concepts: [
                    .shaping(.luring),
                    .shaping(.cue_transfer),          // NEW: binding "stop" cue via classical prediction → operant compliance
                    .communication(.markers),
                    .pressure(.pressure_work),        // light leash pressure as -R consequence
                    .motivation(.contrast),           // high-value reward on compliance
                ],
                notes: "Teach as classical prediction first (cue → stop), then layer operant consequence (leash pressure if not complied). High-drive dog — keep reward event exciting enough to compete with forward momentum."
            ),

            FramePlan(
                frame: .obedience(.heel),
                concepts: [
                    .shaping(.luring),
                    .shaping(.lure_fading),
                    .engagement(.engagement),
                    .motivation(.movement),
                    .motivation(.contrast),
                    .pressure(.pressure_work),        // maintenance pressure in lower-engagement contexts
                    .behavior_modification(.arousal_management),  // malinois-specific: needs arousal managed during heel
                ],
                problems: [.activiteit(.trekken_lijn)],
                notes: "Start in high-engagement context (play transitions). Abstract to lower engagement with pressure integration. This dog has enough drive that engagement is easy but impulse regulation is the bottleneck."
            ),

            FramePlan(
                frame: .obedience(.loose_leash),
                concepts: [
                    .engagement(.engagement),
                    .engagement(.distraction_work),
                    .pressure(.pressure_work),
                    .pressure(.opposition_reflex),    // foundational yields
                    .pressure(.leash_habituation),
                    .motivation(.reinforcement_rate), // high initial rate, thin over time
                ],
                problems: [.activiteit(.trekken_lijn)],
                notes: "Prerequisite: opposition reflex bending. Then: engagement holds attention, pressure provides consequence when engagement drops. Different from heel — this is ambient walking, not formal position."
            ),

            // ── Modification frames ──────────────────────────────────────

            FramePlan(
                frame: .modification(.impulse_control),
                concepts: [
                    .shaping(.capping),
                    .motivation(.post_reinforcement_pause),
                    .behavior_modification(.arousal_management),
                ],
                problems: [.activiteit(.opspringen_mensen)],
                notes: "Jumping suppression builds on prior management work. Now shape: reward four-on-floor, cap arousal after reward events. Malinois pup — expect regression under social excitement, plan for it."
            ),

            FramePlan(
                frame: .modification(.presentation_independence),
                concepts: [
                    .motivation(.presentation_fading),       // NEW: removing visible reward as prompt
                    .motivation(.reinforcement_thinning),    // NEW: schedule reduction trajectory
                    .motivation(.reward_variability),
                    .engagement(.attention_retention),
                ],
                notes: "Critical for eventual service dog reliability. Start now: engagement sessions where food is not visible but appears on mark. Gradually extend latency between marks. Long-term trajectory, not a single lesson objective."
            ),

            // ── Tolerance frames ─────────────────────────────────────────

            FramePlan(
                frame: .tolerance(.equipment_transition),
                concepts: [
                    .handling(.equipment_introduction),       // NEW: first exposure to collar/slip
                    .handling(.equipment_habituation),         // ongoing comfort
                    .behavior_modification(.re_association),   // counter-condition any aversion
                    .behavior_modification(.desensitization),
                ],
                notes: "Transition from puppy harness to flat collar, then introduce slip lead. Pair each new piece with high-value food. Don't rush — the dog needs to be neutral about equipment before any pressure work through it."
            ),

            // ── Task frames (future phase, noted for program scope) ──────

            FramePlan(
                id: "task_alert_daughter",
                frame: .task(.alert),
                concepts: [
                    .shaping(.free_shaping),          // capture bark → shape on cue
                    .shaping(.cue_transfer),          // NEW: bind to daughter's name or distance call
                    .communication(.markers),
                ],
                notes: "Phase 2+. Bark on command first, then transfer cue to specific context (daughter walking away / not responding). Requires solid marker system and high motivation baseline."
            ),

            FramePlan(
                id: "task_blocking_daughter",
                frame: .task(.blocking),
                concepts: [
                    .shaping(.assisted_shaping),
                    .pressure(.pressure_work),        // body positioning via spatial pressure
                    .engagement(.engagement),
                ],
                notes: "Phase 2+. Dog positions body to prevent daughter from walking into danger. Requires impulse control and positional awareness. Build on heel/stop foundations."
            ),

            FramePlan(
                frame: .task(.object_retrieval),
                concepts: [
                    .motivation(.play_drive),
                    .motivation(.possession),
                    .motivation(.outing),             // reliable release
                    .shaping(.free_shaping),
                ],
                notes: "Phase 2+. Retrieve and deliver objects to hand. Foundation: tug drive → hold → carry → deliver. Malinois should have natural aptitude here."
            ),

            FramePlan(
                frame: .task(.door_operation),
                concepts: [
                    .shaping(.assisted_shaping),
                    .shaping(.cue_transfer),
                ],
                notes: "Phase 3. Closing doors on cue. Nose/paw targeting → door contact → push closed. Low priority for now."
            ),

            FramePlan(
                frame: .task(.switch_operation),
                concepts: [
                    .shaping(.assisted_shaping),
                    .shaping(.cue_transfer),
                ],
                notes: "Phase 3. Paw targeting → switch contact → toggle. Low priority for now."
            ),
        ]
    }
}

// ──────────────────────────────────────────────────────────────────
// PROJECTIONS — what each view extracts from the same data
// ──────────────────────────────────────────────────────────────────

// Quote view: renders frame labels and notes as client-readable line items.
// for plan in program {
//     print("\(plan.frame.label): \(plan.notes ?? "")")
// }

// Curriculum view: extracts and sequences concepts across frames.
// let allConcepts = program.allConcepts
// let crossCutting = program.crossCuttingConcepts
// → e.g. markers, engagement, pressure_work appear in many frames
// → these become lesson themes rather than per-behavior items

// Problem view: which presenting complaints does this program address?
// let addressed = program.allProblems
// → [trekken_lijn, opspringen_mensen]

// Domain grouping:
// let grouped = program.byDomain
// → obedience: [stop, heel, loose_leash]
// → modification: [impulse_control, presentation_independence]
// → tolerance: [equipment_transition]
// → task: [alert, blocking, object_retrieval, door_operation, switch_operation]
