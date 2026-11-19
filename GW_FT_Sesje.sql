-- ==========================================
---- Sesja Mistrza Gry i graczy 
-- ==========================================
-- Sesja zawiera wszelkie dodawanie i sprawdzanie wszystkiego co może być potrzebne Mistrzowi Gry lub graczom.
-- Podczas kole2o:
-- - 1. Przygotowywania do gry(tudzież do pierwszej misji w kampanii). Czyli:
-- -- 1.1. Tworzenie:  postaci o poziomach wyższych niż 1(Mistrz Gry)
-- -- 1.1.1 Przypisanie:  postaciom umiejętności
-- -- 1.1.2 Przypisanie:  postaci do klas
-- -- 1.1.3 sprawdzanie:  cech i statystyk (naturalnych) postaci
-- -- 1.1. Tworzenie:  postaci na poziomie 1(Gracze)
-- -- 1.2.0 sprawdzanie:  umiejętności
-- -- 1.2.1 sprawdzanie:  ras i statystyk rasowych
-- -- 1.2.2 Tworzenie postaci
-- -- 1.2.3 Przypisanie:  postaciom umiejętności
-- -- 1.2.4 Przypisanie:  postaci do klas
-- -- 1.2.5 sprawdzanie:  cech i statystyk (naturalnych) postaci
-- - 2. Preprowadzenie modyfikacji po kilku pierwszych misjach w kampanii. Czyli:
-- -- 2.1. Awansowanie:  postaci z 1 poziomu na wyższy poziom (Gracze)
-- -- 2.1.0 sprawdzanie:  cech i statystyk (bazowych) postaci graczy
-- -- 2.1.1 sprawdzanie:  cech i statystyk (naturalnych) postaci postaci graczy
-- -- 2.1.2 wykonanie awansu na rekordzie postaci
-- -- 2.1.3 sprawdzanie:  umiejętności postaci możliwych do opanowania i podwyższenia
-- ----- (maksymalne_poziomy_umiejętności_postaci, umiejętności_możliwe_do_awansowania, maksymalne_poziomy_możliwe_do_awansowania)
-- -- 2.1.4 wykonanie na umiejętnościach
-- -- 2.2. Modyfikacje: klas postaci 
-- -- 2.2.1 Przydzielanie punktów klasowych postaci, w tym nowych klas postaci (Gracze)
-- -- 2.2.2 Sprawdzanie:  punktów klasowych postaci (Gracze)
-- -- 2.2.2 Przypisanie:  nowych rang klasowych (Gracze)

-- w międzyczasie sprawdzanie: kontrola_cech_postaci, 


-- - 1. Przygotowywania do gry(tudzież do pierwszej misji w kampanii). Czyli:
-- -- 1.1. Tworzenie:  postaci o poziomach wyższych niż 1(Mistrz Gry)
Begin;
INSERT
    INTO Postacie
    (
        Imię, Poziom, PD, wiek,
        Siła_poziom_1, Wytrzymałość_poziom_1, Kondycja_poziom_1, Zręczność_poziom_1, Zwinność_poziom_1, 
        Mądrość_poziom_1, Inteligencja_poziom_1,  Charyzma_poziom_1, Pobożność_poziom_1, Wola_poziom_1,
        Siła_z_awansów, Wytrzymałość_z_awansów, Kondycja_z_awansów, Zręczność_z_awansów, Zwinność_z_awansów,
        Mądrość_z_awansów, Inteligencja_z_awansów,  Charyzma_z_awansów, Pobożność_z_awansów, Wola_z_awansów,
        Siła_klasowa, Wytrzymałość_klasowa, Kondycja_klasowa, Zręczność_klasowa, Zwinność_klasowa,
        Mądrość_klasowa, Inteligencja_klasowa,  Charyzma_klasowa, Pobożność_klasowa, Wola_klasowa
    )
    VALUES
    (
        'Piotr', 63, 0, 49,
        3, 4, 3, 6, 3,       9, 7, 2, 9, 4,
        37, 37, 38, 12, 6,   180, 118, 6, 118, 68,
        0, 0, 0, 0, 0,       124, 93, 0, 124, 93
    );
ROLLBACK
COMMIT
INSERT
    INTO Postacie
    (
        Imię, Poziom, PD, wiek,
        Siła_poziom_1, Wytrzymałość_poziom_1, Kondycja_poziom_1, Zręczność_poziom_1, Zwinność_poziom_1, 
        Mądrość_poziom_1, Inteligencja_poziom_1,  Charyzma_poziom_1, Pobożność_poziom_1, Wola_poziom_1,
        Siła_z_awansów, Wytrzymałość_z_awansów, Kondycja_z_awansów, Zręczność_z_awansów, Zwinność_z_awansów,
        Mądrość_z_awansów, Inteligencja_z_awansów,  Charyzma_z_awansów, Pobożność_z_awansów, Wola_z_awansów,
        Siła_klasowa, Wytrzymałość_klasowa, Kondycja_klasowa, Zręczność_klasowa, Zwinność_klasowa,
        Mądrość_klasowa, Inteligencja_klasowa,  Charyzma_klasowa, Pobożność_klasowa, Wola_klasowa
    )
    VALUES
    (
        'Jan', 40, 0, 46,
        3, 4, 4, 4, 3,      9, 6, -2, 10, 9,
        23, 23, 24, 8, 4,   113, 74, 4, 74, 43,        
        0, 0, 0, 0, 0,      78, 78, 0, 60, 60
    );
