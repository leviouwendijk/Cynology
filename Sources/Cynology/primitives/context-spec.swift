import Foundation

/// Describes the conditions under which a behavioral target must hold.
/// Composes the existing primitives rather than inventing new axes.
///
/// All fields are optional — a context spec can be as sparse or as
/// detailed as the target requires. A settle target might only specify
/// environments; a recall target might specify distraction + distance +
/// threshold position.
public struct ContextSpec: Sendable, Codable, Hashable {

    /// Distraction conditions (what's happening around the dog).
    public var distraction: DistractionProfile?

    /// Where the behavior must hold.
    public var environments: [EnvironmentTag]

    /// What specific trigger class the dog must cope with.
    public var triggers: [TriggerClass]

    /// Where the dog is relative to threshold.
    public var threshold: ThresholdProfile?

    /// Distance at which the behavior must hold
    /// (handler-to-dog for cued behaviors, dog-to-trigger for modification).
    public var distance: DistanceRange?

    public init(
        distraction: DistractionProfile? = nil,
        environments: [EnvironmentTag] = [],
        triggers: [TriggerClass] = [],
        threshold: ThresholdProfile? = nil,
        distance: DistanceRange? = nil
    ) {
        self.distraction = distraction
        self.environments = environments
        self.triggers = triggers
        self.threshold = threshold
        self.distance = distance
    }

    /// Human-readable summary for quote rendering.
    /// Assembles whichever fields are present into a natural phrase.
    public var label: String {
        var parts: [String] = []

        if let d = distraction {
            parts.append(d.label)
        }

        if !triggers.isEmpty {
            let triggerLabels = triggers.map(\.label).joined(separator: ", ")
            parts.append("bij \(triggerLabels)")
        }

        if !environments.isEmpty {
            let envLabels = environments.map(\.label).joined(separator: ", ")
            parts.append("in \(envLabels)")
        }

        if let t = threshold {
            parts.append(t.label.lowercased())
        }

        if let dist = distance {
            parts.append(dist.label)
        }

        return parts.isEmpty ? "zonder specifieke context" : parts.joined(separator: ", ")
    }
}
