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

-- ==========================================
-- 2. Umiejętności
-- ==========================================

-- ==========================================
-- 2.A. Podległość
-- ==========================================

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
