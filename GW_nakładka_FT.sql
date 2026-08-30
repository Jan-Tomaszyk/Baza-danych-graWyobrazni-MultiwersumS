-- ==========================================
---- DODAWANIE DANYCH NAKŁADKI UNIWERSOWEJ
-- ==========================================
-- Nakładka uniwersowa - Elementy składowe systemu gry specyficzne dla danego świata(uniwersum).
-- Głównie dane specyficzne dla danego świata.
-- w przeciwieństwie do określającego ogół mechaniki rdzenia systemu wspólnego dla wszystkich światów.

-- Ten plik jest poświęcony dodawaniu do bazy danych elementów nakładki uniwersowej Uniwersum Fairy Tail, pierwszego opracowanego.
-- Takich jak Rasy, Klasy, Umiejętności, prawdopodobnie Techniki i Przedmioty 
-- wraz z ich powiązaniami z innymi wypełnionymi tabelami oraz być może (Klasy) Przeciwników.
-- Waluty? 

-- ==========================================
-- 1. Rasy
-- ==========================================
--- uzupełnienie wartości domyślnych
ALTER TABLE Rasy ALTER COLUMN Pancerz_Ogólny SET DEFAULT 0;
ALTER TABLE Rasy ALTER COLUMN Pancerz_miękki SET DEFAULT 0;
ALTER TABLE Rasy ALTER COLUMN Pancerz_twardy SET DEFAULT 0;
ALTER TABLE Rasy ALTER COLUMN Ochrona_przed_zimnem SET DEFAULT 0;
--- wstawianie ras
INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'człowiek', TRUE,
        20,	20,	20,	20,	20,
        5,  	5,	5,	10,	10,	10,
        NULL,
        0,	0,	0,	0,
        NULL, 'Najpowszechniejsza i jedna z najbardziej rozwiniętych technologicznie i społecznie ras w całym Ishgardzie.',
        90, 60, NULL
    );
INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'przewyższający', TRUE,
        15,	13,	18,	18,	24,
        7,  	5,	4,	11,	10,	8,
        'Jako kocia rasa mają chowane pazury. Każdy przewyższający ma dostęp do magii area, zyskują ją od razu na 1 poziomie, ponadto mogą używać magii nawet bez ethernano.',
        0,	0,	0,	8,
        NULL, 'Pochodzą ze świata Edolas, setki jaj zostało rozrzuconych po całym Ishgardzie.
Po upadku Extalii wszyscy zostali wciągnięci przez Animę do Ishgardu.
Większość społeczności ma siedzibę przypuszczalnie w okolicach Magnolii.',
        400, 350, "Mają kocie ciała, ale dwunożne jak ciała ludzi, są bardzo niskiego wzrostu sięgają człowiekowi do kolan.
        Mają proporcjonalnie bardzo dużą głowę i stosunkowo krótkie łapki. Wykluwają się z jajek.
        Wszystkożerne, często gustują w rybach, najlepiej na surowo, choć nie zawsze."
    );
INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'smok', TRUE,
        50,	50,	40,	32,	35,
        10, 	10,	10,	10,	5,	12,
        'Powiązane z żywiołami cechują się odpornością na swój żywioł dzięki swojej magii i różnymi rodzajami pancerza zależnymi od budowy ich łusek i skóry.
Wysoka pojemność płuc pozwala im na pochłanianie dużych ilości powietrza co robią przed rykiem/zionięciem swoim żywiołem.
Mogą też dzięki temu i swojej magii wciągać(lub pożerać dzięki wielkości żołądka) swój żywioł.
Potężne skrzydła dają im zdolność lotu. W bitwie używają swoich wielkich pazurów i szczęk. Mają też wyostrzone zmysły zazwyczaj głównie węch.',
        10,	20,	5,	0,
        NULL, 'Smoki są praktycznie wymarłe na skutek pojawienia się Smoczych Zabójców i wielkiej wojny nazwanej Festiwalem Króla Smoków,
