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
Begin;
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
        'Człowiek', TRUE,
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
        'Przewyższający', TRUE,
        15,	13,	18,	18,	24,
        7,  	5,	4,	11,	10,	8,
        'Jako kocia rasa mają chowane pazury. Każdy przewyższający ma dostęp do magii area, zyskują ją od razu na 1 poziomie, ponadto mogą używać magii nawet bez ethernano.',
        0,	0,	0,	8,
        NULL, 'Pochodzą ze świata Edolas, setki jaj zostało rozrzuconych po całym Ishgardzie.
Po upadku Extalii wszyscy zostali wciągnięci przez Animę do Ishgardu.
Większość społeczności ma siedzibę przypuszczalnie w okolicach Magnolii.',
        400, 350, 'Mają kocie ciała, ale dwunożne jak ciała ludzi, są bardzo niskiego wzrostu sięgają człowiekowi do kolan.
        Mają proporcjonalnie bardzo dużą głowę i stosunkowo krótkie łapki. Wykluwają się z jajek.
        Wszystkożerne, często gustują w rybach, najlepiej na surowo, choć nie zawsze.'
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
        'Smok', TRUE,
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
        7,	3,	5,	8,	1,	8,
        'Przejęcie(wchłonięcie) - ma zawsze dostęp do alternatywnej techniki przejęcia - przejęty jest pochłonięty a ciało Vulkana czerpie z niego energię, jeśli jego energia nie została zużyta to po pokonaniu Vulcana proces zostaje cofnięty.',
        0,	0,	5,	10,
        'Bestii(Beast soul)', 'Góry i lasy.',
        60,	45, 'Polują na ludzi, wszystkożerne.'
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
        6,	5,	6,	1,	1,	10,
        'Lot, pancerz, częściowo kolczasty pancerz - szansa na oddanie części lub całości obrażeń przeciwnikowi',
        5,	15,	0,	5,
        NULL, 'Góry i lasy.',
        110, 90, 'Roślinożerne ale bardzo terytorialne i nie dzielą się jedzeniem.'
    );
--ustawienie Rasy domyślnej:
ALTER TABLE Postacie ALTER COLUMN Rasy_Nazwa SET DEFAULT 'Człowiek';


SELECT * FROM RASY;
Commit
Rollback



-- ==========================================
-- 2. Umiejętności
-- ==========================================
Begin;

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
    INTO Umiejętności  
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
        'Wiatr', FALSE, 'Magia',
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
    VALUES
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
        'Kamień(utwardzanie ziemi)', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna',
        'Magia opierających się na manipulacji ziemią z otoczenia i jej utwardzaniu.
Głównie budując z niej konstrukcje lub uderzając przy jej pomocy(w tym kamieniami).',
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
        'Zmiękczanie ziemi', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna',
        'Magia opierających się na manipulacji ziemią z otoczenia i jej zmiękczaniu lub nawet upłynnianiu.
Pozwala to nurkować w ziemię i podróżować przez nią przez kopanie w niej tuneli lub powodować zapadanie się ziemi pod wrogiem.',
        ''
    );

--- kryształy
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
Magia ta pozwala też na skuteczniejszą interakcję z magicznymi kryształami.',
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
        'Diamenty', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Magia polegająca na manipulacji lub tworzeniu diamentów, między innymi przez krystalizację struktury węgla w otoczeniu.
Magia ta pozwala też na skuteczniejszą interakcję z magicznymi kryształami stworzonymi z diamentu.',
        ''
    );

--- Błyskawica
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
        'Błyskawica', FALSE, 'Magia',
        'atrybut', 'umiejętność', 'powszechna',
        'Magia wytwarzania błyskawic, przy ciele lub w pewnej odległości od niego, nierzadko spotykana u energicznych.
Pozwala na szybkie ataki, zwykle omijające pancerz.
Przez możliwość wielokierunkowości dobrze sprawdza się przeciwko wielu przeciwnikom na raz.
Elektryzacja ciała zdaje się też zwiększać szybkość, a co istotniejsze zaawansowani magowie są w stanie dokonywać pełnej przemiany w błyskawice uzyskując szybkość poruszania się, której niewielu może jakkolwiek dorównać.',
        ''
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Sztorm', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka'
    );


--- Biel i Światło("holy")
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
        'Biel i Światło', FALSE, 'Magia',
        'atrybut', 'umiejętność', 'powszechna',
        'Magia oparta o światło i świetliste ataki, szczególnie skuteczne przeciwko jakiejkolwiek czarnej magii i magii ciemności.
