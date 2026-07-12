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