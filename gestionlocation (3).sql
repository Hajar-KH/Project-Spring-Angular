-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 16 jan. 2024 à 13:05
-- Version du serveur : 8.0.27
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionlocation`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` bigint NOT NULL AUTO_INCREMENT,
  `enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `UK_gfn44sntic2k93auag97juyij` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`admin_id`, `enabled`, `password`, `username`) VALUES
(1, b'1', '$2a$10$7WF3CeLtHof8m4RAifbHruq2QpM963T7LaATMnBQ.CrN1HLgF09Sy', 'admin'),
(2, b'1', '$2a$10$hw8Wr5WJfsEDMEAD15LQQOhwDpmihYuDglKc8bpaaXnly9d29OtAq', 'assistant');

-- --------------------------------------------------------

--
-- Structure de la table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE IF NOT EXISTS `admin_role` (
  `admin_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FKox1vbfj0x7ta1nk14np291n9k` (`role_id`),
  KEY `FKcxtbmnff43w12d3v2r8fwufaf` (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admin_role`
--

INSERT INTO `admin_role` (`admin_id`, `role_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idclient` bigint NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) DEFAULT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idclient`, `adresse`, `cin`, `email`, `nom`, `prenom`, `telephone`) VALUES
(2, 'emsi3', '131313', 'h@hotmail.fr', 'hajar', 'khatiby', '080808080'),
(4, 'maarif', '1234567', 'user@test.com', 'test', 'user', '070798999'),
(5, 'maarif2', '1234567', 'user@test.com', 'test2', 'user2', '070798999'),
(6, 'emsi', '123123', 'M@GMAIL.COM', 'YAD', 'MAHA', '0701080909');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE IF NOT EXISTS `reservation` (
  `id_reservation` bigint NOT NULL AUTO_INCREMENT,
  `date_prise` datetime(6) DEFAULT NULL,
  `date_reserv` datetime(6) DEFAULT NULL,
  `date_retour` datetime(6) DEFAULT NULL,
  `etat` varchar(255) DEFAULT NULL,
  `client_idclient` bigint DEFAULT NULL,
  `vehicule_id_vehicule` bigint DEFAULT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `FKasmgcl1xxdm2r9f18jau5ynbh` (`client_idclient`),
  KEY `FK8j6c6w5yeu8g1fcn6b9q5ctke` (`vehicule_id_vehicule`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id_reservation`, `date_prise`, `date_reserv`, `date_retour`, `etat`, `client_idclient`, `vehicule_id_vehicule`) VALUES
(1, '2024-01-26 00:00:00.000000', '2024-01-15 00:00:00.000000', '2024-01-30 00:00:00.000000', 'cc', 4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'ADMIN'),
(2, 'ASSISTANT');

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
CREATE TABLE IF NOT EXISTS `vehicule` (
  `id_vehicule` bigint NOT NULL AUTO_INCREMENT,
  `marque` varchar(255) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `modele` varchar(255) DEFAULT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`id_vehicule`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `vehicule`
--

INSERT INTO `vehicule` (`id_vehicule`, `marque`, `image`, `modele`, `prix`) VALUES
(1, 'Citroen C3', 'citroen.png', '2018', 220),
(3, 'Peugeot 208', 'peugeot.png\r\n', '2021', 200),
(4, 'KIA Niro', 'principal.png', '2020', 180),
(5, 'Dacia Duster', 'dacia.png', '2019', 350),
(7, 'Fiat 500', 'fiat.png', '2023', 200);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `admin_role`
--
ALTER TABLE `admin_role`
  ADD CONSTRAINT `FKcxtbmnff43w12d3v2r8fwufaf` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  ADD CONSTRAINT `FKox1vbfj0x7ta1nk14np291n9k` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `FK8j6c6w5yeu8g1fcn6b9q5ctke` FOREIGN KEY (`vehicule_id_vehicule`) REFERENCES `vehicule` (`id_vehicule`),
  ADD CONSTRAINT `FKasmgcl1xxdm2r9f18jau5ynbh` FOREIGN KEY (`client_idclient`) REFERENCES `client` (`idclient`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