Magia ta może zwiększać też szybkość.',
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
        'Białe sztuki', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Rodzaj magii szczególnie skuteczne przeciwko jakiejkolwiek czarnej magii i magii ciemności.',
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
        'Puryfikacja', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka',
        'Magia anulująca i rozpraszająca efekty wszelkich rodzajów czarnej magii i magii ciemności.',
        ''
    );
---Dane i symbole
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
        'Archiwum', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Magia oparta na zbieraniu, przetwarzaniu i przekazywaniu danych i informacji.
Jej stosowanie przypomina korzystanie z dużego holograficznego monitora i klawiatury.',
        'Pozwala zbierać informacje o rzeźbie terenu i pozycji poszczególnych osób, nagrywać, przeprowadzać złożone obliczenia, prezentować na ekranie lub wysyłać bezpośrednio do głowy wszelkie informacje.'
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
        'Super Archiwum', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka',
        'Wyższa forma magii archiwum pozwalająca nie tylko na przetwarzanie informacji, ale też zdalną obsługę magicznych broni a nawet częściową zmianę zaklęć pieczętujących.',
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
        'Runy', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka',
        'Magia polegająca na pisaniu run od których treści zależy efekt zaklęcia pozwalają one tworzyć bariery wokół obszarów lub nadać na otoczonym pewne zasady mogące oddziaływać na żywioły fizyczne własności i magię wewnątrz, jest to niezwykle uniwersalna magia, ale ma jedną wadę - samo pisanie run zajmuje dużo czasu i zazwyczaj potrzebują go też by się aktywować.
Będąc odpowiednio zaawansowanym użytkownikiem tej magii można przepisać - zmodyfikować runy stworzone przez kogoś innego, ale tym bardziej są złożone tym jest to trudniejsze.',
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
        'Jutsu Shiki', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka',
        'Jutsu Shiki to nazwa języka używanego w magii run, i wewnątrz uniwersum jest używane wręcz zamiennie, na potrzeby gry wyobraźni jest to specjalizacja w stawianiu statycznych run, najbardziej standardowych dla magii run.',
        'Pozwala stawiać je efektywniej i utrzymać je dłużej lub pod większym naciskiem.'
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
        'Yami no Ekurityūru', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka',
        'Yami no Ekerityure to odmiana magii run czerpiąca częściowo z magii ciemności i o znacznie wyższym potencjale ofensywnym niż standardowa.',
        'Magia ta, przez pisanie run w powietrzu pozwala obierać na cel nawet oddalonych przeciwników i oddziaływać na nich z dystansu, ma także większe od standardowej magii run możliwości wzmacniania i transformacji użytkownika.'
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
        'Hikari no Ekurityūru', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'zaginiona',
        'Świetlno-białomagiczno-święty odpowiednik Yamino Ecrityure, oparty na świętym świetle zamiast',
        'Magia ta, przez pisanie run w powietrzu pozwala obierać na cel nawet oddalonych przeciwników i oddziaływać na nich z dystansu, ma także większe od standardowej magii run możliwości wzmacniania i transformacji użytkownika.'
    );    
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Zdalne tworzenie run', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka'
    );

-- Magia Umysłu
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
        'Magia Umysłu', FALSE, 'Magia',
        'atrybut', 'kategoria', 'rzadka',
        'Ogół magii oddziałujących na umysł lub umysły, spostrzeganie, pamięć, a także zwykłą komunikację.
Niemal wszelkie formy kontroli umysłów i ciała istot żywych.',
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
        'Telepatia', FALSE, 'Magia',
        'atrybut', 'kategoria', 'rzadka',
        'Magia komunikacji między umysłami, pozwalająca na czytanie w myślach, wysyłanie mentalnych wiadomości i rozmowy telepatyczne z użytkownikiem na dużą odległość, a nawet komunikację większej liczby osób używając magii użytkownika jako przekaźnika.',
        ''
    );

-- Smocza magia
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
        'Smocza magia', FALSE, 'Magia',
        'typ', 'kategoria', 'zaginiona',
        'Magia pochodząca od smoków, przez zaklęcie w człowieku smoczej mocy danego żywiołu(niemal dowolnego atrybutu), czyni to moc skoncentrowaną i pozwala człowiekowi walczyć ze smokami - na których inne ataki zwykle nie robią wrażenia - z nawet zabójczą skutecznością (choć jej uzyskanie nie jest łatwe).',
        'Użytkownik tej magii - Smoczy Zabójca - podobnie do smoków cieszy się niemal całkowitą odpornością na obrażenia od swojego żywiołu, pozwala ona mu też na to by jeść swój żywioł i magię tego żywiołu(ale nie swoją) aby zregenerować swoją magię i odzyskać siły, próby jedzenia innej kończą się zazwyczaj niepowodzeniem, a nawet gdy nie kończą się nim powodują ryzyko nawet kilkudniowej niestrawności, pozbawiającej wszelkich sił.
