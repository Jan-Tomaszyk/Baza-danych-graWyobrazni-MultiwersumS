--kod szukający
SELECT
    p.podrzędna,
    p.minimalny_poziom,
    o.poziom
FROM Podległość p
JOIN Opanowane o
  ON o.Umiejętności_Nazwa = p.podrzędna
 AND o.Postacie_ID = NEW.Postacie_ID
WHERE p.wymagana_nadrzędna = NEW.Umiejętności_Nazwa;
różni się istotnie od poprzedniego
SELECT
        p.wymagana_nadrzędna,
        p.minimalny_poziom,
        o.poziom AS poziom_nadrzednej
    INTO naruszenie
    FROM Podległość p
    LEFT JOIN Opanowane o
      ON o.Umiejętności_Nazwa = p.wymagana_nadrzędna
     AND o.Postacie_ID = NEW.Postacie_ID
    WHERE p.podrzędna = NEW.Umiejętności_Nazwa
      AND (
            o.poziom IS NULL
            OR
            o.poziom < NEW.poziom + p.minimalny_poziom
          )
    LIMIT 1;


--sprawdz_zaleznosci_postaci 1 wersja - obecna - można jeszcze pomyśleć o rozdziale walidacji i ukazania
CREATE OR REPLACE FUNCTION sprawdz_zaleznosci_postaci(
    p_postac_id INTEGER
)
RETURNS VOID
AS
$$
DECLARE
    naruszenie RECORD;
BEGIN

    SELECT
        p.wymagana_nadrzędna,
        p.podrzędna,
        p.minimalny_poziom,
        podrz.poziom AS poziom_podrzednej,
        nadrz.poziom AS poziom_nadrzednej
    INTO naruszenie
    FROM Podległość p

    JOIN Opanowane podrz
      ON podrz.Umiejętności_Nazwa = p.podrzędna
     AND podrz.Postacie_ID = p_postac_id

    LEFT JOIN Opanowane nadrz
      ON nadrz.Umiejętności_Nazwa = p.wymagana_nadrzędna
     AND nadrz.Postacie_ID = p_postac_id

    WHERE
        nadrz.poziom IS NULL
        OR
        nadrz.poziom < podrz.poziom + p.minimalny_poziom

    LIMIT 1;

    IF FOUND THEN

        IF naruszenie.poziom_nadrzednej IS NULL THEN

            RAISE EXCEPTION
                'Postać % posiada umiejętność "%", ale nie posiada wymaganej umiejętności nadrzędnej "%".',
                p_postac_id,
                naruszenie.podrzędna,
                naruszenie.wymagana_nadrzędna;

        ELSE

            RAISE EXCEPTION
                'Postać % posiada umiejętność "%" na poziomie %, lecz umiejętność nadrzędna "%" ma poziom %, a wymagany jest co najmniej %.',
                p_postac_id,
                naruszenie.podrzędna,
                naruszenie.poziom_podrzednej,
                naruszenie.wymagana_nadrzędna,
                naruszenie.poziom_nadrzednej,
                naruszenie.poziom_podrzednej + naruszenie.minimalny_poziom;

        END IF;

    END IF;

END;
$$
LANGUAGE plpgsql;
CREATE OR REPLACE FUNCTION trg_sprawdz_zaleznosci_postaci()
RETURNS TRIGGER
AS
$$
BEGIN

    PERFORM sprawdz_zaleznosci_postaci(
        COALESCE(NEW.Postacie_ID, OLD.Postacie_ID)
    );

    RETURN COALESCE(NEW, OLD);
END;
$$
LANGUAGE plpgsql;
---trigger
CREATE TRIGGER trg_opanowane_spojnosc
AFTER INSERT OR UPDATE OR DELETE
ON Opanowane
FOR EACH ROW
EXECUTE FUNCTION trg_sprawdz_zaleznosci_postaci();
---- podział walidacji i ukazania błędów wyszukaj w konwersacji z GPT
-------------------naruszenie := znajdz_pierwsze_naruszenie(...);

IF naruszenie IS NOT NULL THEN
    RAISE EXCEPTION ...
END IF;

IF EXISTS (
    SELECT 1
    FROM znajdz_naruszenia_postaci(NEW.Postacie_ID)
)
THEN
    RAISE EXCEPTION ...
END IF;

