import Primitives
import References

public enum CynologySources {
    public static var all: [any CynologySourceProviding] {
        boxed(LearningTheory.self)
            + boxed(AppliedTraining.self)
            + boxed(Ethology.self)
            + boxed(Physiology.self)
    }

    public static var collection: ReferenceCollection {
        ReferenceCollection(
            all.map {
                $0 as any ReferenceProviding
            }
        )
    }

    public static func section(
        _ section: ReferenceTagSection
    ) -> [any CynologySourceProviding] {
        collection
            .section(section)
            .compactMap {
                $0 as? any CynologySourceProviding
            }
    }

    public static func tagged(
        _ tag: CynologyTag
    ) -> [any CynologySourceProviding] {
        matching(
            tags: [tag]
        )
    }

    public static func matching(
        tags: [CynologyTag],
        match: ReferenceTagMatch = .any
    ) -> [any CynologySourceProviding] {
        collection
            .matching(
                tags: tags.map(\.tag),
                match: match
            )
            .compactMap {
                $0 as? any CynologySourceProviding
            }
    }

    public static func boxed<Source: CynologySourceProviding>(
        _ source: Source.Type
    ) -> [any CynologySourceProviding] {
        Source.allCases.map {
            $0 as any CynologySourceProviding
        }
    }

    static func authors(
        _ values: [ReferenceAuthor],
        original: String? = nil
    ) -> ReferenceAuthors {
        ReferenceAuthors(
            values,
            original: original
        )
    }

    static func author(
        given: String,
        family: String,
        original: String? = nil
    ) -> ReferenceAuthor {
        ReferenceAuthor.person(
            given: given,
            family: family,
            original: original
        )
    }
}

extension CynologySources {
    static func entry(
        title: String,
        location: ReferenceURL,
        source: ReferenceSource? = nil,
        authors: ReferenceAuthors? = nil,
        date: PartialDate? = nil,
        container: ReferenceContainer? = nil,
        doi: String? = nil,
        kind: ReferenceKind = .article,
        channel: ReferenceChannel = .peer_reviewed,
        tags: ReferenceTagSet
    ) -> ReferenceData {
        ReferenceData(
            title: title,
            location: location,
            source: source ?? inferred_source(
                location: location,
                doi: doi
            ),
            authors: authors,
            date: date,
            container: container,
            doi: doi,
            kind: kind,
            channel: channel,
            tags: tags
        )
    }

    static func doi_location(
        _ doi: String
    ) -> ReferenceURL {
        ReferenceSource.doi.url(doi)
    }

    static func web_location(
        _ url: String
    ) -> ReferenceURL {
        ReferenceURL.web(url)
    }

    static func published(
        _ iso8601: String
    ) -> PartialDate? {
        try? PartialDate.iso8601(iso8601)
    }

    static func authors(
        _ original: String
    ) -> ReferenceAuthors {
        ReferenceAuthors(
            original: original
        )
    }

    private static func inferred_source(
        location: ReferenceURL,
        doi: String?
    ) -> ReferenceSource? {
        if doi != nil {
            return .doi
        }

        return ReferenceSource(
            url: location
        )
    }
}