INSERT
    INTO Postacie
    (
        Imię, Poziom, PD, wiek,
        Siła_poziom_1, Wytrzymałość_poziom_1, Kondycja_poziom_1, Zręczność_poziom_1, Zwinność_poziom_1, 
        Mądrość_poziom_1, Inteligencja_poziom_1,  Charyzma_poziom_1, Pobożność_poziom_1, Wola_poziom_1,
        Siła_z_awansów, Wytrzymałość_z_awansów, Kondycja_z_awansów, Zręczność_z_awansów, Zwinność_z_awansów,
        Mądrość_z_awansów, Inteligencja_z_awansów,  Charyzma_z_awansów, Pobożność_z_awansów, Wola_z_awansów,
        Siła_klasowa, Wytrzymałość_klasowa, Kondycja_klasowa, Zręczność_klasowa, Zwinność_klasowa,
        Mądrość_klasowa, Inteligencja_klasowa,  Charyzma_klasowa, Pobożność_klasowa, Wola_klasowa
    )
    VALUES
    (
        'Łukasz', 33, 0, 41,
        5, 5, 5, 5, 5,       5, 5, 5, 5, 5,
        14, 4, 25, 22, 3,    61, 92, 3, 61, 35,
        0, 0, 0, 0, 0,       38, 80, 0, 3, 38
    );
SELECT * FROM Postacie WHERE Gracz IS NULL;
-- -- 1.1.1 Przypisanie:  postaciom umiejętności
--- Piotr
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Ziemia', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Kamień(utwardzanie ziemi)', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Kryształy', 7        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Magia Tworzenia', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Dynamiczne Tworzenie', 10        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Tworzenie Kamienia', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Kamienne Osłony', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Tworzenie Kryształów', 7        
    );

INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Dane i symbole', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Runy', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Hikari no Ekurityūru', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Zdalne tworzenie run', 12        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Jutsu Shiki', 9        
    );

INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Magia Umysłu', 2        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Telepatia', 2        
    );

INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Magia Przestrzeni', 2        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        1, 'Podmiana', 2        
    );

--- Jan
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        2, 'Niebo', 9        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        2, 'Wiatr', 1        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        2, 'Błyskawica', 3        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        2, 'Biel i Światło', 3    
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        2, 'Zaklinanie', 9    
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        2, 'Zaklinanie ciała', 9    
    );
--- Łukasz
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Niebo', 8        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Niebiańska magia', 8        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Magiczne przedmioty', 8        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Płyny', 8        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Mikstury', 8        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Magia Naparów', 2        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Biel i Światło', 5        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Białe sztuki', 5        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        3, 'Puryfikacja', 5        
    );
-- -- 1.1.2 Przypisanie:  postaci do klas


INSERT
    INTO klasa_postaci
    (
        ilość_punktów_klasowych, ilość_punktów_klasowych_z_cech,
        Postacie_ID,    Klasa_nazwa, Rangi_klasowe_Nazwa, aktywna
    )
    VALUES
    (
        172084, 0,
        1, 'Mag', 'Ekspert', TRUE        
    );
INSERT
    INTO klasa_postaci
    (
        ilość_punktów_klasowych, ilość_punktów_klasowych_z_cech,
        Postacie_ID,    Klasa_nazwa, Rangi_klasowe_Nazwa, aktywna
    )
    VALUES
    (
        126636, 0,
        2, 'Mag', 'Ekspert', TRUE        
    );
INSERT
    INTO klasa_postaci
    (
        ilość_punktów_klasowych, ilość_punktów_klasowych_z_cech,
        Postacie_ID,    Klasa_nazwa, Rangi_klasowe_Nazwa, aktywna
    )
    VALUES
    (
        77453, 0,
        3, 'Mag', 'Zaawansowany mag', TRUE        
    );
UPDATE postacie SET "siła_poziom_1"="siła_poziom_1" WHERE gracz is NULL
SELECT * FROM klasa_postaci;

-- -- 1.1.3 sprawdzanie:  cech i statystyk (naturalnych) postaci
SELECT * FROM Postacie_Cechy_Naturalne;
SELECT * FROM Statystyki_Naturalne_Postaci;


-- -- 1.2. Tworzenie:  postaci na poziomie 1(Gracze)
-- -- 1.2.0 sprawdzanie:  umiejętności
SELECT * FROM Umiejętności ORDER BY Poboczna;
SELECT * FROM Podległość ORDER BY wymagana_nadrzędna, podrzędna;