wszelkie pozostałości po nich były niszczone przez Acnologię, nie ma smoków w Ishgardzie zgodnie z ogólnie dostępną wiedzą.',
        500, 450, 'Ich budowa zazwyczaj przypomina najbardziej smoki Europejskie - czworonożne ze skrzydłami, 
ale szczegóły kształtu ciała różnią się między żywiołami, a nawet wewnątrz jednego żywiołu.'
    );
INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'Galluńczyk', TRUE,
        22,	24,	20,	20,	20,
        7,	4,	4,	7,	8,	10,
        'Lot, transformacja/iluzja.',
        2,	8,	0,	0,
        NULL, 'Jedyne miejsce w którym wiadomo, że występują to wyspa Galluna gdzie znajduje się ich jedyna znana wioska.',
        90,	60, 'Ich potworny wygląd przynosi im wstyd wykształcili więc magię transformacji dającą im ludzka formę.
Część osób uważa ich wygląd za demoniczny przez co są czasem błędnie nazywani demonami, a nawet sami czasem się tak nazywają,
ale nie zachowują się jak demony. Ich cywilizacja jest mniej zaawansowana od ludzkiej'
    );
INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'Olbrzym', TRUE,
        35,	35,	19,	19,	16,
        5,	5,	5,	10,	10,	10,
        '',
        5,	10,	0,	10,
        NULL, 'Znana jest tylko jedna ich wioska(bez nazwy innej niż wioska olbrzymów) chroniona niegdyś przez ognistego smoka Atlas Flame`a.',
        120, 80, 'Ich poziom technologiczny zdaje się być nieco mniejszy niż ludzki, ale jest to raczej minimalne.'
    );
INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'Jaszczuroczłek kolczasty', TRUE,
        22,	28,	20,	20,	19,
        3,	4,	5,	8,	9,	9,
        'Kolczasty pancerz - dodatkowo oddają obrażenia fizyczne pochłonięte przez pancerz w walce wręcz.',
        10,	15,	0,	0,
        'Bestii(Beast soul)', 'Nieznane dokładnie, prawdopodobnie ciepłe strony, góry, lasy, skalne pustkowia.',
        90,	60, ''
    );

INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'Jaszczuroczłek krokodyli', TRUE,
        20,	24,	20,	22,	22,
        4,	4,	4,	8,	9,	9,
        'Ugryzienie - używasz swojej krokodylej paszczy by ugryźć przeciwnika zadając mu: Siła+2k8 obrażeń i potencjalnie unieruchomić go między szczękami.',
        5,	5,	0,	0,
        'Bestii(Beast soul)', 'Okolice rzek i jezior. Nieznane dokładnie, prawdopodobnie  ciepłe strony.',
        90,	60, ''
    );

INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'Vulkan', FALSE,
        27,	24,	21,	21,	21,
        7,	3,	5,	8,	0,	8,
        'Przejęcie(wchłonięcie) - ma zawsze dostęp do alternatywnej techniki przejęcia - przejęty jest pochłonięty a ciało Vulkana czerpie z niego energię, jeśli jego energia nie została zużyta to po pokonaniu Vulcana proces zostaje cofnięty.',
        0,	0,	5,	10,
        'Bestii(Beast soul)', 'Góry i lasy.',
        60	45, 'Polują na ludzi, wszystkożerne.'
    );
