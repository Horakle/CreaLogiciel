-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 23 Novembre 2016 à 09:10
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `crealogiciel`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `idcat` int(11) NOT NULL AUTO_INCREMENT,
  `libcat` varchar(50) NOT NULL,
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`idcat`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`idcat`, `libcat`, `valide`) VALUES
(1, 'etudiant', 1),
(2, 'eleve', 1),
(3, 'professeur ', 1),
(4, 'ogec', 1);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `idclients` int(11) NOT NULL AUTO_INCREMENT,
  `nomclients` varchar(50) NOT NULL,
  `prenomclients` varchar(50) NOT NULL,
  `photo` varchar(350) NOT NULL,
  `codebarre` varchar(350) NOT NULL,
  `lunm` tinyint(1) NOT NULL,
  `luns` tinyint(1) NOT NULL,
  `marm` tinyint(1) NOT NULL,
  `mars` tinyint(1) NOT NULL,
  `merm` tinyint(1) NOT NULL,
  `mers` tinyint(1) NOT NULL,
  `jeum` tinyint(1) NOT NULL,
  `jeus` tinyint(1) NOT NULL,
  `venm` tinyint(1) NOT NULL,
  `vens` tinyint(1) NOT NULL,
  `idtypeclients` varchar(50) NOT NULL,
  PRIMARY KEY (`idclients`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE IF NOT EXISTS `contenir` (
  `idproduits` int(11) NOT NULL,
  `idrepas` int(11) NOT NULL,
  `historiquetarif` float NOT NULL,
  PRIMARY KEY (`idproduits`,`idrepas`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `credit`
--

CREATE TABLE IF NOT EXISTS `credit` (
  `idcredit` int(11) NOT NULL AUTO_INCREMENT,
  `datecredit` date NOT NULL,
  `heurecredit` time NOT NULL,
  `montantcredit` float NOT NULL,
  `idclients` int(11) NOT NULL,
  PRIMARY KEY (`idcredit`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE IF NOT EXISTS `produits` (
  `idproduits` int(11) NOT NULL AUTO_INCREMENT,
  `libproduits` varchar(50) NOT NULL,
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`idproduits`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `produits`
--

INSERT INTO `produits` (`idproduits`, `libproduits`, `valide`) VALUES
(1, 'cafe', 1),
(2, 'bol de riz', 1),
(3, 'repas normal', 1);

-- --------------------------------------------------------

--
-- Structure de la table `repas`
--

CREATE TABLE IF NOT EXISTS `repas` (
  `idrepas` int(11) NOT NULL AUTO_INCREMENT,
  `daterepas` date NOT NULL,
  `heurerepas` time NOT NULL,
  `prix` float NOT NULL,
  `idclients` int(11) NOT NULL,
  `idtyperepas` int(11) NOT NULL,
  PRIMARY KEY (`idrepas`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Structure de la table `tarif`
--

CREATE TABLE IF NOT EXISTS `tarif` (
  `idproduits` int(11) NOT NULL,
  `idcat` int(11) NOT NULL,
  `tarifN` float NOT NULL,
  `tarifF` float NOT NULL,
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`idproduits`,`idcat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tarif`
--

INSERT INTO `tarif` (`idproduits`, `idcat`, `tarifN`, `tarifF`, `valide`) VALUES
(3, 2, 6, 5.2, 1),
(3, 1, 6, 5.2, 1),
(3, 3, 5.2, 5.2, 1),
(3, 4, 2.4, 2.4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `typeclients`
--

CREATE TABLE IF NOT EXISTS `typeclients` (
  `idtypeclients` int(11) NOT NULL AUTO_INCREMENT,
  `libtypeclients` varchar(50) NOT NULL,
  `idcat` int(11) NOT NULL,
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`idtypeclients`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `typeclients`
--

INSERT INTO `typeclients` (`idtypeclients`, `libtypeclients`, `idcat`, `valide`) VALUES
(1, 'TS2 SIO', 1, 1),
(2, 'TS1 SIO', 1, 1),
(3, 'TS1 Tourisme', 1, 1),
(4, 'TS2 Tourisme', 1, 1),
(5, '2nd STMG', 2, 1),
(6, '1ere STMG', 2, 1),
(7, 'Terminal STMG', 2, 1),
(8, 'ogec', 4, 1),
(9, 'professeur', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `typerepas`
--

CREATE TABLE IF NOT EXISTS `typerepas` (
  `idtyperepas` int(11) NOT NULL AUTO_INCREMENT,
  `libtyperepas` varchar(50) NOT NULL,
  `valide` tinyint(1) NOT NULL,
  PRIMARY KEY (`idtyperepas`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `typerepas`
--

INSERT INTO `typerepas` (`idtyperepas`, `libtyperepas`, `valide`) VALUES
(1, 'midi', 1),
(2, 'soir', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
