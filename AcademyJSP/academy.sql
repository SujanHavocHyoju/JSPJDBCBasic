-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2016 at 06:43 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_batches`
--

CREATE TABLE `tbl_batches` (
  `batch_id` int(11) NOT NULL,
  `batch_code` varchar(50) NOT NULL,
  `course_id` int(11) NOT NULL,
  `facilitator_id` int(11) NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `end_date` varchar(100) NOT NULL,
  `timing_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_batches`
--

INSERT INTO `tbl_batches` (`batch_id`, `batch_code`, `course_id`, `facilitator_id`, `start_date`, `end_date`, `timing_id`) VALUES
(1, 'CJV-001', 1, 1, '25/07/2016', '25/09/2016', 1),
(2, 'AJV_001', 2, 1, '27/07/2016', '27/09/2016', 5),
(3, 'PHP_001', 3, 3, '12/07/2016', '12/09/2016', 4),
(4, 'PDS_001', 4, 2, '29/06/2016', '29/08/2016', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `course_fee` int(11) NOT NULL,
  `course_duration` int(11) NOT NULL,
  `duration_type` enum('D','W','M') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`course_id`, `course_name`, `course_fee`, `course_duration`, `duration_type`) VALUES
(1, 'Core Java', 12000, 8, 'W'),
(2, 'Advanced Java', 20000, 8, 'W'),
(3, 'PHP', 18500, 8, 'W'),
(4, 'Python and Data Science', 20000, 2, 'M'),
(5, 'ASP.Net', 20000, 2, 'M'),
(6, 'Wordpress', 8000, 6, 'W'),
(8, 'sqaq', 20000, 2, 'W'),
(9, 'Exccel', 10000, 5, 'W');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_discounts`
--

