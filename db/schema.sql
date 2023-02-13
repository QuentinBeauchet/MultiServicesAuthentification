-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mar. 24 jan. 2023 à 13:24
-- Version du serveur : 10.10.2-MariaDB-1:10.10.2+maria~ubu2204
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bus`
--

-- --------------------------------------------------------

--
-- Structure de la table `bluetooth`
--

CREATE TABLE `bluetooth` (
  `id` int(11) NOT NULL,
  `device_address` varchar(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `bluetooth`
--

INSERT INTO `bluetooth` (`id`, `device_address`, `time`) VALUES
(118, '00:EC:0A:B5:F6:4F', '2022-12-20 19:07:38'),
(119, '70:FC:8F:5B:40:BE', '2022-12-20 19:07:38'),
(120, '00:EC:0A:B5:F6:4F', '2022-12-20 19:13:59'),
(121, '70:FC:8F:5B:40:BE', '2022-12-20 19:13:59'),
(122, '00:EC:0A:B5:F6:4F', '2022-12-20 19:14:39'),
(123, '70:FC:8F:5B:40:BE', '2022-12-20 19:14:39'),
(124, '70:FC:8F:5B:40:BE', '2022-12-20 19:15:19'),
(125, '00:EC:0A:B5:F6:4F', '2022-12-20 19:15:19'),
(126, '00:EC:0A:B5:F6:4F', '2022-12-20 19:16:02'),
(127, '70:FC:8F:5B:40:BE', '2022-12-20 19:16:02'),
(128, '00:EC:0A:B5:F6:4F', '2022-12-20 19:16:42'),
(129, '70:FC:8F:5B:40:BE', '2022-12-20 19:16:42'),
(130, '70:FC:8F:5B:40:BE', '2022-12-20 19:17:22'),
(131, '00:EC:0A:B5:F6:4F', '2022-12-20 19:17:22'),
(132, '00:EC:0A:B5:F6:4F', '2022-12-20 19:18:04'),
(133, '70:FC:8F:5B:40:BE', '2022-12-20 19:18:05'),
(134, '00:EC:0A:B5:F6:4F', '2022-12-20 19:18:45'),
(135, '70:FC:8F:5B:40:BE', '2022-12-20 19:18:45'),
(136, '00:EC:0A:B5:F6:4F', '2022-12-20 19:19:26'),
(137, '70:FC:8F:5B:40:BE', '2022-12-20 19:19:26'),
(138, '70:FC:8F:5B:40:BE', '2022-12-20 19:20:06'),
(139, '00:EC:0A:B5:F6:4F', '2022-12-20 19:20:06'),
(140, '00:EC:0A:B5:F6:4F', '2022-12-20 19:20:47'),
(141, '70:FC:8F:5B:40:BE', '2022-12-20 19:20:47'),
(142, '70:FC:8F:5B:40:BE', '2022-12-20 19:21:27'),
(143, '00:EC:0A:B5:F6:4F', '2022-12-20 19:21:27'),
(144, '00:EC:0A:B5:F6:4F', '2022-12-20 19:22:07'),
(145, '70:FC:8F:5B:40:BE', '2022-12-20 19:22:07'),
(146, '00:EC:0A:B5:F6:4F', '2022-12-20 19:22:47'),
(147, '70:FC:8F:5B:40:BE', '2022-12-20 19:22:47'),
(148, '00:EC:0A:B5:F6:4F', '2022-12-20 19:23:28'),
(149, '70:FC:8F:5B:40:BE', '2022-12-20 19:23:28'),
(150, '70:FC:8F:5B:40:BE', '2022-12-20 19:24:09'),
(151, '00:EC:0A:B5:F6:4F', '2022-12-20 19:24:09'),
(152, '00:EC:0A:B5:F6:4F', '2022-12-20 19:24:50'),
(153, '70:FC:8F:5B:40:BE', '2022-12-20 19:24:50'),
(154, '00:EC:0A:B5:F6:4F', '2022-12-20 19:25:32'),
(155, '70:FC:8F:5B:40:BE', '2022-12-20 19:25:32'),
(156, '00:EC:0A:B5:F6:4F', '2022-12-20 19:26:13'),
(157, '70:FC:8F:5B:40:BE', '2022-12-20 19:26:13'),
(158, '70:FC:8F:5B:40:BE', '2022-12-20 19:26:53'),
(159, '00:EC:0A:B5:F6:4F', '2022-12-20 19:26:53'),
(160, '00:EC:0A:B5:F6:4F', '2022-12-20 19:27:34'),
(161, '70:FC:8F:5B:40:BE', '2022-12-20 19:27:34'),
(162, '00:EC:0A:B5:F6:4F', '2022-12-20 19:28:16'),
(163, '70:FC:8F:5B:40:BE', '2022-12-20 19:28:16'),
(164, '00:EC:0A:B5:F6:4F', '2022-12-20 19:28:56'),
(165, '70:FC:8F:5B:40:BE', '2022-12-20 19:28:56'),
(166, '70:FC:8F:5B:40:BE', '2022-12-20 19:29:37'),
(167, '00:EC:0A:B5:F6:4F', '2022-12-20 19:29:37'),
(168, '00:EC:0A:B5:F6:4F', '2022-12-20 19:30:18'),
(169, '70:FC:8F:5B:40:BE', '2022-12-20 19:30:18'),
(170, '70:FC:8F:5B:40:BE', '2022-12-20 19:31:04'),
(171, '00:EC:0A:B5:F6:4F', '2022-12-20 19:31:04'),
(172, '00:EC:0A:B5:F6:4F', '2022-12-20 19:31:44'),
(173, '70:FC:8F:5B:40:BE', '2022-12-20 19:31:44'),
(174, '70:FC:8F:5B:40:BE', '2022-12-20 19:32:24'),
(175, '00:EC:0A:B5:F6:4F', '2022-12-20 19:32:24'),
(176, '00:EC:0A:B5:F6:4F', '2022-12-20 19:33:05'),
(177, '70:FC:8F:5B:40:BE', '2022-12-20 19:33:05'),
(178, '70:FC:8F:5B:40:BE', '2022-12-20 19:34:23'),
(179, '00:EC:0A:B5:F6:4F', '2022-12-20 19:34:24'),
(180, '00:EC:0A:B5:F6:4F', '2022-12-20 19:35:04'),
(181, '70:FC:8F:5B:40:BE', '2022-12-20 19:35:04'),
(182, '70:FC:8F:5B:40:BE', '2022-12-20 19:35:44'),
(183, '00:EC:0A:B5:F6:4F', '2022-12-20 19:35:44'),
(184, '00:EC:0A:B5:F6:4F', '2022-12-20 19:36:26'),
(185, '70:FC:8F:5B:40:BE', '2022-12-20 19:36:26'),
(186, '00:EC:0A:B5:F6:4F', '2022-12-20 19:37:07'),
(187, '70:FC:8F:5B:40:BE', '2022-12-20 19:37:07'),
(188, '70:FC:8F:5B:40:BE', '2022-12-20 23:33:21'),
(189, '00:EC:0A:B5:F6:4F', '2022-12-20 23:33:21'),
(190, '00:EC:0A:B5:F6:4F', '2022-12-20 23:34:01'),
(191, '70:FC:8F:5B:40:BE', '2022-12-20 23:34:01'),
(192, '70:FC:8F:5B:40:BE', '2022-12-20 23:34:43'),
(193, '00:EC:0A:B5:F6:4F', '2022-12-20 23:34:43'),
(194, '00:EC:0A:B5:F6:4F', '2022-12-20 23:35:24'),
(195, '70:FC:8F:5B:40:BE', '2022-12-20 23:35:24'),
(196, '70:FC:8F:5B:40:BE', '2022-12-20 23:36:03'),
(197, '00:EC:0A:B5:F6:4F', '2022-12-20 23:36:03'),
(198, '00:EC:0A:B5:F6:4F', '2022-12-20 23:36:44'),
(199, '70:FC:8F:5B:40:BE', '2022-12-20 23:36:44'),
(200, '00:EC:0A:B5:F6:4F', '2022-12-20 23:37:25'),
(201, '70:FC:8F:5B:40:BE', '2022-12-20 23:37:25'),
(202, '00:EC:0A:B5:F6:4F', '2022-12-20 23:38:06'),
(203, '70:FC:8F:5B:40:BE', '2022-12-20 23:38:06'),
(204, '70:FC:8F:5B:40:BE', '2022-12-20 23:38:48'),
(205, '00:EC:0A:B5:F6:4F', '2022-12-20 23:38:48'),
(206, '00:EC:0A:B5:F6:4F', '2022-12-20 23:39:35'),
(207, '70:FC:8F:5B:40:BE', '2022-12-20 23:40:17'),
(208, '00:EC:0A:B5:F6:4F', '2022-12-20 23:40:17'),
(209, '00:EC:0A:B5:F6:4F', '2022-12-20 23:41:00'),
(210, '70:FC:8F:5B:40:BE', '2022-12-20 23:41:00'),
(211, '70:FC:8F:5B:40:BE', '2022-12-20 23:41:44'),
(212, '00:EC:0A:B5:F6:4F', '2022-12-20 23:41:44'),
(213, '70:FC:8F:5B:40:BE', '2022-12-20 23:42:25'),
(214, '00:EC:0A:B5:F6:4F', '2022-12-20 23:42:25'),
(215, '00:EC:0A:B5:F6:4F', '2022-12-20 23:43:05'),
(216, '70:FC:8F:5B:40:BE', '2022-12-20 23:43:05'),
(217, '70:FC:8F:5B:40:BE', '2022-12-20 23:43:45'),
(218, '00:EC:0A:B5:F6:4F', '2022-12-20 23:43:45'),
(219, '70:FC:8F:5B:40:BE', '2022-12-20 23:44:26'),
(220, '00:EC:0A:B5:F6:4F', '2022-12-20 23:44:26'),
(221, '00:EC:0A:B5:F6:4F', '2022-12-20 23:45:09'),
(222, '70:FC:8F:5B:40:BE', '2022-12-20 23:45:09'),
(223, '00:EC:0A:B5:F6:4F', '2022-12-20 23:45:49'),
(224, '70:FC:8F:5B:40:BE', '2022-12-20 23:45:49'),
(225, '00:EC:0A:B5:F6:4F', '2022-12-20 23:46:29'),
(226, '70:FC:8F:5B:40:BE', '2022-12-20 23:46:29'),
(227, '00:EC:0A:B5:F6:4F', '2022-12-20 23:47:10'),
(228, '70:FC:8F:5B:40:BE', '2022-12-20 23:47:10'),
(229, '00:EC:0A:B5:F6:4F', '2022-12-20 23:47:52'),
(230, '70:FC:8F:5B:40:BE', '2022-12-20 23:47:52'),
(231, '00:EC:0A:B5:F6:4F', '2022-12-20 23:49:52'),
(232, '70:FC:8F:5B:40:BE', '2022-12-20 23:49:52'),
(233, '70:FC:8F:5B:40:BE', '2022-12-20 23:50:31'),
(234, '00:EC:0A:B5:F6:4F', '2022-12-20 23:50:31'),
(235, '70:FC:8F:5B:40:BE', '2022-12-20 23:51:11'),
(236, '00:EC:0A:B5:F6:4F', '2022-12-20 23:51:11'),
(237, '00:EC:0A:B5:F6:4F', '2022-12-20 23:51:51'),
(238, '70:FC:8F:5B:40:BE', '2022-12-20 23:51:51'),
(239, '70:FC:8F:5B:40:BE', '2022-12-20 23:52:31'),
(240, '00:EC:0A:B5:F6:4F', '2022-12-20 23:52:31'),
(241, '00:EC:0A:B5:F6:4F', '2022-12-20 23:53:12'),
(242, '70:FC:8F:5B:40:BE', '2022-12-20 23:53:12'),
(243, '70:FC:8F:5B:40:BE', '2022-12-20 23:53:53'),
(244, '00:EC:0A:B5:F6:4F', '2022-12-20 23:53:53'),
(245, '00:EC:0A:B5:F6:4F', '2022-12-20 23:54:34'),
(246, '70:FC:8F:5B:40:BE', '2022-12-20 23:54:34'),
(247, '70:FC:8F:5B:40:BE', '2022-12-20 23:55:14'),
(248, '00:EC:0A:B5:F6:4F', '2022-12-20 23:55:14'),
(249, '00:EC:0A:B5:F6:4F', '2022-12-20 23:55:55'),
(250, '70:FC:8F:5B:40:BE', '2022-12-20 23:55:55'),
(251, '70:FC:8F:5B:40:BE', '2022-12-20 23:56:35'),
(252, '00:EC:0A:B5:F6:4F', '2022-12-20 23:56:35'),
(253, '00:EC:0A:B5:F6:4F', '2022-12-20 23:57:16'),
(254, '70:FC:8F:5B:40:BE', '2022-12-20 23:57:16'),
(255, '70:FC:8F:5B:40:BE', '2022-12-20 23:57:58'),
(256, '00:EC:0A:B5:F6:4F', '2022-12-20 23:57:58'),
(257, '00:EC:0A:B5:F6:4F', '2022-12-20 23:58:39'),
(258, '70:FC:8F:5B:40:BE', '2022-12-20 23:58:39'),
(259, '00:EC:0A:B5:F6:4F', '2022-12-20 23:59:20'),
(260, '70:FC:8F:5B:40:BE', '2022-12-20 23:59:20'),
(261, '70:FC:8F:5B:40:BE', '2022-12-20 23:59:59'),
(262, '00:EC:0A:B5:F6:4F', '2022-12-20 23:59:59'),
(263, '00:EC:0A:B5:F6:4F', '2022-12-21 00:00:40'),
(264, '70:FC:8F:5B:40:BE', '2022-12-21 00:00:40'),
(265, '00:EC:0A:B5:F6:4F', '2022-12-21 00:01:21'),
(266, '70:FC:8F:5B:40:BE', '2022-12-21 00:01:21'),
(267, '70:FC:8F:5B:40:BE', '2022-12-21 00:02:01'),
(268, '00:EC:0A:B5:F6:4F', '2022-12-21 00:02:01'),
(269, '70:FC:8F:5B:40:BE', '2022-12-21 00:02:42'),
(270, '00:EC:0A:B5:F6:4F', '2022-12-21 00:02:42'),
(271, '70:FC:8F:5B:40:BE', '2022-12-21 00:03:23'),
(272, '00:EC:0A:B5:F6:4F', '2022-12-21 00:03:23'),
(273, '00:EC:0A:B5:F6:4F', '2022-12-21 00:04:03'),
(274, '70:FC:8F:5B:40:BE', '2022-12-21 00:04:03'),
(275, '70:FC:8F:5B:40:BE', '2022-12-21 00:04:44'),
(276, '00:EC:0A:B5:F6:4F', '2022-12-21 00:04:44'),
(277, '70:FC:8F:5B:40:BE', '2022-12-21 00:05:23'),
(278, '00:EC:0A:B5:F6:4F', '2022-12-21 00:05:23'),
(279, '00:EC:0A:B5:F6:4F', '2022-12-21 00:06:04'),
(280, '70:FC:8F:5B:40:BE', '2022-12-21 00:06:04'),
(281, '00:EC:0A:B5:F6:4F', '2022-12-21 00:06:44'),
(282, '70:FC:8F:5B:40:BE', '2022-12-21 00:06:44'),
(283, '00:EC:0A:B5:F6:4F', '2022-12-21 00:07:26'),
(284, '70:FC:8F:5B:40:BE', '2022-12-21 00:07:26'),
(285, '00:EC:0A:B5:F6:4F', '2022-12-21 00:08:07'),
(286, '70:FC:8F:5B:40:BE', '2022-12-21 00:08:07'),
(287, '70:FC:8F:5B:40:BE', '2022-12-21 00:08:47'),
(288, '00:EC:0A:B5:F6:4F', '2022-12-21 00:08:47'),
(289, '00:EC:0A:B5:F6:4F', '2022-12-21 00:09:27'),
(290, '70:FC:8F:5B:40:BE', '2022-12-21 00:09:27'),
(291, '70:FC:8F:5B:40:BE', '2022-12-21 00:10:07'),
(292, '00:EC:0A:B5:F6:4F', '2022-12-21 00:10:07'),
(293, '00:EC:0A:B5:F6:4F', '2022-12-21 00:10:48'),
(294, '70:FC:8F:5B:40:BE', '2022-12-21 00:10:48'),
(295, '00:EC:0A:B5:F6:4F', '2022-12-21 00:11:29'),
(296, '70:FC:8F:5B:40:BE', '2022-12-21 00:11:29'),
(297, '00:EC:0A:B5:F6:4F', '2022-12-21 00:12:10'),
(298, '70:FC:8F:5B:40:BE', '2022-12-21 00:12:10'),
(299, '00:EC:0A:B5:F6:4F', '2022-12-21 00:12:51'),
(300, '70:FC:8F:5B:40:BE', '2022-12-21 00:12:51'),
(301, '00:EC:0A:B5:F6:4F', '2022-12-21 00:13:33'),
(302, '70:FC:8F:5B:40:BE', '2022-12-21 00:13:33'),
(303, '70:FC:8F:5B:40:BE', '2022-12-21 00:14:12'),
(304, '00:EC:0A:B5:F6:4F', '2022-12-21 00:14:12'),
(305, '00:EC:0A:B5:F6:4F', '2022-12-21 00:14:52'),
(306, '70:FC:8F:5B:40:BE', '2022-12-21 00:14:52'),
(307, '70:FC:8F:5B:40:BE', '2022-12-21 00:15:33'),
(308, '00:EC:0A:B5:F6:4F', '2022-12-21 00:15:33'),
(309, '00:EC:0A:B5:F6:4F', '2022-12-21 00:16:14'),
(310, '70:FC:8F:5B:40:BE', '2022-12-21 00:16:15'),
(311, '70:FC:8F:5B:40:BE', '2022-12-21 00:16:55'),
(312, '00:EC:0A:B5:F6:4F', '2022-12-21 00:16:55'),
(313, '00:EC:0A:B5:F6:4F', '2022-12-21 00:17:35'),
(314, '70:FC:8F:5B:40:BE', '2022-12-21 00:17:35'),
(315, '70:FC:8F:5B:40:BE', '2022-12-21 00:18:15'),
(316, '00:EC:0A:B5:F6:4F', '2022-12-21 00:18:15'),
(317, '00:EC:0A:B5:F6:4F', '2022-12-21 00:18:57'),
(318, '70:FC:8F:5B:40:BE', '2022-12-21 00:18:57'),
(319, '00:EC:0A:B5:F6:4F', '2022-12-21 00:24:17'),
(320, '70:FC:8F:5B:40:BE', '2022-12-21 00:24:17'),
(321, '00:EC:0A:B5:F6:4F', '2022-12-21 00:24:57'),
(322, '70:FC:8F:5B:40:BE', '2022-12-21 00:24:57'),
(323, '00:EC:0A:B5:F6:4F', '2022-12-21 00:25:38'),
(324, '70:FC:8F:5B:40:BE', '2022-12-21 00:25:38');

--
-- Structure de la table `cards`
--

CREATE TABLE `cards` (
  `id` int(20) NOT NULL,
  `rfid` varchar(30) NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cards`