SELECT *
FROM znajdz_naruszenia_postaci(17);
------------------- użyteczne przy imporcie


--dawna wersja - tylko zmiany podrzędnych:
CREATE OR REPLACE FUNCTION sprawdz_podleglosc()
RETURNS trigger AS
$$
DECLARE
    naruszenie RECORD;
BEGIN

    SELECT
        p.wymagana_nadrzędna,
        p.minimalny_poziom,
        o.poziom AS poziom_nadrzednej
    INTO naruszenie
    FROM Podległość p
    LEFT JOIN Opanowane o
      ON o.Umiejętności_Nazwa = p.wymagana_nadrzędna
     AND o.Postacie_ID = NEW.Postacie_ID
    WHERE p.podrzędna = NEW.Umiejętności_Nazwa
      AND (
            o.poziom IS NULL
            OR
            o.poziom < NEW.poziom + p.minimalny_poziom
          )
    LIMIT 1;

    IF FOUND THEN

        IF naruszenie.poziom_nadrzednej IS NULL THEN

            RAISE EXCEPTION
            'Umiejętność "%" wymaga posiadania umiejętności nadrzędnej "%".',
            NEW.Umiejętności_Nazwa,
            naruszenie.wymagana_nadrzędna;

        ELSE

            RAISE EXCEPTION
            'Umiejętność "%" na poziomie % wymaga umiejętności "%" na poziomie co najmniej % (obecnie: %).',
            NEW.Umiejętności_Nazwa,
            NEW.poziom,
            naruszenie.wymagana_nadrzędna,
            NEW.poziom + naruszenie.minimalny_poziom,
            naruszenie.poziom_nadrzednej;

        END IF;

    END IF;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trg_sprawdz_podleglosc
BEFORE INSERT OR UPDATE
ON Opanowane
FOR EACH ROW
EXECUTE FUNCTION sprawdz_podleglosc();




Siła_klasowa INTEGER CONSTRAINT naturalne CHECK(Siła_klasowa>=0),
    Wytrzymałość_klasowa INTEGER CONSTRAINT naturalne CHECK(Wytrzymałość_klasowa>=0),
    Kondycja_klasowa INTEGER CONSTRAINT naturalne CHECK(Kondycja_klasowa>=0),
    Zręczność_klasowa INTEGER CONSTRAINT naturalne CHECK(Zręczność_klasowa>=0),
    Zwinność_klasowa INTEGER CONSTRAINT naturalne CHECK(Zwinność_klasowa>=0),
    Mądrość_klasowa INTEGER CONSTRAINT naturalne CHECK(Mądrość_klasowa>=0),
    Inteligencja_klasowa INTEGER CONSTRAINT naturalne CHECK(Inteligencja_klasowa>=0),
    Charyzma_klasowa INTEGER CONSTRAINT naturalne CHECK(Charyzma_klasowa>=0),
    Pobożność_klasowa INTEGER CONSTRAINT naturalne CHECK(Pobożność_klasowa>=0),
    Wola_klasowa INTEGER CONSTRAINT naturalne CHECK(Wola_klasowa>=0),


---dziwnie rozbudowana, ale uniwersalna(podatna na rozbudowę) forma przechowywania bonusów klasowych:
bonus_typ SMALLINT
CASE bonus_typ
WHEN 0 THEN 0
WHEN 1 THEN poziom / 10
WHEN 2 THEN poziom / 5
WHEN 3 THEN poziom / 3
WHEN 4 THEN poziom
WHEN 5 THEN FLOOR(poziom * 1.5)
END


---ignorowanie ograniczeń
BEGIN;

-- 1. Usuń ograniczenie
ALTER TABLE Postacie DROP CONSTRAINT Postacie_poziom1;
ALTER TABLE Postacie DROP CONSTRAINT Postacie_awanse;

-- 2. Wykonaj swoje operacje (np. wstawianie danych łamiących reguły)
INSERT INTO Postacie (...) VALUES (...);

-- 3. Opcjonalnie: Dodaj z powrotem bez natychmiastowego sprawdzania wszystkich danych (szybkie)
--    Uwaga: To oznacza, że w tabeli mogą być już nieprawidłowe dane przed dodaniem constraintu
ALTER TABLE Postacie ADD CONSTRAINT Postacie_poziom1 
CHECK (Siła_poziom_1 + ... + Wola_poziom_1 <= 50) NOT VALID;