Magia ta daje duże ogólne wzmocnienie ciała i zmysłów, ale ma też inny istotny skutek uboczny, u silnych magów tej magii występuje silna choroba lokomocyjna, zabijanie nią smoków przez dłuższy czas grozi dragonifikacją.'
    );



--Magia Tworzenia
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
        'Magia Tworzenia', FALSE, 'Magia',
        'typ', 'kategoria(+1)', 'powszechna',
        'Magia pozwalająca na tworzenie właściwie wszelkich kształtów i konstrukcji z odpowiadającego jej materiału(atrybutu), wyjątkiem jest magia tworzenia wspomnień tworząca raczej techniki magiczne.',
        'Stworzone twory mogą służyć zarówno do ataku jak i obrony, czy zmylenia przeciwnika, mag może wprawić twór w prosty ruch zaraz po jego stworzeniu. Odmianą magii tworzenia wynoszącą to na nowy poziom jest magia dynamicznego tworzenia, pozwalająca na twory zdolne do aktywnego ruchu(choć nadal zasadniczo sterowanego przez maga), np. na bazie zwierząt, będące jak swego rodzaju golemy.'
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
        'Dynamiczne Tworzenie', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'powszechna',
        '',
        'Dynamiczne tworzenie w przeciwieństwie do zwykłego statycznego pozwala wprawiać twory w ruch już po ich stworzeniu pozwalając na dynamiczne zmiany kierunku czy tworzenie napędzanych magią golemów, np. w kształcie zwierząt.'
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
        'Tworzenie Diamentów', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka',
        'Magia tworzenia z diamentów',
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
        'Tworzenie Kryształów', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka',
        'Magia tworzenia z wszelkich kryształów, daje większy wybór materiałów niż inne ale mniejszą swobodę w kształtowaniu.',
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
        'Tworzenie Kamienia', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'powszechna',
        'Magia tworzenia z kamienia',
        ''
    );

-- Magiczne przedmioty
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
        'Magiczne przedmioty', FALSE, 'Magia',
        'typ', 'kategoria(+1)', 'powszechna',
        'Ogólny zbiór magii i umiejętności opartych na konkretnych przedmiotach lub substancjach. Ich tworzeniu i obsłudze.',
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
        'Płyny', FALSE, 'Magia',
        'umiejętność szczegółowa', 'kategoria(+1)', 'powszechna',
        'Zbiór magii opartych na przygotowywaniu  i używaniu różnych rodzajów płynów do wywierania efektu na ludziach, innych istotach i otoczeniu.',
        ''
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Mikstury', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Magia Perfum', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Magia Naparów', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka'
    );

-- Zaklinanie
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Zaklinanie', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Zaklinanie ciała', FALSE, 'Magia',
        'specjalizacja', 'umiejętność', 'rzadka'
    );
-- magia przestrzeni
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Magia Przestrzeni', FALSE, 'Magia',
        'typ', 'kategoria(+1)', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Podmiana', FALSE, 'Magia',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

-- niemagiczne Umiejętności walki
---- walka wręcz

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Walka wręcz', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Sztuki walki', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Hakowa Dłoń', TRUE, 'Fizyczna',
        'specjalizacja', 'umiejętność', 'rzadka'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Zdolności zapaśnicze', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'rzadka'
    );

--- broń biała
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Broń Biała', TRUE, 'Fizyczna',
        'typ', 'kategoria(+1)', 'powszechna'
    );
---- Fechtunek
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Fechtunek', TRUE, 'Fizyczna',
        'typ', 'kategoria', 'powszechna'
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Miecz', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Miecz jednoręczny', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Miecz dwuręczny', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Gigamiecz', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Katana', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Katana jednoręczna', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Katana dwuręczna', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Odachi(katana wielka)', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Szabla', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );


---topory
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Topór', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Topór jednoręczny', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Topór dwuręczny', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Topór obosieczny', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

--Broń Drzewcowa
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Broń Drzewcowa', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Włócznie', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Lance i kopie', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

--- Broń Obuchowa
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Broń Obuchowa', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Młoty i oskardy', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Kije', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Kostury', TRUE, 'Fizyczna',
        'specjalizacja', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Kije Elastyczne', TRUE, 'Fizyczna',
        'specjalizacja', 'umiejętność', 'powszechna'
    );

