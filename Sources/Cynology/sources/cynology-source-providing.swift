import References

public protocol CynologySourceProviding: ReferenceProviding {
    static var namespace: String { get }
}

public extension CynologySourceProviding {
    var public_name_or_id: String {
        "\(Self.namespace).\(rawValue)"
    }
}
