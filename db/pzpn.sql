-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 10:16 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pzpn`
--

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` int(10) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `chairman` varchar(1024) NOT NULL,
  `code` varchar(1024) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `facebook_url` varchar(1024) NOT NULL,
  `foundation_year` int(10) NOT NULL,
  `instagram_url` varchar(1024) NOT NULL,
  `main_team_coach` int(10) NOT NULL,
  `background_photo` varchar(1024) NOT NULL,
  `logo` varchar(1024) NOT NULL,
  `address` varchar(1024) NOT NULL,
  `venue_name` varchar(1024) NOT NULL,
  `website_url` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `name`, `chairman`, `code`, `email`, `facebook_url`, `foundation_year`, `instagram_url`, `main_team_coach`, `background_photo`, `logo`, `address`, `venue_name`, `website_url`) VALUES
(1, 'Bruk-Bet Termalica Nieciecza', 'Danuta Witkowska', 'BBT', 'termalica@brukbet.com', 'https://www.facebook.com/BBTermalica1922/', 1922, 'https://www.instagram.com/brukbettermalicanieciecza/', 1, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Bruk_Bet_Termalica_Nieciecza.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/01_Bruk-bet_Termalica_Nieciecza.png', 'Nieciecza 199, 33-240 Żabno', 'STADION PIŁKARSKI NIECIECZA KS', 'http://termalica.brukbet.com/'),
(2, 'Cracovia', 'Janusz Filipiak', 'CRA', 'klub@cracovia.pl', 'https://www.facebook.com/mkscracovia/', 1906, 'https://www.instagram.com/mkscracovia/', 3, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Cracovia.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/02_Cracovia.png', 'ul Józefa Kałuży 1, 30-692 Kraków', 'STADION CRACOVII IM. JÓZEFA PIŁSUDSKIEGO', 'https://cracovia.pl/'),
(3, 'Górnik Łęczna', 'Piotr Sadczuk', 'GKŁ', 'biuro@gornik.leczna.pl', 'https://www.facebook.com/gornikleczna', 1979, 'https://www.instagram.com/zielono_czarni/', 4, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Gornik_Leczna.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/03_Gornik_Leczna.png', 'al. Jana Pawła II 13, 21-010 Łęczna', 'STADION GÓRNIKA ŁĘCZNA', 'http://www.gornik.leczna.pl/'),
(4, 'Górnik Zabrze', 'p.o. Prezesa Tomasz Młynarczyk', 'GÓR', 'gornikzabrze@gornikzabrze.pl', 'https://www.facebook.com/GornikZabrzeSA', 1948, 'https://www.instagram.com/gornikzabrzesa', 5, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Gornik_Zabrze.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/04_Gornik_Zabrze.png', 'ul. F. Roosevelta 81, 41-800 Zabrze', 'ARENA ZABRZE', 'https://www.gornikzabrze.pl/start'),
(5, 'Jagiellonia Białystok', 'Agnieszka Syczewska', 'JAG', 'klub@jagiellonia.pl', 'https://www.facebook.com/JagielloniaBialystok1920/', 1920, 'https://www.instagram.com/jagielloniabialystok/', 6, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Jagiellonia_Bialystok.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/05_Jagiellonia_Bialystok.png', 'ul. Jurowiecka 21, 15-101 Białystok', 'STADION MIEJSKI W BIAŁYMSTOKU', 'https://jagiellonia.pl/'),
(6, 'KGHM Zagłębie Lubin', 'Michał Kielan', 'ZAG', 'sekretariat@zaglebie.com', 'https://www.facebook.com/KGHMZaglebieLubin', 1946, 'https://www.instagram.com/zaglebielubin/', 7, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Zaglebie_Lubin.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/18_Zaglebie_Lubin.png', 'ul. Marii Skłodowskiej Curie 98, 59-301 Lubin', 'STADION ZAGŁĘBIA LUBIN', 'https://www.zaglebie.com/'),
(7, 'Lech Poznań', 'Karol Klimczak', 'LPO', 'lech@lechpoznan.pl', 'https://www.facebook.com/lechpoznan.oficjalna', 1920, 'http://instagram.com/lechpoznan1922', 8, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Lech_Poznan.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/06_Lech_Poznan.png', 'ul. Bułgarska 17, 60-320 Poznań', 'STADION MIEJSKI W POZNANIU', 'https://www.lechpoznan.pl/'),
(8, 'Lechia Gdańsk', 'Paweł Żelem', 'LGD', 'biuro@lechia.pl', 'https://www.facebook.com/LechiaGdansk', 1945, 'https://www.instagram.com/lechia_gdansk/', 9, 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/1920x1080/filters:quality(60)/1/2021_2022/clubs/backgrounds/Lechia_Gdansk.jpg', 'https://d2vzq0pwftw3zc.cloudfront.net/fit-in/200x200/filters:quality(50)/1/2021_2022/clubs/07_Lechia_Gdansk.png', 'ul. Pokoleń Lechii Gdańsk 1, 80-529 Gdańsk', 'POLSAT PLUS ARENA GDAŃSK', 'https://lechia.pl/');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `id` int(10) NOT NULL,
  `first_name` varchar(1024) NOT NULL,
  `last_name` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`id`, `first_name`, `last_name`) VALUES
(1, 'Mariusz', 'Lewandowski'),
(3, 'Jacek', 'Zielinski'),
(4, 'Kamil', 'Kiereś'),
(5, 'Jan', 'Urban'),
(6, 'Ireneusz', 'Mamrot'),
(7, 'Dariusz', 'Żuraw'),
(8, 'Maciej', 'Skorża'),
(9, 'Tomasz', 'Kaczmarek');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `team_a` int(11) NOT NULL,
  `score_team_a` int(11) NOT NULL,
  `team_b` int(11) NOT NULL,
  `score_team_b` int(11) NOT NULL,
  `winner` int(11) NOT NULL,
  `referee` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`id`, `date`, `team_a`, `score_team_a`, `team_b`, `score_team_b`, `winner`, `referee`) VALUES
(1, '2021-09-20', 1, 1, 7, 3, 3, 13),
(2, '2021-09-20', 4, 5, 2, 2, 4, 14),
(3, '2021-09-20', 3, 0, 1, 1, 1, 14),
(4, '2021-12-03', 3, 0, 5, 0, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(10) NOT NULL,
  `first_name` varchar(1024) NOT NULL,
  `last_name` varchar(1024) NOT NULL,
  `number` int(10) NOT NULL,
  `position` varchar(1024) NOT NULL,
  `club` int(10) NOT NULL,
  `goals_total` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `number`, `position`, `club`, `goals_total`) VALUES
(1, 'Adam', 'Kalinowski', 4, 'Napastink', 1, 12),
(2, 'Robert', 'Trzebinia', 14, 'Napastink', 8, 2),
(3, 'Jakub', 'Roster', 24, 'Napastink', 3, 14),
(4, 'Michal', 'Kowalczuk', 11, 'Napastink', 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `referees`
--

CREATE TABLE `referees` (
  `id` int(10) NOT NULL,
  `first_name` varchar(1024) NOT NULL,
  `last_name` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referees`
--

INSERT INTO `referees` (`id`, `first_name`, `last_name`) VALUES
(12, 'Adam', 'Dudek'),
(13, 'Jan', 'Czarnecki'),
(14, 'Jakub', 'Szczypiora'),
(15, 'Michal', 'Adamczyk');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referees`
--
ALTER TABLE `referees`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `matches`
--
ALTER TABLE `matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `referees`
--
ALTER TABLE `referees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
