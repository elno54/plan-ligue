-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 02 nov. 2019 à 23:43
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `planning_ligue`
--

-- --------------------------------------------------------

--
-- Structure de la table `animer`
--

CREATE TABLE `animer` (
  `id_seance` int(11) NOT NULL,
  `id_moniteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `descriptif` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `descriptif`) VALUES
(1, 'Initiation'),
(2, 'Loisir'),
(3, 'Compétition');

-- --------------------------------------------------------

--
-- Structure de la table `habiliter`
--

CREATE TABLE `habiliter` (
  `id_moniteur` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `inscrire`
--

CREATE TABLE `inscrire` (
  `id_seance` int(11) NOT NULL,
  `id_licencie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `licencie`
--

CREATE TABLE `licencie` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `mdp` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `licencie`
--

INSERT INTO `licencie` (`id`, `nom`, `prenom`, `email`, `telephone`, `mdp`) VALUES
(1, 'Paul', 'Jean-Luc', 'jeanlucpaul@gmail.com', '0343546576', 'azerty'),
(2, 'Tomato', 'Ketchup', 'tomato@gmail.com', '0454657898', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `moniteur`
--

CREATE TABLE `moniteur` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telephone` varchar(10) NOT NULL,
  `mdp` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `moniteur`
--

INSERT INTO `moniteur` (`id`, `nom`, `prenom`, `email`, `telephone`, `mdp`) VALUES
(1, 'Jacquette', 'Jean-Louis', 'jl@gmail.com', '0609080706', 'azerty'),
(2, 'Collaro', 'Yves', 'yves.collaro@gmail.com', '0809987867', 'azerty');

-- --------------------------------------------------------

--
-- Structure de la table `proposer`
--

CREATE TABLE `proposer` (
  `id_seande` int(11) NOT NULL,
  `id_moniteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE `seance` (
  `id` int(11) NOT NULL,
  `jour` varchar(8) NOT NULL,
  `descriptif` varchar(50) NOT NULL,
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `la_categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `seance`
--

INSERT INTO `seance` (`id`, `jour`, `descriptif`, `debut`, `fin`, `la_categorie`) VALUES
(1, 'Samedi', 'Séance d\'initiation pour les débutans', '2019-12-14 14:30:00', '2019-12-14 15:30:00', 1),
(2, 'Mercredi', 'Entraînement des compétiteurs', '2019-12-18 15:30:00', '2019-12-18 17:30:00', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animer`
--
ALTER TABLE `animer`
  ADD PRIMARY KEY (`id_seance`,`id_moniteur`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `habiliter`
--
ALTER TABLE `habiliter`
  ADD PRIMARY KEY (`id_moniteur`,`id_categorie`);

--
-- Index pour la table `inscrire`
--
ALTER TABLE `inscrire`
  ADD PRIMARY KEY (`id_seance`,`id_licencie`);

--
-- Index pour la table `licencie`
--
ALTER TABLE `licencie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `moniteur`
--
ALTER TABLE `moniteur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `proposer`
--
ALTER TABLE `proposer`
  ADD PRIMARY KEY (`id_seande`,`id_moniteur`);

--
-- Index pour la table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `licencie`
--
ALTER TABLE `licencie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `moniteur`
--
ALTER TABLE `moniteur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `seance`
--
ALTER TABLE `seance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
