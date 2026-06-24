import Foundation

public enum BehaviorProblem: Sendable, Codable, Hashable, CaseIterable {
    case reactiviteit(Reactiviteit)
    case angst(Angst)
    case gehoorzaamheid(Gehoorzaamheid)
    case puppy(Puppy)
    case activiteit(Activiteit)
    case prooidrift(Prooidrift)
    case socialisatie(Socialisatie)
    case agressie(Agressie)

    public enum Category: String, Sendable, Codable, Hashable, CaseIterable {
        case reactiviteit
        case angst
        case gehoorzaamheid
        case puppy
        case activiteit
        case prooidrift
        case socialisatie
        case agressie

        public var label: String {
            switch self {
            case .reactiviteit:
                return "Reactiviteit"
            case .angst:
                return "Angst"
            case .gehoorzaamheid:
                return "Gehoorzaamheid"
            case .puppy:
                return "Puppy"
            case .activiteit:
                return "Activiteit"
            case .prooidrift:
                return "Prooidrift"
            case .socialisatie:
                return "Socialisatie"
            case .agressie:
                return "Agressie"
            }
        }
    }

    public enum Reactiviteit: String, Sendable, Codable, Hashable, CaseIterable {
        case uitvallen_lijn
        case blaffen_bezoek
        case waaksheid_grommen
    }

    public enum Angst: String, Sendable, Codable, Hashable, CaseIterable {
        case verlatingsangst
        case angst
        case vuurwerkangst
    }

    public enum Gehoorzaamheid: String, Sendable, Codable, Hashable, CaseIterable {
        case ongehoorzaamheid
        case recall
    }

    public enum Puppy: String, Sendable, Codable, Hashable, CaseIterable {
        case puppy_cursus
        case opvoeding
        case zindelijkheid
    }

    public enum Activiteit: String, Sendable, Codable, Hashable, CaseIterable {
        case trekken_lijn
        case overprikkeling
        case opspringen_mensen
    }

    public enum Prooidrift: String, Sendable, Codable, Hashable, CaseIterable {
        case jacht_katten
        case jacht_andere_dieren
    }

    public enum Socialisatie: String, Sendable, Codable, Hashable, CaseIterable {
        case interactie_honden
    }

    public enum Agressie: String, Sendable, Codable, Hashable, CaseIterable {
        case agressief_mensen
        case agressief_honden
        case bezittelijkheid
    }

    public static var allCases: [BehaviorProblem] {
        Reactiviteit.allCases.map(Self.reactiviteit)
            + Angst.allCases.map(Self.angst)
            + Gehoorzaamheid.allCases.map(Self.gehoorzaamheid)
            + Puppy.allCases.map(Self.puppy)
            + Activiteit.allCases.map(Self.activiteit)
            + Prooidrift.allCases.map(Self.prooidrift)
            + Socialisatie.allCases.map(Self.socialisatie)
            + Agressie.allCases.map(Self.agressie)
    }

    public var slug: String {
        switch self {
        case .reactiviteit(let value):
            return value.rawValue
        case .angst(let value):
            return value.rawValue
        case .gehoorzaamheid(let value):
            return value.rawValue
        case .puppy(let value):
            return value.rawValue
        case .activiteit(let value):
            return value.rawValue
        case .prooidrift(let value):
            return value.rawValue
        case .socialisatie(let value):
            return value.rawValue
        case .agressie(let value):
            return value.rawValue
        }
    }

    public var id: String {
        self.slug
    }

