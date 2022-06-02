-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2022 at 08:24 AM
-- Server version: 8.0.29-0ubuntu0.20.04.3
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
-- Database: `fashmash`
--

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int NOT NULL,
  `show_id` varchar(100) NOT NULL,
  `show_name` varchar(200) NOT NULL,
  `show_elo` double NOT NULL,
  `show_image` varchar(200) NOT NULL,
  `show_link` varchar(200) NOT NULL,
  `wins` int NOT NULL DEFAULT '0',
  `matches` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `show_id`, `show_name`, `show_elo`, `show_image`, `show_link`, `wins`, `matches`) VALUES
(1, 'tt5491994', 'Planet Earth II', 428.70800523933366, 'tt5491994.jpg', 'https://www.imdb.com/title/tt5491994/', 2, 2),
(2, 'tt0903747', 'Breaking Bad', 374.3531642192231, 'tt0903747.jpg', 'https://www.imdb.com/title/tt0903747/', 1, 4),
(3, 'tt0795176', 'Planet Earth', 400, 'tt0795176.jpg', 'https://www.imdb.com/title/tt0795176/', 0, 0),
(4, 'tt0185906', 'Band of Brothers', 400, 'tt0185906.jpg', 'https://www.imdb.com/title/tt0185906/', 0, 0),
(5, 'tt7366338', 'Chernobyl', 400, 'tt7366338.jpg', 'https://www.imdb.com/title/tt7366338/', 0, 0),
(6, 'tt0306414', 'The Wire', 400, 'tt0306414.jpg', 'https://www.imdb.com/title/tt0306414/', 0, 0),
(7, 'tt6769208', 'Blue Planet II', 400, 'tt6769208.jpg', 'https://www.imdb.com/title/tt6769208/', 0, 0),
(8, 'tt0417299', 'Avatar: The Last Airbender', 400, 'tt0417299.jpg', 'https://www.imdb.com/title/tt0417299/', 0, 0),
(9, 'tt2395695', 'Cosmos: A Spacetime Odyssey', 385, 'tt2395695.jpg', 'https://www.imdb.com/title/tt2395695/', 0, 1),
(10, 'tt0141842', ' The Sopranos', 415.64719999153436, 'tt0141842.jpg', 'https://www.imdb.com/title/tt0141842/', 1, 1),
(11, 'tt9253866', 'Our Planet', 400, 'tt9253866.jpg', 'https://www.imdb.com/title/tt9253866/', 0, 0),
(12, 'tt0081846', 'Cosmos', 400, 'tt0081846.jpg', 'https://www.imdb.com/title/tt0081846/', 0, 0),
(13, 'tt0944947', 'Game of Thrones', 400, 'tt0944947.jpg', 'https://www.imdb.com/title/tt0944947/', 0, 0),
(14, 'tt2861424', 'Rick and Morty', 400, 'tt2861424.jpg', 'https://www.imdb.com/title/tt2861424/', 0, 0),
(15, 'tt0071075', 'The World at War', 400, 'tt0071075.jpg', 'https://www.imdb.com/title/tt0071075/', 0, 0),
(16, 'tt1355642', 'Hagane no renkinjutsushi', 400, 'tt1355642.jpg', 'https://www.imdb.com/title/tt1355642/', 0, 0),
(17, 'tt8420184', 'The Last Dance', 415, 'tt8420184.jpg', 'https://www.imdb.com/title/tt8420184/', 1, 1),
(18, 'tt1533395', 'Life', 400, 'tt1533395.jpg', 'https://www.imdb.com/title/tt1533395/', 0, 0),
(19, 'tt1475582', 'Sherlock', 400, 'tt1475582.jpg', 'https://www.imdb.com/title/tt1475582/', 0, 0),
(20, 'tt0052520', 'The Twilight Zone', 400, 'tt0052520.jpg', 'https://www.imdb.com/title/tt0052520/', 0, 0),
(21, 'tt1877514', 'The Vietnam War', 400, 'tt1877514.jpg', 'https://www.imdb.com/title/tt1877514/', 0, 0),
(22, 'tt0103359', 'Batman: The Animated Series', 400, 'tt0103359.jpg', 'https://www.imdb.com/title/tt0103359/', 0, 0),
(23, 'tt12392504', 'Scam 1992: The Harshad Mehta Story', 400, 'tt12392504.jpg', 'https://www.imdb.com/title/tt12392504/', 0, 0),
(24, 'tt11126994', 'Arcane: League of Legends', 415, 'tt11126994.jpg', 'https://www.imdb.com/title/tt11126994/', 1, 1),
(25, 'tt0296310', 'The Blue Planet', 400, 'tt0296310.jpg', 'https://www.imdb.com/title/tt0296310/', 0, 0),
(26, 'tt0303461', 'Firefly', 385, 'tt0303461.jpg', 'https://www.imdb.com/title/tt0303461/', 0, 1),
(27, 'tt0386676', 'The Office', 385, 'tt0386676.jpg', 'https://www.imdb.com/title/tt0386676/', 0, 1),
(28, 'tt2560140', 'Shingeki no Kyojin', 400, 'tt2560140.jpg', 'https://www.imdb.com/title/tt2560140/', 0, 0),
(29, 'tt1806234', 'Human Planet', 400, 'tt1806234.jpg', 'https://www.imdb.com/title/tt1806234/', 0, 0),
(30, 'tt2092588', 'Frozen Planet', 400, 'tt2092588.jpg', 'https://www.imdb.com/title/tt2092588/', 0, 0),
(31, 'tt0877057', 'Death Note: Desu nôto', 385, 'tt0877057.jpg', 'https://www.imdb.com/title/tt0877057/', 0, 1),
(32, 'tt2356777', 'True Detective', 429.35280000846564, 'tt2356777.jpg', 'https://www.imdb.com/title/tt2356777/', 2, 2),
(33, 'tt9735318', 'The Beatles: Get Back', 400, 'tt9735318.jpg', 'https://www.imdb.com/title/tt9735318/', 0, 0),
(34, 'tt0081912', 'Only Fools and Horses', 400, 'tt0081912.jpg', 'https://www.imdb.com/title/tt0081912/', 0, 0),
(35, 'tt0098769', 'The Civil War', 415, 'tt0098769.jpg', 'https://www.imdb.com/title/tt0098769/', 1, 1),
(36, 'tt0098904', 'Seinfeld', 400, 'tt0098904.jpg', 'https://www.imdb.com/title/tt0098904/', 0, 0),
(37, 'tt2098220', 'Hunter x Hunter', 400, 'tt2098220.jpg', 'https://www.imdb.com/title/tt2098220/', 0, 0),
(38, 'tt7920978', 'Sahsiyet', 400, 'tt7920978.jpg', 'https://www.imdb.com/title/tt7920978/', 0, 0),
(39, 'tt10541088', 'Clarkson\'s Farm', 415, 'tt10541088.jpg', 'https://www.imdb.com/title/tt10541088/', 1, 1),
(40, 'tt2802850', 'Fargo', 400, 'tt2802850.jpg', 'https://www.imdb.com/title/tt2802850/', 0, 0),
(41, 'tt0092337', 'Dekalog', 400, 'tt0092337.jpg', 'https://www.imdb.com/title/tt0092337/', 0, 0),
(42, 'tt0213338', 'Kaubôi bibappu', 400, 'tt0213338.jpg', 'https://www.imdb.com/title/tt0213338/', 0, 0),
(43, 'tt0108778', 'Friends', 415, 'tt0108778.jpg', 'https://www.imdb.com/title/tt0108778/', 1, 1),
(44, 'tt7137906', 'When They See Us', 385, 'tt7137906.jpg', 'https://www.imdb.com/title/tt7137906/', 0, 1),
(45, 'tt1865718', 'Gravity Falls', 400, 'tt1865718.jpg', 'https://www.imdb.com/title/tt1865718/', 0, 0),
(46, 'tt3530232', 'Last Week Tonight with John Oliver', 400, 'tt3530232.jpg', 'https://www.imdb.com/title/tt3530232/', 0, 0),
(47, 'tt2297757', 'Nathan for You', 400, 'tt2297757.jpg', 'https://www.imdb.com/title/tt2297757/', 0, 0),
(48, 'tt2571774', 'Africa', 400, 'tt2571774.jpg', 'https://www.imdb.com/title/tt2571774/', 0, 0),
(49, 'tt0063929', 'Monty Python\'s Flying Circus', 400, 'tt0063929.jpg', 'https://www.imdb.com/title/tt0063929/', 0, 0),
(50, 'tt1508238', 'Apocalypse: La 2ème guerre mondiale', 400, 'tt1508238.jpg', 'https://www.imdb.com/title/tt1508238/', 0, 0),
(51, 'tt4742876', 'TVF Pitchers', 400, 'tt4742876.jpg', 'https://www.imdb.com/title/tt4742876/', 0, 0),
(52, 'tt0472954', 'It\'s Always Sunny in Philadelphia', 400.64719999153436, 'tt0472954.jpg', 'https://www.imdb.com/title/tt0472954/', 1, 2),
(53, 'tt3032476', 'Better Call Saul', 400, 'tt3032476.jpg', 'https://www.imdb.com/title/tt3032476/', 0, 0),
(54, 'tt0081834', 'Das Boot', 400, 'tt0081834.jpg', 'https://www.imdb.com/title/tt0081834/', 0, 0),
(55, 'tt4934214', 'Taskmaster', 400, 'tt4934214.jpg', 'https://www.imdb.com/title/tt4934214/', 0, 0),
(56, 'tt0264235', 'Curb Your Enthusiasm', 400, 'tt0264235.jpg', 'https://www.imdb.com/title/tt0264235/', 0, 0),
(57, 'tt0112130', 'Pride and Prejudice', 400, 'tt0112130.jpg', 'https://www.imdb.com/title/tt0112130/', 0, 0),
(58, 'tt0072500', 'Fawlty Towers', 400, 'tt0072500.jpg', 'https://www.imdb.com/title/tt0072500/', 0, 0),
(59, 'tt0193676', 'Freaks and Geeks', 400, 'tt0193676.jpg', 'https://www.imdb.com/title/tt0193676/', 0, 0),
(60, 'tt0200276', 'The West Wing', 400, 'tt0200276.jpg', 'https://www.imdb.com/title/tt0200276/', 0, 0),
(61, 'tt1831164', 'Leyla ile Mecnun', 385, 'tt1831164.jpg', 'https://www.imdb.com/title/tt1831164/', 0, 1),
(62, 'tt0096548', 'Blackadder Goes Forth', 400, 'tt0096548.jpg', 'https://www.imdb.com/title/tt0096548/', 0, 0),
(63, 'tt0098936', 'Twin Peaks', 400, 'tt0098936.jpg', 'https://www.imdb.com/title/tt0098936/', 0, 0),
(64, 'tt2085059', 'Black Mirror', 400, 'tt2085059.jpg', 'https://www.imdb.com/title/tt2085059/', 0, 0),
(65, 'tt2707408', 'Narcos', 399.35280000846564, 'tt2707408.jpg', 'https://www.imdb.com/title/tt2707408/', 1, 2),
(66, 'tt0353049', 'Chappelle\'s Show', 400, 'tt0353049.jpg', 'https://www.imdb.com/title/tt0353049/', 0, 0),
(67, 'tt0214341', 'Dragon Ball Z', 400, 'tt0214341.jpg', 'https://www.imdb.com/title/tt0214341/', 0, 0),
(68, 'tt3398228', 'BoJack Horseman', 400, 'tt3398228.jpg', 'https://www.imdb.com/title/tt3398228/', 0, 0),
(69, 'tt0121220', 'Dragon Ball Z: Doragon bôru zetto', 385, 'tt0121220.jpg', 'https://www.imdb.com/title/tt0121220/', 0, 1),
(70, 'tt7660850', 'Succession', 400, 'tt7660850.jpg', 'https://www.imdb.com/title/tt7660850/', 0, 0),
(71, 'tt2442560', 'Peaky Blinders', 400, 'tt2442560.jpg', 'https://www.imdb.com/title/tt2442560/', 0, 0),
(72, 'tt0074006', 'I, Claudius', 400, 'tt0074006.jpg', 'https://www.imdb.com/title/tt0074006/', 0, 0),
(73, 'tt0384766', 'Rome', 400, 'tt0384766.jpg', 'https://www.imdb.com/title/tt0384766/', 0, 0),
(74, 'tt0121955', 'South Park', 400, 'tt0121955.jpg', 'https://www.imdb.com/title/tt0121955/', 0, 0),
(75, 'tt0118421', 'Oz', 385, 'tt0118421.jpg', 'https://www.imdb.com/title/tt0118421/', 0, 1),
(76, 'tt10986410', 'Ted Lasso', 400, 'tt10986410.jpg', 'https://www.imdb.com/title/tt10986410/', 0, 0),
(77, 'tt0248654', 'Six Feet Under', 400, 'tt0248654.jpg', 'https://www.imdb.com/title/tt0248654/', 0, 0),
(78, 'tt3718778', 'Over the Garden Wall', 400, 'tt3718778.jpg', 'https://www.imdb.com/title/tt3718778/', 0, 0),
(79, 'tt0388629', 'One Piece: Wan pîsu', 400, 'tt0388629.jpg', 'https://www.imdb.com/title/tt0388629/', 0, 0),
(80, 'tt8111088', 'The Mandalorian', 385, 'tt8111088.jpg', 'https://www.imdb.com/title/tt8111088/', 0, 1),
(81, 'tt0367279', 'Arrested Development', 400, 'tt0367279.jpg', 'https://www.imdb.com/title/tt0367279/', 0, 0),
(82, 'tt5753856', 'Dark', 400, 'tt5753856.jpg', 'https://www.imdb.com/title/tt5753856/', 0, 0),
(83, 'tt9432978', 'Kota Factory', 385, 'tt9432978.jpg', 'https://www.imdb.com/title/tt9432978/', 0, 1),
(84, 'tt4508902', 'One Punch Man: Wanpanman', 400, 'tt4508902.jpg', 'https://www.imdb.com/title/tt4508902/', 0, 0),
(85, 'tt1910272', 'Steins;Gate', 400, 'tt1910272.jpg', 'https://www.imdb.com/title/tt1910272/', 0, 0),
(86, 'tt0096697', 'The Simpsons', 401.29199476066634, 'tt0096697.jpg', 'https://www.imdb.com/title/tt0096697/', 1, 2),
(87, 'tt0412142', 'House MD', 400, 'tt0412142.jpg', 'https://www.imdb.com/title/tt0412142/', 0, 0),
(88, 'tt13675832', 'Gibi', 415, 'tt13675832.jpg', 'https://www.imdb.com/title/tt13675832/', 1, 1),
(89, 'tt0286486', 'The Shield', 400, 'tt0286486.jpg', 'https://www.imdb.com/title/tt0286486/', 0, 0),
(90, 'tt0407362', 'Battlestar Galactica', 400, 'tt0407362.jpg', 'https://www.imdb.com/title/tt0407362/', 0, 0),
(91, 'tt4574334', 'Stranger Things', 415, 'tt4574334.jpg', 'https://www.imdb.com/title/tt4574334/', 1, 1),
(92, 'tt1606375', 'Downton Abbey', 415, 'tt1606375.jpg', 'https://www.imdb.com/title/tt1606375/', 1, 1),
(93, 'tt5687612', 'Fleabag', 400, 'tt5687612.jpg', 'https://www.imdb.com/title/tt5687612/', 0, 0),
(94, 'tt6741278', 'Invincible', 400, 'tt6741278.jpg', 'https://www.imdb.com/title/tt6741278/', 0, 0),
(95, 'tt1856010', 'House of Cards', 400, 'tt1856010.jpg', 'https://www.imdb.com/title/tt1856010/', 0, 0),
(96, 'tt0804503', 'Mad Men', 400, 'tt0804503.jpg', 'https://www.imdb.com/title/tt0804503/', 0, 0),
(97, 'tt1190634', 'The Boys', 385, 'tt1190634.jpg', 'https://www.imdb.com/title/tt1190634/', 0, 1),
(98, 'tt10233448', 'Vinland Saga', 400, 'tt10233448.jpg', 'https://www.imdb.com/title/tt10233448/', 0, 0),
(99, 'tt5788792', 'The Marvelous Mrs Maisel', 400, 'tt5788792.jpg', 'https://www.imdb.com/title/tt5788792/', 0, 0),
(100, 'tt4786824', ' The Crown', 400, 'tt4786824.jpg', 'https://www.imdb.com/title/tt4786824/', 0, 0),
(101, 'tt0092455', 'Star Trek: The Next Generation', 400, 'tt0092455.jpg', 'https://www.imdb.com/title/tt0092455/', 0, 0),
(102, 'tt13991232', '1883', 400, 'tt13991232.jpg', 'https://www.imdb.com/title/tt13991232/', 0, 0),
(103, 'tt0086661', 'The Adventures of Sherlock Holmes', 400, 'tt0086661.jpg', 'https://www.imdb.com/title/tt0086661/', 0, 0),
(104, 'tt0758745', 'Friday Night Lights', 400, 'tt0758745.jpg', 'https://www.imdb.com/title/tt0758745/', 0, 0),
(105, 'tt1518542', 'Sarabhai V/S Sarabhai', 400, 'tt1518542.jpg', 'https://www.imdb.com/title/tt1518542/', 0, 0),
(106, 'tt0387764', 'Peep Show', 415, 'tt0387764.jpg', 'https://www.imdb.com/title/tt0387764/', 1, 1),
(107, 'tt1628033', 'Top Gear', 400, 'tt1628033.jpg', 'https://www.imdb.com/title/tt1628033/', 0, 0),
(108, 'tt11280740', 'Severance', 400, 'tt11280740.jpg', 'https://www.imdb.com/title/tt11280740/', 0, 0),
(109, 'tt10638036', 'Heartstopper', 400, 'tt10638036.jpg', 'https://www.imdb.com/title/tt10638036/', 0, 0),
(110, 'tt5712554', 'The Grand Tour', 400, 'tt5712554.jpg', 'https://www.imdb.com/title/tt5712554/', 0, 0),
(111, 'tt0459159', 'The Thick of It', 400, 'tt0459159.jpg', 'https://www.imdb.com/title/tt0459159/', 0, 0),
(112, 'tt0318871', 'Kenpû Denki Berserk', 400, 'tt0318871.jpg', 'https://www.imdb.com/title/tt0318871/', 0, 0),
(113, 'tt6025022', 'Justice League Unlimited', 413.7633887960574, 'tt6025022.jpg', 'https://www.imdb.com/title/tt6025022/', 1, 1),
(114, 'tt2303687', 'Line of Duty', 400, 'tt2303687.jpg', 'https://www.imdb.com/title/tt2303687/', 0, 0),
(115, 'tt0348914', 'Deadwood', 400, 'tt0348914.jpg', 'https://www.imdb.com/title/tt0348914/', 0, 0),
(116, 'tt0773262', 'Dexter', 400, 'tt0773262.jpg', 'https://www.imdb.com/title/tt0773262/', 0, 0),
(117, 'tt0106179', 'The X Files', 415, 'tt0106179.jpg', 'https://www.imdb.com/title/tt0106179/', 1, 1),
(118, 'tt4299972', 'The Jinx: The Life and Deaths of Robert Durst', 400, 'tt4299972.jpg', 'https://www.imdb.com/title/tt4299972/', 0, 0),
(119, 'tt1266020', 'Parks and Recreation', 400, 'tt1266020.jpg', 'https://www.imdb.com/title/tt1266020/', 0, 0),
(120, 'tt10530900', 'Gullak', 463.33483240985316, 'tt10530900.jpg', 'https://www.imdb.com/title/tt10530900/', 5, 5),
(121, 'tt0111958', 'Father Ted', 400, 'tt0111958.jpg', 'https://www.imdb.com/title/tt0111958/', 0, 0),
(122, 'tt12004706', 'Panchayat', 400, 'tt12004706.jpg', 'https://www.imdb.com/title/tt12004706/', 0, 0),
(123, 'tt0088484', 'Blackadder II', 400, 'tt0088484.jpg', 'https://www.imdb.com/title/tt0088484/', 0, 0),
(124, 'tt1733785', 'Bron/Broen', 400, 'tt1733785.jpg', 'https://www.imdb.com/title/tt1733785/', 0, 0),
(125, 'tt0988824', 'Naruto: Shippûden', 400, 'tt0988824.jpg', 'https://www.imdb.com/title/tt0988824/', 0, 0),
(126, 'tt14392248', 'Aspirants', 400, 'tt14392248.jpg', 'https://www.imdb.com/title/tt14392248/', 0, 0),
(127, 'tt5555260', 'This Is Us', 336.66516759014684, 'tt5555260.jpg', 'https://www.imdb.com/title/tt5555260/', 0, 5),
(128, 'tt3322312', 'Daredevil', 385, 'tt3322312.jpg', 'https://www.imdb.com/title/tt3322312/', 0, 1),
(129, 'tt9335498', 'Demon Slayer: Kimetsu No Yaiba', 385, 'tt9335498.jpg', 'https://www.imdb.com/title/tt9335498/', 0, 1),
(130, 'tt1486217', 'Archer', 385, 'tt1486217.jpg', 'https://www.imdb.com/title/tt1486217/', 0, 1),
(131, 'tt0994314', 'Kôdo giasu - Hangyaku no rurûshu: Code Geass - Lelouch of the Rebellion', 400, 'tt0994314.jpg', 'https://www.imdb.com/title/tt0994314/', 0, 0),
(132, 'tt4288182', 'Atlanta', 400, 'tt4288182.jpg', 'https://www.imdb.com/title/tt4288182/', 0, 0),
(133, 'tt1795096', 'Behzat Ç: Bir Ankara Polisiyesi', 385, 'tt1795096.jpg', 'https://www.imdb.com/title/tt1795096/', 0, 1),
(134, 'tt0094517', 'Mystery Science Theater 3000', 400, 'tt0094517.jpg', 'https://www.imdb.com/title/tt0094517/', 0, 0),
(135, 'tt9140342', 'It\'s a Sin', 400, 'tt9140342.jpg', 'https://www.imdb.com/title/tt9140342/', 0, 0),
(136, 'tt3398540', 'Haikyuu!!', 400, 'tt3398540.jpg', 'https://www.imdb.com/title/tt3398540/', 0, 0),
(137, 'tt0092324', 'Blackadder the Third', 400, 'tt0092324.jpg', 'https://www.imdb.com/title/tt0092324/', 0, 0),
(138, 'tt1641384', 'Young Justice', 400, 'tt1641384.jpg', 'https://www.imdb.com/title/tt1641384/', 0, 0),
(139, 'tt0090509', 'The Return of Sherlock Holmes', 415, 'tt0090509.jpg', 'https://www.imdb.com/title/tt0090509/', 1, 1),
(140, 'tt0096639', 'Lonesome Dove', 415, 'tt0096639.jpg', 'https://www.imdb.com/title/tt0096639/', 1, 1),
(141, 'tt2049116', 'Gomorra: La serie', 400, 'tt2049116.jpg', 'https://www.imdb.com/title/tt2049116/', 0, 0),
(142, 'tt5290382', 'Mindhunter', 400, 'tt5290382.jpg', 'https://www.imdb.com/title/tt5290382/', 0, 0),
(143, 'tt0380136', 'QI', 400, 'tt0380136.jpg', 'https://www.imdb.com/title/tt0380136/', 0, 0),
(144, 'tt5189670', 'Making a Murderer', 400, 'tt5189670.jpg', 'https://www.imdb.com/title/tt5189670/', 0, 0),
(145, 'tt0158417', 'Mahabharat', 415, 'tt0158417.jpg', 'https://www.imdb.com/title/tt0158417/', 1, 1),
(146, 'tt4236770', 'Yellowstone', 400, 'tt4236770.jpg', 'https://www.imdb.com/title/tt4236770/', 0, 0),
(147, 'tt1305826', 'Adventure Time', 400, 'tt1305826.jpg', 'https://www.imdb.com/title/tt1305826/', 0, 0),
(148, 'tt9174558', 'Dopesick', 400, 'tt9174558.jpg', 'https://www.imdb.com/title/tt9174558/', 0, 0),
(149, 'tt0096657', 'Mr Bean', 400, 'tt0096657.jpg', 'https://www.imdb.com/title/tt0096657/', 0, 0),
(150, 'tt5421602', 'Anne', 400, 'tt5421602.jpg', 'https://www.imdb.com/title/tt5421602/', 0, 0),
(151, 'tt0094525', 'Poirot', 385, 'tt0094525.jpg', 'https://www.imdb.com/title/tt0094525/', 0, 1),
(152, 'tt0434706', 'Monster', 415, 'tt0434706.jpg', 'https://www.imdb.com/title/tt0434706/', 1, 1),
(153, 'tt0475784', 'Westworld', 385, 'tt0475784.jpg', 'https://www.imdb.com/title/tt0475784/', 0, 1),
(154, 'tt0979432', 'Boardwalk Empire', 400, 'tt0979432.jpg', 'https://www.imdb.com/title/tt0979432/', 0, 0),
(155, 'tt1489428', 'Justified', 400, 'tt1489428.jpg', 'https://www.imdb.com/title/tt1489428/', 0, 0),
(156, 'tt8289930', 'Formula 1: Drive to Survive', 400, 'tt8289930.jpg', 'https://www.imdb.com/title/tt8289930/', 0, 0),
(157, 'tt6763664', 'The Haunting of Hill House', 400, 'tt6763664.jpg', 'https://www.imdb.com/title/tt6763664/', 0, 0),
(158, 'tt0053488', 'The Bugs Bunny Show', 400, 'tt0053488.jpg', 'https://www.imdb.com/title/tt0053488/', 0, 0),
(159, 'tt10048342', 'The Queen\'s Gambit', 400, 'tt10048342.jpg', 'https://www.imdb.com/title/tt10048342/', 0, 0),
(160, 'tt2244495', 'The Eric Andre Show', 400, 'tt2244495.jpg', 'https://www.imdb.com/title/tt2244495/', 0, 0),
(161, 'tt0080306', 'Yes Minister', 400, 'tt0080306.jpg', 'https://www.imdb.com/title/tt0080306/', 0, 0),
(162, 'tt1870479', 'The Newsroom', 400, 'tt1870479.jpg', 'https://www.imdb.com/title/tt1870479/', 0, 0),
(163, 'tt8595766', 'Yeh Meri Family', 383.1754417453858, 'tt8595766.jpg', 'https://www.imdb.com/title/tt8595766/', 0, 1),
(164, 'tt0863046', 'Flight of the Conchords', 400, 'tt0863046.jpg', 'https://www.imdb.com/title/tt0863046/', 0, 0),
(165, 'tt0088509', 'Dragon Ball: Doragon bôru', 400, 'tt0088509.jpg', 'https://www.imdb.com/title/tt0088509/', 0, 0),
(166, 'tt0268093', 'Ramayan', 400, 'tt0268093.jpg', 'https://www.imdb.com/title/tt0268093/', 0, 0),
(167, 'tt0187664', 'Spaced', 400, 'tt0187664.jpg', 'https://www.imdb.com/title/tt0187664/', 0, 0),
(168, 'tt10332508', 'Primal', 400, 'tt10332508.jpg', 'https://www.imdb.com/title/tt10332508/', 0, 0),
(169, 'tt0275137', 'Justice League', 370.64719999153436, 'tt0275137.jpg', 'https://www.imdb.com/title/tt0275137/', 0, 2),
(170, 'tt2100976', 'Impractical Jokers', 385, 'tt2100976.jpg', 'https://www.imdb.com/title/tt2100976/', 0, 1),
(171, 'tt0237123', 'Coupling', 400, 'tt0237123.jpg', 'https://www.imdb.com/title/tt0237123/', 0, 0),
(172, 'tt0280249', 'Dragon Ball', 400, 'tt0280249.jpg', 'https://www.imdb.com/title/tt0280249/', 0, 0),
(173, 'tt0314979', 'Battlestar Galactica', 415, 'tt0314979.jpg', 'https://www.imdb.com/title/tt0314979/', 1, 1),
(174, 'tt10850932', 'Sa-rang-eui bul-sa-chak', 400, 'tt10850932.jpg', 'https://www.imdb.com/title/tt10850932/', 0, 0),
(175, 'tt0106028', 'Homicide: Life on the Street', 400, 'tt0106028.jpg', 'https://www.imdb.com/title/tt0106028/', 0, 0),
(176, 'tt0403778', 'Long Way Round', 400, 'tt0403778.jpg', 'https://www.imdb.com/title/tt0403778/', 0, 0),
(177, 'tt0417373', 'The Venture Bros', 415, 'tt0417373.jpg', 'https://www.imdb.com/title/tt0417373/', 1, 1),
(178, 'tt0487831', 'The IT Crowd', 400, 'tt0487831.jpg', 'https://www.imdb.com/title/tt0487831/', 0, 0),
(179, 'tt0290978', 'The Office', 385.64719999153436, 'tt0290978.jpg', 'https://www.imdb.com/title/tt0290978/', 0, 1),
(180, 'tt0423731', 'Samurai chanpurû', 400, 'tt0423731.jpg', 'https://www.imdb.com/title/tt0423731/', 0, 0),
(181, 'tt1492966', 'Louie', 400, 'tt1492966.jpg', 'https://www.imdb.com/title/tt1492966/', 0, 0),
(182, 'tt4063800', 'Le Bureau des Légendes', 400, 'tt4063800.jpg', 'https://www.imdb.com/title/tt4063800/', 0, 0),
(183, 'tt9544034', 'The Family Man', 414.94422035943717, 'tt9544034.jpg', 'https://www.imdb.com/title/tt9544034/', 1, 1),
(184, 'tt6108262', 'Senke nad Balkanom', 385, 'tt6108262.jpg', 'https://www.imdb.com/title/tt6108262/', 0, 1),
(185, 'tt7908628', 'What We Do in the Shadows', 400, 'tt7908628.jpg', 'https://www.imdb.com/title/tt7908628/', 0, 0),
(186, 'tt4158110', 'Mr Robot', 400, 'tt4158110.jpg', 'https://www.imdb.com/title/tt4158110/', 0, 0),
(187, 'tt0129690', 'I\'m Alan Partridge', 415, 'tt0129690.jpg', 'https://www.imdb.com/title/tt0129690/', 1, 1),
(188, 'tt0163507', 'Whose Line Is It Anyway?', 400, 'tt0163507.jpg', 'https://www.imdb.com/title/tt0163507/', 0, 0),
(189, 'tt1586680', 'Shameless', 400, 'tt1586680.jpg', 'https://www.imdb.com/title/tt1586680/', 0, 0),
(190, 'tt0086831', 'Yes, Prime Minister', 415, 'tt0086831.jpg', 'https://www.imdb.com/title/tt0086831/', 1, 1),
(191, 'tt7221388', 'Cobra Kai', 400, 'tt7221388.jpg', 'https://www.imdb.com/title/tt7221388/', 0, 0),
(192, 'tt1513168', 'Through the Wormhole', 414.35280000846564, 'tt1513168.jpg', 'https://www.imdb.com/title/tt1513168/', 1, 1),
(193, 'tt7562112', 'Pose', 400, 'tt7562112.jpg', 'https://www.imdb.com/title/tt7562112/', 0, 0),
(194, 'tt4647692', 'Letterkenny', 400, 'tt4647692.jpg', 'https://www.imdb.com/title/tt4647692/', 0, 0),
(195, 'tt12343534', 'Jujutsu Kaisen', 385, 'tt12343534.jpg', 'https://www.imdb.com/title/tt12343534/', 0, 1),
(196, 'tt1442449', 'Spartacus: Blood and Sand', 400, 'tt1442449.jpg', 'https://www.imdb.com/title/tt1442449/', 0, 0),
(197, 'tt0421357', 'Hagane no renkinjutsushi', 400, 'tt0421357.jpg', 'https://www.imdb.com/title/tt0421357/', 0, 0),
(198, 'tt0278238', 'Samurai Jack', 400, 'tt0278238.jpg', 'https://www.imdb.com/title/tt0278238/', 0, 0),
(199, 'tt5288312', 'Skam', 383.7637848798965, 'tt5288312.jpg', 'https://www.imdb.com/title/tt5288312/', 1, 3),
(200, 'tt0417349', 'North & South', 385, 'tt0417349.jpg', 'https://www.imdb.com/title/tt0417349/', 0, 1),
(201, 'tt0118273', 'Brass Eye', 415, 'tt0118273.jpg', 'https://www.imdb.com/title/tt0118273/', 1, 1),
(202, 'tt1124373', 'Sons of Anarchy', 385, 'tt1124373.jpg', 'https://www.imdb.com/title/tt1124373/', 0, 1),
(203, 'tt1758429', 'Spartacus: Gods of the Arena', 400, 'tt1758429.jpg', 'https://www.imdb.com/title/tt1758429/', 0, 0),
(204, 'tt0112159', 'Shin seiki evangerion', 400, 'tt0112159.jpg', 'https://www.imdb.com/title/tt0112159/', 0, 0),
(205, 'tt0290988', 'Trailer Park Boys', 400, 'tt0290988.jpg', 'https://www.imdb.com/title/tt0290988/', 0, 0),
(206, 'tt2575988', 'Silicon Valley', 400, 'tt2575988.jpg', 'https://www.imdb.com/title/tt2575988/', 0, 0),
(207, 'tt0120570', 'From the Earth to the Moon', 400, 'tt0120570.jpg', 'https://www.imdb.com/title/tt0120570/', 0, 0),
(208, 'tt0436992', 'Doctor Who', 400, 'tt0436992.jpg', 'https://www.imdb.com/title/tt0436992/', 0, 0),
(209, 'tt1534360', 'Ezel', 415, 'tt1534360.jpg', 'https://www.imdb.com/title/tt1534360/', 1, 1),
(210, 'tt0149460', 'Futurama', 400, 'tt0149460.jpg', 'https://www.imdb.com/title/tt0149460/', 0, 0),
(211, 'tt4093826', 'Twin Peaks', 400, 'tt4093826.jpg', 'https://www.imdb.com/title/tt4093826/', 0, 0),
(212, 'tt4082744', 'Detectorists', 400, 'tt4082744.jpg', 'https://www.imdb.com/title/tt4082744/', 0, 0),
(213, 'tt0203082', 'Rurouni Kenshin: Meiji Kenkaku Romantan: Tsuioku Hen', 400, 'tt0203082.jpg', 'https://www.imdb.com/title/tt0203082/', 0, 0),
(214, 'tt2701582', 'Endeavour', 400, 'tt2701582.jpg', 'https://www.imdb.com/title/tt2701582/', 0, 0),
(215, 'tt5897304', 'Mob Psycho 100', 400, 'tt5897304.jpg', 'https://www.imdb.com/title/tt5897304/', 0, 0),
(216, 'tt2243973', 'Hannibal', 400, 'tt2243973.jpg', 'https://www.imdb.com/title/tt2243973/', 0, 0),
(217, 'tt1439629', 'Community', 415, 'tt1439629.jpg', 'https://www.imdb.com/title/tt1439629/', 1, 1),
(218, 'tt3230854', 'The Expanse', 400, 'tt3230854.jpg', 'https://www.imdb.com/title/tt3230854/', 0, 0),
(219, 'tt0995832', 'Generation Kill', 400, 'tt0995832.jpg', 'https://www.imdb.com/title/tt0995832/', 0, 0),
(220, 'tt1230180', 'The Angry Video Game Nerd', 400, 'tt1230180.jpg', 'https://www.imdb.com/title/tt1230180/', 0, 0),
(221, 'tt3526078', 'Schitt\'s Creek', 400, 'tt3526078.jpg', 'https://www.imdb.com/title/tt3526078/', 0, 0),
(222, 'tt4295140', 'Chef\'s Table', 400, 'tt4295140.jpg', 'https://www.imdb.com/title/tt4295140/', 0, 0),
(223, 'tt2401256', 'The Night Of', 400, 'tt2401256.jpg', 'https://www.imdb.com/title/tt2401256/', 0, 0),
(224, 'tt6111552', 'Content Cop', 400, 'tt6111552.jpg', 'https://www.imdb.com/title/tt6111552/', 0, 0),
(225, 'tt0047708', 'Alfred Hitchcock Presents', 400, 'tt0047708.jpg', 'https://www.imdb.com/title/tt0047708/', 0, 0),
(226, 'tt3920596', 'Big Little Lies', 400, 'tt3920596.jpg', 'https://www.imdb.com/title/tt3920596/', 0, 0),
(227, 'tt2937900', 'The Knick', 400, 'tt2937900.jpg', 'https://www.imdb.com/title/tt2937900/', 0, 0),
(228, 'tt1710308', 'Regular Show', 385, 'tt1710308.jpg', 'https://www.imdb.com/title/tt1710308/', 0, 1),
(229, 'tt2433738', 'Wentworth', 400, 'tt2433738.jpg', 'https://www.imdb.com/title/tt2433738/', 0, 0),
(230, 'tt0472027', 'John Adams', 400, 'tt0472027.jpg', 'https://www.imdb.com/title/tt0472027/', 0, 0),
(231, 'tt3895150', 'Shigatsu wa kimi no uso', 400, 'tt3895150.jpg', 'https://www.imdb.com/title/tt3895150/', 0, 0),
(232, 'tt0262150', 'Black Books', 400, 'tt0262150.jpg', 'https://www.imdb.com/title/tt0262150/', 0, 0),
(233, 'tt5675620', 'The Punisher', 384.35280000846564, 'tt5675620.jpg', 'https://www.imdb.com/title/tt5675620/', 0, 1),
(234, 'tt7278862', 'L\'amica geniale', 385, 'tt7278862.jpg', 'https://www.imdb.com/title/tt7278862/', 0, 1),
(235, 'tt7472896', 'Mr Inbetween', 429.35280000846564, 'tt7472896.jpg', 'https://www.imdb.com/title/tt7472896/', 2, 2),
(236, 'tt6958022', 'The Defiant Ones', 400, 'tt6958022.jpg', 'https://www.imdb.com/title/tt6958022/', 0, 0),
(237, 'tt0103584', 'X-Men', 400, 'tt0103584.jpg', 'https://www.imdb.com/title/tt0103584/', 0, 0),
(238, 'tt0397150', 'Garth Marenghi\'s Darkplace', 400, 'tt0397150.jpg', 'https://www.imdb.com/title/tt0397150/', 0, 0),
(239, 'tt10155688', 'Mare of Easttown', 415, 'tt10155688.jpg', 'https://www.imdb.com/title/tt10155688/', 1, 1),
(240, 'tt0421291', 'Avrupa Yakasi', 400, 'tt0421291.jpg', 'https://www.imdb.com/title/tt0421291/', 0, 0),
(241, 'tt1299368', 'Southland', 400, 'tt1299368.jpg', 'https://www.imdb.com/title/tt1299368/', 0, 0),
(242, 'tt5249462', 'Boku dake ga inai machi', 400, 'tt5249462.jpg', 'https://www.imdb.com/title/tt5249462/', 0, 0),
(243, 'tt0043208', 'I Love Lucy', 400, 'tt0043208.jpg', 'https://www.imdb.com/title/tt0043208/', 0, 0),
(244, 'tt5071412', 'Ozark', 400, 'tt5071412.jpg', 'https://www.imdb.com/title/tt5071412/', 0, 0),
(245, 'tt7259746', 'Queer Eye', 400, 'tt7259746.jpg', 'https://www.imdb.com/title/tt7259746/', 0, 0),
(246, 'tt9561862', 'Love, Death & Robots', 385.64719999153436, 'tt9561862.jpg', 'https://www.imdb.com/title/tt9561862/', 0, 1),
(247, 'tt1298820', 'Clannad: After Story', 400, 'tt1298820.jpg', 'https://www.imdb.com/title/tt1298820/', 0, 0),
(248, 'tt14168162', 'Bosch: Legacy', 400, 'tt14168162.jpg', 'https://www.imdb.com/title/tt14168162/', 0, 0),
(249, 'tt7658402', 'Harley Quinn', 400, 'tt7658402.jpg', 'https://www.imdb.com/title/tt7658402/', 0, 0),
(250, 'tt0310455', 'Foyle\'s War', 415, 'tt0310455.jpg', 'https://www.imdb.com/title/tt0310455/', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `show_id` (`show_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