-- Jeśli chcesz sprawdzić i naprawić dane przed ostatecznym włączeniem:
-- ALTER TABLE Postacie VALIDATE CONSTRAINT Postacie_poziom1;

COMMIT;



---Jedna sugestia architektoniczna

----Patrząc na rozwój całego projektu, zacząłbym wydzielać funkcje na trzy poziomy:

----Funkcje obliczeniowe – niczego nie zmieniają, tylko zwracają wynik (np. oblicz_punkty_klasowe_z_cech).
----Funkcje aktualizujące – wywołują funkcje obliczeniowe i zapisują wyniki do tabel (np. aktualizuj_punkty_klasowe_z_cech).
----Funkcje triggerów – są bardzo krótkie i jedynie wywołują odpowiednią funkcję aktualizującą.


--punkty_klasowe_z_cech - widokowa wersja
CREATE OR REPLACE VIEW cechy_dające_punkty_klasowe AS
(
    SELECT 
    ID_postaci,
    p.Imię,
    p.Nazwisko,
    k.Nazwa AS Nazwa_Klasy,
    kp.aktywna,
    CASE
        WHEN 'Mądrość' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Mądrość_poziom_1
        ELSE 0
    END AS Mądrość_poziom_1,
    CASE
        WHEN 'Inteligencja' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Inteligencja_poziom_1
        ELSE 0
    END AS Inteligencja_poziom_1,
    CASE
        WHEN 'Wola' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Wola_poziom_1
        ELSE 0
    END AS Wola_poziom_1,
    CASE
        WHEN 'Pobożność' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Pobożność_poziom_1
        ELSE 0
    END AS Pobożność_poziom_1,
    CASE
        WHEN 'Charyzma' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Charyzma_poziom_1
        ELSE 0
    END AS Charyzma_poziom_1,
    CASE
        WHEN 'Wytrzymałość' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Wytrzymałość_poziom_1
        ELSE 0
    END AS Wytrzymałość_poziom_1,
    CASE
        WHEN 'Siła' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Siła_poziom_1
        ELSE 0
    END AS Siła_poziom_1,
    CASE
        WHEN 'Zręczność' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Zręczność_poziom_1
        ELSE 0
    END AS Zręczność_poziom_1,
    CASE
        WHEN 'Zwinność' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Zwinność_poziom_1
        ELSE 0
    END AS Zwinność_poziom_1,
    CASE
        WHEN 'Kondycja' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Kondycja_poziom_1
        ELSE 0
    END AS Kondycja_poziom_1,
    --z_awansów
    CASE
        WHEN 'Mądrość' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Mądrość_z_awansów
        ELSE 0
    END AS Mądrość_z_awansów,
    CASE
        WHEN 'Inteligencja' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Inteligencja_z_awansów
        ELSE 0
    END AS Inteligencja_z_awansów,
    CASE
        WHEN 'Wola' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Wola_z_awansów
        ELSE 0
    END AS Wola_z_awansów,
    CASE
        WHEN 'Pobożność' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Pobożność_z_awansów
        ELSE 0
    END AS Pobożność_z_awansów,
    CASE
        WHEN 'Charyzma' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Charyzma_z_awansów
        ELSE 0
    END AS Charyzma_z_awansów,
    CASE
        WHEN 'Wytrzymałość' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Wytrzymałość_z_awansów
        ELSE 0
    END AS Wytrzymałość_z_awansów,
    CASE
        WHEN 'Siła' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Siła_z_awansów
        ELSE 0
    END AS Siła_z_awansów,
    CASE
        WHEN 'Zręczność' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Zręczność_z_awansów
        ELSE 0
    END AS Zręczność_z_awansów,
    CASE
        WHEN 'Zwinność' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Zwinność_z_awansów
        ELSE 0
    END AS Zwinność_z_awansów,
    CASE
        WHEN 'Kondycja' IN(premiowana_cecha1, premiowana_cecha2, premiowana_cecha3)--(SELECT Cecha FROM Klasy_Cechy) 
        THEN Kondycja_z_awansów
        ELSE 0
    END AS Kondycja_z_awansów,
    aktywna
    FROM Postacie p 
    INNER JOIN klasa_postaci kp ON p.ID_postaci = kp.ID_postaci
    INNER JOIN Klasy k ON kp.Klasa_Nazwa=k.Nazwa
    ORDER BY ID_postaci;
)
---punkty_klasowe_z_cech
CREATE OR REPLACE VIEW punkty_klasowe_z_cech AS
(
    With Obliczenia AS
    (
        WITH Sumy AS
        (
            SELECT
            ID_postaci,
            Imię,
            Nazwisko,
            Nazwa_Klasy,
            aktywna,
            (
                Siła_poziom_1 
                + Wytrzymałość_poziom_1
                + Kondycja_poziom_1
                + Zręczność_poziom_1
                + Zwinność_poziom_1
                + Mądrość_poziom_1
                + Inteligencja_poziom_1
                + Charyzma_poziom_1
                + Pobożność_poziom_1
                + Wola_poziom_1
            ) AS SUMA_poziom_1,
            (
                Siła_z_awansów 
                + Wytrzymałość_z_awansów
                + Kondycja_z_awansów
                + Zręczność_z_awansów
                + Zwinność_z_awansów
                + Mądrość_z_awansów
                + Inteligencja_z_awansów
                + Charyzma_z_awansów
                + Pobożność_z_awansów
                + Wola_z_awansów
            ) AS SUMA_z_awansów
            FROM cechy_dające_punkty_klasowe
        )
        SELECT
            ID_postaci,
            Imię,
            Nazwisko,
            Nazwa_Klasy,
            aktywna,
            SUMA_z_awansów AS punkty_z_awansów,
            (SUMA_poziom_1+SUMA_z_awansów)/10 AS punkty_z_pełnych_cech
        FROM Sumy    
    )
    SELECT 
        ID_postaci,
        Imię,
        Nazwisko,
        Nazwa_Klasy,
        aktywna,
        punkty_z_awansów,
        punkty_z_pełnych_cech,
        punkty_z_awansów + punkty_z_pełnych_cech AS łącznie_punktów_z_cech,
    FROM Obliczenia
)
CREATE OR REPLACE VIEW punkty_klasowe_z_cech_SI AS
(
    With Sumy AS
    (
    SELECT
        ID_postaci,
        Imię,
        Nazwisko,
        Nazwa_Klasy,
        aktywna,
        (
            Siła_poziom_1 
            + Wytrzymałość_poziom_1
            + Kondycja_poziom_1
            + Zręczność_poziom_1
            + Zwinność_poziom_1
            + Mądrość_poziom_1
            + Inteligencja_poziom_1
            + Charyzma_poziom_1
            + Pobożność_poziom_1
            + Wola_poziom_1
        ) AS SUMA_poziom_1,
        (
            Siła_z_awansów 
            + Wytrzymałość_z_awansów
            + Kondycja_z_awansów
            + Zręczność_z_awansów
            + Zwinność_z_awansów
            + Mądrość_z_awansów
            + Inteligencja_z_awansów
            + Charyzma_z_awansów
            + Pobożność_z_awansów
            + Wola_z_awansów
        ) AS SUMA_z_awansów
        FROM cechy_dające_punkty_klasowe
    )
   Obliczenia AS
    (
        SELECT
            ID_postaci,
            Imię,
            Nazwisko,
            Nazwa_Klasy,
            aktywna,
            SUMA_z_awansów AS punkty_z_awansów,
            (SUMA_poziom_1+SUMA_z_awansów)/10 AS punkty_z_pełnych_cech
        FROM Sumy    
    )
    SELECT 
        ID_postaci,
        Imię,
        Nazwisko,
        Nazwa_Klasy,
        aktywna,
        punkty_z_awansów,
        punkty_z_pełnych_cech
        SUMA_z_awansów + punkty_z_pełnych_cech AS łącznie_punktów_z_cech,
    FROM Obliczenia
)

