-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2026. Okt 15. 07:39
-- Kiszolgáló verziója: 8.4.7
-- PHP verzió: 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `computer13bcsop2`
--
CREATE DATABASE IF NOT EXISTS `computer13bcsop2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `computer13bcsop2`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `computers`
--

DROP TABLE IF EXISTS `computers`;
CREATE TABLE IF NOT EXISTS `computers` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Brand` varchar(37) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Display` float NOT NULL,
  `Memory` int NOT NULL,
  `CreatedTime` datetime(6) NOT NULL,
  `OsId` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT '00000000-0000-0000-0000-000000000000',
  PRIMARY KEY (`Id`),
  KEY `IX_Computers_OsId` (`OsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `computers`
--

INSERT INTO `computers` (`Id`, `Brand`, `Type`, `Display`, `Memory`, `CreatedTime`, `OsId`) VALUES
('e4ea0611-c869-11f1-864b-701ab876b02d', 'HP', 'Desktop', 14, 8, '2026-09-22 00:59:31.000000', '29a3b2e9-5d65-4441-9588-42dea2bc372f'),
('e4ea0d2a-c869-11f1-864b-701ab876b02d', 'Lenovo', 'Ultrabook', 15.6, 16, '2026-08-30 01:59:02.000000', '451b4cf3-6123-4df7-b656-af7229d4beef'),
('e4ea0e2a-c869-11f1-864b-701ab876b02d', 'Asus', 'Workstation', 17.3, 32, '2026-08-07 02:58:33.000000', '7412b293-4729-4739-a14f-f3d719db3ad0'),
('e4ea0ee0-c869-11f1-864b-701ab876b02d', 'Acer', 'All-in-One', 21.5, 64, '2026-07-15 03:58:04.000000', '98ae4334-6c12-4ce8-ae34-0454cac5b68c'),
('e4ea0f76-c869-11f1-864b-701ab876b02d', 'Apple', 'Mini PC', 24, 4, '2026-06-22 04:57:35.000000', 'b74d0fb1-32e7-4629-8fad-c1a606cb0fb3'),
('e4ea1043-c869-11f1-864b-701ab876b02d', 'MSI', 'Laptop', 27, 8, '2026-05-30 05:57:06.000000', 'dc713d96-0c0f-4195-817a-f08a1745d6d8'),
('e4ea10d5-c869-11f1-864b-701ab876b02d', 'Samsung', 'Desktop', 13.3, 16, '2026-05-07 06:56:37.000000', 'ff50bde4-3825-47b8-9cab-cc97663f1c97'),
('e4ea1164-c869-11f1-864b-701ab876b02d', 'Dell', 'Ultrabook', 14, 32, '2026-04-14 07:56:08.000000', '28f49481-a0a0-4dc4-a720-9bdf1c11f735'),
('e4ea11fe-c869-11f1-864b-701ab876b02d', 'HP', 'Workstation', 15.6, 64, '2026-03-22 08:55:39.000000', '43b7a3a6-9a8d-4a03-980d-7b71d8f56413'),
('e4ea1295-c869-11f1-864b-701ab876b02d', 'Lenovo', 'All-in-One', 17.3, 4, '2026-02-27 09:55:10.000000', '6c307511-b2b9-437a-a8df-6ec4ce4a2bbd'),
('e4ea1323-c869-11f1-864b-701ab876b02d', 'Asus', 'Mini PC', 21.5, 8, '2026-02-04 10:54:41.000000', '988c24c9-61b1-4d22-a280-1c4510435a10'),
('e4ea13a2-c869-11f1-864b-701ab876b02d', 'Acer', 'Laptop', 24, 16, '2026-01-12 11:54:12.000000', 'b02b61c4-a3d7-4628-ace6-6fa2fd5166e6'),
('e4ea1428-c869-11f1-864b-701ab876b02d', 'Apple', 'Desktop', 27, 32, '2025-12-20 12:53:43.000000', 'ce177b4e-0837-48a3-9261-a7ab3aa2e4f9'),
('e4ea14b7-c869-11f1-864b-701ab876b02d', 'MSI', 'Ultrabook', 13.3, 64, '2025-11-27 13:53:14.000000', 'fc377a4c-4a15-444d-85e7-ce8a3a578a8e'),
('e4ea1540-c869-11f1-864b-701ab876b02d', 'Samsung', 'Workstation', 14, 4, '2025-11-04 14:52:45.000000', '24933b83-7577-40a9-a491-f0b2ea1fca65'),
('e4ea15cf-c869-11f1-864b-701ab876b02d', 'Dell', 'All-in-One', 15.6, 8, '2025-10-12 15:52:16.000000', '405cacec-8774-49a9-b7d2-1e02ff01cf99'),
('e4ea1668-c869-11f1-864b-701ab876b02d', 'HP', 'Mini PC', 17.3, 16, '2025-09-19 16:51:47.000000', '6b65a6a4-8b81-48f6-b38a-088ca65ed389'),
('e4ea1774-c869-11f1-864b-701ab876b02d', 'Lenovo', 'Laptop', 21.5, 32, '2025-08-27 17:51:18.000000', '972a8469-1641-4f82-8b9d-2434e465e150'),
('e4ea181f-c869-11f1-864b-701ab876b02d', 'Asus', 'Desktop', 24, 64, '2025-08-04 18:50:49.000000', 'aefcfad8-efc8-4849-b3aa-7efe4458a885'),
('e4ea18b3-c869-11f1-864b-701ab876b02d', 'Acer', 'Ultrabook', 27, 4, '2025-07-12 19:50:20.000000', 'c241330b-01a9-471f-9e8a-774bcf36d58b'),
('e4ea1955-c869-11f1-864b-701ab876b02d', 'Apple', 'Workstation', 13.3, 8, '2025-06-19 20:49:51.000000', 'f143262f-dc5c-4eed-8da0-365bf89897b9'),
('e4ea19f7-c869-11f1-864b-701ab876b02d', 'MSI', 'All-in-One', 14, 16, '2025-05-27 21:49:22.000000', '23b8c1e9-3924-46de-beb1-3b9046685257'),
('e4ea1ab9-c869-11f1-864b-701ab876b02d', 'Samsung', 'Mini PC', 15.6, 32, '2025-05-04 22:48:53.000000', '3eabedcb-baa8-4dd4-88bd-64072bcfbe01'),
('e4ea1b5a-c869-11f1-864b-701ab876b02d', 'Dell', 'Laptop', 17.3, 64, '2025-04-11 23:48:24.000000', '5be6128e-18c2-4797-a142-ea7d17be3111'),
('e4ea1c03-c869-11f1-864b-701ab876b02d', 'HP', 'Desktop', 21.5, 4, '2025-03-19 00:47:55.000000', '956269f0-e5d7-4875-adad-d6c795a76d79'),
('e4ea1ca6-c869-11f1-864b-701ab876b02d', 'Lenovo', 'Ultrabook', 24, 8, '2025-02-24 01:47:26.000000', 'ab9099a4-35a2-40ae-9af3-05535ec42e08'),
('e4ea1dcd-c869-11f1-864b-701ab876b02d', 'Asus', 'Workstation', 27, 16, '2025-02-01 02:46:57.000000', 'bf3c4c06-4343-48bc-89fa-6a688fb5d27b'),
('e4ea1e77-c869-11f1-864b-701ab876b02d', 'Acer', 'All-in-One', 13.3, 32, '2025-01-09 03:46:28.000000', 'ec1b8ca1-f91e-4d4c-9ff4-9b7889463e85'),
('e4ea1f1e-c869-11f1-864b-701ab876b02d', 'Apple', 'Mini PC', 14, 64, '2024-12-17 04:45:59.000000', '1a2a73ed-562b-4f79-8374-59eef50bea63'),
('e4ea1fc1-c869-11f1-864b-701ab876b02d', 'MSI', 'Laptop', 15.6, 4, '2024-11-24 05:45:30.000000', '371ecd7b-27cd-4130-8722-9389571aa876'),
('e4ea206f-c869-11f1-864b-701ab876b02d', 'Samsung', 'Desktop', 17.3, 8, '2024-11-01 06:45:01.000000', '5304317f-af42-412f-b838-b3268e944239'),
('e4ea211a-c869-11f1-864b-701ab876b02d', 'Dell', 'Ultrabook', 21.5, 16, '2024-10-09 07:44:32.000000', '9132b63e-f162-47e4-a9c3-49e03602f8ac'),
('e4ea21b7-c869-11f1-864b-701ab876b02d', 'HP', 'Workstation', 24, 32, '2024-09-16 08:44:03.000000', 'a9488d99-0bbb-4599-91ce-5dd2b45ed1f0'),
('e4ea2281-c869-11f1-864b-701ab876b02d', 'Lenovo', 'All-in-One', 27, 64, '2024-08-24 09:43:34.000000', 'beb79919-3f22-4af8-a3be-d01d43cf2fde'),
('e4ea2313-c869-11f1-864b-701ab876b02d', 'Asus', 'Mini PC', 13.3, 4, '2024-08-01 10:43:05.000000', 'e2acf72f-9e57-4f7a-a0ee-89aed453dd32'),
('e4ea239b-c869-11f1-864b-701ab876b02d', 'Acer', 'Laptop', 14, 8, '2024-07-09 11:42:36.000000', '17fc695a-07a0-4a6e-8822-e8f36c031199'),
('e4ea2426-c869-11f1-864b-701ab876b02d', 'Apple', 'Desktop', 15.6, 16, '2024-06-16 12:42:07.000000', '366eb16f-508e-4ad7-b7c9-3acfe059a0ee'),
('e4ea24aa-c869-11f1-864b-701ab876b02d', 'MSI', 'Ultrabook', 17.3, 32, '2024-05-24 13:41:38.000000', '4b0dbb41-8d52-48f1-942c-3fe860e7a113'),
('e4ea2539-c869-11f1-864b-701ab876b02d', 'Samsung', 'Workstation', 21.5, 64, '2024-05-01 14:41:09.000000', '7e570ddf-8270-40a8-a369-b584ff5e9ff0'),
('e4ea25c2-c869-11f1-864b-701ab876b02d', 'Dell', 'All-in-One', 24, 4, '2024-04-08 15:40:40.000000', 'a28defe3-9bf0-4273-9247-6f57a5e5a5ab'),
('e4ea2649-c869-11f1-864b-701ab876b02d', 'HP', 'Mini PC', 27, 8, '2024-03-16 16:40:11.000000', 'bdd640fb-0667-4ad1-9c80-317fa3b1799d'),
('e4ea26d2-c869-11f1-864b-701ab876b02d', 'Lenovo', 'Laptop', 13.3, 16, '2024-02-22 17:39:42.000000', 'e27a984d-6548-41d0-bfcd-9eb1a7cad415'),
('e4ea276a-c869-11f1-864b-701ab876b02d', 'Asus', 'Desktop', 14, 32, '2024-01-30 18:39:13.000000', '10f1bc81-448a-4a9e-a6b2-bc5b50c187fc'),
('e4ea280a-c869-11f1-864b-701ab876b02d', 'Acer', 'Ultrabook', 15.6, 64, '2024-01-07 19:38:44.000000', '3139d32c-93cd-49bf-9c94-1cf0dc98d2c1'),
('e4ea28be-c869-11f1-864b-701ab876b02d', 'Apple', 'Workstation', 17.3, 4, '2023-12-15 20:38:15.000000', '47378190-96da-4dac-b2ff-5d2a386ecbe0'),
('e4ea2966-c869-11f1-864b-701ab876b02d', 'MSI', 'All-in-One', 21.5, 8, '2023-11-22 21:37:46.000000', '759cde66-bacf-43d0-8b1f-9163ce9ff57f'),
('e4ea2a3b-c869-11f1-864b-701ab876b02d', 'Samsung', 'Mini PC', 24, 16, '2023-10-30 22:37:17.000000', '9a1de644-815e-46d1-bb8f-aa1837f8a88b'),
('e4ea2af1-c869-11f1-864b-701ab876b02d', 'Dell', 'Laptop', 27, 32, '2023-10-07 23:36:48.000000', 'bd9c66b3-ad3c-4d6d-9a3d-1fa7bc8960a9'),
('e4ea2ba1-c869-11f1-864b-701ab876b02d', 'HP', 'Desktop', 13.3, 64, '2023-09-14 00:36:19.000000', 'ddd1dfb2-3b98-4ef8-9af6-1a26146d3f31'),
('e4ea2c24-c869-11f1-864b-701ab876b02d', 'Lenovo', 'Ultrabook', 14, 4, '2023-08-22 01:35:50.000000', '0e51f30d-c6a7-4e39-84b0-32ccd7c524a5'),
('e4ea2c8b-c869-11f1-864b-701ab876b02d', 'Asus', 'Workstation', 15.6, 8, '2023-07-30 02:35:21.000000', '29a3b2e9-5d65-4441-9588-42dea2bc372f'),
('e4ea2cf8-c869-11f1-864b-701ab876b02d', 'Acer', 'All-in-One', 17.3, 16, '2023-07-07 03:34:52.000000', '451b4cf3-6123-4df7-b656-af7229d4beef'),
('e4ea2d68-c869-11f1-864b-701ab876b02d', 'Apple', 'Mini PC', 21.5, 32, '2023-06-14 04:34:23.000000', '7412b293-4729-4739-a14f-f3d719db3ad0'),
('e4ea2dcf-c869-11f1-864b-701ab876b02d', 'MSI', 'Laptop', 24, 64, '2023-05-22 05:33:54.000000', '98ae4334-6c12-4ce8-ae34-0454cac5b68c'),
('e4ea2e35-c869-11f1-864b-701ab876b02d', 'Samsung', 'Desktop', 27, 4, '2023-04-29 06:33:25.000000', 'b74d0fb1-32e7-4629-8fad-c1a606cb0fb3'),
('e4ea2e9d-c869-11f1-864b-701ab876b02d', 'Dell', 'Ultrabook', 13.3, 8, '2023-04-06 07:32:56.000000', 'dc713d96-0c0f-4195-817a-f08a1745d6d8'),
('e4ea2f0b-c869-11f1-864b-701ab876b02d', 'HP', 'Workstation', 14, 16, '2023-03-14 08:32:27.000000', 'ff50bde4-3825-47b8-9cab-cc97663f1c97'),
('e4ea2f75-c869-11f1-864b-701ab876b02d', 'Lenovo', 'All-in-One', 15.6, 32, '2023-02-19 09:31:58.000000', '28f49481-a0a0-4dc4-a720-9bdf1c11f735'),
('e4ea2fdd-c869-11f1-864b-701ab876b02d', 'Asus', 'Mini PC', 17.3, 64, '2023-01-27 10:31:29.000000', '43b7a3a6-9a8d-4a03-980d-7b71d8f56413'),
('e4ea3045-c869-11f1-864b-701ab876b02d', 'Acer', 'Laptop', 21.5, 4, '2023-01-04 11:31:00.000000', '6c307511-b2b9-437a-a8df-6ec4ce4a2bbd');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osystems`
--

DROP TABLE IF EXISTS `osystems`;
CREATE TABLE IF NOT EXISTS `osystems` (
  `Id` char(36) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `Name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Version` int NOT NULL,
  `RegisterTime` datetime(6) NOT NULL,
  `UpdateTime` datetime(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `osystems`
--

INSERT INTO `osystems` (`Id`, `Name`, `Version`, `RegisterTime`, `UpdateTime`) VALUES
('0e51f30d-c6a7-4e39-84b0-32ccd7c524a5', 'Manjaro', 22, '2024-05-12 20:32:25.000000', '2026-01-04 08:11:37.000000'),
('10f1bc81-448a-4a9e-a6b2-bc5b50c187fc', 'Manjaro', 24, '2022-04-09 01:45:27.000000', '2025-09-26 17:43:46.000000'),
('17fc695a-07a0-4a6e-8822-e8f36c031199', 'Ubuntu', 18, '2022-02-03 23:31:52.000000', '2025-09-25 04:08:42.000000'),
('1a2a73ed-562b-4f79-8374-59eef50bea63', 'Fedora', 38, '2020-08-08 02:28:51.000000', '2025-01-21 17:53:00.000000'),
('23b8c1e9-3924-46de-beb1-3b9046685257', 'Windows', 8, '2018-12-24 08:32:48.000000', '2025-09-04 20:19:53.000000'),
('24933b83-7577-40a9-a491-f0b2ea1fca65', 'Kali Linux', 2024, '2024-01-10 09:13:27.000000', '2026-08-15 14:43:13.000000'),
('28f49481-a0a0-4dc4-a720-9bdf1c11f735', 'Windows Server', 2016, '2021-08-09 07:53:40.000000', '2026-09-16 20:15:17.000000'),
('29a3b2e9-5d65-4441-9588-42dea2bc372f', 'Arch Linux', 2, '2024-01-03 20:27:53.000000', '2026-01-01 10:49:08.000000'),
('3139d32c-93cd-49bf-9c94-1cf0dc98d2c1', 'macOS', 12, '2023-05-15 10:59:48.000000', '2025-01-15 19:36:06.000000'),
('366eb16f-508e-4ad7-b7c9-3acfe059a0ee', 'Zorin OS', 17, '2024-02-24 09:32:19.000000', '2026-06-13 22:18:35.000000'),
('371ecd7b-27cd-4130-8722-9389571aa876', 'Debian', 13, '2021-12-11 03:15:12.000000', '2025-09-15 04:27:11.000000'),
('3eabedcb-baa8-4dd4-88bd-64072bcfbe01', 'Pop!_OS', 24, '2021-10-24 04:59:59.000000', '2025-03-26 05:56:26.000000'),
('405cacec-8774-49a9-b7d2-1e02ff01cf99', 'Windows Server', 2025, '2021-01-07 13:24:57.000000', '2025-10-13 15:00:22.000000'),
('43b7a3a6-9a8d-4a03-980d-7b71d8f56413', 'Fedora', 40, '2021-05-26 14:18:27.000000', '2026-03-07 09:13:03.000000'),
('451b4cf3-6123-4df7-b656-af7229d4beef', 'Elementary OS', 6, '2018-03-24 10:50:59.000000', '2026-11-28 23:51:15.000000'),
('47378190-96da-4dac-b2ff-5d2a386ecbe0', 'Debian', 10, '2019-02-02 10:04:32.000000', '2025-05-22 15:13:34.000000'),
('4b0dbb41-8d52-48f1-942c-3fe860e7a113', 'Linux Mint', 21, '2019-07-04 18:15:37.000000', '2025-10-03 13:42:37.000000'),
('5304317f-af42-412f-b838-b3268e944239', 'Elementary OS', 8, '2021-06-10 07:14:01.000000', '2025-07-11 08:55:04.000000'),
('5be6128e-18c2-4797-a142-ea7d17be3111', 'Fedora', 39, '2018-04-06 13:31:30.000000', '2025-07-02 05:24:00.000000'),
('6b65a6a4-8b81-48f6-b38a-088ca65ed389', 'Ubuntu', 24, '2018-06-01 18:35:14.000000', '2025-01-03 22:40:03.000000'),
('6c307511-b2b9-437a-a8df-6ec4ce4a2bbd', 'Debian', 12, '2021-06-14 13:29:55.000000', '2025-11-21 20:06:03.000000'),
('7412b293-4729-4739-a14f-f3d719db3ad0', 'Arch Linux', 1, '2022-04-23 10:13:43.000000', '2026-09-16 08:57:58.000000'),
('759cde66-bacf-43d0-8b1f-9163ce9ff57f', 'Fedora', 41, '2022-12-18 01:47:20.000000', '2025-01-19 15:32:58.000000'),
('7e570ddf-8270-40a8-a369-b584ff5e9ff0', 'FreeBSD', 13, '2022-08-02 17:15:58.000000', '2025-08-05 14:42:33.000000'),
('9132b63e-f162-47e4-a9c3-49e03602f8ac', 'Zorin OS', 16, '2023-12-22 06:23:27.000000', '2025-11-11 19:20:42.000000'),
('956269f0-e5d7-4875-adad-d6c795a76d79', 'Chrome OS', 124, '2021-10-28 02:29:26.000000', '2025-12-23 12:31:25.000000'),
('972a8469-1641-4f82-8b9d-2434e465e150', 'Windows', 11, '2022-06-16 00:07:59.000000', '2026-05-08 01:15:56.000000'),
('988c24c9-61b1-4d22-a280-1c4510435a10', 'Windows Server', 2022, '2019-07-23 04:45:13.000000', '2025-07-14 10:34:29.000000'),
('98ae4334-6c12-4ce8-ae34-0454cac5b68c', 'Windows Server', 2019, '2021-02-23 09:15:17.000000', '2026-06-18 02:08:09.000000'),
('9a1de644-815e-46d1-bb8f-aa1837f8a88b', 'Ubuntu', 20, '2021-09-06 08:33:55.000000', '2026-04-18 23:44:12.000000'),
('a28defe3-9bf0-4273-9247-6f57a5e5a5ab', 'Pop!_OS', 22, '2024-01-12 06:43:15.000000', '2025-06-25 17:56:55.000000'),
('a9488d99-0bbb-4599-91ce-5dd2b45ed1f0', 'macOS', 13, '2018-09-07 16:16:08.000000', '2026-02-08 11:18:10.000000'),
('ab9099a4-35a2-40ae-9af3-05535ec42e08', 'openSUSE', 15, '2023-05-06 23:28:35.000000', '2026-09-01 03:04:56.000000'),
('aefcfad8-efc8-4849-b3aa-7efe4458a885', 'openSUSE', 16, '2023-03-18 01:53:23.000000', '2025-07-05 01:19:23.000000'),
('b02b61c4-a3d7-4628-ace6-6fa2fd5166e6', 'Elementary OS', 7, '2020-03-26 22:06:24.000000', '2025-08-08 06:52:58.000000'),
('b74d0fb1-32e7-4629-8fad-c1a606cb0fb3', 'Ubuntu', 22, '2023-05-13 21:41:23.000000', '2026-09-15 03:15:14.000000'),
('bd9c66b3-ad3c-4d6d-9a3d-1fa7bc8960a9', 'Windows', 10, '2023-09-20 06:09:23.000000', '2025-09-25 16:58:00.000000'),
('bdd640fb-0667-4ad1-9c80-317fa3b1799d', 'Windows', 7, '2023-09-25 08:49:41.000000', '2026-02-10 13:10:29.000000'),
('beb79919-3f22-4af8-a3be-d01d43cf2fde', 'Kali Linux', 2025, '2022-08-26 23:10:42.000000', '2025-05-17 21:40:39.000000'),
('bf3c4c06-4343-48bc-89fa-6a688fb5d27b', 'Chrome OS', 118, '2020-02-27 07:43:19.000000', '2025-04-05 00:02:15.000000'),
('c241330b-01a9-471f-9e8a-774bcf36d58b', 'Debian', 11, '2019-12-19 18:30:15.000000', '2026-07-07 03:06:42.000000'),
('ce177b4e-0837-48a3-9261-a7ab3aa2e4f9', 'Manjaro', 23, '2020-01-04 19:27:22.000000', '2026-07-20 16:07:24.000000'),
('dc713d96-0c0f-4195-817a-f08a1745d6d8', 'FreeBSD', 14, '2022-10-11 14:39:52.000000', '2026-09-15 05:47:55.000000'),
('ddd1dfb2-3b98-4ef8-9af6-1a26146d3f31', 'macOS', 15, '2023-02-05 08:07:56.000000', '2025-12-18 04:17:18.000000'),
('e27a984d-6548-41d0-bfcd-9eb1a7cad415', 'Kali Linux', 2023, '2019-04-14 21:24:43.000000', '2025-10-19 09:25:35.000000'),
('e2acf72f-9e57-4f7a-a0ee-89aed453dd32', 'Linux Mint', 22, '2022-09-11 08:13:42.000000', '2026-04-09 12:08:42.000000'),
('ec1b8ca1-f91e-4d4c-9ff4-9b7889463e85', 'Linux Mint', 20, '2024-09-06 01:32:05.000000', '2025-02-20 02:43:55.000000'),
('f143262f-dc5c-4eed-8da0-365bf89897b9', 'CentOS', 7, '2020-07-28 13:34:47.000000', '2025-08-08 08:27:31.000000'),
('fc377a4c-4a15-444d-85e7-ce8a3a578a8e', 'macOS', 14, '2021-09-23 09:39:51.000000', '2025-11-27 17:19:59.000000'),
('ff50bde4-3825-47b8-9cab-cc97663f1c97', 'Chrome OS', 130, '2019-03-21 22:00:57.000000', '2025-07-08 05:51:44.000000');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
CREATE TABLE IF NOT EXISTS `__efmigrationshistory` (
  `MigrationId` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ProductVersion` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- A tábla adatainak kiíratása `__efmigrationshistory`
--

INSERT INTO `__efmigrationshistory` (`MigrationId`, `ProductVersion`) VALUES
('20261008091945_InitialDb', '9.0.20'),
('20261015070206_ComputerTable', '9.0.20'),
('20261015071806_RelationTable', '9.0.20');

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
