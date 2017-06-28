-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2017 at 03:27 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acm_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `year` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `year`) VALUES
(1, 2011),
(2, 2012),
(3, 2013),
(4, 2014),
(5, 2015),
(6, 2016),
(7, 2017);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `imglink` varchar(255) NOT NULL,
  `fblink` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`id`, `name`, `designation`, `year`, `imglink`, `fblink`) VALUES
(1, 'Varun Agrawal', 'Chair-person ', 2011, '', 'https://www.facebook.com/varagrawal?ref=br_rs'),
(2, 'Arth Patel', 'Vice chair-person ', 2011, '', ''),
(3, 'Ankit Chandra', 'Secretary ', 2011, '', 'https://www.facebook.com/ankitv.chandra'),
(4, 'Nimit Shah', 'Secretary ', 2011, '', 'https://www.facebook.com/shahnimit1'),
(5, 'Aditya Prajapati', 'Treasurer ', 2011, '', 'https://www.facebook.com/godiscurious'),
(6, 'Jaimin Gandhi', 'Treasurer ', 2011, '', 'https://www.facebook.com/jaimin.gandhi.10'),
(7, 'Ganesh Iyer', 'Web Developer ', 2011, '', 'https://www.facebook.com/ganesh.iyer'),
(8, 'Arvind Jain', 'Web Developer ', 2011, '', 'https://www.facebook.com/av.222?ref=br_rs'),
(19, 'Aman Verma', 'Chair-person', 2012, '', 'https://www.facebook.com/aman11dhanpat'),
(20, 'Hari Ram Chaudhary', 'Vice chair-person ', 2012, '', ''),
(21, 'Harsh Agrawal', 'Secretary ', 2012, '', 'https://www.facebook.com/wadduuppp'),
(22, 'Saurabh Siddharth', 'Secretary ', 2012, '', ''),
(23, 'Monika Daryani', 'Treasurer', 2012, '', 'https://www.facebook.com/monika.daryani'),
(24, 'Praveen Chaudhary', 'Treasurer', 2012, '', ''),
(25, 'Harsha Satya', 'Web Developer', 2012, '', 'https://www.facebook.com/robertsatya'),
(26, 'Jitesh Sunhala', 'Web Developer', 2012, '', 'https://www.facebook.com/JiteshSunhala'),
(27, 'Manav Prajapati', 'Chair-person ', 2013, '', 'https://www.facebook.com/manav245'),
(28, 'Pallavi Khandelwal', 'Vice chair-person ', 2013, '', 'https://www.facebook.com/pallavi.khandelwal.8'),
(29, 'Vishal Singh', 'Secretary ', 2013, '', ''),
(30, 'Nishit Gajjar', 'Secretary ', 2013, '', 'https://www.facebook.com/nishit.gajjar.52'),
(31, 'Tanisha Jain', 'Treasurer ', 2013, '', 'https://www.facebook.com/Tanisha.Jain27'),
(32, 'Sunil Raiyani', 'Treasurer ', 2013, '', 'https://www.facebook.com/sunilraiyani4793'),
(33, 'Sukant Garg', 'Web Developer ', 2013, '', 'https://www.facebook.com/gargsms'),
(34, 'Ravi Ojha', 'Designer ', 2013, '', 'https://www.facebook.com/ivarojha'),
(35, 'Kshama Jain', 'Editor ', 2013, '', 'https://www.facebook.com/kshama.jain.902'),
(36, 'Heer Narang', 'Editor ', 2013, '', 'https://www.facebook.com/heernarang'),
(38, 'Jay Panchal', 'Chair-person', 2014, '', 'https://www.facebook.com/jay.panchal.809?ref=br_rs'),
(39, 'Gurvinder Singh', 'Vice chair-person', 2014, '', 'https://www.facebook.com/gurvinderisking'),
(40, 'Prashant Arya', 'Secretary', 2014, '', 'https://www.facebook.com/prary2'),
(41, 'Deepak Singh', 'Secretary', 2014, '', ''),
(42, 'VLNP Venkatesh', 'Treasurer', 2014, '', 'https://www.facebook.com/venkatesh.vlnp?ref=br_rs'),
(43, 'Kushagra Shrivastava', 'Treasurer', 2014, '', 'https://www.facebook.com/kushagra.shrivastava.35'),
(44, 'Palash Oswal', 'Web Developer', 2014, '', 'https://www.facebook.com/oswalpalash'),
(45, 'Umang Singhal', 'Web Developer', 2014, '', 'https://www.facebook.com/umang.singhal.10'),
(46, 'Chaitanya Mattey', 'Designer', 2014, '', 'https://www.facebook.com/chaitanya.mattey.3'),
(47, 'Jay Bothra', 'Editor', 2014, '', 'https://www.facebook.com/jbothra2?ref=br_rs'),
(48, 'Saksham Kumar', 'Editor', 2014, '', 'https://www.facebook.com/saksham.kumar.3720190?ref=br_rs'),
(49, 'Vinay Kumar', 'Problem Setter', 2014, '', 'https://www.facebook.com/bingivinay?ref=br_rs'),
(52, 'Yash Golechha', 'Chairperson', 2015, '', 'https://www.facebook.com/Yash7Jain?ref=br_rs'),
(53, 'Rohit Agarwal', 'Vice Chairperson', 2015, '', 'https://www.facebook.com/rohit1049'),
(54, 'Ankit Kumar', 'Secretary', 2015, '', 'https://www.facebook.com/Ankitt.kumarr2'),
(55, 'Lucky Srivastava', 'Secretary', 2015, '', 'https://www.facebook.com/luckie.srivastava'),
(56, 'Vishnu Teja', 'Web Developer', 2015, '', 'https://www.facebook.com/ythej'),
(57, 'Rahul Kanojia', 'Web Developer', 2015, '', 'https://www.facebook.com/KaANO8'),
(58, 'Aakash Rana', 'Treasurer', 2015, '', 'https://www.facebook.com/aakashrana1995'),
(59, 'Adesh Kala', 'Treasurer', 2015, '', 'https://www.facebook.com/adesh.kala11'),
(60, 'Riya Kothari', 'Editor', 2015, '', 'https://www.facebook.com/riya.kothari.58'),
(61, 'Vineet Sethia', 'Editor', 2015, '', 'https://www.facebook.com/vineet.sethia.jain'),
(62, 'Rajan Kasodariya', 'Problem Setter', 2015, '', 'https://www.facebook.com/rajan596'),
(63, 'Kushagra Chauhan', 'Designer', 2015, '', 'https://www.facebook.com/pyrospiral'),
(64, 'Harsh Jadav', 'Designer', 2015, '', 'https://www.facebook.com/harsh.jadav.37?ref=br_rs'),
(65, 'Anshul Jain', 'Chairperson', 2016, 'img\\ans.jpg', 'https://www.facebook.com/anshul96'),
(66, 'Pradeep Ch', 'Vice-Chairperson', 2016, '', 'https://www.facebook.com/pradeep.ch.17'),
(67, 'Radhesh Davulari', 'Secretary', 2016, '', 'https://www.facebook.com/ramradesh.davuluri'),
(68, 'Kiran Dhokane', 'Secretary', 2016, '', 'https://www.facebook.com/kiran.dhokane'),
(69, 'Ram Narayan Singh', 'Treasurer', 2016, '', 'https://www.facebook.com/ramnarayan.singh.733'),
(70, 'Mohith Damarapati', 'Treasurer', 2016, '', 'https://www.facebook.com/mohith.sreenivas.9'),
(71, 'Sachin Malepati', 'Developer', 2016, '', 'https://www.facebook.com/malepati.sachin'),
(72, 'Rajul Nahar', 'Developer', 2016, '', 'https://www.facebook.com/rajul.nahar.3'),
(73, 'Sanjay George', 'Editor', 2016, '', ''),
(74, 'Asmita Kumar', 'Editor', 2016, '', ''),
(75, 'Pawan Kolhe', 'Designer', 2016, '', 'https://www.facebook.com/PawanKolhe'),
(76, 'Pradeep Karwasra', 'Designer', 2016, '', 'https://www.facebook.com/pradeep.karwasra.7'),
(77, 'Manish Choudhary', 'Problem Setter', 2016, '', 'https://www.facebook.com/profile.php?id=100007456997514'),
(78, 'Sriyansh Srivastava', 'Problem Setter', 2016, '', 'https://www.facebook.com/profile.php?id=100004932705924'),
(79, 'Deepanshu Sharma', 'Chairperson', 2017, '', 'https://www.facebook.com/sdeepanshu02'),
(80, 'Swapnil Patel ', 'Vice-chairperson', 2017, '', 'https://www.facebook.com/swapnil.patel.3551'),
(81, 'Vidhi Gandhi', 'Secretary', 2017, '', 'https://www.facebook.com/vidhi.gandhi.12'),
(82, 'Sairam Naragoni', 'Secretary', 2017, '', 'https://www.facebook.com/sairam.naragoni'),
(83, 'Hunsii Ashar', 'Treasurer', 2017, '', 'https://www.facebook.com/profile.php?id=100009673068385'),
(84, 'Aishwarya Solanki', 'Treasurer', 2017, '', 'https://www.facebook.com/aishwarya.solanki.1797?ref=br_rs'),
(85, 'Charmi Khambhati', 'Developer', 2017, '', 'https://www.facebook.com/incharmi'),
(86, 'Bharghvi Prajapati', 'Developer', 2017, '', 'https://www.facebook.com/bharghvi.prajapati'),
(87, 'Vatsal Mehta', 'Developer', 2017, '', 'https://www.facebook.com/vatsal.mehta.02'),
(88, 'Tanishka Khatri', 'Problem Setter', 2017, '', 'https://www.facebook.com/tanishkakhatri.khatri'),
(89, 'Sandeep Varma', 'Problem Setter', 2017, '', 'https://www.facebook.com/sandeep.varma.5011'),
(90, 'Simran Bawkar', 'Problem Setter', 2017, '', 'https://www.facebook.com/simran.bawkar'),
(91, 'Rohit', 'Designer', 2017, '', 'https://www.facebook.com/k.t.rohit222'),
(92, 'Priyansh Zalavadiya', 'Designer', 2017, '', 'https://www.facebook.com/priyansh.zalavadiya.007'),
(93, 'Rinky Abraham', 'Editor', 2017, '', 'https://www.facebook.com/rinky.abraham'),
(94, 'Aarju Goyal', 'Editor', 2017, '', 'https://www.facebook.com/profile.php?id=100009554414013'),
(95, 'Vatsal Bhalodi', 'Core Member', 2017, '', 'https://www.facebook.com/vatsal.bhalodi?ref=br_rs'),
(96, 'Aarchi Patel', 'Core Member', 2017, '', 'https://www.facebook.com/aarchi.patel.05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
