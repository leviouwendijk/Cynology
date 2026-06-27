import Primitives
import References

public extension CynologySources {
    enum Technical: String, CaseIterable, Codable, CynologySourceProviding {
        public static let namespace = "cynology.technical"

        // MARK: - ElectronicDeviceOutput

        case ecma_technical_requirements_electronic_collars
        case lacme_electric_fencing_catalogue

        public var data: ReferenceData {
            switch self {
            case .ecma_technical_requirements_electronic_collars:
                return CynologySources.entry(
                    title: "Technical Requirements for Electronic Pet Training and Containment Collars",
                    location: CynologySources.web_location(
                        "http://ecma.eu.com/wp-content/uploads/2016/10/120411amc-ECMA-Technical-Requirement-6-0-FINAL-APPROVED.pdf"
                    ),
                    authors: CynologySources.authors(
                        "Electronic Collar Manufacturers Association"
                    ),
                    date: CynologySources.published(
                        "2012-04"
                    ),
                    container: ReferenceContainer.website(
                        title: "Electronic Collar Manufacturers Association",
                        publisher: "Electronic Collar Manufacturers Association"
                    ),
                    kind: .technical_specification,
                    channel: .industry,
                    notes: [
                        ReferenceTextBlock.note(
                            "Technical/manufacturer-association source. Use only for device-output or specification claims, not as independent evidence for training efficacy or welfare."
                        )
                    ],
                    tags: facets
                )

            case .lacme_electric_fencing_catalogue:
                return CynologySources.entry(
                    title: "Electric Fencing Catalogue",
                    location: CynologySources.web_location(
                        "http://www.lacme.com/international/catalogues/cat_UK.pdf"
                    ),
                    authors: CynologySources.authors(
                        "LACME"
                    ),
                    container: ReferenceContainer.website(
                        title: "LACME",
                        publisher: "LACME"
                    ),
                    kind: .product_catalogue,
                    channel: .industry,
                    notes: [
                        ReferenceTextBlock.note(
                            "Product-catalogue source. Use only for livestock-fence output comparison or device-specification context, not as independent evidence for dog-training efficacy or welfare."
                        )
                    ],
                    relations: [
                        ReferenceRelation.sameWork(
                            title: "Farm Shop PDF mirror",
                            location: CynologySources.web_location(
                                "https://farm-shop.gr/img/cms/cat_UK.pdf"
                            )
                        )
                    ],
                    tags: facets
                )
            }
        }

        public var facets: ReferenceTagSet {
            switch self {
            case .ecma_technical_requirements_electronic_collars:
                return .cynology(
                    .technical,
                    .electronic_training_devices
                )

            case .lacme_electric_fencing_catalogue:
                return .cynology(
                    .technical
                )
            }
        }
    }
}