    public init?(slug: String) {
        if let value = Reactiviteit(rawValue: slug) {
            self = .reactiviteit(value)
            return
        }

        if let value = Angst(rawValue: slug) {
            self = .angst(value)
            return
        }

        if let value = Gehoorzaamheid(rawValue: slug) {
            self = .gehoorzaamheid(value)
            return
        }

        if let value = Puppy(rawValue: slug) {
            self = .puppy(value)
            return
        }

        if let value = Activiteit(rawValue: slug) {
            self = .activiteit(value)
            return
        }

        if let value = Prooidrift(rawValue: slug) {
            self = .prooidrift(value)
            return
        }

        if let value = Socialisatie(rawValue: slug) {
            self = .socialisatie(value)
            return
        }

        if let value = Agressie(rawValue: slug) {
            self = .agressie(value)
            return
        }

        return nil
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let slug = try container.decode(String.self)

        guard let value = Self(slug: slug) else {
            throw DecodingError.dataCorruptedError(
                in: container,
                debugDescription: "Unknown BehaviorProblem slug: \(slug)"
            )
        }

        self = value
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.slug)
    }
}

public extension BehaviorProblem {
    var category: Category {
        switch self {
        case .reactiviteit:
            return .reactiviteit
        case .angst:
            return .angst
        case .gehoorzaamheid:
            return .gehoorzaamheid
        case .puppy:
            return .puppy
        case .activiteit:
            return .activiteit
        case .prooidrift:
            return .prooidrift
        case .socialisatie:
            return .socialisatie
        case .agressie:
            return .agressie
        }
    }

    var categoryID: String {
        self.category.rawValue
    }

    var categoryLabel: String {
        self.category.label
    }

    // Mirrors the current JS catalog IDs exactly, including the duplicate `puppy_cursus`.
    var legacyCatalogID: String {
        switch self {
        case .puppy(.opvoeding):
            return "puppy_cursus"
        default:
            return self.id
        }
    }

    var label: String {
        switch self {
        case .reactiviteit(.uitvallen_lijn):
            return "Uitvallen aan de lijn"
        case .reactiviteit(.blaffen_bezoek):
            return "Blaffen naar bezoek"
        case .reactiviteit(.waaksheid_grommen):
            return "Waaksheid & grommen"

        case .angst(.verlatingsangst):
            return "Verlatingsangst"
        case .angst(.angst):
            return "Angst"
        case .angst(.vuurwerkangst):
            return "Vuurwerkangst"

        case .gehoorzaamheid(.ongehoorzaamheid):
            return "Ongehoorzaamheid"
        case .gehoorzaamheid(.recall):
            return "Appèl"

        case .puppy(.puppy_cursus):
            return "Puppy-cursus & opvoeding"
        case .puppy(.opvoeding):
            return "Opvoeding"
        case .puppy(.zindelijkheid):
            return "Zindelijkheid"

        case .activiteit(.trekken_lijn):
            return "Trekken aan de lijn"
        case .activiteit(.overprikkeling):
            return "Overprikkeling & hyperactiviteit"
        case .activiteit(.opspringen_mensen):
            return "Opspringen tegen mensen"

        case .prooidrift(.jacht_katten):
            return "Jagen op katten"
        case .prooidrift(.jacht_andere_dieren):
            return "Jachtgedrag naar andere dieren"

        case .socialisatie(.interactie_honden):
            return "Interactie met honden"

        case .agressie(.agressief_mensen):
            return "Agressief naar mensen"
        case .agressie(.agressief_honden):
            return "Agressief naar honden"
        case .agressie(.bezittelijkheid):
            return "Bezittelijkheid"
        }
    }