--- Walka dystansowa(+1)
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'Walka dystansowa', TRUE, 'Fizyczna',
        'typ', 'kategoria(+1)', 'powszechna'
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'broń miotana', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'oszczepy', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'noże', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

--- broń miotająca
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'broń miotająca', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );

--- broń strzelecka
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'broń strzelecka', TRUE, 'Fizyczna',
        'typ', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'łuki', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'kusze', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'broń palna', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'broń palna krótka', TRUE, 'Fizyczna',
        'specjalizacja', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'broń palna długa', TRUE, 'Fizyczna',
        'specjalizacja', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'strzelanie z wierzchowca', TRUE, 'Fizyczna',
        'specjalizacja', 'umiejętność', 'rzadka'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'strzelanie w ruchu', TRUE, 'Fizyczna',
        'specjalizacja', 'umiejętność', 'rzadka'
    );

--Ogólne
--- Sztuka przetrwania
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'łowiectwo', TRUE, 'Fizyczna',
        'typ', 'kategoria(+1)', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'polowanie', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'łowienie', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'nawigacja', TRUE, 'Fizyczna',
        'typ', 'kategoria(+1)', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'mapy', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

---- pierwsza pomoc
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'pierwsza pomoc', TRUE, 'Fizyczna',
        'typ', 'kategoria(+1)', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'opatrywanie ran', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'znajomość ziół leczniczych', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'zaawansowana medycyna', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

--- Podróż
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'jeździectwo', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'prowadzenie pojazdów', TRUE, 'Fizyczna',
        'typ', 'kategoria(+1)', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'czterokołowce', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'statki', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );

INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'poruszanie', TRUE, 'Fizyczna',
        'typ', 'kategoria(+1)', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'pływanie', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
    );
INSERT
    INTO Umiejętności
    (
        Nazwa, Poboczna, Natura,
        Rodzaj, Samodzielność, Dostępność
    )
    VALUES
    (
        'wspinaczka', TRUE, 'Fizyczna',
        'umiejętność szczegółowa', 'umiejętność', 'powszechna'
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
        'Niebo','Wiatr'
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
--- Ziemia
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Ziemia','Zmiękczanie ziemi'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Ziemia','Kamień(utwardzanie ziemi)'
    );
-- Kryształy
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Kryształy','Diamenty'
    );


-- Sztorm
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna, minimalny_poziom
    )
    VALUES
    (
        'Wiatr','Sztorm', 3
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Błyskawica','Sztorm'
    );
-- Biel i Światło
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Biel i Światło','Białe sztuki'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Białe sztuki','Puryfikacja'
    );

-- Dane i symbole
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Dane i symbole','Archiwum'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Dane i symbole','Runy'
    );
--- Archiwum
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna, minimalny_poziom
    )
    VALUES
    (
        'Archiwum','Super Archiwum', 5
    );
--- Runy
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Runy','Jutsu Shiki'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Runy','Yami no Ekurityūru'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Runy','Hikari no Ekurityūru'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Runy','Zdalne tworzenie run'
    );

--Magia Tworzenia
---- Tworzenie Diamentów
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Diamenty','Tworzenie Diamentów'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Magia Tworzenia','Tworzenie Diamentów'
    );
----Tworzenie Kryształów
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Kryształy','Tworzenie Kryształów'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Magia Tworzenia','Tworzenie Kryształów'
    );
----Tworzenie Kamienia
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Kamień(utwardzanie ziemi)','Tworzenie Kamienia'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Magia Tworzenia','Tworzenie Kamienia'
    );

-- Magiczne przedmioty - Płyny
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Magiczne przedmioty','Płyny'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Płyny','Mikstury'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Płyny','Magia Perfum'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Płyny','Magia Naparów'
    );
-- Zaklinanie
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Zaklinanie','Zaklinanie ciała'
    );    

-- Magia Przestrzeni
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Magia Przestrzeni','Podmiana'
    );    

-- Umiejętności walki
--- walka wręcz
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Walka Wręcz','Sztuki walki'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Walka Wręcz','Zdolności zapaśnicze'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Sztuki walki','Hakowa Dłoń'
    );

--- Broń Biała
---- fechtunek
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Biała','Fechtunek'
    );

INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Fechtunek','Miecz'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Fechtunek','Katana'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Fechtunek','Szabla'
    );
----- Miecz
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Miecz','Miecz jednoręczny'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Miecz','Miecz dwuręczny'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Miecz','Gigamiecz'
    );
