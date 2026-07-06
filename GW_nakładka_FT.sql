
--RANGI KLASOWE
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
SELECT * FROM Rangi_klasowe

Commit
Rollback

ALTER TABLE SBD164306.Rangi_klasowe ENABLE TRIGGER trg_check_ranga_łańcuch;
UPDATE SBD164306.Rangi_klasowe--sztuczka uruchamiająca Trigger by sprawdzić poprawność danych
    SET Nazwa = Nazwa WHERE Nazwa = 'Nowicjusz'; 