-- -- 1.2.1 sprawdzanie:  ras i statystyk rasowych
SELECT * FROM RASY;
SELECT * FROM Cechy_Rasowe;
SELECT * FROM Statystyki_Rasowe;

-- -- 1.2.2 Tworzenie postaci
INSERT
    INTO Postacie
    (
        Imię, Poziom, PD, wiek, Gracz,
        Siła_poziom_1, Wytrzymałość_poziom_1, Kondycja_poziom_1, Zręczność_poziom_1, Zwinność_poziom_1, 
        Mądrość_poziom_1, Inteligencja_poziom_1,  Charyzma_poziom_1, Pobożność_poziom_1, Wola_poziom_1
    )
    VALUES
    (
        'Michał', 1, 0, 18, 'Jan Tomaszyk',
        3, 6, 4, 8, 2,  9, 8, -3, 5, 8
    );
INSERT
    INTO Postacie
    (
        Imię, Nazwisko, Poziom, PD, wiek, Gracz,
        Siła_poziom_1, Wytrzymałość_poziom_1, Kondycja_poziom_1, Zręczność_poziom_1, Zwinność_poziom_1, 
        Mądrość_poziom_1, Inteligencja_poziom_1,  Charyzma_poziom_1, Pobożność_poziom_1, Wola_poziom_1
    )
    VALUES
    (
        'Ezechiel', 'Krzyżański', 1, 0, 20, 'Maciej Tomaszyk',
        -2, 1, -2, 7, 4,  12, 12, -2, 11, 9
    );

SELECT * FROM Postacie;

-- -- 1.2.3 Przypisanie:  postaciom umiejętności
--- Michał
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Kryształy', 1        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Diamenty', 1        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Magia Tworzenia', 1        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Tworzenie Diamentów', 1        
    );

--- poboczne
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Broń Biała', 2        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Fechtunek', 2        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Miecz', 2        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Miecz jednoręczny', 2        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'Miecz dwuręczny', 1
    );


INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'pierwsza pomoc', 1        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'opatrywanie ran', 1        
    );

INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'poruszanie', 1        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'pływanie', 1        
    );

INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'nawigacja', 1        
    );
INSERT
    INTO Opanowane
    (
        Postacie_ID, Umiejętności_Nazwa, poziom
    )
    VALUES
    (
        4, 'mapy', 1        
    );

-- -- 1.2.4 Przypisanie:  postaci do klas
INSERT 
    INTO klasa_postaci
    (
        ilość_punktów_klasowych, ilość_punktów_klasowych_z_cech,
        Postacie_ID,    Klasa_nazwa, Rangi_klasowe_Nazwa, aktywna
    )
    VALUES
    (
        304, 0,
        4, 'Mag', 'Akolita', TRUE
    );
INSERT 
    INTO klasa_postaci
    (
        ilość_punktów_klasowych, ilość_punktów_klasowych_z_cech,
        Postacie_ID,    Klasa_nazwa, Rangi_klasowe_Nazwa, aktywna
    )
    VALUES
    (
        30, 0,
        4, 'Rycerz', 'nowicjusz', TRUE
    );
--prowokujemy wyliczenie punktów klasowych z cech
UPDATE Postacie SET "siła_z_awansów"="siła_z_awansów" WHERE Imię='Michał' 

-- -- 1.2.5 sprawdzanie:  cech i statystyk (naturalnych) postaci

SELECT * FROM Postacie_Cechy_Naturalne WHERE Imię='Michał';
SELECT * FROM Statystyki_Naturalne_Postaci WHERE Imię='Michał';

-- -- 2.1. Awansowanie:  postaci z 1 poziomu na wyższy poziom (Gracze)
-- -- 2.1.0 sprawdzanie:  cech i statystyk (bazowych) postaci graczy 
SELECT * FROM Postacie_Cechy_Bazowe WHERE Imię='Michał';
SELECT * FROM Statystyki_Bazowe_Postaci WHERE Imię='Michał';
-- -- 2.1.1 sprawdzanie:  cech i statystyk (naturalnych) postaci postaci graczy
SELECT * FROM Postacie_Cechy_Naturalne WHERE Imię='Michał';
SELECT * FROM Statystyki_Naturalne_Postaci WHERE Imię='Michał';
-- -- 2.1.2 wykonanie awansu na rekordzie postaci
UPDATE postacie 
SET 
--podwyższamy poziom
    Poziom=Poziom+1,
--podwyższamy cechy o łącznie 10
    Mądrość_z_awansów=Mądrość_z_awansów+1,
    Inteligencja_z_awansów=Inteligencja_z_awansów+2,
    Wola_z_awansów=Wola_z_awansów+2,
    Charyzma_z_awansów=Charyzma_z_awansów+3,
    Zręczność_z_awansów=Zręczność_z_awansów+2
WHERE Imię='Michał';

SELECT * FROM kontrola_cech_postaci WHERE Imię='Michał';

-- -- 2.1.3 sprawdzanie:  umiejętności postaci możliwych do opanowania i podwyższenia


-- -- 2.1.4 wykonanie na umiejętnościach