INSERT
    INTO Rasy 
    (
        Nazwa, Rozumność,
        Siła_OCENA, Wytrzymałość_OCENA, Kondycja_OCENA, Zręczność_OCENA, Zwinność_OCENA,
        MAGICZNOŚĆ,     Mądrość_OCENA, Inteligencja_OCENA, Charyzma_OCENA, Pobożność_OCENA, Wola_OCENA,
        Zdolności_rasowe,
        Pancerz_Ogólny, Pancerz_miękki, Pancerz_twardy, Ochrona_przed_zimnem,
        Typ_przejęcia, Występowanie_rola_informacje,
        średnia_długość_życia, wiek_starości, inne_cechy
    )
    VALUES
    (
        'Wiwerna', FALSE,
        30,	30,	25,	22,	26,
        6,	5,	6,	0,	0,	10,
        'Lot, pancerz, częściowo kolczasty pancerz - szansa na oddanie części lub całości obrażeń przeciwnikowi',
        5,	15,	0,	5,
        NULL, 'Góry i lasy.',
        110, 90, 'Roślinożerne ale bardzo terytorialne i nie dzielą się jedzeniem.'
    );
--ustawienie Rasy domyślnej:
ALTER TABLE Postacie ALTER COLUMN Rasy_Nazwa SET DEFAULT 'człowiek';


-- ==========================================
-- 2. Umiejętności
-- ==========================================
----ogień i podrzędne
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Ogień', FALSE, 'Magia',
        'atrybut', 'umiejętność', 'powszechna',
        'Ogień jest w świecie Fairy Tail wyjątkowo różnorodną magią, pozwalając nie tylko tworzyć i manipulować ogniem, ale też nadawać mu strukturę gazu lub ciała stałego i wiele innych nietypowych właściwości, zazwyczaj wiążąc je z różnymi kolorami ognia. Z czego zasadniczo najsilniejszy jest tęczowy ogień uzyskiwany przez złączenie kilku różnych płomieni lub magii ognia z 6 innymi magiami żywiołów.',
        'Magia ognia specjalizuje się w zadawaniu obrażeń(od gorąca), głównie obszarowych i destrukcji głównie przez eksplozje. Ma wiele nietypowych odmian dających innej natury korzyści jak np mobilność i inne rodzaje obrażeń.'
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'fioletowy ogień', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Pozwala tworzyć i kontrolować fioletowy ogień, którego właściwości przypominają ciało stałe, przez co nie da się ugasić wiatrem ani wodą',
        'Ta magia pozwala wykorzystać ogień do ataków obuchowych, unieruchamiania i poruszania się.'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'błękitny ogień', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Nietypowy ogień, który jest dosłownie zimny zamiast być gorący.',
        'Zamiast od gorąca zadaje obrażenia od zimna.'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'pomarańczowy ogień', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'W przeciwieństwie do zwykłego ognia(również przybierającego kolor pomańczowy), pomarańczowy ogień poza gorącem cechuje się smrodem. Zapach podobno przypomina brudny mop zanurzony w przeterminowanym mleku.',
        'Używane głównie do unieruchomienia celu i utrudnienie mu walki przez urażenie jego nosa.'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'żółty ogień', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'W przeciwieństwie do zwykłego ognia żółty ogień poza gorącem cechuje się smrodem a przynajmniej bardzo dziwnym nieprzyjemnym zapachem, przypuszczalnie podobnym do ludzkich gazów.',
        'Używane głównie do unieruchomienia celu i utrudnienie mu walki przez urażenie jego nosa.'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'tęczowy ogień', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Najsilniejszy typ ognia powodujący eksplozję, uzyskiwany przez umiejętne złączenie kilku różnych płomieni lub połączenie magii ognia z 6 innymi magiami żywiołów.',
        ''
    );


--- woda
INSERT
    INTO  
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Woda', FALSE, 'Magia',
        'atrybut', 'umiejętność', 'powszechna',
        'Magia wody oferuje wielką uniwersalność mogąc skutecznie wspomagać tak atak jak i obronę fizyczną (lub nawet uzyskiwać niewrażliwość na klasyczne fizyczne ataki) oraz przepychać przeciwników lub ograniczać ich ruch przez wykorzystanie właściwości cieczy. U użytkowników o wyjątkowej nocy(jak Juvia) występuje zwiększona zależność od emocji, co więcej przed jej zupełnym opanowaniem, wywołują deszcz samą swoją obecnością.',
        NULL
    );