    var symptoms: [String] {
        switch self {
        case .reactiviteit(.uitvallen_lijn):
            return [
                "Blaffen en afzetten bij tegemoetkomst van bepaalde prikkels",
                "Blaffen, uitvallen en in de lijn hangen naar andere honden",
                "Uitvallen of happen naar mensen of voorbijgangers",
                "Moeite om de hond langs prikkels te begeleiden (kan niet meer luisteren)"
            ]
        case .reactiviteit(.blaffen_bezoek):
            return [
                "Heftig reageren op de deurbel (rennen, blaffen, opspringen)",
                "Aanhoudend blaffen zodra bezoek binnen is",
                "Moeite om tot rust te komen met mensen in huis",
                "Eventueel grommen of wegduwen van bezoek"
            ]
        case .reactiviteit(.waaksheid_grommen):
            return [
                "Grommen naar of fixeren op (vreemde) mensen",
                "Wantrouwen of afstand houden naar bezoek of onbekenden",
                "Bewaken van deuropening, tuin of bank / ligplek",
                "Spanning of verstarring als iemand te dicht bij komt"
            ]

        case .angst(.verlatingsangst):
            return [
                "Huilen, janken of blaffen zodra de hond alleen is",
                "Slopen van spullen of krabben aan deuren of kozijnen",
                "Onrustig rondlopen, hijgen of geen rust vinden als je weg bent",
                "Mogelijk plassen of poepen in huis bij alleen blijven"
            ]
        case .angst(.angst):
            return [
                "Schrikachtig, terughoudendheid, en vluchtneigingen",
                "Vluchtgedrag of vermijden van mensen, honden of plaatsen",
                "Beven, hijgen, verstoppen of zich klein maken bij spanning"
            ]
        case .angst(.vuurwerkangst):
            return [
                "Paniek bij knallen (vuurwerk, onweer of andere harde geluiden)",
                "Trillen, hijgen, verstoppen of zoeken naar een schuilplek",
                "Niet naar buiten durven of proberen weg te vluchten",
                "Al dagen of weken onrustig rondom oud en nieuw of onweer"
            ]

        case .gehoorzaamheid(.ongehoorzaamheid):
            return [
                "Niet of wisselend reageren op commando's zoals zit, af, blijf, plaats",
                "Moeite om naast te lopen of bij je in de buurt te blijven",
                "Luistert thuis redelijk maar buiten valt alles weg",
                "Snel afgeleid in drukte of bij andere honden of mensen"
            ]
        case .gehoorzaamheid(.recall):
            return [
                "Niet terugkomen als je roept, vooral buiten of in losloopgebieden",
                "Wegrennen, eigen plan trekken of zich moeilijk laten vangen",
                "Alle aandacht bij prikkels zoals honden, mensen of geuren in plaats van bij jou",
                "Alleen durven loslopen met lange lijn omdat vertrouwen ontbreekt"
            ]

        case .puppy(.puppy_cursus):
            return [
                "Aanleren van basiscommando's",
                "Onzekerheid over basisregels in huis en hoe consequent te zijn",
                "Nog geen of wisselende reactie op basiscommando's (zit, af, blijf, plaats)"
            ]
        case .puppy(.opvoeding):
            return [
                "Bijbrengen van normatief gedrag (in leefomgeving)",
                "Bijten of happen in handen, kleding of meubels",
                "Moeite met alleen blijven of meteen piepen of janken",
                "Onzekerheid over basisregels in huis en hoe consequent te zijn"
            ]
        case .puppy(.zindelijkheid):
            return [
                "Plassen of poepen in huis ondanks uitlaten",
                "Niet of laat aangeven dat de hond naar buiten moet",
                "Onzekerheid over hoe vaak en wanneer uit te laten",
                "Regelmatig ongelukjes op steeds dezelfde plek in huis"
            ]

        case .activiteit(.trekken_lijn):
            return [
                "Sterk trekken aan de lijn met overmatige of aanhoudende spanning",
                "Niet netjes naast kunnen lopen, vooral bij prikkels",
                "Wandelen voelt vermoeiend of frustrerend voor baas en hond"
            ]
        case .activiteit(.overprikkeling):
            return [
                "Niet kunnen ontspannen en rusteloosheid",
                "Continu aandacht vragen, piepen of rondlopen",
                "Opspringen, druk gedrag en moeilijk tot rust te krijgen",
                "Snel overprikkeld na wandelen, bezoek of spel"
            ]
        case .activiteit(.opspringen_mensen):
            return [
                "Springen tegen bezoek of gezinsleden (bij begroeting)",
                "Springen tegen mensen op straat of in het park",
                "Moeilijk af te leren ondanks corrigeren of negeren",
                "Overenthousiaste of ongecontroleerde begroetingen"
            ]

        case .prooidrift(.jacht_katten):
            return [
                "Achtervolgen, fixeren, of opjagen van katten in huis of buiten",
                "Sterke fixatie op katten of andere kleine dieren (staren, verstarren)",
                "Niet of nauwelijks kunnen luisteren zodra er een kat in beeld is",
                "Moeite om de hond veilig langs katten te begeleiden (trekken, uitvallen)"
            ]
        case .prooidrift(.jacht_andere_dieren):
            return [
                "Achtervolgen van wild (konijnen, vogels, reeën, etc.)",
                "Wegrennen in bos of weiland om te speuren of te jagen",
                "Niet terugkomen of pas terugkomen als de \"jacht\" klaar is",
                "Altijd scannen van de omgeving, neus op de grond en moeilijk bereikbaar"
            ]

        case .socialisatie(.interactie_honden):
            return [
                "Onzeker of gespannen bij ontmoetingen met andere honden",
                "Twijfel of spel wel goed gaat (te wild, te hard of juist niet reageren)",
                "Wisselvallige reacties: de ene hond leuk, de andere spannend of irritant",
                "Onzekerheid bij de eigenaar over wat normaal hondengedrag is"
            ]

        case .agressie(.agressief_mensen):
            return [
                "Grommen, happen en bijten naar mensen thuis of buiten",
                "Uitvallen naar voorbijgangers, bezoekers of onbekenden",
                "Eerdere bijtincidenten of bijna-bijtincidenten met mensen",
                "Spanning of verstarring als mensen te dicht in de buurt komen"
            ]
        case .agressie(.agressief_honden):
            return [
                "Uitvallen, grommen of vechten met andere honden",
                "Verstarren of blokkeren bij ontmoetingen (lichaam gespannen, staart strak)",
                "(Plots) happen of bijten tijdens contact of spel",
                "Moeilijk samenleven met andere honden in huis of tijdens wandelingen"
            ]
        case .agressie(.bezittelijkheid):
            return [
                "Baknijd rond voerbak, kluif of snacks (grommen, verstarren, happen)",
                "Grommen als je in de buurt van voer, speeltjes of kluif komt",
                "Bewaken van speeltjes, ligplek, bank of andere spullen",
                "Niet van bank of plaats af willen en daar fel op reageren"
            ]
        }
    }

