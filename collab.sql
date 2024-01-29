-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 11:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collab`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add task', 7, 'add_task'),
(26, 'Can change task', 7, 'change_task'),
(27, 'Can delete task', 7, 'delete_task'),
(28, 'Can view task', 7, 'view_task'),
(29, 'Can add oott', 8, 'add_oott'),
(30, 'Can change oott', 8, 'change_oott'),
(31, 'Can delete oott', 8, 'delete_oott'),
(32, 'Can view oott', 8, 'view_oott'),
(33, 'Can add notesss', 9, 'add_notesss'),
(34, 'Can change notesss', 9, 'change_notesss'),
(35, 'Can delete notesss', 9, 'delete_notesss'),
(36, 'Can view notesss', 9, 'view_notesss'),
(37, 'Can add listt', 10, 'add_listt'),
(38, 'Can change listt', 10, 'change_listt'),
(39, 'Can delete listt', 10, 'delete_listt'),
(40, 'Can view listt', 10, 'view_listt'),
(41, 'Can add adlist', 11, 'add_adlist'),
(42, 'Can change adlist', 11, 'change_adlist'),
(43, 'Can delete adlist', 11, 'delete_adlist'),
(44, 'Can view adlist', 11, 'view_adlist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collabapp_adlist`
--

CREATE TABLE `collabapp_adlist` (
  `id` bigint(20) NOT NULL,
  `nouser` varchar(200) NOT NULL,
  `ms` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collabapp_listt`
--

CREATE TABLE `collabapp_listt` (
  `id` bigint(20) NOT NULL,
  `otp` varchar(200) NOT NULL,
  `userna` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `edate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collabapp_notesss`
--

CREATE TABLE `collabapp_notesss` (
  `id` bigint(20) NOT NULL,
  `otp` varchar(200) NOT NULL,
  `tile` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `notedate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collabapp_oott`
--

CREATE TABLE `collabapp_oott` (
  `id` bigint(20) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `gotp` varchar(10) NOT NULL,
  `pas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collabapp_task`
--

CREATE TABLE `collabapp_task` (
  `id` bigint(20) NOT NULL,
  `task` varchar(200) NOT NULL,
  `taskdate` date NOT NULL,
  `emal` varchar(200) NOT NULL,
  `otp` varchar(200) NOT NULL,
  `verify` varchar(100) DEFAULT NULL,
  `comverify` varchar(100) DEFAULT NULL,
  `verifyby` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(11, 'collabapp', 'adlist'),
(10, 'collabapp', 'listt'),
(9, 'collabapp', 'notesss'),
(8, 'collabapp', 'oott'),
(7, 'collabapp', 'task'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-29 10:13:05.788689'),
(2, 'auth', '0001_initial', '2024-01-29 10:13:06.299713'),
(3, 'admin', '0001_initial', '2024-01-29 10:13:06.436053'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-29 10:13:06.441283'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-29 10:13:06.456956'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-01-29 10:13:06.532719'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-01-29 10:13:06.605392'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-01-29 10:13:06.625635'),
(9, 'auth', '0004_alter_user_username_opts', '2024-01-29 10:13:06.635939'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-01-29 10:13:06.697070'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-01-29 10:13:06.701309'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-29 10:13:06.717435'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-01-29 10:13:06.734027'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-29 10:13:06.750760'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-01-29 10:13:06.769887'),
(16, 'auth', '0011_update_proxy_permissions', '2024-01-29 10:13:06.784245'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-29 10:13:06.807812'),
(18, 'collabapp', '0001_initial', '2024-01-29 10:13:06.827548'),
(19, 'collabapp', '0002_alter_task_emal', '2024-01-29 10:13:06.845770'),
(20, 'collabapp', '0003_customuser', '2024-01-29 10:13:07.186495'),
(21, 'collabapp', '0004_delete_customuser', '2024-01-29 10:13:07.209062'),
(22, 'collabapp', '0005_oott', '2024-01-29 10:13:07.223953'),
(23, 'collabapp', '0006_oott_tname', '2024-01-29 10:13:07.240757'),
(24, 'collabapp', '0007_oott_uname', '2024-01-29 10:13:07.251737'),
(25, 'collabapp', '0008_task_otp', '2024-01-29 10:13:07.267701'),
(26, 'collabapp', '0009_task_verify', '2024-01-29 10:13:07.284204'),
(27, 'collabapp', '0010_notes', '2024-01-29 10:13:07.297661'),
(28, 'collabapp', '0011_rename_notes_notesss', '2024-01-29 10:13:07.323100'),
(29, 'collabapp', '0012_alter_notesss_notedate', '2024-01-29 10:13:07.357644'),
(30, 'collabapp', '0013_task_comverify_alter_task_verify', '2024-01-29 10:13:07.394710'),
(31, 'collabapp', '0014_task_verifyby', '2024-01-29 10:13:07.406574'),
(32, 'collabapp', '0015_listt', '2024-01-29 10:13:07.419019'),
(33, 'collabapp', '0016_rename_eventdate_listt_edate_rename_title_listt_name', '2024-01-29 10:13:07.438070'),
(34, 'collabapp', '0017_alter_listt_edate', '2024-01-29 10:13:07.475029'),
(35, 'collabapp', '0018_oott_gotp', '2024-01-29 10:13:07.490735'),
(36, 'collabapp', '0019_oott_pas', '2024-01-29 10:13:07.514131'),
(37, 'collabapp', '0020_listt_nouser', '2024-01-29 10:13:07.531882'),
(38, 'collabapp', '0021_alter_listt_nouser', '2024-01-29 10:13:07.561098'),
(39, 'collabapp', '0022_remove_listt_nouser', '2024-01-29 10:13:07.572776'),
(40, 'collabapp', '0023_adlist', '2024-01-29 10:13:07.585340'),
(41, 'collabapp', '0024_adlist_ms', '2024-01-29 10:13:07.599969'),
(42, 'sessions', '0001_initial', '2024-01-29 10:13:07.657614');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `collabapp_adlist`
--
ALTER TABLE `collabapp_adlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collabapp_listt`
--
ALTER TABLE `collabapp_listt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collabapp_notesss`
--
ALTER TABLE `collabapp_notesss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collabapp_oott`
--
ALTER TABLE `collabapp_oott`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collabapp_task`
--
ALTER TABLE `collabapp_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collabapp_adlist`
--
ALTER TABLE `collabapp_adlist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collabapp_listt`
--
ALTER TABLE `collabapp_listt`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collabapp_notesss`
--
ALTER TABLE `collabapp_notesss`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collabapp_oott`
--
ALTER TABLE `collabapp_oott`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collabapp_task`
--
ALTER TABLE `collabapp_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
