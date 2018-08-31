-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 08:08 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_srm_lib`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_issue_details`
--

CREATE TABLE `book_issue_details` (
  `Book_Issue_ID` int(11) NOT NULL,
  `Book_Issue_Date` date NOT NULL,
  `Book_ID` int(11) NOT NULL,
  `User_ID` varchar(50) NOT NULL,
  `Return_Date` date NOT NULL,
  `Return_Status` varchar(50) NOT NULL,
  `Fine_Amount` int(11) NOT NULL,
  `Fine_Amount_Paid` int(11) NOT NULL,
  `Library_Name` varchar(100) NOT NULL,
  `Issued_By` varchar(50) NOT NULL,
  `Returned_By` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_issue_details`
--

INSERT INTO `book_issue_details` (`Book_Issue_ID`, `Book_Issue_Date`, `Book_ID`, `User_ID`, `Return_Date`, `Return_Status`, `Fine_Amount`, `Fine_Amount_Paid`, `Library_Name`, `Issued_By`, `Returned_By`) VALUES
(10000, '2018-03-01', 100, '1000', '2018-04-01', 'not returned', 100, 200, 'SRM library', 'meetali', 'meetali'),
(10001, '2018-03-02', 101, '1001', '2018-04-02', 'returned', 100, 100, 'SRM library', 'arshia', 'arshia'),
(10002, '2018-03-03', 102, '1002', '2018-04-03', 'not returned', 100, 300, 'SRM library', 'avantika', 'avantika'),
(10004, '2018-03-04', 104, '1004', '2018-04-04', 'returned', 100, 400, 'SRM library', 'shreya', 'shreya'),
(10005, '2018-03-05', 105, '1005', '2018-04-05', 'not returned', 100, 500, 'SRM library', 'shubhi', 'shubhi');

-- --------------------------------------------------------

--
-- Table structure for table `book_master`
--

CREATE TABLE `book_master` (
  `Book_ID` int(11) NOT NULL,
  `Book_Title` varchar(100) NOT NULL,
  `Edition` varchar(20) NOT NULL,
  `Author1` varchar(50) NOT NULL,
  `Author2` varchar(50) NOT NULL,
  `Author3` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Publisher` varchar(100) NOT NULL,
  `Book_Type` varchar(50) NOT NULL,
  `Book_Status` varchar(50) NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `Loc` varchar(50) NOT NULL,
  `Library_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_master`
--

INSERT INTO `book_master` (`Book_ID`, `Book_Title`, `Edition`, `Author1`, `Author2`, `Author3`, `Price`, `Publisher`, `Book_Type`, `Book_Status`, `Branch`, `Loc`, `Library_Name`) VALUES
(100, 'hound of baskerville', '2nd', 'john steve', 'k. l .roy', 'arjun kumar', 100, 'ganapathy', 'thriller', 'issued', '1234', 'mumbai', 'SRM library'),
(102, 'the canterville ghost', '3rd', 'rudyard kipling', 'rudyard kilberg', 'rudyard kent', 200, 'k.p.goswami', 'horror', 'issued', '1254', 'goa', 'SRM library'),
(103, 'learning java', '3rd', 'm.anand', 'georgen george', 'lavanya', 300, 'm.anand', 'study material', 'issued', '1647', 'pune', 'SRM library'),
(104, 'learning c++', '3rd', 'k.p.roy', 'annie nesant', 'sumita arora', 400, 'sumitra arora', 'c++', 'issued', '1867', 'rajasthan', 'SRM library'),
(105, 'learning web programing', '4th', 'arjun pant', 'jim mark ', 'j.n.keil', 500, 'keil and sons', 'web programming', 'issued', '1983', 'haryana', 'SRM library');

-- --------------------------------------------------------

--
-- Table structure for table `branch_master`
--

CREATE TABLE `branch_master` (
  `Branch_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_master`
--

INSERT INTO `branch_master` (`Branch_Name`) VALUES
('goa branch'),
('haryana branch'),
('mumbai branch'),
('pune branch'),
('rajasthan branch');

-- --------------------------------------------------------

--
-- Table structure for table `dept_master`
--

CREATE TABLE `dept_master` (
  `Dept_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept_master`
--

INSERT INTO `dept_master` (`Dept_Name`) VALUES
('CSE'),
('EEE'),
('EIE'),
('IT'),
('SE');

-- --------------------------------------------------------

--
-- Table structure for table `library_master`
--

CREATE TABLE `library_master` (
  `Library_Name` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Building` varchar(100) NOT NULL,
  `Mail_ID` varchar(100) NOT NULL,
  `Phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_master`
--

INSERT INTO `library_master` (`Library_Name`, `Location`, `Building`, `Mail_ID`, `Phone`) VALUES
('anna library', 'chennai', 'anna building', 'anna@gmail.com', '5647389234'),
('bit mesra library', 'ranchi', 'mesra colony', 'bitmesra@gmail.com', '9854233445'),
('sathyabhama library', 'rajasthan', 'sathaya building', 'sathaya@gmail.com', '6758462348'),
('SRM library', 'mumbai', 'galaxy building', 'galaxy@gmail.com', '9834567834'),
('symbiosys library', 'pune', 'Williams building', 'William@gmail.com', '4567789343'),
('vit library', 'goa', 'fort building', 'fort@gmail.com', '6789567234');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `No_Days_Staff` int(11) NOT NULL,
  `No_Days_Stu` int(11) NOT NULL,
  `Fine_Amt_Staff` int(11) NOT NULL,
  `Find_Amt_Stu` int(11) NOT NULL,
  `Library_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`No_Days_Staff`, `No_Days_Stu`, `Fine_Amt_Staff`, `Find_Amt_Stu`, `Library_Name`) VALUES
(30, 15, 50, 100, 'SRM library'),
(31, 16, 100, 150, 'vit library'),
(32, 17, 150, 200, 'symbiosys library'),
(33, 18, 200, 250, 'sathayabhama library'),
(34, 19, 250, 300, 'anna library');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `fullname` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `fullname`) VALUES
(1, 'neovic', 'devierte', 'neovic devierte'),
(2, 'lee', 'ann', 'lee ann'),
(12, 'meetali', 'meetali', 'meetalinanda');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `regno` varchar(25) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `dept` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`regno`, `uname`, `pwd`, `gender`, `dob`, `dept`, `email`, `mobile`) VALUES
('RA1511008010446', 'meetali', 'meetali', 'female', '1997-10-05', 'IT', 'meetali@gmail.com', '9566186303'),
('RA1511008010447', 'arshia', 'arshia', 'female', '1997-03-06', 'IT', 'arshia@gmail.com', '9566186304'),
('RA1511008010448', 'divya', 'divya', 'female', '1997-03-10', 'IT', 'divya@gmail.com', '9566186305'),
('RA1511008010449', 'sameer', 'sameer', 'male', '1997-03-13', 'IT', 'sameer@gmail.com', '9566186306'),
('RA1511008010450', 'shubhi', 'shubhi', 'female', '1997-03-19', 'IT', 'shubhi@gmail.com', '9566186307'),
('RA1511008010451', 'namrata', 'namrata', 'female', '1997-03-20', 'IT', 'namrata@gmail.com', '9566186308'),
('RA1511008010452', 'ankita', 'ankita', 'female', '1997-03-28', 'IT', 'ankita@gmail.com', '9566186309'),
('RA1511008010453', 'omini', 'omini', 'female', '1997-03-30', 'IT', 'omini@gmail.com', '9566186301'),
('RA1511008010454', 'isha', 'isha', 'female', '1997-03-31', 'IT', 'isha@gmail.com', '9566186302'),
('RA1511008010455', 'himanshi', 'himanshi', 'female', '1997-03-23', 'IT', 'himanshi@gmail.com', '9566186333'),
('RA1511008010111', 'helen', 'helen', 'female', '1984-03-26', 'IT', 'helen@gmail.com', '9867453212');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `User_ID` varchar(50) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `User_Desc` varchar(50) NOT NULL,
  `User_PWD` varchar(50) NOT NULL,
  `User_Type` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Dept` varchar(100) NOT NULL,
  `Mail_ID` varchar(100) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Library_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`User_ID`, `User_Name`, `User_Desc`, `User_PWD`, `User_Type`, `Gender`, `Dept`, `Mail_ID`, `Phone`, `Library_Name`) VALUES
('1000', 'meetali', 'it student', 'meetali', 'student', 'female', 'it', 'meetali@gmail.com', '9566186303', 'SRM library'),
('1001', 'arshia', 'cse student', 'arshia', 'student', 'female', 'cse', 'arshia@gmail.com', '4563783942', 'SRM library'),
('1002', 'avantika', 'eee student', 'avantika', 'student', 'female', 'eee', 'avantika@gmail.com', '4536278563', 'SRM library'),
('1003', 'shubhi', 'it student', 'shubhi', 'student', 'female', 'it', 'shubhi@gmail.com', '5647386456', 'SRM library'),
('1004', 'manpreet', 'cse student', 'manpreet', 'student', 'female', 'cse', 'manpreet@gmail.com', '9864572345', 'SRM library'),
('23814597206', 'anand', 'it student', 'Test@123', 'student', 'Male', 'IT', 'ad@gmail.com', '1234567890', ''),
('RA12334567', 'victoria', 'it student', 'Test@123', 'student', 'Female', 'IT', 'vic@gmail.com', '9678543255', 'SRM library'),
('RA1511003010446', 'Formget', 'it student', 'formget#123', 'student', 'Female', 'IT', 'formget@gmail.com', '1122334455', 'SRM library'),
('RA1511008010111', 'helen', 'librarian', 'helen', 'Library Staff', 'female', 'it', 'helen@gmail.com', '9867453212', 'SRM library'),
('RA1511008010440', 'heer', 'it student', 'heer', 'student', 'Female', 'IT', 'heer@gmail.com', '9566778823', 'SRM library'),
('RA1511008010560', 'harnik', 'it student', 'harnik', 'student', 'Female', 'IT', 'harnik@gmail.com', '9566154375', 'SRM library');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_issue_details`
--
ALTER TABLE `book_issue_details`
  ADD PRIMARY KEY (`Book_Issue_ID`);

--
-- Indexes for table `book_master`
--
ALTER TABLE `book_master`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `branch_master`
--
ALTER TABLE `branch_master`
  ADD PRIMARY KEY (`Branch_Name`);

--
-- Indexes for table `dept_master`
--
ALTER TABLE `dept_master`
  ADD PRIMARY KEY (`Dept_Name`);

--
-- Indexes for table `library_master`
--
ALTER TABLE `library_master`
  ADD PRIMARY KEY (`Library_Name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`No_Days_Staff`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
