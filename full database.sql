-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: internal-db.s168432.gridserver.com
-- Generation Time: Apr 21, 2020 at 08:26 PM
-- Server version: 5.6.34-79.1
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db168432_sql`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `ID` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `comment_author` varchar(256) NOT NULL,
  `comment_author_email` varchar(256) NOT NULL,
  `comment_content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `post_id`, `comment_author`, `comment_author_email`, `comment_content`) VALUES
(1, 6, 'jessica', 'jessica@gmail.com', 'Great post! '),
(2, 2, 'mike', 'mike@gmail.com', 'Love it! Write more like this. '),
(3, 2, 'jamie', 'jamie@gmail.com', 'I disagree! '),
(4, 2, 'caleb', 'caleb@gmail.com', 'First');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_users`
--

CREATE TABLE `facebook_users` (
  `ID` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 NOT NULL,
  `email` varchar(256) CHARACTER SET utf8 NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facebook_users`
--

INSERT INTO `facebook_users` (`ID`, `name`, `email`, `password`) VALUES
(1, 'chris', 'chris@gmail.com', '1234'),
(3, 'mattan', 'mattan@gmail.com', '1234e41234e41234e41234e41234e4');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `post_author`, `post_content`, `post_title`, `post_status`) VALUES
(1, '2', 'What is the toughest part of learning to code?\r\n\r\nSTAYING MOTIVATED.\r\n\r\nBack in 2002, I was a music major with no desire to become a computer programmer. I quit three times. I was still totally determined to make a website for my band ', '6 Reasons Why You’ll Never Learn to Code', 'published'),
(2, '2', 'Python is one of the best coding languages to learn to boost your career. Many of the biggest websites in the world use Python, and there are plenty of jobs you can get with Python skills. But what do you need to know BEFORE you start?\r\n\r\nWith over four years experience teaching Python, we here at One Month have noticed 6 things that all new Python students should know before getting started.', 'What You Need to Know Before You Learn Python', 'published'),
(3, '5', '<p data-id=\"block-ember1597\" data-generated-at=\"15544888552100.427195353963981\" data-align=\"left\">On Monday 63 Columbia University MBAs used One Month to build a website in under one hour. Did you know you could build a website from scratch in just one hour?</p>\r\n\r\n\r\n[caption id=\"attachment_3031\" align=\"alignnone\" width=\"1002\"]<img class=\"size-full wp-image-3031\" src=\"https://learn.onemonth.com/wp-content/uploads/2019/04/mba-students-learning-to-code.png\" alt=\"mba students learning to code\" width=\"1002\" height=\"671\" /> MBA students learning to code HTML &amp; CSS[/caption]\r\n<h2 data-id=\"block-ember1599\" data-generated-at=\"15544888552100.459453977449662\" data-align=\"left\">Why are MBAs learning to code?</h2>\r\n<span style=\"font-weight: 400;\">MBAs are learning to code because having basic programming skills has become one of the most important skillsets to have when launching a business, hiring, managing and of course when finding job.', '63 MBA Students Learn to Code', 'published'),
(4, '7', '<span style=\"font-weight: 400;\"><a href=\"http://joelcalifa.com/\" target=\"_blank\" rel=\"noopener noreferrer\">?Joel Califa</a> is a professional problem solver. He\'s a successful designer, developer, team leader, and overall self-proclaimed <em>generalist</em>. </span><span style=\"font-weight: 400;\">His current role is as Senior Product Designer at </span><a href=\"https://github.com/\" target=\"_blank\" rel=\"noopener noreferrer\"><span style=\"font-weight: 400;\">GitHub</span></a><span style=\"font-weight: 400;\">. </span>\r\n\r\nA few years ago, Joel Califa', 'How I Got Hired at GitHub', 'draft'),
(5, '4', '<img class=\"alignnone size-full wp-image-2384\" src=\"https://learn.onemonth.com/wp-content/uploads/2019/01/learn-python-guy.jpg\" alt=\"Python Jobs \" width=\"2500\" height=\"1440\" />Learning Python has gone mainstream. If you haven', '6 Jobs You Can Land If You Learn Python', 'published'),
(6, '2', 'I’m 100% sure that 100% of you are addicted to the internet, and yet very few of us know where it came from, who made it, or how it works.\r\n\r\nThis piece is part one of my series on the history of the internet. My hope is to show you not only where the internet came from, but in doing so, show you where it wants to go. The US Government developed the early internet as a technology that could survive a nuclear attack.¹\r\n\r\nIf any one computer went down, the hope was that information on the network would persist — there would be no central point of failure, everything would be decentralized.² 50 years later, and decentralization is still the lifeblood of the internet. And so, I think it’s fitting we start there.\r\n\r\n<!--more-->\r\n<h3>Napster was the way I found decentralization.</h3>\r\nI was 19, and music was my symbol of freedom. But music wasn’t free. Albums were very expensive and controlled by a middle-man: the record labels. Each week, I’d go to my local record store, pay $14.99, and return home with a physical album. A CD.', 'The History of The Internet', 'published'),
(7, '5', '<span style=\"font-weight: 400;\">Welcome to the Learn to Code podcast here at </span><a href=\"https://onemonth.com/courses/python\" target=\"_blank\" rel=\"noopener noreferrer\"><span style=\"font-weight: 400;\">One Month</span></a><span style=\"font-weight: 400;\">. This week on the show, I\'ll be chatting with Meaghan Jones, Lead Support Engineer at </span><a href=\"https://www.Hotjar.com/\" target=\"_blank\" rel=\"noopener noreferrer\"><span style=\"font-weight: 400;\">Hotjar</span></a><span style=\"font-weight: 400;\">. </span>\r\n<h2><strong>Meaghan\'s dream was to work remotely in Brazil. </strong></h2>\r\n<span style=\"font-weight: 400;\">Meaghan Jones (<a href=\"https://twitter.com/meaghanwonder\" target=\"_blank\" rel=\"noopener noreferrer\">@meaghanwonder</a>) graduated from UC Berkeley with a Masters in Latin America Studies. Having grown up in California, Meaghan always dreamed of working and living abroad. She loved Latin America, and so \"Latin American Politics\" seemed like her golden ticket to working abroad! </span>', 'How I Learned to Code in 6 Months', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(11) NOT NULL,
  `book_name` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `book_name`, `author`, `price`, `quantity`) VALUES
