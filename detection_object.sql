-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 03:26 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `detection_object`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdoituong`
--

CREATE TABLE `chitietdoituong` (
  `id_object` int(11) NOT NULL,
  `id_image` int(11) NOT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitietdoituong`
--

INSERT INTO `chitietdoituong` (`id_object`, `id_image`, `soluong`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 2, 0),
(11, 2, 0),
(12, 2, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 3, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 4, 0),
(21, 4, 0),
(22, 4, 0),
(23, 4, 0),
(24, 5, 0),
(25, 5, 0),
(26, 5, 0),
(27, 6, 0),
(28, 6, 0),
(29, 6, 0),
(30, 7, 0),
(31, 7, 0),
(32, 7, 0),
(33, 7, 0),
(34, 7, 0),
(35, 7, 0),
(36, 7, 0),
(37, 8, 0),
(38, 8, 0),
(39, 8, 0),
(40, 8, 0),
(41, 8, 0),
(42, 8, 0),
(43, 8, 0),
(44, 9, 0),
(45, 9, 0),
(46, 9, 0),
(47, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `duongdan` text NOT NULL,
  `ngaydang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `duongdan`, `ngaydang`) VALUES
(1, 'test_images-image1.jpg', '2018-05-22'),
(2, 'test_images-image2.jpg', '2018-05-22'),
(3, 'test_images-image3.jpg', '2018-05-22'),
(4, 'test_images-image4.jpg', '2018-05-22'),
(5, 'test_images-image5.jpg', '2018-05-22'),
(6, 'test_images-image6.jpg', '2018-05-22'),
(7, 'test_images-image7.jpg', '2018-05-22'),
(8, 'test_images-image8.jpg', '2018-05-22'),
(9, 'test_images-image9.jpg', '2018-05-22');

-- --------------------------------------------------------

--
-- Table structure for table `object`
--

CREATE TABLE `object` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `probability` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `object`
--

INSERT INTO `object` (`id`, `name`, `probability`) VALUES
(1, 'dog', 94),
(2, 'dog', 93),
(3, 'person', 91),
(4, 'kite', 82),
(5, 'person', 77),
(6, 'kite', 76),
(7, 'kite', 75),
(8, 'person', 63),
(9, 'kite', 60),
(10, 'person', 58),
(11, 'person', 51),
(12, 'person', 50),
(13, 'person', 88),
(14, 'person', 74),
(15, 'person', 74),
(16, 'person', 69),
(17, 'person', 65),
(18, 'laptop', 64),
(19, 'laptop', 55),
(20, 'laptop', 89),
(21, 'laptop', 81),
(22, 'person', 72),
(23, 'laptop', 50),
(24, 'laptop', 89),
(25, 'person', 66),
(26, 'chair', 60),
(27, 'bottle', 86),
(28, 'bowl', 70),
(29, 'cake', 53),
(30, 'person', 80),
(31, 'person', 73),
(32, 'person', 67),
(33, 'person', 62),
(34, 'laptop', 58),
(35, 'person', 57),
(36, 'person', 52),
(37, 'person', 97),
(38, 'person', 95),
(39, 'person', 92),
(40, 'person', 91),
(41, 'person', 89),
(42, 'dining table', 78),
(43, 'bottle', 53),
(44, 'mouse', 87),
(45, 'bottle', 80),
(46, 'keyboard', 60),
(47, 'laptop', 57);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdoituong`
--
ALTER TABLE `chitietdoituong`
  ADD PRIMARY KEY (`id_object`,`id_image`),
  ADD KEY `FK_idimage_chitietdoituong_image` (`id_image`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdoituong`
--
ALTER TABLE `chitietdoituong`
  ADD CONSTRAINT `FK_idimage_chitietdoituong_image` FOREIGN KEY (`id_image`) REFERENCES `image` (`id`),
  ADD CONSTRAINT `FK_idobject_chitietdoituong_object` FOREIGN KEY (`id_object`) REFERENCES `object` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
