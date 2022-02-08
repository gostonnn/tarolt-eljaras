-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Nov 16. 11:33
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tap`
--
create database `stored_procedure`;
use `stored_procedure`;
-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dolgozok`
--

CREATE TABLE `dolgozok` (
  `az` int(11) NOT NULL,
  `nev` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `telepules` varchar(50) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `fizetes` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `dolgozok`
--

INSERT INTO `dolgozok` (`az`, `nev`, `telepules`, `fizetes`) VALUES
(1, 'Para Lajos', 'Szeged', 26000000),
(2, 'Para Károly', 'Szolnok', 1840000),
(3, 'Fil Terézia', 'Szeged', 1242345),
(4, 'János Péter', 'Pécs', 6353670),
(5, 'Juhász Péter', 'Hatvan', 2875000),
(6, 'Vastag Csaba', 'Esztergom', 42342346),
(7, 'Majon Anna', 'Szeged', 2832400),
(8, 'Bangó Margit', 'Szolnok', 28735600),
(9, 'Fekete Pákó', 'Szeged', 2873200),
(10, 'Berki Krisztián', 'Szeged', 28754600),
(11, 'Bekő Tóni', 'Budapest', 284324600);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `dolgozok`
--
ALTER TABLE `dolgozok`
  ADD PRIMARY KEY (`az`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `dolgozok`
--
ALTER TABLE `dolgozok`
  MODIFY `az` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
