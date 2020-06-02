-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 14, 2020 at 10:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `RAQASH`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `Ausername` varchar(10) NOT NULL,
  `Apassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`Ausername`, `Apassword`) VALUES
('@admin', '4297f44b13955235245b2497399d7a93');

-- --------------------------------------------------------

--
-- Stand-in structure for view `allusers`
-- (See below for the actual view)
--
CREATE TABLE `allusers` (
`users` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `Artist`
--

CREATE TABLE `Artist` (
  `ARusername` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `ARpassword` varchar(100) NOT NULL,
  `email` text NOT NULL DEFAULT '@gmail.com',
  `admin_username` varchar(20) NOT NULL DEFAULT 'admin',
  `bio` varchar(500) DEFAULT NULL,
  `twitter` varchar(20) DEFAULT NULL,
  `account_image` varchar(1000) DEFAULT 'download.png',
  `Approved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Artist`
--

INSERT INTO `Artist` (`ARusername`, `name`, `ARpassword`, `email`, `admin_username`, `bio`, `twitter`, `account_image`, `Approved`) VALUES
('@areejArt', 'Areej', 'e10adc3949ba59abbe56e057f20f883e', 'areej@gmail.com', 'admin', 'I am a LINE artist', NULL, 'download.png', 0),
('@LamaQ', 'Lama', 'e10adc3949ba59abbe56e057f20f883e', 'Lama@gmail.com', 'admin', 'I am a girl who makes LINES with ART', NULL, '1586850415_WhatsApp Image 2020-04-14 at 10.44.44 AM.jpeg', 1),
('@latifahArtist', 'Latifah', 'e10adc3949ba59abbe56e057f20f883e', 'latifah@gmail.com', 'admin', 'I make a simple line looks DIFFRENT!', NULL, '1586850044_1586849425_1586849399_6fa16019caa85ef57a76948301b60923.jpg', 1),
('@mihafArtist', 'Mihaf', 'e10adc3949ba59abbe56e057f20f883e', 'mihaf@gmail.com', 'admin', 'I am interested in LINE ART!', NULL, '1586835168_0322c43172f3fc3798142d3a90dcf8f2.jpg', 1),
('@raghadArtist', 'Raghad', 'e10adc3949ba59abbe56e057f20f883e', 'raghad@gmail.com', 'admin', 'I am an advanced Line. artist!', NULL, 'download.png', 0),
('@renad2', 'Renad', 'e10adc3949ba59abbe56e057f20f883e', 'renad@gmail.com', 'admin', ' ARTIST', NULL, '1586851469_WhatsApp Image 2020-04-14 at 10.39.55 AM.jpeg', 1),
('@Riham2', 'Riham', 'e10adc3949ba59abbe56e057f20f883e', 'e@gmail.com', 'admin', 'Line art is my PASSION ', NULL, '1586830662_1586642386_WhatsApp Image 2020-02-24 at 9.04.01 PM.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ArtWork`
--