-- Lód
INSERT
    INTO Umiejętności 
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Lód', FALSE, 'Magia',
        'atrybut', 'umiejętność', 'powszechna',
        'Magia lodu jest teoretycznie pokrewna wobec magii wody ale ich nauka się szczególnie nie wiąże.
Magia lodu czyli zamrażanie, manipulacja lodem i wytwarzanie lodu(także w postaci śniegu).
Magów lodu cechuje duża odporność na zimno.',
        'Poza oczywistym zastosowaniem ściśle ofensywnym i defensywnym daje duże możliwości unieruchamiania(zamrażania) przeciwnika i inne metody uzyskania przewagi.'
    );

INSERT
    INTO Umiejętności 
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Śnieg', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna',
        'Magia ta opiera się na tworzeniu i kontrolowaniu śniegu.',
        'Użytkownik tej Magii może uwolnić śnieg ze swojego ciała i manipulować nim np. zmieniając pogodę otaczenia. Forma przybierana przez śnieg zależy od użytkownika mogącego formować go w kule śnieżne, lawiny, zamiecie lub nawet burze śnieżne.'
    );


--- Niebo
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Niebo', FALSE, 'Magia',
        'atrybut', 'kategoria(+1)', 'powszechna',
        'Ogół magii związanych z niebem i powietrzem oddziałujących na nie i przez nie w różnej skali i precyzji, często pozwalając na lot, zwiększenie szybkości i zwinności, oraz zarówno szybkie i precyzyjne jak i obszarowe uderzenia.',
        ''
    );

INSERT
    INTO Umiejętności 
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'powietrze', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna',
        'Magia, która daje użytkownikowi możliwość manipulowania otaczającym go powietrzem i używania go jako broni przez kontrolę powietrza określonym obszarze wyznaczonym przez coś na kształt kulistych kieszeni powietrznych, nad którymi panuje użytkownik. Przez skondensowanie powietrza są one widoczne.',
        'Sposoby jej użycia to: obniżania poziomu tlenu w określonym obszarze, lewitacja, utrzymywanie przedmiotów w powietrzu, tworzenie obszarowych lub niewielkich fal uderzeniowych pod ciśnieniem, tworząc kuliste kieszenie powietrzne. Zaawansowani użytkownicy mogą zmieniać się w powietrze by pojawić się w innym miejscu.'
    );
INSERT
    INTO Umiejętności 
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Przestrzeń powietrzna', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Magia manipulująca powietrzem w otaczającym środowisku, w sposób zapewniający jej falom uderzeniowym pod ciśnieniem, które wytwarza, niewidzialność.',
        'Można ją używać do celów ofensywnych, takich jak fala uderzeniowa w dowolnej części otoczenia przez tworzenie wybuchowych kieszeni powietrznych, a także do celów obrony i efektywnej teleportacji lub nawet rozproszenia magicznej mocy wroga.'
    );
INSERT
    INTO Umiejętności 
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'wiatr', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna',
        'Umożliwia użytkownikom generowanie wiatru i kontrolowanie go.',
        'Magia wiatru ma dużą moc ofensywną, pozwala potężne podmuchy wiatry, cięcia wiatrem niewielkimi wiatrowymi ostrzami i tworzenie huraganów(które również mogą czasem wręcz ciąć przeciwników). 
Pozwala też latać z dużą prędkością i przemierzać duże odległości. Zaawansowani magowie mogą nawet otoczyć się zbroją wiatru.'
    );
INSERT
    INTO Umiejętności 
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Niebiańska magia', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'zaginiona',
        'Niebiańska magia jest przede wszystkim magią wspierającą pozwalającą na wzmacnianie siebie i sojuszników a nawet na ich leczenie, nawet spod stanu bliskiego śmierci lub trucizny.
Pozwala także na wywoływanie podmuchów wiatru i trąb powietrznych.
U zaawansowanych pozwala też na lot.',
        ''
    );

