-- phpMyAdmin SQL Dump
-- version 4.6.5.2


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

-- Database: `mybank`


-- --------------------------------------------------------


-- Table structure for table `branch`


CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `branch`


INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'Dera Ghazi Khan'),
(2, '100102', 'Multan');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by fk', 1, '2021-05-15 04:30:48'),
(3, 'This is testing message to admin or manager by fk', 2, '2022-09-10 04:30:48'),
(4, 'this is help card for admin', 1, '2017-12-17 06:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier', 'cashier', '2021-12-15 04:36:27'),
(2, 'manager@manager.com', 'manager', 'manager', '2022-05-11 04:36:27'),
(3, 'sadfas@gmail.com', 'sdfas', 'type', '2022-01-15 07:11:11'),
(4, 'fkgeo@gmail.com', 'asdfsa', 'type', '2021-12-16 07:13:18'),
(6, 'cashier2@cashier.com', 'cashier2', 'cashier', '2022-03-16 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer!Your privacy policy is changed for account information get new prospectus from your nearest branch', '2017-12-14 13:11:46'),
(6, '2', 'Dear Ali,\r\n Your privacy policy has been changed please visit nearest <kbd> MCB </kbd> branch for new prospectus.', '2017-12-16 06:29:23');

-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'BOB', 'Zeel Ramani', '40800', '2017-12-14 11:55:07'),
(2, '12001123', 'SBI', 'Ayush Shalin', '71000', '2017-12-14 11:55:07'),
(3, '12001124', 'ICICI', 'Kashyap Patel', '71000', '2017-12-14 11:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`,`other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '12001122', 1, '2021-02-14 12:33:40'),
(5, 'transfer', '', '200', '','10054777', 1, '2022-05-14 12:56:48'),
(6, 'transfer', '', '333', '','10054777', 3, '2017-12-14 12:57:20'),
(7, 'transfer', '', '222', '','10054777', 4, '2022-01-14 12:58:19'),
(8, 'transfer', '', '333', '',  '10054777', 1, '2022-09-12 13:00:23'),
(16, 'withdraw', '', '100', '', '23423', 2, '2021-12-15 08:31:59'),
(17, 'deposit', '1200', '', '', '234232', 1, '2021-12-15 08:32:17'),
(18, 'transfer', '', '467', '', '12001122',3, '2020-12-17 06:44:48'),
(22, 'deposit', '1200', '', '', '32424', 4, '2022-06-17 06:56:29'),
(23, 'withdraw', '', '12', '',  '23423', 2, '2022-03-20 06:59:02'),
(24, 'deposit', '12', '', '',  '21321', 4, '2021-12-01 06:59:20'),
(25, 'transfer', '', '1200', '', '10054777', 1, '2022-09-09 07:01:37'),
(26, 'deposit', '600', '', '',  '342342', 3, '2021-12-17 07:04:39'),
(27, 'withdraw', '', '1012', '','23423', 2, '2020-12-17 07:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'some@gmail.com', 'some', 'Abc', '9800', '03356910260', 'Islamabad', 'Some where in isb', 'Programmer', '1005469', '1', 'Current', '2017-12-14 05:50:06'),
(2, 'some2@gmail.com', 'some2', 'Sanvi Shah', '16000', '03356910260', 'Islamabad', 'Some where in isb', 'Programmer', '10054777', '1', 'Saving', '2017-12-14 04:50:06'),
(3, 'realx4rd@gmail.com', 'Harsh Bhavsar', 'Fayyaz Khan', '234234', '03356910260', 'Taunsa', 'Dera Ghazi Khan', 'Govt. job', '1513410739', '1', 'saving', '2017-12-16 07:52:40'),
(4, 'realx4rd@gmail.com', 'Riya Pujara', 'Fayyaz Khan', '12121', '03356910260', 'Taunsa', 'Dera Ghazi Khan', 'Govt. job', '1513410837', '1', 'current', '2017-12-16 07:54:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