CREATE TABLE `tbl_discounts` (
  `discount_id` int(11) NOT NULL,
  `discount_title` varchar(100) NOT NULL,
  `discount_amt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_discounts`
--

INSERT INTO `tbl_discounts` (`discount_id`, `discount_title`, `discount_amt`) VALUES
(1, 'Early Bird', 5000),
(2, 'Referral ', 2500),
(3, 'EX-Students', 7000),
(4, 'Scholarship', 10000),
(5, '10% Discount', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enrollment`
--

CREATE TABLE `tbl_enrollment` (
  `enroll_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `enquiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fees` int(11) NOT NULL,
  `discount_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_enrollment`
--

INSERT INTO `tbl_enrollment` (`enroll_id`, `batch_id`, `student_id`, `enquiry_date`, `fees`, `discount_id`, `status_id`) VALUES
(1, 1, 1, '2016-08-17 11:25:48', 12000, 1, 1),
(2, 1, 3, '2016-08-17 11:25:48', 12000, 1, 1),
(3, 2, 2, '2016-08-17 11:27:01', 20000, 1, 1),
(4, 2, 4, '2016-08-17 11:27:01', 20000, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facilitators`
--

CREATE TABLE `tbl_facilitators` (
  `facilitator_id` int(11) NOT NULL,
  `facilitator_fname` varchar(50) NOT NULL,
  `facilitator_lname` varchar(50) NOT NULL,
  `facilitator_email` varchar(100) NOT NULL,
  `facilitator_contact` varchar(50) NOT NULL,
  `facilitator_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_facilitators`
--

INSERT INTO `tbl_facilitators` (`facilitator_id`, `facilitator_fname`, `facilitator_lname`, `facilitator_email`, `facilitator_contact`, `facilitator_rate`) VALUES
(1, 'Dixanta', 'Bhd. Shrestha', 'dix@gmail.com', '2369842', 99999),
(2, 'Kripesh', 'Kazi', 'kpp@gmail.com', '23534434', 40000),
(3, 'Anish', 'Shrestha', 'ann@gmail.com', '2343252', 20000),
(4, 'Suman', 'Heuju', 'shshshs@gmail.com', '2354643', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statuses`
--

CREATE TABLE `tbl_statuses` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `color` enum('RED','BLUE','GREEN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_statuses`
--

INSERT INTO `tbl_statuses` (`status_id`, `status_name`, `color`) VALUES
(1, 'Enrolled', 'GREEN'),
(2, 'Differ', 'BLUE'),
(3, 'Dropped', 'RED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `student_id` int(11) NOT NULL,
  `student_fname` varchar(100) NOT NULL,
  `student_lname` varchar(100) NOT NULL,
  `student_email` varchar(100) NOT NULL,
  `student_contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`student_id`, `student_fname`, `student_lname`, `student_email`, `student_contact`) VALUES
(1, 'Mohit', 'Paudel', 'mp@gmail.com', '977889543'),
(2, 'Hasna', 'Dhaubhadel', 'hasna@gmaail.com', '7683423'),
(3, 'Sujan', 'Hyoju', 'shh@gmail.com', '8236423'),
(4, 'Shishir', 'Boro', 'sb@gmail.com', '89994323'),
(5, 'Dilip', 'Boro', 'dp@gmail.com', '1489823'),
(6, 'Suman', 'Boro', 'sb@gmail.com', '32542345'),
(7, 'Narco', 'Traficcante', 'gringo@gmail.com', '23423543');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timings`
--

CREATE TABLE `tbl_timings` (
  `timing_id` int(11) NOT NULL,
  `timing_name` varchar(50) NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_timings`
--

INSERT INTO `tbl_timings` (`timing_id`, `timing_name`, `start_time`, `end_time`) VALUES
(1, '7-9 am', '7 am', '9 am'),
(2, '9-11 am', '9 am', '11 am'),
(3, '12-1 pm', '12 pm', '1 pm'),
(4, '1-3 pm', '1 pm', '3 pm'),
(5, '3-5 pm', '3 pm', '5 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_batches`
--
ALTER TABLE `tbl_batches`
  ADD PRIMARY KEY (`batch_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `facilitator_id` (`facilitator_id`),
  ADD KEY `timing_id` (`timing_id`);

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `tbl_discounts`
--
ALTER TABLE `tbl_discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `tbl_enrollment`
--
ALTER TABLE `tbl_enrollment`
  ADD PRIMARY KEY (`enroll_id`),
  ADD KEY `batch_id` (`batch_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `discount_id` (`discount_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `tbl_facilitators`
--
ALTER TABLE `tbl_facilitators`
  ADD PRIMARY KEY (`facilitator_id`);

--
-- Indexes for table `tbl_statuses`
--
ALTER TABLE `tbl_statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `tbl_timings`
--
ALTER TABLE `tbl_timings`
  ADD PRIMARY KEY (`timing_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_batches`
--
ALTER TABLE `tbl_batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_discounts`
--
ALTER TABLE `tbl_discounts`
  MODIFY `discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_enrollment`
--
ALTER TABLE `tbl_enrollment`
  MODIFY `enroll_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_facilitators`
--
ALTER TABLE `tbl_facilitators`
  MODIFY `facilitator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_statuses`
--
ALTER TABLE `tbl_statuses`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_timings`
--
ALTER TABLE `tbl_timings`
  MODIFY `timing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_batches`
--
ALTER TABLE `tbl_batches`
  ADD CONSTRAINT `tbl_batches_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `tbl_courses` (`course_id`),
  ADD CONSTRAINT `tbl_batches_ibfk_2` FOREIGN KEY (`facilitator_id`) REFERENCES `tbl_facilitators` (`facilitator_id`),
  ADD CONSTRAINT `tbl_batches_ibfk_3` FOREIGN KEY (`timing_id`) REFERENCES `tbl_timings` (`timing_id`);

--
-- Constraints for table `tbl_enrollment`
--
ALTER TABLE `tbl_enrollment`
  ADD CONSTRAINT `tbl_enrollment_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `tbl_batches` (`batch_id`),
  ADD CONSTRAINT `tbl_enrollment_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `tbl_students` (`student_id`),
  ADD CONSTRAINT `tbl_enrollment_ibfk_3` FOREIGN KEY (`discount_id`) REFERENCES `tbl_discounts` (`discount_id`),
  ADD CONSTRAINT `tbl_enrollment_ibfk_4` FOREIGN KEY (`status_id`) REFERENCES `tbl_statuses` (`status_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
