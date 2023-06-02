-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 02 jun 2023 om 13:26
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Mvc-2209c-P4`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Examen`
--

DROP TABLE IF STS `Examen`;
CREATE TABLE IF NOT EXISTS `Examen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `Rijschool` varchar(128) NOT NULL,
  `Stad` varchar(128) NOT NULL,
  `Rijbewijscategorie` varchar(128) NOT NULL,
  `Datum` date NOT NULL,
  `Uitslag` tinyint(1) NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerkingen` varchar(128) DEFAULT NULL,
  `DatumAangemaakt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DatumGewijzigd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `Examen`
--

INSERT INTO `Examen` (`Id`, `StudentId`, `Rijschool`, `Stad`, `Rijbewijscategorie`, `Datum`, `Uitslag`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 100234, 'VolGasVooruit', 'Rotterdam', 'B', '2023-04-03', 1, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(2, 123432, 'InZijnVierDoorDeBocht', 'Sliedrecht', 'C', '2023-03-01', 1, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(3, 103234, 'LinksomRechtsom', 'Dordrecht', 'D', '2023-05-15', 1, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(4, 106452, 'OpDeVluchtStrook', 'Zwijndrecht', 'AM', '2023-05-08', 0, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(5, 104546, 'RechtDoorEnGaan', 'Rotterdam', 'B', '2023-04-17', 0, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(6, 100333, 'AltijdGeslaagd', 'Dordrecht', 'B', '2023-05-12', 1, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(7, 124444, 'RijlesVoorJou', 'Rotterdam', 'B', '2023-04-12', 1, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `ExamenPerExaminator`
--

DROP TABLE IF EXISTS `ExamenPerExaminator`;
CREATE TABLE IF NOT EXISTS `ExamenPerExaminator` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ExamenId` int(11) NOT NULL,
  `ExaminatorId` int(11) NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerkingen` varchar(128) DEFAULT NULL,
  `DatumAangemaakt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DatumGewijzigd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`),
  KEY `ExamenId` (`ExamenId`),
  KEY `ExaminatorId` (`ExaminatorId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `ExamenPerExaminator`
--

INSERT INTO `ExamenPerExaminator` (`Id`, `ExamenId`, `ExaminatorId`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 1, 3, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(2, 3, 3, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(3, 2, 2, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(4, 4, 1, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(5, 7, 3, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(6, 6, 2, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(7, 5, 4, 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Examinator`
--

DROP TABLE IF EXISTS `Examinator`;
CREATE TABLE IF NOT EXISTS `Examinator` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Voornaam` varchar(128) NOT NULL,
  `Tussenvoegsel` varchar(128) NOT NULL,
  `Achternaam` varchar(128) NOT NULL,
  `Mobiel` varchar(128) NOT NULL,
  `IsActief` tinyint(1) NOT NULL DEFAULT '1',
  `Opmerkingen` varchar(128) DEFAULT NULL,
  `DatumAangemaakt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DatumGewijzigd` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `Examinator`
--

INSERT INTO `Examinator` (`Id`, `Voornaam`, `Tussenvoegsel`, `Achternaam`, `Mobiel`, `IsActief`, `Opmerkingen`, `DatumAangemaakt`, `DatumGewijzigd`) VALUES
(1, 'Manuel', 'van', 'Meekeren', '06-28493823', 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(2, 'Lissette', 'den', 'Dongen', '06-24383299', 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(3, 'Jurswailly', '', 'Luciano', '06-48293846', 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41'),
(4, 'Naswha', '', 'Salawi', '06-34291219', 1, NULL, '2023-06-02 15:13:41', '2023-06-02 15:13:41');

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `ExamenPerExaminator`
--
ALTER TABLE `ExamenPerExaminator`
  ADD CONSTRAINT `examenperexaminator_ibfk_1` FOREIGN KEY (`ExamenId`) REFERENCES `Examen` (`Id`),
  ADD CONSTRAINT `examenperexaminator_ibfk_2` FOREIGN KEY (`ExaminatorId`) REFERENCES `Examinator` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