--- Ziemia
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES Umiejętności
    (
        'Ziemia', FALSE, 'Magia',
        'atrybut', 'umiejętność', 'powszechna',
        'Magia opierających się na manipulacji ziemią z otoczenia, czasem budując z niej proste konstrukcje, bardziej zaawansowani magowie manipulują też jej właściwościami fizycznymi utwardzając lub zmiękczając ją i zwiększajac jej plastyczność, a w nawet upłynniając. Magia ta pozwala też nurkować w ziemię i podróżować przez nią przez kopanie lub łączenie się z nią.',
        ''
    );


INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Kryształy', FALSE, 'Magia',
        'atrybut', 'umiejętność', 'rzadka',
        'Magia polegająca na manipulacji lub tworzeniu kryształów (lub konkretnego rodzaju kryształu), między innymi przez krystalizację struktury okolicznych skał.
Magia ta może on pozwalać też na skuteczniejszą interakcję z magicznymi kryształami.',
        ''
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Roślinna', FALSE, 'Magia',
        'atrybut', 'kategoria(+1)', 'powszechna',
        'Magie opierające się na tworzeniu i manipulacji roślinami, czasem ich elementami.',
        ''
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Dane i symbole', FALSE, 'Magia',
        'atrybut', 'kategoria', 'rzadka',
        'Nietypowa grupa magia oparta o manipulacji danymi lub symbolami i czerpaniu przez nie mocy, pozwalająca je zbierać i przetwarzać(archiwum, magia pisania) lub nadawać moc stworzonym symbolom zmieniając zasady walki(runy, głównie Jutsu Shiki)  lub uzyskując silne i różnorodne efekty, w tym użycia innych atrybutów(Yamino i Hikarino Ecrityure oraz Lity Skrypt i Lity Skrypt ze wschodu), a nawet tworzyć przedmioty i sztuczne sługi(magia obrazu).
        Jest to jednak magia której efektywne użycie bitewne wymaga czasu.',
        ''
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność,
        Opis_fabularny,
        Opis_praktyczny
    )
    VALUES
    (
        'Magia umysłu', FALSE, 'Magia',
        'atrybut', 'kategoria', 'rzadka',
        'Ogół magii oddziałujących na umysł lub umysły, spostrzeganie, pamięć, a także zwykłą komunikację.
Niemal wszelkie formy kontroli umysłów i ciała istot żywych.',
        ''
    );


-- ==========================================
-- 2.A. Podległość
-- ==========================================
--- ogień
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Ogień','fioletowy ogień'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Ogień','błękitny ogień'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Ogień','pomarańczowy ogień'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Ogień','żółty ogień'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna, minimalny_poziom
    )
    VALUES
    (
        'Ogień','tęczowy ogień',  2
    );
--- Lód
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Lód','Śnieg'
    );
--- Niebo
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Niebo','powietrze'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna, minimalny_poziom
    )
    VALUES
    (
        'powietrze','Przestrzeń powietrzna', 2
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Niebo','wiatr'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Niebo','Niebiańska magia'
    );



-- ==========================================
-- 3. Klasy
-- ==========================================

-- ==========================================
-- 3.A. Klasy Punkty_Klasowe
-- ==========================================

-- ==========================================
-- 3.B. Rangi_klasowe
-- ==========================================

ALTER TABLE SBD164306.Rangi_klasowe DISABLE TRIGGER trg_check_ranga_łańcuch;
---rangi maga
Begin;
INSERT INTO SBD164306.Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        minimalne_punkty_klasowe, punkty_klasowe_wymagane_do_awansu,
        Klasy_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Nowicjusz', 'dostęp do podstawowych ksiąg magicznych w bibliotekach(+)
Zdolności magiczne wymagają poziomu doświadczenia niższego o 2/ 3,  ponadto bazowy poziom wynosi (N^2)/1,15 (+)',
        10, 100,
        'Mag',
        NULL, 'Akolita'
    );
