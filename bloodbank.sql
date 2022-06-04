-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2016 at 01:05 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE IF NOT EXISTS `advertisement` (
  `adv_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(100) NOT NULL,
  `org_by` varchar(100) NOT NULL,
  `pic` varchar(700) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`adv_id`, `camp_title`, `org_by`, `pic`, `detail`) VALUES
(4, 'Acs Engg collage', 'Acs education', '2.jpg', 'Blood donation camp Organised by ACS.  One who donate get certificate by ACS\r\nThat can help you also to gets blood in jeopard time');

-- --------------------------------------------------------

--
-- Table structure for table `bloodgroup`
--

CREATE TABLE IF NOT EXISTS `bloodgroup` (
  `bg_id` varchar(100) NOT NULL,
  `bg_name` varchar(100) NOT NULL,
  PRIMARY KEY (`bg_id`)
);

--
-- Dumping data for table `bloodgroup`
--

INSERT INTO `bloodgroup` (`bg_id`, `bg_name`) VALUES
('o+', 'o+'),
('o-', 'o-'),
('AB+', 'AB+'),
('AB-', 'AB-'),
('A+', 'A+'),
('A-', 'A-'),
('B+', 'B+'),
('B-', 'B-');

-- --------------------------------------------------------

--
-- Table structure for table `camp`
--

CREATE TABLE IF NOT EXISTS `camp` (
  `camp_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_title` varchar(500) NOT NULL,
  `organised_by` varchar(500) NOT NULL,
  `state` int(100) NOT NULL,
  `city` int(100) NOT NULL,
  `pic` varchar(900) NOT NULL,
  `detail` varchar(1000) NOT NULL,
  PRIMARY KEY (`camp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `camp`
--

INSERT INTO `camp` (`camp_id`, `camp_title`, `organised_by`, `state`, `city`, `pic`, `detail`) VALUES
(1, 'Acs Engg collage', 'Acs education', 1, 1, 'blood_donation_camp.jpeg', 'A Blood Donation Camp at Acs Engg collage organized by Acs education , Bangalore.'),
(7, ' RNSIT University', 'RNSIT University', 1, 7, 'rnsit.jpg', 'A Blood Donation Camp at RNSIT University organized by RNSIT University , Bangalore.'),
(8, 'JSS Collage', 'Lions Club', 1, 1, 'p36.jpg', 'A Blood Donation Camp at JSS Collage, Bangalore organized by Lions Club, Bangalore.'),
(9, 'Ambedkar Institute of Technology', 'Human Welfare Society', 1, 1, 'ambedkar.jpg', 'A Blood Donation Camp at Ambedkar Institute of Technology, Bangalore organized by Human Welfare Society, Bangalore.\n ');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(100) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) NOT NULL,
  `pin_code` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `state` int(100) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`, `pin_code`, `district`, `state`) VALUES
(1, 'Bangalore', '144401', 'kapurthala', 1),
(4, 'faridabad', '121001', 'Gurgaon', 2),
(7, 'Bangalore', '144001', 'Bangalore', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `row_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subj` varchar(700) NOT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`row_id`, `name`, `email`, `mobile`, `subj`) VALUES
(1, 'nannu', 'bawa12@ymail.com', '98889619909', 'save life'),
(2, 'manu', 'manukaler@yahoo.com', '9888889765', 'save life'),
(3, 'neeru', 'neeru45@gmail.com', '9463958058', 'give blooooooood'),
(4, 'paras', 'bhatia34@gmail.com', '9216291294', 'save life'),
(10, 'herry', 'herry@ymaol.com', '8790675438', 'give me a blood');

-- --------------------------------------------------------

--
-- Table structure for table `donarregistration`
--

CREATE TABLE IF NOT EXISTS `donarregistration` (
  `donar_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `b_id` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pwd` int(100) NOT NULL,
  `pic` varchar(1000) NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `donarregistration`
--

INSERT INTO `donarregistration` (`donar_id`, `name`, `gender`, `age`, `mobile`, `b_id`, `email`, `pwd`, `pic`) VALUES
(3, 'neeru', 'female', '20', '9463958058', 13, 'neeru.bawa@yahoo.com', 123, 'neeru.jpg'),
(4, 'Paras Bhatia', 'male', '21', '9888961990', 13, 'parasbhatia08@gmail.com', 123, '11168037_1610636085842033_904443745256932191_n.jpg'),
(5, 'Rakesh', 'male', '22', '9876505652', 17, 'rakesh12@gmil.com', 123, '1002679_629448530471361_5912528223898153120_n.jpg'),
(6, 'Manu', 'female', '20', '9779730479', 13, 'manpreetkaler@yahoo.com', 123, '12144826_691191231017304_7118038794667291151_n.jpg'),
(7, 'Sukhwinder', 'male', '22', '01823280290', 17, 'sunnysuyan@gmail.com', 123, 'p3Penguins.jpg'),
(8, 'Abhishek', 'male', '24', '0123456780', 19, 'abhi@ymail.com', 123, 'resizedBlood donation (1).jpg'),
(9, 'Ramanjeet Kaur', 'female', '26', '9295769630', 15, 'rbawa08@yahoo.com', 123, '11261437_1624099511137421_8482759699813102898_n.jpg'),
(10, 'kuldip Banga', 'male', '26', '9878967543', 15, 'kbanga@yahoo.com', 123, '10593057_728311113906338_1063644592728298376_n.jpg'),
(11, 'Jaspinder', 'male', '24', '9445678765', 16, 'singhjaspinder12@gmail.com', 123, '12038392_969929529729736_1007747926670734265_n (1).jpg'),
(12, 'Sahil', 'male', '20', '8591824296', 13, 'sahildubey@gmail.com', 123, '12038380_834746969972073_6382623771453128938_n.jpg'),
(13, 'sonu', 'male', '25', '9594918765', 16, 'sonukhana34@gmail.com', 123, '11863382_1032998280067097_2552428582935820453_n.jpg'),
(14, 'Vinny', 'male', '24', '01824230721', 18, 'vinny786@gmail.com', 123, '11175046_366978330169273_8044521424217911178_n.jpg'),
(15, 'Rishav Bhatia', 'male', '19', '8781846758', 19, 'rbhatia@ymail.com', 123, '1491626_647476172014342_6155162312561723489_n.jpg'),
(16, 'Rahul Bangar', 'male', '25', '9216291294', 20, 'raulban@gmail.com', 123, '11899909_948967995160204_759838727467883977_n.jpg'),
(17, 'Prabhjot', 'male', '24', '9818134576', 20, 'prabh786@gmail.com', 123, '11899866_690854484348510_8725848025714675727_n.jpg'),
(18, 'Ridhima', 'female', '25', '9889786545', 14, 'ridhi@ymail.com', 123, '1.jpg'),
(19, 'Preet karanq', 'female', '28', '8427429079', 14, 'preet22@yahoo.com', 123, '123.jpg'),
(20, 'mntrtgrt', 'female', '35', '9888976570', 18, 'manat@yahoo.com', 123, 'ccccc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE IF NOT EXISTS `donation` (
  `donation_id` int(100) NOT NULL AUTO_INCREMENT,
  `camp_id` int(100) NOT NULL,
  `ddate` datetime NOT NULL,
  `units` int(100) NOT NULL,
  `detail` varchar(800) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`donation_id`, `camp_id`, `ddate`, `units`, `detail`, `email`) VALUES
(28, 1, '2014-09-14 00:00:00', 20, 'A Blood Donation Camp at Acs Engg collage organized by Acs education , Bangalore.', 'parasbhatia08@gmail.com'),
(29, 7, '2015-05-11 00:00:00', 30, 'A Blood Donation Camp at RNSIT University organized by RNSIT University , Bangalore.', 'parasbhatia08@gmail.com'),
(30, 8, '2014-11-04 00:00:00', 25, 'A Blood Donation Camp at JSS Collage, Bangalore organized by Lions Club, Bangalore.', 'parasbhatia08@gmail.com'),
(31, 9, '2014-12-18 00:00:00', 22, 'A Blood Donation Camp at Ambedkar Institute of Technology, Bangalore organized by Human Welfare Society, Bangalore.\r\n ', 'parasbhatia08@gmail.com'),
(32, 7, '2010-06-19 00:00:00', 27, 'A Blood Donation Camp at Lovely Professional Unive...', 'preet22@yahoo.com'),
(33, 8, '2010-08-20 00:00:00', 17, 'save life', 'manpreetkaler@yahoo.com'),
(34, 9, '2009-06-05 00:00:00', 10, 'give blood', 'manpreetkaler@yahoo.com'),
(35, 1, '2012-09-13 00:00:00', 22, 'save life', 'sahildubey@gmail.com'),
(36, 9, '0000-00-00 00:00:00', 444, 'kjj', 'neeru.bawa@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE IF NOT EXISTS `gallary` (
  `camp_id` int(100) NOT NULL,
  `pic_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(400) NOT NULL,
  `pic` varchar(800) NOT NULL,
  PRIMARY KEY (`pic_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`camp_id`, `pic_id`, `title`, `pic`) VALUES
(9, 15, 'pic 1', 'p48_2.jpg'),
(9, 16, 'pic 2', 'p11 (1).jpg'),
(9, 17, 'pic 3', 'p141.jpg'),
(9, 18, 'pic 5', 'p177_2.jpg'),
(9, 19, 'pic 6', 'p279.jpg'),
(8, 20, 'pic 8', 'jss.jpg'),
(9, 21, 'pic 9', 'p82.jpg'),
(7, 22, 'pic 2', 'p82.jpg'),
(7, 23, 'pic 3', 'p93.jpg'),
(7, 24, 'pic 6', 'p148.jpg'),
(7, 25, 'pic 7', 'pamrik@ymail.com1 (2).jpg'),
(7, 26, 'pic 8', 'rns.jpg'),
(7, 27, 'pic 9', 'slider7.jpg'),
(1, 28, 'pic 2', 'slider8.jpeg'),
(1, 29, 'pic 3', 'slider3.jpg'),
(1, 30, 'pic 4', 'donation.jpg'),
(1, 31, 'pic 3', 'Blood-Donation2.jpg'),
(1, 32, 'pic 4', 'blood-donation-.jpg'),
(1, 33, 'pic 6', 'blood-donation.jpg'),
(8, 34, 'pic 1', 'resizedBlood donation (1).jpg'),
(8, 35, 'pic 2', 'Blood-donation-camp.jpg'),
(8, 36, 'pic 4', '3.jpg'),
(8, 37, 'pic 5', '4.jpg'),
(8, 38, 'pic 7', 'p246.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(100) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `detail` varchar(900) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `detail`) VALUES
(1, 'blood donate', 'give blood give bloodgive blood'),
(2, 'blood bank', 'blooooddddd\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `requestes`
--

CREATE TABLE IF NOT EXISTS `requestes` (
  `req_id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bgroup` varchar(100) NOT NULL,
  `reqdate` datetime NOT NULL,
  `detail` varchar(500) NOT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `requestes`
--

INSERT INTO `requestes` (`req_id`, `name`, `gender`, `age`, `mobile`, `email`, `bgroup`, `reqdate`, `detail`) VALUES
(1, 'balwant singh', 'male', '22', '8427420298', 'balwant11@gmail.com', 'o-', '2015-01-15 00:00:00', 'save life'),
(2, 'japleen', 'female', '22', '9216291294', 'jsimran08@gmail.com', 'AB+', '2014-01-12 00:00:00', 'save life'),
(3, 'Naresh', 'female', '21', '8427420291', 'nareshheer719@gmail.com', 'AB-', '2015-01-18 00:00:00', 'save life'),
(4, 'Taran', 'male', '55', '7589325050', 'taran@ymail.com', 'A+', '2012-01-29 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(100) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(100) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'karnataka'),
(2, 'delhi'),
(3, 'Andhra Pradesh'),
(4, 'Bihar'),
(5, 'Assam');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `typeofuser` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `pwd`, `typeofuser`) VALUES
('manu', 'manu', 'Admin'),
('neeru', 'neeru', 'General');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
