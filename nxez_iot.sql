-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-02-27 14:41:43
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nxez_iot`
--

-- --------------------------------------------------------

--
-- 表的结构 `nxez_actuator`
--

CREATE TABLE `nxez_actuator` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `actuator_type` tinyint(3) UNSIGNED NOT NULL,
  `actuator_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `actuator_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actuator_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `nxez_houses`
--

CREATE TABLE `nxez_houses` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `house_province` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_town` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `nxez_rooms`
--

CREATE TABLE `nxez_rooms` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `house_id` bigint(20) UNSIGNED NOT NULL,
  `room_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` tinyint(3) UNSIGNED NOT NULL,
  `room_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `nxez_sensors`
--

CREATE TABLE `nxez_sensors` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `device_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `sensor_type` tinyint(3) UNSIGNED NOT NULL,
  `sensor_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sensor_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sensor_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `nxez_sensors_data_a`
--

CREATE TABLE `nxez_sensors_data_a` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `sensor_id` bigint(20) UNSIGNED NOT NULL,
  `data_value` tinyint(3) UNSIGNED NOT NULL,
  `data_tracked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `nxez_users`
--

CREATE TABLE `nxez_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nxez_actuator`
--
ALTER TABLE `nxez_actuator`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `device_id` (`device_id`),
  ADD KEY `actuator_type` (`actuator_type`),
  ADD KEY `actuator_token` (`actuator_token`(191));

--
-- Indexes for table `nxez_houses`
--
ALTER TABLE `nxez_houses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nxez_rooms`
--
ALTER TABLE `nxez_rooms`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `room_type` (`room_type`);

--
-- Indexes for table `nxez_sensors`
--
ALTER TABLE `nxez_sensors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `device_id` (`device_id`),
  ADD KEY `sensor_type` (`sensor_type`),
  ADD KEY `sensor_token` (`sensor_token`(191));

--
-- Indexes for table `nxez_sensors_data_a`
--
ALTER TABLE `nxez_sensors_data_a`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sensor_id` (`sensor_id`),
  ADD KEY `data_tracked` (`data_tracked`);

--
-- Indexes for table `nxez_users`
--
ALTER TABLE `nxez_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `nxez_actuator`
--
ALTER TABLE `nxez_actuator`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `nxez_houses`
--
ALTER TABLE `nxez_houses`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `nxez_rooms`
--
ALTER TABLE `nxez_rooms`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `nxez_sensors`
--
ALTER TABLE `nxez_sensors`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `nxez_sensors_data_a`
--
ALTER TABLE `nxez_sensors_data_a`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `nxez_users`
--
ALTER TABLE `nxez_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
