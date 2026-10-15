-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3307
-- Létrehozás ideje: 2026. Okt 15. 12:18
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `computerr`
--
CREATE DATABASE IF NOT EXISTS `computerr` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `computerr`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `computers`
--

CREATE TABLE `computers` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Brand` varchar(37) DEFAULT NULL,
  `Type` varchar(30) DEFAULT NULL,
  `Display` float NOT NULL,
  `Memory` int(7) NOT NULL,
  `CreatedTime` datetime(6) NOT NULL,
  `OsId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `computers`
--

INSERT INTO `computers` (`Id`, `Brand`, `Type`, `Display`, `Memory`, `CreatedTime`, `OsId`) VALUES
('3ab42b1f-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Desktop', 14, 8, '2026-09-22 00:59:31.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab43a1c-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'Ultrabook', 15.6, 16, '2026-08-30 01:59:02.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab43b1b-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Workstation', 17.3, 32, '2026-08-07 02:58:33.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab43b61-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'All-in-One', 21.5, 64, '2026-07-15 03:58:04.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab43b9f-c880-11f1-a4ab-401c83bdd51b', 'Apple', 'Mini PC', 24, 4, '2026-06-22 04:57:35.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab43c20-c880-11f1-a4ab-401c83bdd51b', 'MSI', 'Laptop', 27, 8, '2026-05-30 05:57:06.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab43cf2-c880-11f1-a4ab-401c83bdd51b', 'Samsung', 'Desktop', 13.3, 16, '2026-05-07 06:56:37.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab43d34-c880-11f1-a4ab-401c83bdd51b', 'Dell', 'Ultrabook', 14, 32, '2026-04-14 07:56:08.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab43d7f-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Workstation', 15.6, 64, '2026-03-22 08:55:39.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab43dbd-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'All-in-One', 17.3, 4, '2026-02-27 09:55:10.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab43df4-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Mini PC', 21.5, 8, '2026-02-04 10:54:41.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab43e2f-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'Laptop', 24, 16, '2026-01-12 11:54:12.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab43e6a-c880-11f1-a4ab-401c83bdd51b', 'Apple', 'Desktop', 27, 32, '2025-12-20 12:53:43.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab43ea3-c880-11f1-a4ab-401c83bdd51b', 'MSI', 'Ultrabook', 13.3, 64, '2025-11-27 13:53:14.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab43edf-c880-11f1-a4ab-401c83bdd51b', 'Samsung', 'Workstation', 14, 4, '2025-11-04 14:52:45.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab43fab-c880-11f1-a4ab-401c83bdd51b', 'Dell', 'All-in-One', 15.6, 8, '2025-10-12 15:52:16.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab43ff5-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Mini PC', 17.3, 16, '2025-09-19 16:51:47.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab44036-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'Laptop', 21.5, 32, '2025-08-27 17:51:18.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab44072-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Desktop', 24, 64, '2025-08-04 18:50:49.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab440a9-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'Ultrabook', 27, 4, '2025-07-12 19:50:20.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab440e4-c880-11f1-a4ab-401c83bdd51b', 'Apple', 'Workstation', 13.3, 8, '2025-06-19 20:49:51.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab44199-c880-11f1-a4ab-401c83bdd51b', 'MSI', 'All-in-One', 14, 16, '2025-05-27 21:49:22.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab441d6-c880-11f1-a4ab-401c83bdd51b', 'Samsung', 'Mini PC', 15.6, 32, '2025-05-04 22:48:53.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab4420f-c880-11f1-a4ab-401c83bdd51b', 'Dell', 'Laptop', 17.3, 64, '2025-04-11 23:48:24.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab4424b-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Desktop', 21.5, 4, '2025-03-19 00:47:55.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab44281-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'Ultrabook', 24, 8, '2025-02-24 01:47:26.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab442c0-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Workstation', 27, 16, '2025-02-01 02:46:57.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab442fb-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'All-in-One', 13.3, 32, '2025-01-09 03:46:28.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab44337-c880-11f1-a4ab-401c83bdd51b', 'Apple', 'Mini PC', 14, 64, '2024-12-17 04:45:59.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab44372-c880-11f1-a4ab-401c83bdd51b', 'MSI', 'Laptop', 15.6, 4, '2024-11-24 05:45:30.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab443aa-c880-11f1-a4ab-401c83bdd51b', 'Samsung', 'Desktop', 17.3, 8, '2024-11-01 06:45:01.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab443f9-c880-11f1-a4ab-401c83bdd51b', 'Dell', 'Ultrabook', 21.5, 16, '2024-10-09 07:44:32.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab44436-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Workstation', 24, 32, '2024-09-16 08:44:03.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab4447d-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'All-in-One', 27, 64, '2024-08-24 09:43:34.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab444ba-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Mini PC', 13.3, 4, '2024-08-01 10:43:05.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab444fc-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'Laptop', 14, 8, '2024-07-09 11:42:36.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab44532-c880-11f1-a4ab-401c83bdd51b', 'Apple', 'Desktop', 15.6, 16, '2024-06-16 12:42:07.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab44671-c880-11f1-a4ab-401c83bdd51b', 'MSI', 'Ultrabook', 17.3, 32, '2024-05-24 13:41:38.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab446ae-c880-11f1-a4ab-401c83bdd51b', 'Samsung', 'Workstation', 21.5, 64, '2024-05-01 14:41:09.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab446e4-c880-11f1-a4ab-401c83bdd51b', 'Dell', 'All-in-One', 24, 4, '2024-04-08 15:40:40.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab44717-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Mini PC', 27, 8, '2024-03-16 16:40:11.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab4474d-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'Laptop', 13.3, 16, '2024-02-22 17:39:42.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab44784-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Desktop', 14, 32, '2024-01-30 18:39:13.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab447b9-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'Ultrabook', 15.6, 64, '2024-01-07 19:38:44.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab447ef-c880-11f1-a4ab-401c83bdd51b', 'Apple', 'Workstation', 17.3, 4, '2023-12-15 20:38:15.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab44824-c880-11f1-a4ab-401c83bdd51b', 'MSI', 'All-in-One', 21.5, 8, '2023-11-22 21:37:46.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab44857-c880-11f1-a4ab-401c83bdd51b', 'Samsung', 'Mini PC', 24, 16, '2023-10-30 22:37:17.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab448a1-c880-11f1-a4ab-401c83bdd51b', 'Dell', 'Laptop', 27, 32, '2023-10-07 23:36:48.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab448d8-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Desktop', 13.3, 64, '2023-09-14 00:36:19.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab4490e-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'Ultrabook', 14, 4, '2023-08-22 01:35:50.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab44943-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Workstation', 15.6, 8, '2023-07-30 02:35:21.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab44977-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'All-in-One', 17.3, 16, '2023-07-07 03:34:52.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab449b9-c880-11f1-a4ab-401c83bdd51b', 'Apple', 'Mini PC', 21.5, 32, '2023-06-14 04:34:23.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab449ee-c880-11f1-a4ab-401c83bdd51b', 'MSI', 'Laptop', 24, 64, '2023-05-22 05:33:54.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab44a21-c880-11f1-a4ab-401c83bdd51b', 'Samsung', 'Desktop', 27, 4, '2023-04-29 06:33:25.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b'),
('3ab44a57-c880-11f1-a4ab-401c83bdd51b', 'Dell', 'Ultrabook', 13.3, 8, '2023-04-06 07:32:56.000000', '1d2d1926-c880-11f1-a4ab-401c83bdd51b'),
('3ab44a8e-c880-11f1-a4ab-401c83bdd51b', 'HP', 'Workstation', 14, 16, '2023-03-14 08:32:27.000000', '1d2d3924-c880-11f1-a4ab-401c83bdd51b'),
('3ab44ac4-c880-11f1-a4ab-401c83bdd51b', 'Lenovo', 'All-in-One', 15.6, 32, '2023-02-19 09:31:58.000000', '1d2d183c-c880-11f1-a4ab-401c83bdd51b'),
('3ab44b09-c880-11f1-a4ab-401c83bdd51b', 'Asus', 'Mini PC', 17.3, 64, '2023-01-27 10:31:29.000000', '1d2d1949-c880-11f1-a4ab-401c83bdd51b'),
('3ab44bd0-c880-11f1-a4ab-401c83bdd51b', 'Acer', 'Laptop', 21.5, 4, '2023-01-04 11:31:00.000000', '1d2ceaa1-c880-11f1-a4ab-401c83bdd51b');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osystems`
--

CREATE TABLE `osystems` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` longtext NOT NULL,
  `Version` int(11) NOT NULL,
  `RegisterTime` datetime(6) NOT NULL,
  `UpdateTime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `osystems`
--

INSERT INTO `osystems` (`Id`, `Name`, `Version`, `RegisterTime`, `UpdateTime`) VALUES
('1d2ceaa1-c880-11f1-a4ab-401c83bdd51b', 'Windows', 11, '2026-10-15 12:06:39.000000', '2026-10-15 12:06:39.000000'),
('1d2d183c-c880-11f1-a4ab-401c83bdd51b', 'Windows', 10, '2026-10-15 12:06:39.000000', '2026-10-15 12:06:39.000000'),
('1d2d1926-c880-11f1-a4ab-401c83bdd51b', 'Ubuntu', 22, '2026-10-15 12:06:39.000000', '2026-10-15 12:06:39.000000'),
('1d2d1949-c880-11f1-a4ab-401c83bdd51b', 'macOS', 0, '2026-10-15 12:06:39.000000', '2026-10-15 12:06:39.000000'),
('1d2d3924-c880-11f1-a4ab-401c83bdd51b', 'Linux Mint', 21, '2026-10-15 12:06:39.000000', '2026-10-15 12:06:39.000000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(150) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20261008091945_InitialDb', '9.0.20'),
('20261015070206_ComputerTable', '9.0.20'),
('20261015071806_RelationTable', '9.0.20');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `computers`
--
ALTER TABLE `computers`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IX_Computers_OsId` (`OsId`);

--
-- A tábla indexei `osystems`
--
ALTER TABLE `osystems`
  ADD PRIMARY KEY (`Id`);

--
-- A tábla indexei `__efmigrationshistory`
--
ALTER TABLE `__efmigrationshistory`
  ADD PRIMARY KEY (`MigrationId`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `computers`
--
ALTER TABLE `computers`
  ADD CONSTRAINT `FK_Computers_Osystems_OsId` FOREIGN KEY (`OsId`) REFERENCES `osystems` (`Id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
