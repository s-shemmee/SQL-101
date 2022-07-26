SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