    var tags: [String] {
        switch self {
        case .reactiviteit(.uitvallen_lijn):
            return [
                "uitvallen",
                "uitvalgedrag",
                "uitvallen aan de lijn",
                "reactief aan de lijn",
                "reactiviteit",
                "lijnreactief",
                "agressie aan de lijn",
                "agressief aan de lijn",
                "blaffen aan de lijn",
                "uitvallen honden",
                "uitvallen mensen",
                "valt uit naar andere honden",
                "valt uit naar mensen",
                "lijnagressie",
                "hond valt uit",
                "hond reageert aan de lijn",
                "blaffen en trekken buiten",
                "reactief",
                "reactief gedrag",
                "uitvallen (gedrag) aan de lijn",
                "uitvallen in huis en op straat",
                "blaffen naar andere honden",
                "overmatig blaffen buiten",
                "agressie naar mensen",
                "agressie naar honden"
            ]
        case .reactiviteit(.blaffen_bezoek):
            return [
                "reactiviteit",
                "blaffen bezoek",
                "blaffen naar bezoek",
                "deurbel",
                "blaffen deurbel",
                "waken",
                "waaks in huis",
                "onzeker bij bezoek",
                "grommen bezoek",
                "hond blaft naar bezoek",
                "hond valt uit naar bezoek",
                "hond blaft bij deurbel",
                "blaffen bij aanbellen",
                "waakse hond in huis",
                "grommen naar bezoek",
                "reactiviteit bij bezoek",
                "reactieve hond in huis",
                "reactief",
                "reactief gedrag",
                "overmatig blaffen",
                "blaffen en opspringen",
                "blaffen naar andere honden",
                "piepen en blaffen",
                "over enthousiast bij bezoek",
                "overenthousiast bij bezoek",
                "onrustig bij bezoek"
            ]
        case .reactiviteit(.waaksheid_grommen):
            return [
                "reactiviteit",
                "waaks",
                "waaksheid",
                "grommen",
                "grommen naar mensen",
                "grommen bezoek",
                "wantrouwen",
                "wantrouwend",
                "onzeker bij mensen",
                "afstandelijk",
                "aloof",
                "distrust",
                "wariness",
                "waakse hond",
                "waaksheid in huis",
                "hond gromt naar mensen",
                "hond gromt naar bezoek",
                "hond vertrouwt mensen niet",
                "onzekere waakse hond",
                "afstandelijke hond",
                "aloof hond",
                "reactieve waakse hond",
                "angstig voor vreemde mensen",
                "territoriaal",
                "territorialiteit",
                "territoriale agressie",
                "territoriale hond",
                "territoriaal in huis"
            ]

        case .angst(.verlatingsangst):
            return [
                "verlatingsangst",
                "stress",
                "alleen blijven",
                "niet alleen kunnen zijn",
                "huilen alleen",
                "blaf alleen",
                "slopen alleen",
                "scheidingsangst",
                "hond kan niet alleen zijn",
                "hond kan niet alleen blijven",
                "hond jankt alleen thuis",
                "hond huilt als hij alleen is",
                "slopen als hond alleen is",
                "alleen blijven oefenen",
                "niet alleen kunnen blijven",
                "kan niet alleen blijven",
                "piepen en blaffen"
            ]
        case .angst(.angst):
            return [
                "angst",
                "bang",
                "onzeker",
                "onzekerheid",
                "schrikachtig",
                "terughoudend",
                "vluchten",
                "vluchtgedrag",
                "vermijden",
                "stress",
                "spanning",
                "beven",
                "hijgen",
                "verstoppen",
                "paniek",
                "angst hond",
                "bange hond",
                "onzekere hond",
                "hond durft niet",
                "schrikachtige hond",
                "hond vermijdt situaties",
                "hond verstopt zich",
                "hond trilt",
                "hond hijgt van spanning",
                "angstig voor vreemde mensen",
                "angstig voor andere honden",
                "angst voor mensen",
                "angst voor andere honden"
            ]
        case .angst(.vuurwerkangst):
            return [
                "vuurwerkangst",
                "bang voor vuurwerk",
                "vuurwerk",
                "knallen",
                "knal angst",
                "geluid",
                "geluidsangst",
                "geluidsfobie",
                "noise phobia",
                "fobie",
                "onweer",
                "donder",
                "storm",
                "paniek",
                "trillen",
                "stress",
                "beven",
                "hijgen",
                "verstoppen",
                "niet naar buiten",
                "vluchten",
                "hond bang voor knallen",
                "hond bang met oud en nieuw",
                "angst vuurwerk",
                "geluidsangst hond",
                "geluidsfobie hond",
                "bang voor onweer",
                "angst voor onweer",
                "hond durft niet naar buiten met vuurwerk",
                "hond verstopt zich bij vuurwerk"
            ]

        case .gehoorzaamheid(.ongehoorzaamheid):
            return [
                "gehoorzaamheid",
                "basisgehoorzaamheid",
                "luisteren",
                "niet luisteren",
                "hierkomen",
                "naast lopen",
                "loslopen",
                "gehoorzaamheidstraining",
                "hond luistert niet",
                "hierkomen oefenen",
                "naast lopen oefenen",
                "loslopen leren",
                "ongehoorzaam",
                "ongehoorzaamheid",
                "luistert niet als je haar roept",
                "luistert niet als je hem roept",
                "afgeleid"
            ]
        case .gehoorzaamheid(.recall):
            return [
                "recall",
                "hierkomen",
                "niet terugkomen",
                "komt niet terug",
                "wegrennen",
                "rent weg",
                "wegrennen buiten",
                "luistert niet als je haar roept",
                "luistert niet als je hem roept",
                "komt niet als ik roep",
                "loslopen",
                "loslopen gaat niet goed",
                "afgeleid",
                "snel afgeleid",
                "hond komt niet terug",
                "hond loopt weg"
            ]

        case .puppy(.puppy_cursus):
            return [
                "puppy",
                "puppy cursus",
                "puppycursus",
                "opvoeding",
                "bijten",
                "hap gedrag",
                "alleen blijven puppy",
                "zit, af, blijf, plaats,",
                "puppytraining",
                "puppy opvoeden",
                "plassen in huis puppy",
                "puppy bijt",
                "puppy hapt",
                "puppy alleen blijven"
            ]
        case .puppy(.opvoeding):
            return [
                "puppy",
                "puppy cursus",
                "puppycursus",
                "opvoeding",
                "alleen blijven puppy",
                "puppytraining",
                "puppy opvoeden",
                "puppy alleen blijven"
            ]
        case .puppy(.zindelijkheid):
            return [
                "zindelijkheid",
                "zindelijk worden",
                "zindelijkheid puppy",
                "plassen in huis",
                "poepen in huis",
                "ongelukjes in huis",
                "hond plast in huis",
                "puppy plast in huis",
                "puppy poept in huis",
                "zindelijkheidstraining",
                "zindelijk maken",
                "zindelijkheidsproblemen",
                "hoe vaak puppy uitlaten",
                "zindelijkheid schema",
                "zindelijkheid tips puppy"
            ]

        case .activiteit(.trekken_lijn):
            return [
                "trekken",
                "trekken aan de lijn",
                "lijntraining",
                "lijn lopen",
                "niet naast lopen",
                "hond trekt",
                "hond trekt aan de lijn",
                "hond trekt buiten",
                "netjes naast lopen",
                "wandelen zonder trekken",
                "trekken en blaffen",
                "trekt aan de riem",
                "vervelend gedrag tijdens wandeling"
            ]
        case .activiteit(.overprikkeling):
            return [
                "overprikkeld",
                "druk in huis",
                "hyperactief",
                "niet kunnen ontspannen",
                "altijd druk",
                "continu aandacht vragen",
                "opspringen in huis",
                "overprikkelde hond",
                "drukke hond in huis",
                "druk",
                "hyperactieve hond",
                "hond kan niet ontspannen",
                "hond vraagt continu aandacht",
                "hond komt niet tot rust",
                "overmatig blaffen",
                "over enthousiast bij bezoek en uitlaten",
                "overenthousiast bij bezoek en uitlaten",
                "overmatige enthousiasme",
                "onrustig",
                "onrustige hond",
                "hyperactief",
                "rusteloos",
                "rusteloosheid"
            ]
        case .activiteit(.opspringen_mensen):
            return [
                "opspringen",
                "opspringen mensen",
                "springen tegen mensen",
                "springen bezoek",
                "hyper",
                "enthousiast",
                "ongecontroleerd begroeten",
                "hond springt tegen mensen",
                "hond springt tegen bezoek",
                "hond springt tegen kinderen",
                "opspringen afleren",
                "enthousiaste hond",
                "overenthousiaste begroeting",
                "blaffen en opspringen",
                "over enthousiast bij bezoek",
                "overenthousiast bij bezoek"
            ]

        case .prooidrift(.jacht_katten):
            return [
                "prooidrift",
                "jachtgedrag",
                "jachtinstinct",
                "jagen op katten",
                "jagen op poes",
                "jagen op poezen",
                "achter katten aan",
                "hond jaagt op katten",
                "hond jaagt katten op",
                "hond jaagt achter katten aan",
                "katten opjagen",
                "hond achter de kat aan",
                "hond kan niet samen met kat",
                "hond kan niet met katten",
                "hond is gefixeerd op katten",
                "gefocust op katten",
                "fixatie op katten",
                "hond valt katten lastig",
                "hond valt kat aan",
                "hond wil katten vangen",
                "achter kleine dieren aan"
            ]
        case .prooidrift(.jacht_andere_dieren):
            return [
                "prooidrift",
                "jachtgedrag",
                "jachtinstinct",
                "achter wild aan",
                "achter konijnen aan",
                "achter vogels aan",
                "achter reeën aan",
                "jagen op wild",
                "hond jaagt",
                "hond jaagt op wild",
                "hond jaagt op konijnen",
                "hond jaagt op vogels",
                "hond loopt weg in het bos",
                "hond rent weg in het bos",
                "hond rent weg als hij wild ziet",
                "komt niet terug bij wild",
                "niet luisteren bij wild",
                "niet terugkomen door jagen",
                "sterke prooidrift",
                "hond met jachtinstinct",
                "speuren en jagen",
                "speurgedrag",
                "jachtlijn nodig",
                "jachtlijn",
                "lange lijn door prooidrift"
            ]

        case .socialisatie(.interactie_honden):
            return [
                "socialisatie",
                "socialiseren",
                "socialisatie problemen",
                "socialisatie tips",
                "kan niet met andere honden",
                "kan moeilijk met andere honden",
                "kan niet goed met andere honden",
                "met andere honden spelen",
                "samen spelen met honden",
                "omgaan met andere honden",
                "hond begrijpt andere honden niet",
                "hond snapt hondentaal niet",
                "eerste hond",
                "eerste hondeneigenaar",
                "onzeker over socialisatie",
                "hond speelt niet met andere honden",
                "hond snapt andere honden niet",
                "socialisatie wandeling"
            ]

        case .agressie(.agressief_mensen):
            return [
                "reactiviteit",
                "agressie mensen",
                "agressief naar mensen",
                "bijten mensen",
                "bijtincident",
                "snappen naar mensen",
                "happen naar mensen",
                "uitvallen naar mensen",
                "reactief naar mensen",
                "agressie naar mensen",
                "agressieve hond naar mensen",
                "hond bijt mensen",
                "bijtincident met hond",
                "hond hapt naar mensen",
                "hond snapt naar mensen",
                "hond valt uit naar mensen",
                "reactief",
                "reactief gedrag",
                "agressie",
                "bijtgedrag",
                "bijten",
                "bijten en grommen",
                "agressief gedrag naar mensen",
                "agressief gedrag naar mannen",
                "agressief naar mannen",
                "agressie mannen",
                "agressie naar mensen"
            ]
        case .agressie(.agressief_honden):
            return [
                "reactiviteit",
                "agressie honden",
                "agressief naar honden",
                "bijten honden",
                "vechten met honden",
                "uitvallen naar honden",
                "honden agressie",
                "reactief naar andere honden",
                "agressie naar andere honden",
                "agressieve hond naar honden",
                "hond agressief naar andere honden",
                "hond bijt andere honden",
                "vechten met andere honden",
                "hond valt uit naar honden",
                "reactief",
                "reactief gedrag",
                "agressie",
                "bijtgedrag",
                "bijten",
                "bijtincident",
                "bijten en grommen",
                "agressief gedrag naar honden",
                "kan niet met andere honden",
                "agressie naar honden"
            ]
        case .agressie(.bezittelijkheid):
            return [
                "bezittelijk gedrag",
                "bezittelijkheid",
                "bezitsdrang",
                "bezitsagressie",
                "baknijd",
                "voerbaknijd",
                "kluif bewaken",
                "speeltje bewaken",
                "speelnijd",
                "bank bewaken",
                "plaats bewaken",
                "resource guarding",
                "guarding",
                "toy possessive",
                "hond bewaakt voerbak",
                "hond bewaakt bak",
                "hond gromt bij voerbak",
                "hond gromt als je in de buurt komt",
                "hond gromt bij speeltje"
            ]
        }
    }
}
