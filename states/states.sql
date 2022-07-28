SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `states`
--

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(255) NOT NULL,
  `drink` varchar(255) NOT NULL,
  `year` int(10) NOT NULL,
  `image` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `drink`, `year`, `image`) VALUES
(1, 'Alabama', 'Whiskey', 2004, 'whiskey.jpeg'),
(2, 'Arizona', 'Lemonade', 2019, 'lemonade.jpg'),
(5, 'Arkansas', 'Milk', 1985, 'milk.jpeg'),
(6, 'Delaware', 'Milk', 1983, 'milk.jpeg'),
(7, 'Florida', 'Orange Juice', 1967, 'orange-juice.jpeg'),
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
(31, 'Wisconsin ', 'Milk', 1987, 'milk.jpeg');