----- Katana
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Katana','Katana jednoręczna'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Katana','Katana dwuręczna'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Katana','Odachi(katana wielka)'
    );

--- Topór
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Biała','Topór'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Topór','Topór jednoręczny'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Topór','Topór dwuręczny'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Topór','Topór obosieczny'
    );

--- Broń Drzewcowa
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Biała','Broń Drzewcowa'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Drzewcowa','Włócznie'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Drzewcowa','Lance i kopie'
    );

--- Broń Obuchowa
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Biała','Broń Obuchowa'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Obuchowa','Młoty i oskardy'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Broń Obuchowa','Kije'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Kije','Kostury'
    );
INSERT
    INTO Podległość
    (
        wymagana_nadrzędna, podrzędna
    )
    VALUES
    (
        'Kije','Kije Elastyczne'
    );

--test:
SELECT * FROM Umiejętności;
SELECT * FROM Podległość ORDER BY wymagana_nadrzędna, podrzędna;
SELECT * 
FROM Podległość INNER JOIN Umiejętności U ON Podległość.wymagana_nadrzędna = U.Nazwa
WHERE U.poboczna = TRUE
ORDER BY wymagana_nadrzędna, podrzędna;


Commit
Rollback

-- ==========================================
-- 3. Klasy
-- ==========================================
Begin;

INSERT INTO Klasy(nazwa, premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)
    VALUES ('Mag', 'Mądrość', 'Inteligencja', 'Wola');
INSERT INTO Klasy(nazwa, premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)
    VALUES ('Inkwizytor', 'Pobożność',  'Mądrość', 'Wola');
INSERT INTO Klasy(nazwa, premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)
    VALUES ('Rycerz', 'Siła', 'Wytrzymałość', 'Zręczność');
SELECT * FROM Klasy;
Commit
Rollback
-- ==========================================
-- 3.A. Klasy Punkty_Klasowe
-- ==========================================
--MAG
Begin;
--- historia postaci
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Przynależność do gildii',250,250);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Rola magii w historii postaci',1,100);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Magiczne pochodzenie',1,100);
--- rozwój postaci
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Punkt umiejętności wydany na zdolności magiczne',3,3);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Nowe nauczone zaklęcie',5,20);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Rzucenie zaklęcia',1,3);
--- misje
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Podjęta zwykła misja',5,5);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Podjęta misja klasy S',15,15);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Podjęta misja klasy SS',30,30);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Podjęta misja 10-letnia',100,100);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Podjęta misja 100-letnia',1000,1000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Ukończona zwykła misja',5,50);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Ukończona misja klasy S',15,150);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Ukończona misja klasy SS',30,300);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Ukończona misja 10-letnia',100,2000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Ukończona misja 100-letnia',1000,30000);
--- rola w gildii
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Reprezentowanie gildii',1,100);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Uzyskanie klasy S lub analogicznej',1000,1000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Zostanie mistrzem Gildii',10000,10000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Pomoc innym w nauce magii',5,500);
-- ujemne
--- złe czyny
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Zdrada wobec swojej gildii',-500,-500);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Nauka i stosowanie klątw',-1,-1000);
---klęski - nieudane misje
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Zawalona zwykła misja',-2,-50);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Zawalona misja klasy S',-7,-150);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Zawalona misja klasy SS',-15,-300);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Zawalona misja 10-letnia',-50,-2000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'Zawalona misja 100-letnia',-500,-30000);
--- zaniechania
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'dłuższe zaniechanie rozwijania zdolności magicznych',-1,-300);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Mag', 'dłuższe zaniechanie praktykowania magii',-1,-1000);
Commit
Rollback

--RYCERZ
Begin;
--- historia postaci
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Przynależność do armii lub zakonu',250,250);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Rola walki lub rycerskości w historii postaci',1,100);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Szlacheckie, rycerskie lub wojskowe pochodzenie',1,100);
--- rozwój postaci
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Punkt umiejętności wydany na umiejętności walki(walka wręcz i broń biała)',3,3);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Nowa technika lub efekt(zdolność pasywna) związany z walką w zwarciu',5,20);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Zdobyta lub zakupiona część zwykłego uzbrojenia',5,20);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Zdobyta lub zakupiona część uzbrojenia magicznego',25,100);
-- ujemne
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Nauka i stosowanie klątw',-1,-1000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Zdrada wobec swojego zakonu lub armii',-500,-500);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Dowolna zdrada',-1,-1000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Łamanie przysięgi',-500,-1000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Łamanie prawa',-1,-1000);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'Kłamstwo',-50,-500);
--- zaniechania
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'dłuższe zaniechanie rozwijania zdolności bitewnych',-1,-300);
INSERT INTO Punkty_Klasowe(Klasa_nazwa, Warunek, minimalne_punkty, maksymalne_punkty)
    VALUES ('Rycerz', 'dłuższe zaniechanie praktykowania jakiejkolwiek walki',-1,-1000);
