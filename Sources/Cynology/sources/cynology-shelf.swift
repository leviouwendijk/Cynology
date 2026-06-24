public enum CynologyShelf: String, Sendable, Codable, Hashable, CaseIterable {
    case learning
    case welfare
    case clinical
    case communication
    case training
    case nutrition
    case working_dogs
    case methodology

    public var label: String {
        rawValue.tagLabel
    }

    public var namespace: String {
        "cynology.\(rawValue)"
    }
}
