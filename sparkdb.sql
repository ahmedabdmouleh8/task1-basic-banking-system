-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 20 sep. 2022 à 23:16
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sparkdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `contactus`
--

CREATE TABLE `contactus` (
  `sr` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `contactus`
--

INSERT INTO `contactus` (`sr`, `name`, `email`, `message`) VALUES
(21, 'Ahmed abdmouleh', 'a_abdmouleh@yahoo.fr', 'ab3ath ya walid'),
(22, 'daalyyy', 'dalyy@yahoo.fr', 'i liked the platform '),
(23, 'mohsen', 'torbaga@yahoo.fr', 'i got scammed '),
(24, 'Yessine marraekchi', 'yessin@gmail.com', 'what a good platform');

-- --------------------------------------------------------

--
-- Structure de la table `transactions`
--

CREATE TABLE `transactions` (
  `sr` int(11) NOT NULL,
  `sender` varchar(10) NOT NULL,
  `receiver` varchar(10) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `transactions`
--

INSERT INTO `transactions` (`sr`, `sender`, `receiver`, `amount`, `status`) VALUES
(1, '7311780855', '5353112532', 200, 'succeed'),
(2, '', '', 0, 'failed'),
(3, '', '', 0, 'failed'),
(4, '', '', 0, 'failed'),
(5, '', '', 0, 'failed'),
(6, '7311780855', '5353112532', 100, 'succeed'),
(7, '7311780855', '5353112532', 0, 'failed'),
(8, '7311780855', '4001286186', 200, 'succeed'),
(9, '7311780855', '4001286186', 500, 'succeed'),
(10, '3917416800', '4001286186', 14000, 'failed'),
(11, '', '', 0, 'failed'),
(12, '7311780855', '4001286186', 9950000, 'succeed'),
(13, '4001286186', '7311780855', 500, 'succeed'),
(14, '4001286186', '5353112532', 800, 'succeed'),
(15, '5353112532', '300', 5353112532, 'failed'),
(16, '5353112532', '1', 5353112532, 'failed'),
(17, '5353112532', '300', 1097481093, 'failed'),
(18, '4001286186', '7311780855', 300, 'succeed'),
(19, '5353112532', '7311780855', 100, 'succeed'),
(20, '5353112532', '7311780855', 1000, 'succeed'),
(21, '5353112532', '7311780855', 30000, 'failed');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `sr` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `accno` varchar(10) NOT NULL,
  `blc` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`sr`, `name`, `email`, `accno`, `blc`) VALUES
(3, 'khalil masmoudi', 'khalil_masmoudi@yaho', '5353112532', 20000),
(4, 'yessin zghal', 'yessin@gmail.com', '7311780855', 11400),
(5, 'daly ayadi', 'dalya@gmail.com', '4001286186', 10009700),
(6, 'mona mejdoub', 'monamej@gmail.com', '1097481093', 16000),
(7, 'rania toumi', 'toumi@gmail.com', '5859722581', 18200),
(8, 'seddik guidara', 'seddik@gmail.com', '4920438199', 20000),
(9, 'mohamed frikha', 'mohamedf@gmail.com', '9304807119', 16100),
(10, 'yahya feki', 'yahya@gmail.com', '1384625500', 10900),
(11, 'siwar ', 'siwar@gmail.com', '3917416800', 13900),
(12, 'guidara ali', 'guidara@gmail.com', '5002694111', 19000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`sr`);

--
-- Index pour la table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`sr`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sr`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
