-- Tesztadatok a `computers` táblához (60 rekord)
-- Futtatás: phpMyAdmin-ban a `computer13bcsop2` adatbázis kiválasztása után (Importálás vagy SQL fül)
USE `computer13bcsop2`;

INSERT INTO `computers` (`Id`, `Brand`, `Type`, `Display`, `Memory`, `CreatedTime`, `OsId`)
-- Rekurzív CTE: létrehozza az 1..60 számsort, így 60 sort tudunk generálni külön ciklus nélkül
WITH RECURSIVE seq AS (
    SELECT 1 AS n                              -- kezdőérték
    UNION ALL
    SELECT n + 1 FROM seq WHERE n < 60         -- addig növeljük, amíg el nem érjük a 60-at
),
-- Az osystems sorait megszámozzuk 1..N-ig, hogy minden számhoz tartozzon egy létező OsId
os AS (
    SELECT `Id`, ROW_NUMBER() OVER (ORDER BY `Id`) AS rn
    FROM `osystems`
)
SELECT
    UUID(),                                                         -- egyedi azonosító (char(36))
    -- Márka: a sorszám alapján ciklikusan választunk a listából
    ELT(1 + (seq.n MOD 8), 'Dell', 'HP', 'Lenovo', 'Asus', 'Acer', 'Apple', 'MSI', 'Samsung'),
    -- Típus: más ciklussal választjuk, hogy változatos párosítások jöjjenek létre
    ELT(1 + (seq.n MOD 6), 'Laptop', 'Desktop', 'Ultrabook', 'Workstation', 'All-in-One', 'Mini PC'),
    -- Képernyőméret (col. inch): a lista a gyakori méreteket tartalmazza
    ELT(1 + (seq.n MOD 7), 13.3, 14, 15.6, 17.3, 21.5, 24, 27),
    -- Memória GB-ban: 4-től 64-ig, kettő hatványai
    ELT(1 + (seq.n MOD 5), 4, 8, 16, 32, 64),
    -- Létrehozási idő: az elmúlt ~4 évben szétszórva (napi lépésekkel, 6 tizedesre kerekítve a mezőhöz)
    TIMESTAMP(DATE_SUB('2026-10-15', INTERVAL (seq.n * 23) DAY), SEC_TO_TIME((seq.n * 3571) MOD 86400)),
    -- OsId: a megszámozott osystems sorokból, így a külső kulcs (FK) mindig érvényes
    os.`Id`
FROM seq
JOIN os
  ON os.rn = 1 + ((seq.n * 7) MOD (SELECT COUNT(*) FROM `osystems`));
