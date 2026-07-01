import Primitives
import References

public extension CynologySources {
    enum Ethics: String, CaseIterable, Codable, CynologySourceProviding {
        public static let namespace = "cynology.ethics"

        // MARK: - Bioethics

        case bioethics_fifty_puzzles
        case bioethics_the_basics
        case basics_of_bioethics

        public var data: ReferenceData {
            switch self {
            case .bioethics_fifty_puzzles:
                return CynologySources.entry(
                    title: "Bioethics: 50 Puzzles, Problems, and Thought Experiments",
                    location: CynologySources.doi_location(
                        "10.4324/9781032640525"
                    ),
                    authors: CynologySources.authors(
                        [
                            CynologySources.author(
                                given: "Sean D.",
                                family: "Aas"
                            ),
                            CynologySources.author(
                                given: "Collin",
                                family: "O'Neil"
                            ),
                            CynologySources.author(
                                given: "Chiara",
                                family: "Lepora"
                            )
                        ]
                    ),
                    date: CynologySources.published(
                        "2024-02-12"
                    ),
                    container: ReferenceContainer(
                        kind: .book,
                        title: "Bioethics: 50 Puzzles, Problems, and Thought Experiments",
                        publisher: "Routledge",
                        pages: "304",
                        edition: "First edition",
                        isbn: "9781032638119"
                    ),
                    doi: "10.4324/9781032640525",
                    kind: .book,
                    channel: .textbook,
                    abstract: .summary(
                        "A dilemma-based bioethics source built around puzzles, problems, and thought experiments. Useful for structuring ethical conflict, proportionality, competing interests, and hard cases rather than for empirical claims about animal welfare or training efficacy."
                    ),
                    notes: [
                        .note(
                            "Use as a reasoning-framework source: dilemma analysis, competing duties, harm/benefit tradeoffs, and clarity about why an intervention case is ethically difficult."
                        )
                    ],
                    relations: [
                        .sameWork(
                            title: "Routledge product page",
                            location: CynologySources.web_location(
                                "https://www.routledge.com/Bioethics-50-Puzzles-Problems-and-Thought-Experiments/Aas-ONeil-Lepora/p/book/9781032638119"
                            )
                        )
                    ],
                    tags: facets
                )

            case .bioethics_the_basics:
                return CynologySources.entry(
                    title: "Bioethics: The Basics",
                    location: CynologySources.doi_location(
                        "10.4324/9781315213293"
                    ),
                    authors: CynologySources.authors(
                        [
                            CynologySources.author(
                                given: "Alastair V.",
                                family: "Campbell"
                            )
                        ]
                    ),
                    date: CynologySources.published(
                        "2017"
                    ),
                    container: ReferenceContainer(
                        kind: .book,
                        title: "Bioethics: The Basics",
                        publisher: "Routledge",
                        pages: "216",
                        edition: "Second edition",
                        isbn: "9780415790314"
                    ),
                    doi: "10.4324/9781315213293",
                    kind: .book,
                    channel: .textbook,
                    abstract: .summary(
                        "Introductory bioethics textbook covering foundational principles, moral theories, health care ethics, public policy ethics, animal research, enhancement, and related contemporary questions."
                    ),
                    notes: [
                        .note(
                            "Useful as a compact conceptual primer for ethical-method framing: consequences, duties, virtue, communitarianism, liberty, and principlism. Do not use as empirical evidence for dog-training outcomes."
                        )
                    ],
                    relations: [
                        .sameWork(
                            title: "Routledge product page",
                            location: CynologySources.web_location(
                                "https://www.routledge.com/Bioethics-The-Basics/Campbell/p/book/9780415790314"
                            )
                        )
                    ],
                    tags: facets
                )

            case .basics_of_bioethics:
                return CynologySources.entry(
                    title: "The Basics of Bioethics",
                    location: CynologySources.doi_location(
                        "10.4324/9780429507519"
                    ),
                    authors: CynologySources.authors(
                        [
                            CynologySources.author(
                                given: "Robert M.",
                                family: "Veatch"
                            ),
                            CynologySources.author(
                                given: "Laura K.",
                                family: "Guidry-Grimes"
                            )
                        ]
                    ),
                    date: CynologySources.published(
                        "2020"
                    ),
                    container: ReferenceContainer(
                        kind: .book,
                        title: "The Basics of Bioethics",
                        publisher: "Routledge",
                        pages: "324",
                        edition: "Fourth edition",
                        isbn: "9781138580084"
                    ),
                    doi: "10.4324/9780429507519",
                    kind: .book,
                    channel: .textbook,
                    abstract: .summary(
                        "General bioethics textbook introducing core theories, concepts, cases, and alternative frameworks in bioethics. Useful for ethical analysis of welfare, consent analogies, professional duties, public-risk questions, and proportional intervention."
                    ),
                    notes: [
                        .note(
                            "Use for normative reasoning and intervention ethics: what is proportionate, what duties matter, and how competing interests should be weighed. Not a source for efficacy or physiological welfare claims."
                        )
                    ],
                    relations: [
                        .sameWork(
                            title: "Routledge product page",
                            location: CynologySources.web_location(
                                "https://www.routledge.com/The-Basics-of-Bioethics/Guidry-Grimes/p/book/9781138580084"
                            )
                        )
                    ],
                    tags: facets
                )
            }
        }

        public var facets: ReferenceTagSet {
            switch self {
            case .bioethics_fifty_puzzles:
                return .cynology(
                    .bioethics,
                    .welfare,
                    .methodology
                )

            case .bioethics_the_basics,
                 .basics_of_bioethics:
                return .cynology(
                    .bioethics,
                    .welfare,
                    .aversives,
                    .methodology
                )
            }
        }
    }
}