CREATE TABLE `ArtWork` (
  `AId` int(4) NOT NULL,
  `Title` text NOT NULL DEFAULT 'Title',
  `Art_description` text DEFAULT 'description',
  `Number_of_like` int(20) DEFAULT 0,
  `Number_of_dislike` int(20) DEFAULT 0,
  `Artist_username` varchar(100) DEFAULT 'a',
  `Published_date` date DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `disabel_comment` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ArtWork`
--

INSERT INTO `ArtWork` (`AId`, `Title`, `Art_description`, `Number_of_like`, `Number_of_dislike`, `Artist_username`, `Published_date`, `img`, `disabel_comment`) VALUES
(396, 'Art', 'Lovely Art', 0, 0, '@riham2', '2020-04-12', '1586680717_1586668227_1.jpeg', 1),
(397, 'it is about u', 'The line is one of the seven elements of art', 0, 0, '@riham2', '2020-04-12', '1586680850_1586667866_color.jpg', 1),
(399, 'Stars', 'Shine STARS!', 0, 0, '@riham2', '2020-04-12', '1586680959_1586303588_viewArtWorkImg.jpg', 0),
(400, 'WAVES', 'This can be a great introductory drawing exercise', 0, 0, '@riham2', '2020-04-12', '93da0f3618aab58e3f27fe481ae1cb3b.jpg', 1),
(405, 'HEART', 'Small font drawn using only solid line', 1, 2, '@riham2', '2020-04-14', '1586830692_1586303623_disappointment-one-line-draw-prints.jpg', 0),
(406, 'FACES', 'WE ARE ALL CONNECTED', 2, 0, '@mihafArtist', '2020-04-14', '1586835942_cfc5f694332e8d144898f484f7f2ed41.jpg', 1),
(407, 'DREAM', 'ONE LINE ART!', 0, 0, '@mihafArtist', '2020-04-14', '1586835986_6f9ee67316f9047f79712f1f8ebd3b7b.jpg', 1),
(408, 'DANCE', 'DANCING ', 0, 0, '@mihafArtist', '2020-04-14', '1586836063_a1bed44e16ffa19fa0d5eac139779e01.jpg', 0),
(409, 'BEYOND THE TIME', 'Yesterday you said tomorrow, JUST DO IT!!', 0, 0, '@renad2', '2020-04-14', '1586849677_3f98db67a8f93b838d4baf6e0bc0e70b.jpg', 0),
(416, 'THOUGHTS!', 'We are shaped by our thoughts; we become what we think. When the mind is pure, joy follows like a shadow that never leaves.', 0, 0, '@latifahArtist', '2020-04-14', '1586850947_1.mp4', 0),
(417, 'SUNFLOWER', 'There is nothing left to worry about, the sun and here flower are HERE!', 0, 0, '@lamaQ', '2020-04-14', '1586851142_5.jpeg', 0),
(418, 'FOLLOW ME', 'Where ever you go, GO with all your HEART', 0, 0, '@renad2', '2020-04-14', '1586851452_WhatsApp Image 2020-04-14 at 10.40.17 AM.jpeg', 0),
(419, 'ABOUT ME', 'Find your self and be that', 0, 0, '@renad2', '2020-04-14', '1586851572_6.jpeg', 0),
(420, 'HARDWORK', 'Do not wish it were easie, Wish you were better.', 0, 0, '@lamaQ', '2020-04-14', '1586852582_2.mp4', 0),
(421, 'DO NOT LOOK TO THE PAST', 'The past in your HEAD and the future in your HAND', 0, 0, '@LatifahArtist', '2020-04-14', '1586852917_WhatsApp Image 2020-04-14 at 11.24.56 AM.jpeg', 1),
(423, '', '', 0, 0, '@latifahArtist', '2020-04-14', '1586853145_7.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `Date` date NOT NULL,
  `Text` text NOT NULL,
  `CId` int(4) NOT NULL,
  `Vistor_username` varchar(20) NOT NULL,
  `Art_work_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`Date`, `Text`, `CId`, `Vistor_username`, `Art_work_id`) VALUES
('2020-04-12', 'riham', 4, '@rihamV', 387),
('2020-04-12', 'riham2', 5, '@rihamV', 387),
('2020-04-12', 'rihammm', 6, '@rihamV', 387),
('2020-04-12', 'coool!!\r\n', 7, '@rihamv', 399),
('2020-04-14', 'Wooow!', 8, '@rihamv', 408),
('2020-04-14', '1', 9, '@rihamv', 408),
('2020-04-14', '2', 10, '@rihamv', 408),
('2020-04-14', '3', 11, '@rihamv', 408),
('2020-04-14', '4', 12, '@rihamv', 408),
('2020-04-14', '5', 13, '@rihamv', 408),
('2020-04-14', '6', 14, '@rihamv', 408),
('2020-04-14', '7', 15, '@rihamv', 408),
('2020-04-14', '8', 16, '@rihamv', 408),
('2020-04-14', '9', 17, '@rihamv', 408),
('2020-04-14', '1', 18, '@rihamv', 408),
('2020-04-14', '11', 19, '@rihamv', 408);

