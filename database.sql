
###################################################
CREATE TABLE `wp_users` (
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

ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
###################################################
CREATE TABLE `nxez_houses` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `house_province` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_city` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_town` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `house_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `nxez_houses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

ALTER TABLE `nxez_houses`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
###################################################
CREATE TABLE `nxez_rooms` (
	`ID` bigint(20) UNSIGNED NOT NULL,
	`house_id` bigint(20) UNSIGNED NOT NULL,
	`room_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
	`room_type` tinyint(3) UNSIGNED NOT NULL,
	`room_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
	`room_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `nxez_rooms`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `room_type`(`room_type`);

ALTER TABLE `nxez_rooms`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
###################################################
CREATE TABLE `nxez_sensors`(
	`ID` bigint(20) UNSIGNED NOT NULL,
	`room_id` bigint(20) UNSIGNED NOT NULL,
	`device_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
	`sensor_type` tinyint(3) UNSIGNED NOT NULL,
	`sensor_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
	`sensor_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `nxez_sensors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `device_id`(`device_id`),
  ADD KEY `sensor_type`(`sensor_type`);

ALTER TABLE `nxez_sensors`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
###################################################
CREATE TABLE `nxez_actuator`(
	`ID` bigint(20) UNSIGNED NOT NULL,
	`room_id` bigint(20) UNSIGNED NOT NULL,
	`device_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
	`actuator_type` tinyint(3) UNSIGNED NOT NULL,
	`actuator_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
	`actuator_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `nxez_actuator`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `device_id`(`device_id`),
  ADD KEY `actuator_type`(`actuator_type`);

ALTER TABLE `nxez_actuator`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
###################################################
/* data_A stands for the data which can be represented from -128 to 127 */
CREATE TABLE `nxez_sensors_data_A`(
	`ID` bigint(20) UNSIGNED NOT NULL,
	`sensor_id` bigint(20) UNSIGNED NOT NULL,
	`data_value` tinyint(3) UNSIGNED NOT NULL,
	`data_tracked` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `nxez_sensors_data_A`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sensor_id` (`sensor_id`),
  ADD KEY `data_tracked`(`data_tracked`);

ALTER TABLE `nxez_sensors_data_A`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

#more data types can be added if need