---gdby liczba egzemplarzy przedmiotów wzrosła
--CREATE INDEX idx_Egzemplarze_Przedmiotów_Postać_noszone
--ON Egzemplarze_Przedmiotów(Postacie_ID)
--WHERE jest_noszony = TRUE;

---gdyby wyszukiwać czego można nauczyć się z księgi:
--CREATE INDEX idx_umiejetnosci_uczone_z_ksiag_ksiega
--ON umiejętności_uczone_z_ksiąg
--    (Księgi_i_Pisma_Przedmioty_Przed_Nazwa);
--CREATE INDEX idx_Techniki_uczone_z_ksiąg_ksiega
--ON Techniki_uczone_z_ksiąg
--    (Księgi_i_Pisma_Przedmioty_Przed_Nazwa);

--opcjonalnie Tabela Klasy_Cechy określająca cechy premiowane (skomentuj lub usuń jeśli nie użyjesz)
--CREATE TABLE Klasy_Cechy
--(
--    Klasa_nazwa VARCHAR(255) NOT NULL,
--    Cecha VARCHAR(255),
--    główna BOOLEAN DEFAULT TRUE,--?
--    warunek VARCHAR(255),--?
--    CONSTRAINT Klasy_Cechy_PK PRIMARY KEY (Klasa_nazwa, Cecha)
--);