--

INSERT INTO `cards` (`id`, `rfid`, `time`) VALUES
(1, '040a5192495a80', '2023-01-17');


-- --------------------------------------------------------

--
-- Structure de la table `devices`
--

CREATE TABLE `devices` (
  `address` varchar(20) NOT NULL,
  `name` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `devices`
--

INSERT INTO `devices` (`address`, `name`) VALUES
('00:D8:61:D8:BB:48', NULL),
('00:EC:0A:B5:F6:4F', 'Redmi Beauchet'),
('00:EC:0A:CD:F6:4D', NULL),
('64:DD:E9:54:A4:01', NULL),
('70:FC:8F:5B:40:BE', 'Freebox Player Mini v2'),
('E4:9E:12:8B:67:9B', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `ownerships`
--

CREATE TABLE `ownerships` (
  `user_uuid` varchar(10) NOT NULL,
  `device_address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `qrcode`
--

CREATE TABLE `qrcode` (
  `id` int(11) NOT NULL,
  `user_uuid` varchar(10) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `qrcode`
--

INSERT INTO `qrcode` (`id`, `user_uuid`, `time`) VALUES
(1, 'bq803339', '2022-12-20 19:06:41');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `user_uuid` varchar(10) NOT NULL,
  `card_rfid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `uuid` varchar(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`uuid`, `first_name`, `last_name`, `type`) VALUES
('mb1252344', 'Mark', 'Brea', 'STUDENT');

-- --------------------------------------------------------

--
-- Structure de la table `wifi`
--

CREATE TABLE `wifi` (
  `id` int(11) NOT NULL,
  `device_address` varchar(20) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `wifi`
--

INSERT INTO `wifi` (`id`, `device_address`, `time`) VALUES
(1, '00:EC:0A:CD:F6:4D', '2023-01-17 16:14:46'),
(2, '00:EC:0A:CD:F6:4D', '2023-01-17 16:38:34'),
(3, '00:EC:0A:CD:F6:4D', '2023-01-17 16:39:28'),
(4, '00:EC:0A:CD:F6:4D', '2023-01-17 16:39:57'),
(5, '00:EC:0A:CD:F6:4D', '2023-01-17 16:41:37'),
(6, '00:EC:0A:CD:F6:4D', '2023-01-17 16:43:41'),
(7, '70:FC:8F:5B:40:BE', '2023-01-17 18:49:19'),
(8, '00:D8:61:D8:BB:48', '2023-01-17 18:49:19'),
(9, 'E4:9E:12:8B:67:9B', '2023-01-17 18:49:19'),
(10, '64:DD:E9:54:A4:01', '2023-01-17 18:49:19'),
(11, '70:FC:8F:5B:40:BE', '2023-01-17 18:50:04'),
(12, '00:D8:61:D8:BB:48', '2023-01-17 18:50:04'),
(13, 'E4:9E:12:8B:67:9B', '2023-01-17 18:50:04'),
(14, '70:FC:8F:5B:40:BE', '2023-01-17 18:59:52'),
(15, '00:D8:61:D8:BB:48', '2023-01-17 18:59:52'),
(16, 'E4:9E:12:8B:67:9B', '2023-01-17 18:59:52'),
(17, '70:FC:8F:5B:40:BE', '2023-01-17 19:01:33'),
(18, '64:DD:E9:54:A4:01', '2023-01-17 19:01:33'),
(19, '00:D8:61:D8:BB:48', '2023-01-17 19:01:33'),
(20, 'E4:9E:12:8B:67:9B', '2023-01-17 19:01:33');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bluetooth`
--
ALTER TABLE `bluetooth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bluetooth_ibfk_1` (`device_address`);


--
-- Index pour la table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cards_ibfk_2` (`rfid`);


--
-- Index pour la table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`address`);

--
-- Index pour la table `ownerships`
--
ALTER TABLE `ownerships`
  ADD PRIMARY KEY (`user_uuid`,`device_address`),
  ADD KEY `ownerships_ibfk_2` (`device_address`);

--
-- Index pour la table `qrcode`
--
ALTER TABLE `qrcode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qrcode_ibfk_1` (`user_uuid`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`user_uuid`,`card_rfid`),
  ADD KEY `tags_ibfk_2` (`card_rfid`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`);

--
-- Index pour la table `wifi`
--
ALTER TABLE `wifi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wifi_ibfk_1` (`device_address`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bluetooth`
--
ALTER TABLE `bluetooth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT pour la table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `qrcode`
--
ALTER TABLE `qrcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wifi`
--
ALTER TABLE `wifi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bluetooth`
--
ALTER TABLE `bluetooth`
  ADD CONSTRAINT `bluetooth_ibfk_1` FOREIGN KEY (`device_address`) REFERENCES `devices` (`address`);

--
-- Contraintes pour la table `ownerships`
--
ALTER TABLE `ownerships`
  ADD CONSTRAINT `ownerships_ibfk_1` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`),
  ADD CONSTRAINT `ownerships_ibfk_2` FOREIGN KEY (`device_address`) REFERENCES `devices` (`address`);

--
-- Contraintes pour la table `qrcode`
--
ALTER TABLE `qrcode`
  ADD CONSTRAINT `qrcode_ibfk_1` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`);

--
-- Contraintes pour la table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`),
  ADD CONSTRAINT `tags_ibfk_2` FOREIGN KEY (`card_rfid`) REFERENCES `cards` (`rfid`);

--
-- Contraintes pour la table `wifi`
--
ALTER TABLE `wifi`
  ADD CONSTRAINT `wifi_ibfk_1` FOREIGN KEY (`device_address`) REFERENCES `devices` (`address`);
COMMIT;


CREATE TABLE `detection` (
  `user_uuid` varchar(10) NOT NULL,
  `camera_cid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE `camera` (
  `id` int(20) NOT NULL,
  `cid` varchar(30) NOT NULL,
  `time` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE `detection`
  ADD PRIMARY KEY (`user_uuid`,`camera_cid`),
  ADD KEY `detection_ibfk_2` (`camera_cid`);

ALTER TABLE `camera`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camera_ibfk_2` (`cid`);

ALTER TABLE `detection`
  ADD CONSTRAINT `detection_ibfk_1` FOREIGN KEY (`user_uuid`) REFERENCES `users` (`uuid`),
  ADD CONSTRAINT `detection_ibfk_2` FOREIGN KEY (`camera_cid`) REFERENCES `camera` (`cid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

