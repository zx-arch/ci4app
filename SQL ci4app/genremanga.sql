-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 03:07 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `genremanga`
--

CREATE TABLE `genremanga` (
  `id` int(5) UNSIGNED NOT NULL,
  `slug` varchar(150) NOT NULL,
  `genre` varchar(25) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genremanga`
--

INSERT INTO `genremanga` (`id`, `slug`, `genre`, `created_at`, `updated_at`) VALUES
(1, 'naruto', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(2, 'naruto', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(3, 'naruto', 'Martial Arts', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(4, 'naruto', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(5, 'naruto', 'Super Power', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(6, 'one-piece', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(7, 'one-piece', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(8, 'one-piece', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(9, 'one-piece', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(10, 'one-piece', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(11, 'one-piece', 'Super Power', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(12, 'ao-no-exorcist', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(13, 'ao-no-exorcist', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(14, 'ao-no-exorcist', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(15, 'ao-no-exorcist', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(16, 'ao-no-exorcist', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(17, 'ao-no-exorcist', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(18, 'ao-no-exorcist', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(19, 'rising-x-rydeen', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(20, 'rising-x-rydeen', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(21, 'rising-x-rydeen', 'Ecchi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(22, 'rising-x-rydeen', 'Harem', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(23, 'rising-x-rydeen', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(24, 'rising-x-rydeen', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(25, 'rising-x-rydeen', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(26, 'kemono-giga', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(27, 'kemono-giga', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(28, 'kemono-giga', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(29, 'kemono-giga', 'Furry', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(30, 'kemono-giga', 'Horror', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(31, 'kemono-giga', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(32, 'kemono-giga', 'Slice of Life', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(33, 'kemono-giga', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(34, 'kemono-giga', 'Tragedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(35, 'shuumatsu-no-valkyrie', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(36, 'shuumatsu-no-valkyrie', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(37, 'shuumatsu-no-valkyrie', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(38, 'shuumatsu-no-valkyrie', 'Super Power', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(39, 'shuumatsu-no-valkyrie', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(40, 'monster-x-monster', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(41, 'monster-x-monster', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(42, 'monster-x-monster', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(43, 'monster-x-monster', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(44, 'monster-x-monster', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(45, 'monster-x-monster', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(46, 'boruto', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(47, 'boruto', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(48, 'boruto', 'Martial Arts', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(49, 'boruto', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(50, 'boruto', 'Super Power', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(51, 'one-punch-man', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(52, 'one-punch-man', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(53, 'one-punch-man', 'Parody', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(54, 'one-punch-man', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(55, 'one-punch-man', 'Super Power', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(56, 'one-punch-man', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(57, 'tokyo-ghoul', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(58, 'tokyo-ghoul', 'Horror', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(59, 'tokyo-ghoul', 'Mature', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(60, 'tokyo-ghoul', 'Psychological', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(61, 'tokyo-ghoul', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(62, 'tokyo-ghoul', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(63, 'tokyo-ghoul', 'Tragedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(64, 'world-trigger', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(65, 'world-trigger', 'School', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(66, 'world-trigger', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(67, 'world-trigger', 'Sounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(68, 'world-trigger', 'Space', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(69, 'world-trigger', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(70, 'black-clover', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(71, 'black-clover', 'adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(72, 'black-clover', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(73, 'black-clover', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(74, 'black-clover', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(75, 'black-clover', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(76, 'black-clover', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(77, 'kokoro-irozuku-koi-ga-shitai', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(78, 'kokoro-irozuku-koi-ga-shitai', 'Romance', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(79, 'kokoro-irozuku-koi-ga-shitai', 'School', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(80, 'kokoro-irozuku-koi-ga-shitai', 'School Life', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(81, 'kokoro-irozuku-koi-ga-shitai', 'Slice of Life', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(82, 'bleach', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(83, 'bleach', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(84, 'bleach', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(85, 'bleach', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(86, 'bleach', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(87, 'bleach', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(88, 'the-revenge-of-the-soul-eater', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(89, 'the-revenge-of-the-soul-eater', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(90, 'the-revenge-of-the-soul-eater', 'Magic', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(91, 'the-revenge-of-the-soul-eater', 'Mystery', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(92, 'the-revenge-of-the-soul-eater', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(93, 'the-revenge-of-the-soul-eater', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(94, 'the-revenge-of-the-soul-eater', 'Tragedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(95, 'juujika-no-rokunin', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(96, 'juujika-no-rokunin', 'Psychological', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(97, 'juujika-no-rokunin', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(98, 'juujika-no-rokunin', 'Tragedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(99, 'radiant', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(100, 'radiant', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(101, 'radiant', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(102, 'radiant', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(103, 'radiant', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(104, 'colorless', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(105, 'colorless', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(106, 'colorless', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(107, 'colorless', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(108, 'colorless', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(109, 'colorless', 'Tragedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(110, 'nidome-no-jinsei-wo-isekai-de', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(111, 'nidome-no-jinsei-wo-isekai-de', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(112, 'nidome-no-jinsei-wo-isekai-de', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(113, 'nidome-no-jinsei-wo-isekai-de', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(114, 'nidome-no-jinsei-wo-isekai-de', 'Ecchi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(115, 'nidome-no-jinsei-wo-isekai-de', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(116, 'nidome-no-jinsei-wo-isekai-de', 'Harem', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(117, 'nidome-no-jinsei-wo-isekai-de', 'Isekai', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(118, 'nidome-no-jinsei-wo-isekai-de', 'Romance', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(119, 'nidome-no-jinsei-wo-isekai-de', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(120, 'blood-lad', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(121, 'blood-lad', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(122, 'blood-lad', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(123, 'blood-lad', 'Ecchi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(124, 'blood-lad', 'Romance', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(125, 'blood-lad', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(126, 'blood-lad', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(127, 'akame-ga-kill', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(128, 'akame-ga-kill', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(129, 'akame-ga-kill', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(130, 'akame-ga-kill', 'Mature', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(131, 'akame-ga-kill', 'Romance', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(132, 'akame-ga-kill', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(133, 'akame-ga-kill', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(134, 'akame-ga-kill', 'Tragedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(135, 'edens-zero', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(136, 'edens-zero', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(137, 'edens-zero', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(138, 'edens-zero', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(139, 'edens-zero', 'Ecchi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(140, 'edens-zero', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(141, 'edens-zero', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(142, 'zipman', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(143, 'zipman', 'Mecha', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(144, 'zipman', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(145, 'zipman', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(146, 'pseudo-harem', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(147, 'pseudo-harem', 'Romance', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(148, 'pseudo-harem', 'School', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(149, 'pseudo-harem', 'Slice of Life', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(150, '7th-garden', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(151, '7th-garden', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(152, 'vagabond', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(153, 'vagabond', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(154, 'vagabond', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(155, 'vagabond', 'Historical', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(156, 'vagabond', 'Martial Arts', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(157, 'vagabond', 'Mature', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(158, 'vagabond', 'Psychological', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(159, 'vagabond', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(160, 'vigilante-boku-no-hero-academia-illegal', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(161, 'vigilante-boku-no-hero-academia-illegal', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(162, 'vigilante-boku-no-hero-academia-illegal', 'Super Power', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(163, 'world-of-immortals', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(164, 'world-of-immortals', 'Martial Arts', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(165, 'world-of-immortals', 'Reincarnation', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(166, 'uq-holder', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(167, 'uq-holder', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(168, 'uq-holder', 'Magic', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(169, 'uq-holder', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(170, 'uq-holder', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(171, 'uq-holder', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(172, '666-satan', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(173, '666-satan', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(174, '666-satan', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(175, '666-satan', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(176, '666-satan', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(177, '666-satan', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(178, '666-satan', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(179, '666-satan', 'Tragedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(180, 'hahasama-no-ie-ogamiya-gounai-kokoro-hitomi-no-kaiitan', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(181, 'hahasama-no-ie-ogamiya-gounai-kokoro-hitomi-no-kaiitan', 'Horror', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(182, 'hahasama-no-ie-ogamiya-gounai-kokoro-hitomi-no-kaiitan', 'Thriller', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(183, 'fairy-tail-100-years-quest', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(184, 'fairy-tail-100-years-quest', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(185, 'fairy-tail-100-years-quest', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(186, 'fairy-tail-100-years-quest', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(187, 'fairy-tail-100-years-quest', 'Ecchi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(188, 'fairy-tail-100-years-quest', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(189, 'fairy-tail-100-years-quest', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(190, 'jagaaaaaan', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(191, 'jagaaaaaan', 'Ecchi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(192, 'jagaaaaaan', 'Horror', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(193, 'jagaaaaaan', 'Mystery', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(194, 'jagaaaaaan', 'Seinen', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(195, 'jagaaaaaan', 'Supernatural', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(196, 'dragon-ball-super', 'Action', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(197, 'dragon-ball-super', 'Adventure', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(198, 'dragon-ball-super', 'Comedy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(199, 'dragon-ball-super', 'Drama', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(200, 'dragon-ball-super', 'Fantasy', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(201, 'dragon-ball-super', 'Sci-fi', '2021-07-10 07:54:51', '2021-07-10 07:54:51'),
(202, 'dragon-ball-super', 'Shounen', '2021-07-10 07:54:51', '2021-07-10 07:54:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `genremanga`
--
ALTER TABLE `genremanga`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genremanga`
--
ALTER TABLE `genremanga`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