CREATE SCHEMA public;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO public;

CREATE OR REPLACE VIEW bonusy_klasowe AS
SELECT 
    ID_postaci,
    Imię,
    NAZWISKO,
    Nazwa_Klasy,
    poziom*Mądrość_na_poziom AS Mądrość,
    poziom*Inteligencja_na_poziom AS Inteligencja,
    poziom*Wola_na_poziom AS Wola,
    poziom*Pobożność_na_poziom AS Pobożność,
    poziom*Charyzma_na_poziom AS Charyzma,
    poziom*Wytrzymałość_na_poziom AS Wytrzymałość,
    poziom*Siła_na_poziom AS Siła,
    poziom*Zręczność_na_poziom AS Zręczność,
    poziom*Zwinność_na_poziom AS Zwinność,
    poziom*Kondycja_na_poziom AS Kondycja,
    aktywna
FROM POSTACIE
    INNER JOIN bonusy_klasowe_na_poziom
        ON POSTACIE.ID_postaci=bonusy_klasowe_na_poziom.Postacie_ID
    --INNER JOIN klasa_postaci
    --    ON POSTACIE.ID_postaci=klasa_postaci.ID_postaci
    --INNER JOIN 
    --Rangi_klasowe 
    --    ON (klasa_postaci.Klasa_nazwa=Rangi_klasowe.Klasa_Nazwa 
    --        AND klasa_postaci.Rangi_klasowe_Nazwa=Rangi_klasowe.Rangi_klasowe_Nazwa)
    --INNER JOIN KLASY--Klasy_Cechy
    --    ON klasa_postaci.Klasa_nazwa=Klasy.nazwa
--ORDER BY ID_postaci;


--CREATE OR REPLACE VIEW bonusy_klasowe_postaci2 AS
--SELECT
--    ID_postaci,
--    Imię,
--    NAZWISKO,
--    floor(SUM(Mądrość))         AS Mądrość,
--    floor(SUM(Inteligencja))    AS Inteligencja,
--    floor(SUM(Wola))            AS Wola,
--    floor(SUM(Pobożność))       AS Pobożność,
--    floor(SUM(Charyzma))        AS Charyzma,
--    floor(SUM(Wytrzymałość))    AS Wytrzymałość,
--    floor(SUM(Siła))            AS Siła,
--    floor(SUM(Zręczność))       AS Zręczność,
--    floor(SUM(Zwinność))        AS Zwinność,
--    floor(SUM(Kondycja))        AS Kondycja
--FROM bonusy_klasowe
--WHERE aktywna=TRUE
--GROUP BY ID_postaci
    
--poziom*
-----alternatywa: oddzielnie liczymy wartości współczynników i je sumujemy a dopiero po tym mnożymy razy poziom
--JOIN POSTACIE
--        ON klasa_postaci.ID_postaci=POSTACIE.ID_postaci


CREATE OR REPLACE VIEW punkty_cech_z_klas AS
(
    SELECT
        k.ID_postaci,
        p.Imię,
        p.Nazwisko,
        r.punkty_cech_na_awans,
        k.aktywna,
        k.Klasa_Nazwa,
        -- elementy techniczne
        ---- Przypisz numer wiersza w ramach każdej postaci, sortując od największej wartości
        ROW_NUMBER() OVER
        (
            PARTITION BY k.ID_postaci 
            ORDER BY r.punkty_cech_na_awans DESC
        ) AS rn,
        p.poziom
    FROM Postacie p 
    INNER JOIN klasa_postaci k ON p.ID_postaci = k.Postacie_ID
    INNER JOIN Rangi_klasowe r ON k.Klasa_Nazwa = r.Klasa_Nazwa
        AND k.Rangi_klasowe_Nazwa=r.Nazwa
    --    ON (klasa_postaci.Klasa_nazwa=Rangi_klasowe.Klasa_Nazwa 
    --        AND klasa_postaci.Rangi_klasowe_Nazwa=Rangi_klasowe.Rangi_klasowe_Nazwa)
)


