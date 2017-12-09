-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2017 at 09:05 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `imgavail` tinyint(1) DEFAULT '0',
  `designation` varchar(100) NOT NULL,
  `year` year(4) NOT NULL,
  `fblink` varchar(255) NOT NULL,
  `mailid` varchar(255) NOT NULL,
  `twitterid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`id`, `name`, `imgavail`, `designation`, `year`, `fblink`, `mailid`, `twitterid`) VALUES
(1, 'Varun Agrawal', 0, 'Chair-person ', 2011, 'https://www.facebook.com/varagrawal?ref=br_rs', '', ''),
(2, 'Arth Patel', 0, 'Vice chair-person ', 2011, '', '', ''),
(3, 'Ankit Chandra', 0, 'Secretary ', 2011, 'https://www.facebook.com/ankitv.chandra', '', ''),
(4, 'Nimit Shah', 0, 'Secretary ', 2011, 'https://www.facebook.com/shahnimit1', '', ''),
(5, 'Aditya Prajapati', 0, 'Treasurer ', 2011, 'https://www.facebook.com/godiscurious', '', ''),
(6, 'Jaimin Gandhi', 0, 'Treasurer ', 2011, 'https://www.facebook.com/jaimin.gandhi.10', '', ''),
(7, 'Ganesh Iyer', 0, 'Web Developer ', 2011, 'https://www.facebook.com/ganesh.iyer', '', ''),
(8, 'Arvind Jain', 0, 'Web Developer ', 2011, 'https://www.facebook.com/av.222?ref=br_rs', '', ''),
(19, 'Aman Verma', 1, 'Chair-person', 2012, 'https://www.facebook.com/aman11dhanpat', '', ''),
(20, 'Hari Ram Chaudhary', 1, 'Vice chair-person ', 2012, '', '', ''),
(21, 'Harsh Agrawal', 1, 'Secretary ', 2012, 'https://www.facebook.com/wadduuppp', '', ''),
(22, 'Saurabh Siddharth', 1, 'Secretary ', 2012, '', '', ''),
(23, 'Monika Daryani', 1, 'Treasurer', 2012, 'https://www.facebook.com/monika.daryani', '', ''),
(24, 'Praveen Chaudhary', 0, 'Treasurer', 2012, '', '', ''),
(25, 'Harsha Satya', 1, 'Web Developer', 2012, 'https://www.facebook.com/robertsatya', '', ''),
(26, 'Jitesh Sunhala', 1, 'Web Developer', 2012, 'https://www.facebook.com/JiteshSunhala', '', ''),
(27, 'Manav Prajapati', 1, 'Chair-person ', 2013, 'https://www.facebook.com/manav245', '', ''),
(28, 'Pallavi Khandelwal', 1, 'Vice chair-person ', 2013, 'https://www.facebook.com/pallavi.khandelwal.8', '', ''),
(29, 'Vishal Singh', 1, 'Secretary ', 2013, '', '', ''),
(30, 'Nishit Gajjar', 1, 'Secretary ', 2013, 'https://www.facebook.com/nishit.gajjar.52', '', ''),
(31, 'Tanisha Jain', 1, 'Treasurer ', 2013, 'https://www.facebook.com/Tanisha.Jain27', '', ''),
(32, 'Sunil Raiyani', 1, 'Treasurer ', 2013, 'https://www.facebook.com/sunilraiyani4793', '', ''),
(33, 'Sukant Garg', 1, 'Web Developer ', 2013, 'https://www.facebook.com/gargsms', '', ''),
(34, 'Ravi Ojha', 1, 'Designer ', 2013, 'https://www.facebook.com/ivarojha', '', ''),
(35, 'Kshama Jain', 1, 'Editor ', 2013, 'https://www.facebook.com/kshama.jain.902', '', ''),
(36, 'Heer Narang', 1, 'Editor ', 2013, 'https://www.facebook.com/heernarang', '', ''),
(38, 'Jay Panchal', 1, 'Chair-person', 2014, 'https://www.facebook.com/jay.panchal.809?ref=br_rs', '', ''),
(39, 'Gurvinder Singh', 1, 'Vice chair-person', 2014, 'https://www.facebook.com/gurvinderisking', '', ''),
(40, 'Prashant Arya', 1, 'Secretary', 2014, 'https://www.facebook.com/prary2', '', ''),
(41, 'Deepak Singh', 0, 'Secretary', 2014, '', '', ''),
(42, 'VLNP Venkatesh', 1, 'Treasurer', 2014, 'https://www.facebook.com/venkatesh.vlnp?ref=br_rs', '', ''),
(43, 'Kushagra Shrivastava', 0, 'Treasurer', 2014, 'https://www.facebook.com/kushagra.shrivastava.35', '', ''),
(44, 'Palash Oswal', 1, 'Web Developer', 2014, 'https://www.facebook.com/oswalpalash', '', ''),
(45, 'Umang Singhal', 1, 'Web Developer', 2014, 'https://www.facebook.com/umang.singhal.10', '', ''),
(46, 'Chaitanya Mattey', 1, 'Designer', 2014, 'https://www.facebook.com/chaitanya.mattey.3', '', ''),
(47, 'Jay Bothra', 1, 'Editor', 2014, 'https://www.facebook.com/jbothra2?ref=br_rs', '', ''),
(48, 'Saksham Kumar', 1, 'Editor', 2014, 'https://www.facebook.com/saksham.kumar.3720190?ref=br_rs', '', ''),
(49, 'Vinay Kumar', 1, 'Problem Setter', 2014, 'https://www.facebook.com/bingivinay?ref=br_rs', '', ''),
(52, 'Yash Golechha', 1, 'Chairperson', 2015, 'https://www.facebook.com/Yash7Jain?ref=br_rs', '', ''),
(53, 'Rohit Agarwal', 1, 'Vice Chairperson', 2015, 'https://www.facebook.com/rohit1049', '', ''),
(54, 'Ankit Kumar', 1, 'Secretary', 2015, 'https://www.facebook.com/Ankitt.kumarr2', '', ''),
(55, 'Lucky Srivastava', 1, 'Secretary', 2015, 'https://www.facebook.com/luckie.srivastava', '', ''),
(56, 'Vishnu Teja', 1, 'Web Developer', 2015, 'https://www.facebook.com/ythej', '', ''),
(57, 'Rahul Kanojia', 1, 'Web Developer', 2015, 'https://www.facebook.com/KaANO8', '', ''),
(58, 'Aakash Rana', 1, 'Treasurer', 2015, 'https://www.facebook.com/aakashrana1995', '', ''),
(59, 'Adesh Kala', 1, 'Treasurer', 2015, 'https://www.facebook.com/adesh.kala11', '', ''),
(60, 'Riya Kothari', 1, 'Editor', 2015, 'https://www.facebook.com/riya.kothari.58', '', ''),
(61, 'Vineet Sethia', 1, 'Editor', 2015, 'https://www.facebook.com/vineet.sethia.jain', '', ''),
(62, 'Rajan Kasodariya', 1, 'Problem Setter', 2015, 'https://www.facebook.com/rajan596', '', ''),
(63, 'Kushagra Chauhan', 1, 'Designer', 2015, 'https://www.facebook.com/pyrospiral', '', ''),
(64, 'Harsh Jadav', 1, 'Designer', 2015, 'https://www.facebook.com/harsh.jadav.37?ref=br_rs', '', ''),
(65, 'Anshul Jain', 1, 'Chairperson', 2016, 'https://www.facebook.com/anshul96', '', ''),
(66, 'Pradeep Ch', 1, 'Vice-Chairperson', 2016, 'https://www.facebook.com/pradeep.ch.17', '', ''),
(67, 'Radhesh Davulari', 1, 'Secretary', 2016, 'https://www.facebook.com/ramradesh.davuluri', '', ''),
(68, 'Kiran Dhokane', 1, 'Secretary', 2016, 'https://www.facebook.com/kiran.dhokane', '', ''),
(69, 'Ram Narayan Singh', 1, 'Treasurer', 2016, 'https://www.facebook.com/ramnarayan.singh.733', '', ''),
(70, 'Mohith Damarapati', 1, 'Treasurer', 2016, 'https://www.facebook.com/mohith.sreenivas.9', '', ''),
(71, 'Sachin Malepati', 1, 'Developer', 2016, 'https://www.facebook.com/malepati.sachin', '', ''),
(72, 'Rajul Nahar', 1, 'Developer', 2016, 'https://www.facebook.com/rajul.nahar.3', '', ''),
(73, 'Sanjay George', 1, 'Editor', 2016, '', '', ''),
(74, 'Asmita Kumar', 0, 'Editor', 2016, '', '', ''),
(75, 'Pawan Kolhe', 1, 'Designer', 2016, 'https://www.facebook.com/PawanKolhe', '', ''),
(76, 'Pradeep Karwasra', 1, 'Designer', 2016, 'https://www.facebook.com/pradeep.karwasra.7', '', ''),
(77, 'Manish Choudhary', 1, 'Problem Setter', 2016, 'https://www.facebook.com/profile.php?id=100007456997514', '', ''),
(78, 'Sriyansh Srivastava', 1, 'Problem Setter', 2016, 'https://www.facebook.com/profile.php?id=100004932705924', '', ''),
(79, 'Deepanshu Sharma', 1, 'Chairperson', 2017, 'https://www.facebook.com/sdeepanshu02', 'mailto:deepanshusharma1802@gmail.com', 'https://twitter.com/sdeepanshu02'),
(80, 'Swapnil Patel ', 1, 'Vice-chairperson', 2017, 'https://www.facebook.com/swapnil.patel.3551', 'mailto:swapnilpatel21797@gmail.com', 'https://twitter.com/swap_patidar'),
(81, 'Vidhi Gandhi', 1, 'Secretary', 2017, 'https://www.facebook.com/vidhi.gandhi.12', 'mailto:gandhi.vd334@gmail.com', ''),
(82, 'Sairam Naragoni', 1, 'Secretary', 2017, 'https://www.facebook.com/sairam.naragoni', 'mailto:naragonisairam@gmail.com', 'https://twitter.com/nsg_ram'),
(83, 'Hunsii Ashar', 1, 'Treasurer', 2017, 'https://www.facebook.com/profile.php?id=100009673068385', 'mailto:asharhunsii@gmail.com', ''),
(84, 'Aishwarya Solanki', 1, 'Treasurer', 2017, 'https://www.facebook.com/aishwarya.solanki.1797?ref=br_rs', 'mailto:aishwaryasolanki1997@gmail.com', ''),
(85, 'Charmi Khambhati', 1, 'Developer', 2017, 'https://www.facebook.com/incharmi', 'mailto:incharmi.ck@gmail.com', ''),
(86, 'Bharghvi Prajapati', 1, 'Developer', 2017, 'https://www.facebook.com/bharghvi.prajapati', 'mailto:bsprajapati97@gmail.com', ''),
(87, 'Vatsal Mehta', 1, 'Developer', 2017, 'https://www.facebook.com/vatsal.mehta.02', 'mailto:mehtavatsald02@gmail.com', ''),
(88, 'Tanishka Khatri', 1, 'Problem Setter', 2017, 'https://www.facebook.com/tanishkakhatri.khatri', 'mailto:tanishqq.khatri@gmail.com', 'https://twitter.com/khatritanishka'),
(89, 'Sandeep Varma', 1, 'Problem Setter', 2017, 'https://www.facebook.com/sandeep.varma.5011', 'mailto:vatsavayi.sandeep@gmail.com', ''),
(90, 'Simran Bawkar', 0, 'Problem Setter', 2017, 'https://www.facebook.com/simran.bawkar', 'mailto:sim017bawkar@gmail.com', ''),
(91, 'Rohit', 1, 'Designer', 2017, 'https://www.facebook.com/k.t.rohit222', 'mailto:k.t.rohit222@gmail.com', ''),
(92, 'Priyansh Zalavadiya', 1, 'Designer', 2017, 'https://www.facebook.com/priyansh.zalavadiya.007', 'mailto:priyanshzalavadiya007@gmail.com', 'https://twitter.com/priyansh007'),
(93, 'Rinky Abraham', 1, 'Editor', 2017, 'https://www.facebook.com/rinky.abraham', 'mailto:rinky.lia@gmail.com', 'https://twitter.com/RinkyAbraham'),
(94, 'Aarju Goyal', 1, 'Editor', 2017, 'https://www.facebook.com/profile.php?id=100009554414013', 'mailto:goyalaarju@gmail.com', ''),
(95, 'Vatsal Bhalodi', 1, 'Core Member', 2017, 'https://www.facebook.com/vatsal.bhalodi?ref=br_rs', 'mailto:vatsal.bhalodi343@gmail.com', ''),
(96, 'Aarchi Patel', 1, 'Core Member', 2017, 'https://www.facebook.com/aarchi.patel.05', 'mailto:patelaarchi5@gmail.com', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
