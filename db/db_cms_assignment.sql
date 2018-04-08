-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 09, 2018 at 01:55 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` text NOT NULL,
  `movies_year` text NOT NULL,
  `movies_runtime` text NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` text NOT NULL,
  `movies_release` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_release`) VALUES
(1, 'Blockers.jpg', 'Blockers', '2018', '1h 42m', 'Three parents try to stop their daughters from having sex on Prom night.', 'Blockers.mp4', '6 April 2018'),
(2, 'A_Quiet_Place.jpg', 'A Quiet Place', '2018', '1h 30m', 'A family is forced to live in silence while hiding from creatures that hunt by sound.', 'A_Quiet_Place.mp4', '6 April 2018'),
(3, 'The_Miracle_Season.jpg', 'The Miracle Season', '2018', '1h 39m', 'After the tragic death of star volleyball player Caroline \"Line\" Found, a team of dispirited high school girls must band together under the guidance of their tough-love coach in hopes of winning the state championship.', 'The_Miracle_Season.mp4', '6 April 2018'),
(4, 'You_Were_Never_Really_Here.jpg', 'You Were Never Really Here', '2017', '1h 30m', 'A traumatized veteran, unafraid of violence, tracks down missing girls for a living. When a job spins out of control, Joe\'s nightmares overtake him as a conspiracy is uncovered leading to what may be his death trip or his awakening.', 'You_Were_Never_Really_Here.mp4', '8 November 2017'),
(5, 'Pandas.jpg', 'Pandas', '2018', '40m', 'In the mountains of Sichuan, China, a researcher forms a bond with Qian Qian, a panda who is about to experience nature for the first time.', 'Pandas.mp4', '6 April 2018'),
(6, 'Lean_on_Pete.jpg', 'Lean on Pete', '2016', '2h 1m', 'A teenager gets a summer job working for a horse trainer and befriends the fading racehorse, Lean on Pete.', 'Lean_on_Pete.mp4', '4 May 2018 '),
(7, 'Chappaquiddick.jpg', 'Chappaquiddick', '2017', '1h 41min', 'Depicting Ted Kennedy\'s involvement in the fatal 1969 car accident that claims the life of a young campaign strategist, Mary Jo Kopechne.', 'Chappaquiddick.mp4', '6 April 2018'),
(8, 'The_Endless.jpg', 'The Endless', '2017', '1h 51m', 'Two brothers return to the cult they fled from years ago to discover that the group\'s beliefs may be more sane than they once thought.', 'The_Endless.mp4', '6 April 2018'),
(9, 'Where_Is_Kyra.jpg', 'Where Is Kyra?', '2017', '1h 38m', 'In Brooklyn, New York, Kyra (Pfeiffer) loses her job and struggles to survive on her ailing mother\'s income. As the weeks and months go on, her problems worsen. This leads her on a risky and enigmatic path that threatens her life.', 'Where_Is_Kyra.mp4', '6 April 2018'),
(10, 'Spinning_Man.jpg', 'Spinning Man', '2018', '1h 40m', 'A happily married professor, known for having many affairs with students, becomes the prime suspect when a young woman has gone missing.', 'Spinning_Man.mp4', '6 April 2018'),
(11, 'Ready_Player_One.jpg', 'Ready Player One', '2018', '2h 20m', 'When the creator of a virtual reality world called the OASIS dies, he releases a video in which he challenges all OASIS users to find his Easter Egg, which will give the finder his fortune.', 'Ready_Player_One.mp4', '30 March 2018'),
(12, 'Acrimony.jpg', 'Acrimony', '2018', '2h', 'A faithful wife, tired of standing by her devious husband, is enraged when it becomes clear she has been betrayed.', 'Acrimony.mp4', '30 March 2018'),
(13, 'Black_Panther.jpg', 'Black Panther', '2018', '2h 14m', 'T\'Challa, the King of Wakanda, rises to the throne in the isolated, technologically advanced African nation, but his claim is challenged by a vengeful outsider who was a childhood victim of T\'Challa\'s father\'s mistake.', 'Black_Panther.mp4', '9 March 2018 (China)'),
(14, 'I_Can_Only_Imagine.jpg', 'I Can Only Imagine', '2018', '1h 50m', 'The inspiring and unknown true story behind MercyMe\'s beloved, chart topping song that brings ultimate hope to so many is a gripping reminder of the power of true forgiveness.', 'I_Can_Only_Imagine.mp4', '16 March 2018'),
(15, 'Pacific_Rim_Uprising.jpg', 'Pacific Rim Uprising', '2018', '1h 51m', 'Jake Pentecost, son of Stacker Pentecost, reunites with Mako Mori to lead a new generation of Jaeger pilots, including rival Lambert and 15-year-old hacker Amara, against a new Kaiju threat.', 'Pacific_Rim_Uprising.mp4', '23 March 2018'),
(16, 'Sherlock_Gnomes.jpg', 'Sherlock Gnomes', '2018', '1h 26m', 'Garden gnomes, Gnomeo & Juliet, recruit renowned detective Sherlock Gnomes to investigate the mysterious disappearance of other garden ornaments.', 'Sherlock_Gnomes.mp4', '23 March 2018'),
(17, 'Love_Simon.jpg', 'Love Simon', '2018', '1h 50m', 'Simon Spier keeps a huge secret from his family, his friends, and all of his classmates: he\'s gay. When that secret is threatened, Simon must face everyone and come to terms with his identity.', 'Love_Simon.mp4', '16 March 2018'),
(18, 'Tomb_Raider.jpg', 'Tomb Raider', '2018', '1h 58m', 'Lara Croft, the fiercely independent daughter of a missing adventurer, must push herself beyond her limits when she finds herself on the island where her father disappeared.', 'Tomb_Raider.mp4', '16 March 2018'),
(19, 'A_Wrinkle_in_Time.jpg', 'A Wrinkle in Time', '2018', '1h 49m', 'After the disappearance of her scientist father, three peculiar beings send Meg, her brother, and her friend to space in order to find him.', 'A_Wrinkle_in_Time.mp4', '9 March 2018'),
(20, 'Paul_Apostle_of_Christ.jpg', 'Paul Apostle of Christ', '2018', '1h 48m', 'The story covers Paul going from the most infamous persecutor of Christians to Jesus Christ\'s most influential apostle.', 'Paul_Apostle_of_Christ.mp4', '23 March 2018'),
(21, 'Truth_or_Dare.jpg', 'Truth or Dare', '2018', '1h 40m', 'A harmless game of Truth or Dare among friends turns deadly when someone -- or something -- begins to punish those who tell a lie or refuse the dare.', 'Truth_or_Dare.mp4', '13 April 2018'),
(22, 'Overboard.jpg', 'Overboard', '2018', '2h', 'A spoiled, wealthy yacht owner is thrown overboard and becomes the target of revenge from his mistreated employee. A remake of the 1987 comedy.', 'Overboard.mp4', '4 May 2018'),
(23, 'The_Rider.jpg', 'The Rider', '2017', '1h 44m', 'After suffering a near fatal head injury, a young cowboy undertakes a search for new identity and what it means to be a man in the heartland of America.', 'The_Rider.mp4', '13 April 2018'),
(24, 'Borg_McEnroe.jpg', 'Borg McEnroe', '2017', '1h 47min', 'The story of the 1980s tennis rivalry between the placid Björn Borg and the volatile John McEnroe.', 'Borg_McEnroe.mp4', '8 September 2017'),
(25, 'Beirut.jpg', 'Beirut', '2018', '1h 49m', 'Caught in the crossfires of civil war, CIA operatives must send a former U.S. diplomat to negotiate for the life of a friend he left behind.', 'Beirut.mp4', '11 April 2018'),
(26, 'Zama.jpg', 'Zama', '2017', '1h 55m', 'Based on the novel by Antonio Di Benedetto written in 1956, on Don Diego de Zama, a Spanish officer of the seventeenth century settled in Asunción, who awaits his transfer to Buenos Aires.', 'Zama.mp4', '28 September 2017'),
(27, 'Marrowbone.jpg', 'Marrowbone', '2017', '1h 50m', 'A young man and his three younger siblings, who have kept secret the death of their beloved mother in order to remain together, are plagued by a sinister presence in the sprawling manor in which they live.', 'Marrowbone.mp4', '27 October 2017'),
(28, 'Rampage.jpg', 'Rampage', '2018', '1h 47m', 'Primatologist Davis Okoye shares an unshakable bond with George, the extraordinarily intelligent gorilla who has been in his care since birth. But a rogue genetic experiment gone awry transforms this gentle ape into a raging monster. As these newly created monsters tear across North America, destroying everything in their path, Okoye teams with a discredited genetic engineer to secure an antidote, fighting his way through an ever-changing battlefield, not only to halt a global catastrophe but to save the fearsome creature that was once his friend.', 'Rampage.mp4', '13 April 2018'),
(29, 'Tully.jpg', 'Tully', '2018', '1h 36m', 'The film is about Marlo, a mother of three including a newborn, who is gifted a night nanny by her brother. Hesitant to the extravagance at first, Marlo comes to form a unique bond with the thoughtful, surprising, and sometimes challenging young nanny named Tully.', 'Tully.mp4', '4 May 2018');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 3),
(2, 2, 5),
(3, 2, 7),
(4, 3, 5),
(5, 3, 16),
(6, 4, 5),
(7, 5, 5),
(8, 6, 2),
(9, 6, 5),
(10, 7, 5),
(11, 7, 6),
(12, 8, 7),
(13, 9, 5),
(14, 10, 5),
(15, 11, 1),
(16, 11, 2),
(17, 12, 1),
(18, 13, 1),
(19, 13, 2),
(20, 14, 5),
(21, 14, 13),
(22, 15, 1),
(23, 15, 2),
(24, 16, 12),
(25, 16, 2),
(26, 16, 3),
(27, 17, 3),
(28, 17, 5),
(29, 17, 15),
(30, 18, 1),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5),
(37, 27, 16),
(38, 18, 2),
(39, 19, 2),
(40, 19, 13),
(41, 19, 14),
(42, 20, 5),
(43, 20, 6),
(44, 21, 7),
(45, 22, 3),
(46, 22, 15),
(47, 23, 5),
(48, 24, 5),
(49, 24, 16),
(50, 25, 5),
(51, 26, 5),
(52, 27, 5),
(53, 27, 7),
(54, 28, 1),
(55, 28, 2),
(56, 29, 3),
(57, 29, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_level` int(15) NOT NULL,
  `user_ip` varchar(50) DEFAULT 'no',
  `user_judge` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_level`, `user_ip`, `user_judge`) VALUES
(20, 'qi', 'jia', '010642', '124237054@qq.com', '2018-02-27 22:23:02', 0, '::1', 'secondTime'),
(40, 'test', 'test', 'test', 'test', '2018-03-01 03:06:33', 1, '::1', 'secondTime');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