ALTER TABLE Klasy_Przeciwników RENAME COLUMN siła_z_poziom_1 TO Siła_poziom_1

--Cechy_Rasowe INNER JOIN KLASY_PRZECIWNIKÓW ON Cechy_Rasowe.Nazwa=KLASY_PRZECIWNIKÓW.Rasy_Nazwa--!INDEKSUJ!
--Cechy_Rasowe INNER JOIN KLASY_PRZECIWNIKÓW ON Cechy_Rasowe.Nazwa=KLASY_PRZECIWNIKÓW.Rasy_Nazwa--!INDEKSUJ!;

---- Statystyki minimalne 
---- ---policzyć która wersja byłaby wydajniejsza.
---- ---Wydajniejsza jest:
---- --- Klasy_Przeciwników_Cechy -> Klasy_Przeciwników_Cechy_Bazowe_minimalne -> Statystyki_Klas_Przeciwników_minimalne
ALTER TABLE Rasy DROP CONSTRAINT naturalne_średnia_długość_życia_Rasy;
ALTER TABLE Rasy ADD CONSTRAINT naturalne_średnia_długość_życia_Rasy CHECK(średnia_długość_życia >= 0);

ALTER TABLE Rasy ADD CONSTRAINT Typy_przejęcia CHECK(Typ_przejęcia in
    (
        'Zwierzęce(animal soul)',
        'Bestii(Beast soul)',
        'Maszyny (Machina soul)',
        'Szatana(Satan soul)',
        'bożka(goddo soul)'
    )
)

ALTER TABLE Rasy
    DROP COLUMN Zdolności_rasowe,--Zdolności_rasowe VARCHAR(255)
    ADD COLUMN Zdolności_rasowe TEXT;
ALTER TABLE Rasy
    DROP COLUMN Występowanie_rola_informacje,--Występowanie_rola_informacje VARCHAR(255)
    ADD COLUMN Występowanie_rola_informacje TEXT;

ALTER TABLE Umiejętności
    DROP COLUMN Typ_umiej,
    ADD COLUMN Poboczna BOOLEAN NOT NULL;



--odłożone ze względu na niepewność co do rodzaju:
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
        'Metal', FALSE, 'Magia',
        'atrybut', '', '',
        '',
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
        'Magia umysłu', FALSE, 'Magia',
        'atrybut', 'kategoria', 'rzadka',
        'Ogół magii oddziałujących na umysł lub umysły, spostrzeganie, pamięć, a także zwykłą komunikację.
Niemal wszelkie formy kontroli umysłów i ciała istot żywych.',
        ''
    );
s

Select * from Umiejętności where Nazwa in ('Metal', 'Roślinna', 'Magia umysłu');

DROP TABLE IF EXISTS Księgi_i_Pisma CASCADE;

SELECT current_database(), current_user;

SET ROLE postgres; -- lub inna rola z pełnymi prawami
SELECT current_user, current_database();

SELECT rolname, rolsuper, rolcanlogin
FROM pg_roles

SELECT * FROM information_schema.tables WHERE table_schema = 'public';
RESET ROLE;
SELECT 1;

Commit
Rollback


ALTer TABLE Rangi_klasowe DROP CONSTRAINT naturalne_bonus_do_cech_co_poziomów_Rangi_klasowe
ALTer TABLE Rangi_klasowe DROP CONSTRAINT naturalne_bonus_do_cech_wartość_Rangi_klasowe
ALTER TABLE Rangi_klasowe ADD CONSTRAINT naturalne_bonus_do_cech_co_poziomów_Rangi_klasowe   CHECK(bonus_do_cech_co_poziomów>=0)
ALTER TABLE Rangi_klasowe ADD CONSTRAINT naturalne_bonus_do_cech_wartość_Rangi_klasowe CHECK(bonus_do_cech_wartość>=0)
