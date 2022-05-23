-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 23 mai 2022 à 15:31
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `register`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `profileImage` varchar(255) NOT NULL,
  `registerDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`userID`, `firstName`, `lastName`, `email`, `password`, `profileImage`, `registerDate`) VALUES
(1, 'Souhili', 'ismail', 'morata@gmail.com', '$2y$10$azcBxmarOg/h6PdXa6M/.uAlvHSAjKSA8sK.xY/N1P4SmpDXWxmBO', './assets/profile/beard.png', '2022-05-23'),
(2, 'loko', 'morata', 'morata@gmail.com', '$2y$10$bl5Yh9ZT59vq27SGbnCgLOAafe1sbTstvKoOKCr2MGd/ZY5SepwzW', './assets/profile/beard.png', '2022-05-23'),
(3, 'lokas', 'mora', 'loko@gmail.com', '$2y$10$nYr5w438oFWpPb5sauhUQOSNBZNet8e2vek5pSHebHoN19ykgoBWK', './assets/profile/face-2.jpg', '2022-05-23'),
(4, 'tomas', 'muller', 'toto@gmail.com', '$2y$10$eJdJsuvtCvD0dvTIU6cvhOQ4AQOdQC03j7JlhVD6mTCYDIyV8bLd.', './assets/profile/face-1.jpg', '2022-05-23'),
(5, 'miss', 'lora', 'lora@gmail.com', '$2y$10$ANFtWlCiSBcO7LwrpRZthuhevJlkshZDpvje0GRSRChvALpbkok7y', './assets/profile/face-1.jpeg', '2022-05-23'),
(7, 'pepe', 'popo', 'pepe@gmail.com', '$2y$10$2Xn1Qnz4EN8K7hU/H0lAFe.b/aoQBana1eK.R2zAAjZUlJcqpNt4u', './assets/profile/face-1.jpeg', '2022-05-23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
