-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 01 déc. 2021 à 18:46
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bdEVMI`
--

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `code_Article` int(8) DEFAULT NULL,
  `designationArticle` varchar(20) DEFAULT NULL,
  `quantité` varchar(20) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Article`
--

INSERT INTO `Article` (`code_Article`, `designationArticle`, `quantité`, `prix`, `total`) VALUES
(1, 'Chargeur', '10', 100, 1000),
(2, 'ordinateur', '20', 100, 2000),
(3, 'souris', '10', 10, 100),
(4, 'Torche', '5', 10, 50),
(5, 'ecran', '5', 50, 250),
(6, 'clavier', '5', 50, 250),
(7, 'cartemere', '10', 10, 100),
(8, 'multiprise', '10', 10, 100),
(9, 'adaptateur', '20', 10, 200),
(10, 'ventilateur', '5', 50, 250);

-- --------------------------------------------------------

--
-- Structure de la table `Caisse`
--

CREATE TABLE `Caisse` (
  `code_Caisse` int(8) DEFAULT NULL,
  `quantité` varchar(20) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `prixTotal` double DEFAULT NULL,
  `DesignationArticle` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Caisse`
--

INSERT INTO `Caisse` (`code_Caisse`, `quantité`, `prix`, `prixTotal`, `DesignationArticle`) VALUES
(1, '10', 50, 500, 'souris'),
(2, '5', 50, 250, 'USB'),
(3, '5', 100, 500, 'ordinateur'),
(4, '4', 100, 400, 'chargeur'),
(5, '4', 100, 400, 'ecran'),
(6, '2', 100, 200, 'chargeur'),
(7, '2', 50, 100, 'ventilateur'),
(8, '1', 50, 50, 'torche'),
(9, '1', 100, 100, 'ordinateur'),
(10, '3', 50, 150, 'chargeur');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `id_client` int(8) DEFAULT NULL,
  `NomClient` varchar(30) DEFAULT NULL,
  `prenomClient` varchar(20) DEFAULT NULL,
  `adresseClient` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`id_client`, `NomClient`, `prenomClient`, `adresseClient`) VALUES
(1, 'Yves', 'ouatche', 'amtoukouin'),
(2, 'Ali', 'oumar', 'goudji'),
(3, 'alphone', 'pierre', 'abena'),
(4, 'mht', 'brahim', 'chagoua'),
(5, 'hisseine', 'fatime', 'sabangali'),
(6, 'jean', 'urbain', 'amtoukouin'),
(7, 'delphine', 'agathe', 'gassi'),
(8, 'ngaerlem', 'paul', 'abena'),
(9, 'absolon', 'alexis', 'atrone'),
(10, 'djo', 'abdramane', 'ndjari');

-- --------------------------------------------------------

--
-- Structure de la table `Commande`
--

CREATE TABLE `Commande` (
  `code_Cmd` int(8) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `quantité` varchar(20) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Commande`
--

INSERT INTO `Commande` (`code_Cmd`, `designation`, `quantité`, `prix`, `total`) VALUES
(1, 'imprimante', '2', 100, 200),
(2, 'projecteur', '5', 100, 500),
(3, 'ordinateur', '10', 200, 2000),
(4, 'chargeur', '5', 50, 250),
(5, 'souris', '4', 50, 200),
(6, 'usb', '5', 50, 250),
(7, 'portable', '5', 50, 250),
(8, 'torche', '5', 50, 250),
(9, 'clavier', '3', 50, 150),
(10, 'ecran', '10', 50, 500);

-- --------------------------------------------------------

--
-- Structure de la table `Fournisseur`
--

CREATE TABLE `Fournisseur` (
  `id_Fournisseur` int(8) DEFAULT NULL,
  `NomFournisseur` varchar(30) DEFAULT NULL,
  `adresseFournisseur` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Fournisseur`
--

INSERT INTO `Fournisseur` (`id_Fournisseur`, `NomFournisseur`, `adresseFournisseur`) VALUES
(NULL, NULL, NULL),
(1, 'chagra', 'ndjari'),
(2, 'saheltic', 'dembe'),
(3, 'alnour', 'abena'),
(4, 'Massar', 'ndjari'),
(5, 'hassan', 'amriguebe'),
(6, 'tah', 'ndjari'),
(7, 'mhd', 'champ fil'),
(8, 'alioumar', 'chagoua'),
(9, 'focon', 'ardepjoumal'),
(10, 'altol', 'mousal');

-- --------------------------------------------------------

--
-- Structure de la table `Gerant`
--

CREATE TABLE `Gerant` (
  `id_Gerant` int(8) DEFAULT NULL,
  `NomGerant` varchar(30) DEFAULT NULL,
  `prenomGerant` varchar(20) DEFAULT NULL,
  `adresseGerant` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Gerant`
--

INSERT INTO `Gerant` (`id_Gerant`, `NomGerant`, `prenomGerant`, `adresseGerant`) VALUES
(1, 'Yves', 'ouatche', 'amtoukouin'),
(2, 'Fatime', 'zara', 'abena'),
(3, 'ali', 'oumar', 'goudji'),
(4, 'koibe', 'model', 'atrone'),
(5, 'valerie', 'minga', 'chagoua'),
(6, 'sonia', 'tari', 'kabalaye'),
(7, 'gaps', 'don', 'amtoukouin'),
(8, 'deli', 'samson', 'walia'),
(9, 'Nassir', 'abdoulaye', 'gassi'),
(10, 'zoua', 'ali', 'toukra');

-- --------------------------------------------------------

--
-- Structure de la table `Livraison`
--

CREATE TABLE `Livraison` (
  `code_livraison` int(8) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `total` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Livraison`
--

INSERT INTO `Livraison` (`code_livraison`, `destination`, `total`) VALUES
(1, 'moundou', '10'),
(2, 'abeche', '2'),
(3, 'ndjamena', '5'),
(4, 'chagoua', '10'),
(5, 'pala', '20'),
(6, 'ati', '10'),
(7, 'mongo', '30'),
(8, 'faya', '12'),
(9, 'sarh', '20'),
(10, 'doba', '12');

-- --------------------------------------------------------

--
-- Structure de la table `Produit`
--

CREATE TABLE `Produit` (
  `code_Produit` int(8) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `quantité` varchar(20) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `Produit`
--

INSERT INTO `Produit` (`code_Produit`, `designation`, `quantité`, `prix`, `total`) VALUES
(1, 'ordi', '2', 10, 20),
(2, 'usb', '5', 10, 50),
(3, 'chargeur', '5', 10, 50),
(4, 'usb', '6', 10, 60),
(5, 'clavier', '7', 10, 70),
(6, 'torche', '2', 10, 20),
(7, 'multiprise', '10', 10, 100),
(8, 'uc', '5', 50, 250),
(9, 'souris', '5', 50, 250),
(10, 'projecteur', '1', 10, 10);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