Commit
Rollback

SELECT * FROM Punkty_Klasowe ORDER BY Klasa_nazwa, maksymalne_punkty DESC;
-- ==========================================
-- 3.B. Rangi_klasowe
-- ==========================================
Begin;

ALTER TABLE Rangi_klasowe DISABLE TRIGGER trg_check_ranga_łańcuch;
---rangi maga
Rollback;
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans,
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Nowicjusz', 'dostęp do podstawowych ksiąg magicznych w bibliotekach(+) | 
Zdolności magiczne wymagają poziomu doświadczenia niższego o 2/ 3,  ponadto bazowy poziom wynosi (N^2)/1,15 (+)',
        0, 0, 0,
        10,
        'Mag',
        NULL, 'Akolita'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans,
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Akolita',
        'dostęp do podstawowych ksiąg magicznych w bibliotekach(=) | 
        Zdolności magiczne wymagają poziomu doświadczenia niższego o 3/5,  ponadto bazowy poziom wynosi (N^2)/1,25 (!)',
        0, 0, 1,
        100,
        'Mag',
        'Nowicjusz', 'Adept'
    ); 
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Adept',
        'dostęp do podstawowych ksiąg magicznych w bibliotekach(=) | 
        Zdolności magiczne wymagają poziomu doświadczenia niższego o 5/8,  ponadto bazowy poziom wynosi (N^2)/1,35 (!) | 
        20% zniżka u nauczycieli zaklęć (+)',
        10, 1, 3,
        1000,
        'Mag',
        'Akolita', 'Zaawansowany mag'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Zaawansowany mag', 
        'dostęp do zaawansowanych ksiąg magicznych w bibliotekach (!)
        Zdolności magiczne wymagają poziomu doświadczenia niższego o 8/13,  ponadto bazowy poziom wynosi (N^2)/1,5 (!)
        1 punkt dla umiejętności pobocznych może zamiast tego być przy awansie przydzielony do zdolności magicznych (+)
        30% zniżka u nauczycieli zaklęć (!)
        modyfikator +1/+2/+3/+4 (w zależności od klasy trudności testu) do testów magicznych i testów reputacji u postaci związanych z magią (+)
        Czary zużywają 10% mniej many i energii (+)',
        5, 1, 5,
        10000,
        'Mag',
        'Adept', 'Ekspert'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Ekspert',
        'dostęp do zaawansowanych ksiąg magicznych w bibliotekach (=)
        Zdolności magiczne wymagają poziomu doświadczenia niższego o 13/21,  ponadto bazowy poziom wynosi (N^2)/1,75 (!)
        1 punkt dla umiejętności pobocznych może zamiast tego być przy awansie przydzielony do zdolności magicznych (=)
        1 dodatkowy punkt do wykorzystania na specjalizacje magiczne (+)
        45% zniżka u nauczycieli zaklęć (!)
        modyfikator +2/+3/+4/+5 (w zależności od klasy trudności testu) do testów magicznych i testów reputacji u postaci związanych z magią, brak kary zaokrąglenia (!)
        Czary zużywają 20% mniej many i energii oraz mają skuteczność zwiększoną o 10% (!)',
        3, 1, 7,
        100000,
        'Mag',
        'Zaawansowany mag', 'Mistrz'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Mistrz',
        'dostęp do legendarnych ksiąg magicznych w bibliotekach(!)
        Zdolności magiczne wymagają poziomu doświadczenia niższego o 21/34,  ponadto bazowy poziom wynosi (N^2)/2 (!)
        2 punkty dla umiejętności ogólnych mogą zamiast tego być przy awansie przydzielone do zdolności magicznych (!)
        2 dodatkowe punkty do wykorzystania na specjalizacje magiczne (+)
        60% zniżka u nauczycieli zaklęć (!)
        modyfikator +3/+4/+5/+6 (w zależności od klasy trudności testu) do testów magicznych i testów reputacji u postaci związanych z magią, brak kary zaokrąglenia (!)
        Czary zużywają 33% mniej many i energii oraz mają skuteczność zwiększoną o 20% (!)',
        1, 1, 10,
        1000000,
        'Mag',
        'Ekspert', 'Arcymistrz'
    );

INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Arcymistrz', 
        'dostęp do legendarnych ksiąg magicznych w bibliotekach(!)
        Zdolności magiczne wymagają poziomu doświadczenia niższego o 34/55,  ponadto bazowy poziom wynosi (N^2)/2,5 (!)
        3 punkty dla umiejętności ogólnych mogą zamiast tego być przy awansie przydzielone do zdolności magicznych (!)
        3 dodatkowe punkty do wykorzystania na specjalizacje magiczne (+)
        80% zniżka u nauczycieli zaklęć (!)
        modyfikator +4/+5/+6/+7 (w zależności od klasy trudności testu) do testów magicznych i testów reputacji u postaci związanych z magią, brak kary zaokrąglenia (!)
        Czary zużywają 50% mniej many i energii oraz mają skuteczność zwiększoną o 33% (!)',
        1, 1.5, 14,
        10000000,
        'Mag',
        'Mistrz', NULL
    );
SELECT * FROM Rangi_klasowe;

Commit
Rollback

ALTER TABLE Rangi_klasowe ENABLE TRIGGER trg_check_ranga_łańcuch;
UPDATE Rangi_klasowe--sztuczka uruchamiająca Trigger by sprawdzić poprawność danych
    SET Nazwa = Nazwa WHERE Nazwa = 'Nowicjusz';
SELECT * FROM Rangi_klasowe;

---rangi rycerza
Begin;
ALTER TABLE Rangi_klasowe DISABLE TRIGGER trg_check_ranga_łańcuch;
ROLLBACK;
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans,
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Nowicjusz', 'dostęp do podstawowych ksiąg bitewnych w bibliotekach (+) | 
dostęp do podstawowych broni w zbrojowni(+)',
        0, 0, 0,
        10,
        'Rycerz',
        NULL, 'Akolita'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans,
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Akolita',
        'dostęp do podstawowych ksiąg bitewnych w bibliotekach(=) | 
dostęp do podstawowych broni w zbrojowni(=)',
        0, 0, 1,
        100,
        'Rycerz',
        'Nowicjusz', 'Adept'
    ); 
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Adept',
        'dostęp do podstawowych ksiąg bitewnych w bibliotekach(=) | 
        dostęp do podstawowych broni w zbrojowni(=) | 
        1 punkt dla umiejętności ogólnych może być przy awansie przydzielony jako 2  pkt zdolności bitewnych (+) | 
        20% zniżka u nauczycieli technik bitewnych oraz zbrojmistrzów i płatnerzy (+)',
        10, 1, 3,
        1000,
        'Rycerz',
        'Akolita', 'Zaawansowany rycerz'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Zaawansowany rycerz', 
        'dostęp do zaawansowanych ksiąg bitewnych w bibliotekach(!) | 
        dostęp do zaawansowanych broni w zbrojowni(!) | 
        1 punkt dla umiejętności ogólnych może być przy awansie przydzielony jako 2  pkt zdolności bitewnych (=) | 
        30% zniżka u nauczycieli technik bitewnych oraz zbrojmistrzów i płatnerzy(!) | 
        modyfikator +1/+2/+3/+4 (w zależności od klasy trudności testu) do testów w walce w zwarciu i użycia broni i testów reputacji u postaci związanych z walką (+) | 
        Ataki i bloki zużywają 10% mniej energii (+)',
        5, 1, 5,
        10000,
        'Rycerz',
        'Adept', 'Ekspert'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Ekspert',
        'dostęp do zaawansowanych ksiąg bitewnych w bibliotekach(=) | 
        dostęp do zaawansowanych broni w zbrojowni(=) | 
        1 punkt dla umiejętności pobocznych może być przy awansie przydzielony jako 2 pkt zdolności bitewnych (=) | 
        dodatkowy punkt do wykorzystania na specjalizacje bitewne (3 i większy poziom zagnieżdżenia)(+) | 
        45% zniżka u nauczycieli technik bitewnych oraz zbrojmistrzów i płatnerzy(!) | 
        modyfikator +2/+3/+4/+5 (w zależności od klasy trudności testu) do testów w walce w zwarciu i użyciem broni i testów reputacji u postaci związanych z walką, brak kary zaokrąglenia (!)
        Ataki i bloki zużywają 20% mniej energii oraz mają skuteczność zwiększoną o 10% (!)',
        3, 1, 7,
        100000,
        'Rycerz',
        'Zaawansowany rycerz', 'Mistrz'
    );
INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Mistrz',
        'dostęp do legendarnych ksiąg bitewnych w bibliotekach(!) | 
dostęp do legendarnych broni w zbrojowni(!) | 
        2 punkty dla umiejętności ogólnych może być przy awansie przydzielony jako 2  pkt zdolności bitewnych (!) | 
2 dodatkowe punkt do wykorzystania na specjalizacje magiczne (3 i większy poziom zagnieżdżenia)(!) | 
        60% zniżka u nauczycieli technik bitewnych oraz zbrojmistrzów i płatnerzy(!) | 
modyfikator +3/+4/+5/+6 (w zależności od klasy trudności testu) do testów w walce w zwarciu i użyciem broni i testów reputacji u postaci związanych z walką, brak kary zaokrąglenia (!) | 
        Ataki i bloki zużywają 33% mniej energii oraz mają skuteczność zwiększoną o 20% (!)',
        1, 1, 10,
        1000000,
        'Rycerz',
        'Ekspert', 'Arcymistrz'
    );

INSERT INTO Rangi_klasowe
    (
        Nazwa, bonusy_za_rangę,
        bonus_do_cech_co_poziomów, bonus_do_cech_wartość, punkty_cech_na_awans, 
        minimalne_punkty_klasowe,
        Klasa_nazwa,
        Poprzednia_ranga, Nastepna_ranga
    )
    VALUES
    (
        'Arcymistrz', 
        'dostęp do legendarnych ksiąg bitewnych w bibliotekach(=) | 
dostęp do legendarnych broni w zbrojowni(=) | 
        3 punkty dla umiejętności ogólnych może być przy awansie przydzielony jako 2  pkt zdolności bitewnych (!) | 
        3 dodatkowe punkt do wykorzystania na specjalizacje magiczne (3 i większy poziom zagnieżdżenia)(!) | 
        80% zniżka u nauczycieli technik bitewnych oraz zbrojmistrzów i płatnerzy(!) | 
        modyfikator +4/+5/+6/+7 (w zależności od klasy trudności testu) do testów w walce w zwarciu i użyciem broni i testów reputacji u postaci związanych z walką, brak kary zaokrąglenia (!) | 
        Ataki i bloki zużywają 50% mniej energii oraz mają skuteczność zwiększoną o 33% (!)',
        1, 1.5, 14,
        10000000,
        'Rycerz',
        'Mistrz', NULL
    );
SELECT * FROM Rangi_klasowe WHERE Klasa_nazwa = 'Rycerz';

Commit
Rollback

ALTER TABLE Rangi_klasowe ENABLE TRIGGER trg_check_ranga_łańcuch;
UPDATE Rangi_klasowe--sztuczka uruchamiająca Trigger by sprawdzić poprawność danych
    SET Nazwa = Nazwa WHERE Nazwa = 'Nowicjusz'; 
SELECT * FROM Rangi_klasowe WHERE Klasa_nazwa = 'Rycerz';

-- ==========================================
-- 4. Techniki
-- ==========================================

-- ==========================================
-- 4.A. Kategorie_technik 
-- ==========================================

INSERT INTO Kategorie_technik(nazwa, opis) 
    VALUES ('Techniki walki', 'Techniki związane z walką wręcz i użyciem broni białej');
INSERT INTO Kategorie_technik(nazwa, opis)
    VALUES ('Techniki obrażeniowe', 'Techniki zadające obrażenia');
INSERT INTO Kategorie_technik(nazwa, opis)
    VALUES ('Techniki obszarowe', 'Techniki wpływające na obszar');
INSERT INTO Kategorie_technik(nazwa, opis)
    VALUES ('Techniki osłabienia', 'Techniki wywierające (negatywny) wpływ na przeciwnika');
INSERT INTO Kategorie_technik(nazwa, opis)
    VALUES ('Techniki wsparcia', 'Techniki wywierające (pozytywny) wpływ na używającego lub sojusznika');
INSERT INTO Kategorie_technik(nazwa, opis)
    VALUES ('Techniki blokujące i bariery', 'Techniki tworzące blokady i bariery przed atakami przeciwnika, chroniące przed obrażeniami lub ograniczające ruch');
INSERT INTO Kategorie_technik(nazwa, opis)
    VALUES ('Techniki informacyjne', 'Techniki zbierające/przekazujące informacje');
INSERT INTO Kategorie_technik(nazwa, opis)
    VALUES ('Techniki świętej magii', 'Techniki świętej magii');

-- ==========================================
-- 4.B. Techniki
-- ==========================================

-- ==========================================
-- 4.C. Techniki_Kategorie 
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