(1, 'The Overstory', 'Richard Powers', '11.99', 4),
(2, 'Sapiens', 'Yuval Noah Harari', '18.99', 14),
(3, 'Letters to a Young Poet', 'Rainer Marie Rilke', '5.00', 40),
(4, 'Tropic of Cancer (First Edition)', 'Henry Miller', '39.00', 1),
(5, 'Pilot G-Tec-C4 Pens', '', '4.99', 8),
(6, 'Big Magic', 'Elizabeth Gilbert', '12.99', 6),
(7, 'Wild', 'Cheryl Strayed', '11.99', 5),
(8, 'Homo Dues', 'Yuval Noah Harari', '15.99', 5),
(9, 'The Bullet Journal ', 'Ryder Carroll', '19.99', 10),
(10, 'Denial of Death', 'Ernest Becker', '12.99', 6),
(11, 'Harry Potter And The Goblet Of Fire', 'J. K. Rowling', '9.99', 4);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`ID`, `user_id`, `product_id`, `quantity`) VALUES
(1, 2, 2, 1),
(2, 2, 1, 1),
(3, 1, 7, 1),
(4, 3, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state` varchar(255) NOT NULL,
  `drink` varchar(255) NOT NULL,
  `year` int(10) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `drink`, `year`, `image`) VALUES
(1, 'Alabama', 'Whiskey', 2004, 'whiskey.jpeg'),
(2, 'Arizona', 'Lemonade', 2019, 'lemonade.jpg'),
(5, 'Arkansas', 'Milk', 1985, 'milk.jpeg'),
(6, 'Delaware', 'Chocolate Oat Milk', 1983, 'milk.jpeg'),
(8, 'Indiana', 'Water', 2007, 'water.jpeg'),
(9, 'Kentucky', 'Milk', 2005, 'milk.jpeg'),
(10, 'Louisiana', 'Milk', 1983, 'milk.jpeg'),
(11, 'Maine', 'Moxie', 2005, 'moxie.jpeg'),
(12, 'Maryland', 'Milk', 1998, 'milk.jpeg'),
(13, 'Massachusetts', 'Cranberry Juice', 1970, 'cranberry-juice.jpeg'),
(14, 'Minnesota', 'Milk', 1984, 'milk.jpeg'),
(15, 'Mississippi', 'Milk', 1984, 'milk.jpeg'),
(16, 'Nebraska', 'Kool-Aid', 1998, 'kool-aid.jpeg'),
(17, 'New Hampshire', 'Apple Cider', 2010, 'apple-cider.jpeg'),
(18, 'New York', 'Milk', 1981, 'milk.jpeg'),
(19, 'North Carolina', 'Milk', 1987, 'milk.jpeg'),
(20, 'North Dakota', 'Milk', 1983, 'milk.jpeg'),
(21, 'Ohio', 'Tomato Juice', 1965, 'tomato-juice.jpeg'),
(22, 'Oklahoma', 'Milk', 2002, 'milk.jpeg'),
(23, 'Oregon', 'Milk', 1997, 'milk.jpeg'),
(24, 'Pennsylvania', 'Milk', 1982, 'milk.jpeg'),
(25, 'Rhode Island', 'Coffee Milk', 1993, 'coffee-milk.jpeg'),
(26, 'South Carolina', 'Milk', 1984, 'milk.jpeg'),
(27, 'South Dakota', 'Milk', 1986, 'milk.jpeg'),
(28, 'Tennessee', 'Milk', 2009, 'milk.jpeg'),
(29, 'Vermont', 'Milk', 1983, 'milk.jpeg'),
(30, 'Virginia', 'Milk', 1982, 'milk.jpeg'),
(31, 'Wisconsin ', 'Milk', 1987, 'milk.jpeg'),
(32, 'New Jersey', 'Vodka', 2018, 'vodka.jpg'),
(33, 'California', 'Wine', 1950, '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`) VALUES
(1, 'jsmith', '0832c1202da8d382318e329a7c133ea0', 'jared', 'jsmith@gmail.com'),
(2, 'castig', '$P$Bq.VlkwuWFu4BIktX.olT2eyCVwXv1.', 'chris', 'chris@gmail.com'),
(3, 'mattan', '5f4dcc3b5aa765d61d8327deb882cf99', 'mattan', 'mattan@gmail.com'),
(4, 'zuck', 'f9cQUpQ34BIVlkkt', 'mark', 'zuck@gmail.com'),
(5, 'jamie', 'lH0WC8yboMj/bjt4f3Km/', 'jamie', 'jamie@gmail.com'),
(6, 'wei', '$P$B20YTQ5OHff9cQUpQ4fKNBecfZnYGy.', 'wei', 'wei@gmail.com'),
(7, 'caraadams', 'A7Cx1zD7cbeCWaAOUu/eYyiRU1', 'cara', 'caraadams@gmail.com'),
(8, 'ophir', '$P$B0YwbF0r8r7CHEq/yzhRoc6BolpKeD.', 'ophir', 'ophir@hotmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `facebook_users`
--
ALTER TABLE `facebook_users`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `facebook_users`
--
ALTER TABLE `facebook_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