INSERT INTO SBD164306.Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        minimalne_punkty_klasowe, punkty_klasowe_wymagane_do_awansu,
        Klasy_nazwa,
        Nastepna_ranga, Poprzednia_ranga
    )
    VALUES
    (
        'Akolita',
        E'dostęp do podstawowych ksiąg magicznych w bibliotekach(+)
        Zdolności magiczne wymagają poziomu doświadczenia niższego o 2/ 3,  ponadto bazowy poziom wynosi (N^2)/1,15 (+)',
        100, 1000,
        'Mag',
        'Nowicjusz', 'Adept'
    ); 
INSERT INTO SBD164306.Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        minimalne_punkty_klasowe, punkty_klasowe_wymagane_do_awansu,
        Klasy_nazwa,
        Nastepna_ranga, Poprzednia_ranga
    )
    VALUES
    (
        'Adept', NULL,
        1000, 10000,
        'Mag',
        'Akolita', 'Zaawansowany mag'
    );
INSERT INTO SBD164306.Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        minimalne_punkty_klasowe, punkty_klasowe_wymagane_do_awansu,
        Klasy_nazwa,
        Nastepna_ranga, Poprzednia_ranga
    )
    VALUES
    (
        'Zaawansowany mag', NULL,
        10 000, 100 000,
        'Mag',
        'Adept', 'Ekspert'
    );
INSERT INTO SBD164306.Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        minimalne_punkty_klasowe, punkty_klasowe_wymagane_do_awansu,
        Klasy_nazwa,
        Nastepna_ranga, Poprzednia_ranga
    )
    VALUES
    (
        'Ekspert', NULL,
        100 000, 1 000 000,
        'Mag',
        'Zaawansowany mag', 'Mistrz'
    );
INSERT INTO SBD164306.Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        minimalne_punkty_klasowe, punkty_klasowe_wymagane_do_awansu,
        Klasy_nazwa,
        Nastepna_ranga, Poprzednia_ranga
    )
    VALUES
    (
        'Mistrz', NULL,
        1000 000, 10 000 000,
        'Mag',
        'Ekspert', 'Arcymistrz'
    );

INSERT INTO SBD164306.Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        minimalne_punkty_klasowe, punkty_klasowe_wymagane_do_awansu,
        Klasy_nazwa,
        Nastepna_ranga, Poprzednia_ranga
    )
    VALUES
    (
        'Arcymistrz', NULL,
        10 000 000, NULL,
        'Mag',
        'Mistrz', NULL
    );
SELECT * FROM Rangi_klasowe;

Commit
Rollback

ALTER TABLE SBD164306.Rangi_klasowe ENABLE TRIGGER trg_check_ranga_łańcuch;
UPDATE SBD164306.Rangi_klasowe--sztuczka uruchamiająca Trigger by sprawdzić poprawność danych
    SET Nazwa = Nazwa WHERE Nazwa = 'Nowicjusz'; 

-- ==========================================
-- 4. Techniki
-- ==========================================

-- ==========================================
-- 4.A. Kategorie_technik 
-- ==========================================

-- ==========================================
-- 4.B. Techniki_Kategorie 
-- ==========================================


-- ==========================================
-- 5. Przedmioty
-- ==========================================

-- ==========================================
-- 5.A. Bronie
-- ==========================================

-- ==========================================
-- 5.B. Księgi_i_Pisma
-- ==========================================

-- ==========================================
-- 5.B.1. Umiejętności_uczone_z_ksiąg
-- ==========================================

-- ==========================================
-- 5.B.2. Techniki_uczone_z_ksiąg 
-- ==========================================

-- ==========================================
-- 5.C. Pancerze_i_stroje
-- ==========================================

-- ==========================================
-- 5.D. Prowiant
-- ==========================================

-- ==========================================
-- 5.E. Różności
-- ==========================================

-- ==========================================
-- 5.F. Techniki_przedmiotów
-- ==========================================

-- ==========================================
-- 6.Waluty
-- ==========================================
