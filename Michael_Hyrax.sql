-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 06:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Michael_Hyrax`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(50) NOT NULL,
  `emp_name` text NOT NULL,
  `hire_date` date NOT NULL,
  `salary` int(50) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `hire_date`, `salary`, `dept_id`) VALUES
(1, 'Explora Michael', '2025-03-12', 150000, 1),
(2, '4mrx Misati', '2026-01-14', 160000, 2),
(3, 'Sarah Ann Connor', '2024-09-10', 120000, 2),
(5, 'Mike Explora', '2026-02-21', 6000, 2),
(6, 'Narkiso Oduru', '2024-04-21', 160000, 1),
(7, 'John Mwangi', '2026-03-21', 170000, 2),
(8, 'Shem Parit', '2022-02-21', 140000, 1),
(11, 'Joshua Smith', '2020-08-21', 110000, 1),
(12, 'Brian Mwaura', '2018-07-21', 170000, 3),
(13, 'Evans Wanyo', '2015-04-21', 190000, 3),
(14, 'Lewis Wanyonyi', '2019-06-21', 102000, 2),
(15, 'Kano Nyakango', '2022-08-18', 96000, 1),
(16, 'Tonnie Kipngeno', '2024-04-18', 72000, 2),
(17, 'Abel Depa', '2023-03-20', 140000, 1),
(18, 'Tom Kipro', '2015-07-18', 230000, 3),
(19, 'Jonte Mara', '2023-09-21', 97000, 1),
(20, 'Harvey Mwaura', '2024-04-13', 211000, 2),
(21, 'Imran Joho', '2023-03-14', 135000, 3),
(22, 'Tailer Hussein', '2017-09-13', 340000, 2),
(23, 'Jade Joho', '2023-03-15', 140000, 1),
(24, 'Jonny Kipngeno', '2023-04-14', 230000, 2),
(25, 'Cane Depa', '2021-07-17', 110000, 1),
(26, 'Tonnie Wamalwa', '2024-04-18', 210000, 2),
(27, 'Abel Jihoho', '2025-05-16', 146000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(2, 'Mansion', 'Mansion', 76000000, 'Manson1.jpg'),
(3, 'Apartment', 'Comfy,Luxurios,Posh', 7600000, 'rental3.jpg'),
(5, 'Luxury car', 'Comfy,Luxurios,Posh', 1600000, 'Jinx - Arcane (League of Legends) LoRA - v1_0 _ image created by  MM744.jpeg'),
(6, 'Audi', 'Fast,Luxurios,Posh', 1700000, 'akysrl-audi-8336484_1920.jpg'),
(7, 'Mercideez', 'Fast,Elegant,Posh', 3000000, 'pexels-auto-2179220_1920.jpg'),
(8, 'Old skull', 'Elegant,Posh', 1200000, 'ryanmcguire-car-498244_1920.jpg'),
(9, 'BMW', 'Elegant,Posh,reliable', 700000, 'toby_parsons-bmw-2964072_1920.jpg'),
(10, 'Lamborghini', 'Elegant,Posh,reliable,Unique', 12700000, 'futuremoon-cars-8891625_1920.jpg'),
(11, 'Volxwagen', 'Posh,reliable,Unique', 1270000, 'leonhard_niederwimmer-volkswagen-7647805_1920.jpg'),
(12, 'racing', 'Posh,reliable,Unique', 6800000, 'mibro-race-car-7624025_1920.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(4, 'L3gitmik3', '2345', 'l3gimik3@gmail.com', '0787654321'),
(5, 'Explora Mike', '1234', 'explora@gmail.com', '07833354321'),
(6, 'Captain Hook', '4321', 'Hook@gmail.com', '0783335999'),
(7, 'Peter Pan', '3210', 'Pan@gmail.com', '0783222999'),
(8, 'Mike Mwash', '1234', 'Mwash@gmail.com', '0711222999'),
(9, 'Mike Mwash', '1234', 'Mwash@gmail.com', '0711222999');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