-- --------------------------------------------------------

--
-- Table structure for table `dislike`
--

CREATE TABLE `dislike` (
  `Artwork_id` int(4) NOT NULL,
  `Vistor_username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Favourite`
--

CREATE TABLE `Favourite` (
  `Vistor_username` varchar(20) NOT NULL,
  `Artwork_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Favourite`
--

INSERT INTO `Favourite` (`Vistor_username`, `Artwork_id`) VALUES
('@rihamv', 400),
('@rihamv', 399),
('@rihamv', 405),
('@rihamv', 397),
('@rihamv', 406);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `Vistor_username` varchar(20) NOT NULL,
  `Artwork_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`Vistor_username`, `Artwork_id`) VALUES
('@rihamv', 393);

-- --------------------------------------------------------

--
-- Table structure for table `Vistor`
--

CREATE TABLE `Vistor` (
  `Vusername` varchar(100) NOT NULL,
  `Vpassword` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Vistor`
--

INSERT INTO `Vistor` (`Vusername`, `Vpassword`, `email`, `name`) VALUES
('@riham3', 'e10adc3949ba59abbe56e057f20f883e', 'riham@gmail.com', 'riham'),
('@rihamV', 'e10adc3949ba59abbe56e057f20f883e', 'r@gmail.com', 'riham'),
('riham1', 'e10adc3949ba59abbe56e057f20f883e', 'rihammastour@gmail.com', 'riham');

-- --------------------------------------------------------

--
-- Structure for view `allusers`
--
DROP TABLE IF EXISTS `allusers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `allusers`  AS  (select `Vistor`.`Vusername` AS `users` from `Vistor`) union (select `Artist`.`ARusername` AS `users` from `Artist`) union (select `Admin`.`Ausername` AS `users` from `Admin`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`Ausername`);

--
-- Indexes for table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`ARusername`),
  ADD KEY `admin_username` (`admin_username`);

--
-- Indexes for table `ArtWork`
--
ALTER TABLE `ArtWork`
  ADD PRIMARY KEY (`AId`),
  ADD KEY `Artist_username` (`Artist_username`),
  ADD KEY `Artist_username_2` (`Artist_username`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`CId`),
  ADD KEY `AId` (`Art_work_id`);

--
-- Indexes for table `dislike`
--
ALTER TABLE `dislike`
  ADD UNIQUE KEY `Vistor_username` (`Vistor_username`),
  ADD UNIQUE KEY `Artwork_id` (`Artwork_id`);

--
-- Indexes for table `Favourite`
--
ALTER TABLE `Favourite`
  ADD KEY `Vistor_username` (`Vistor_username`),
  ADD KEY `Artwork_id` (`Artwork_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD UNIQUE KEY `Artwork_id` (`Artwork_id`) USING BTREE,
  ADD UNIQUE KEY `Vistor_username` (`Vistor_username`(2)) USING BTREE,
  ADD KEY `Vistor_username_2` (`Vistor_username`);

--
-- Indexes for table `Vistor`
--
ALTER TABLE `Vistor`
  ADD PRIMARY KEY (`Vusername`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `Vusername` (`Vusername`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ArtWork`
--
ALTER TABLE `ArtWork`
  MODIFY `AId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `CId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ArtWork`
--
ALTER TABLE `ArtWork`
  ADD CONSTRAINT `ArtWork_ibfk_1` FOREIGN KEY (`AId`) REFERENCES `Favourite` (`Artwork_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dislike`
--
ALTER TABLE `dislike`
  ADD CONSTRAINT `dislike_ibfk_1` FOREIGN KEY (`Artwork_id`) REFERENCES `ArtWork` (`AId`),
  ADD CONSTRAINT `dislike_ibfk_2` FOREIGN KEY (`Vistor_username`) REFERENCES `Vistor` (`Vusername`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`Artwork_id`) REFERENCES `ArtWork` (`AId`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`Vistor_username`) REFERENCES `Vistor` (`Vusername`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
