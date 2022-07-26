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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
