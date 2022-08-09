-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 17, 2022 at 01:32 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_india`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

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
(25, 'Can add user registration model', 7, 'add_userregistrationmodel'),
(26, 'Can change user registration model', 7, 'change_userregistrationmodel'),
(27, 'Can delete user registration model', 7, 'delete_userregistrationmodel'),
(28, 'Can view user registration model', 7, 'view_userregistrationmodel'),
(29, 'Can add ngo registration model', 8, 'add_ngoregistrationmodel'),
(30, 'Can change ngo registration model', 8, 'change_ngoregistrationmodel'),
(31, 'Can delete ngo registration model', 8, 'delete_ngoregistrationmodel'),
(32, 'Can view ngo registration model', 8, 'view_ngoregistrationmodel'),
(33, 'Can add ngo camp conduct model', 9, 'add_ngocampconductmodel'),
(34, 'Can change ngo camp conduct model', 9, 'change_ngocampconductmodel'),
(35, 'Can delete ngo camp conduct model', 9, 'delete_ngocampconductmodel'),
(36, 'Can view ngo camp conduct model', 9, 'view_ngocampconductmodel'),
(37, 'Can add user profile model', 10, 'add_userprofilemodel'),
(38, 'Can change user profile model', 10, 'change_userprofilemodel'),
(39, 'Can delete user profile model', 10, 'delete_userprofilemodel'),
(40, 'Can view user profile model', 10, 'view_userprofilemodel'),
(41, 'Can add hospital registration model', 11, 'add_hospitalregistrationmodel'),
(42, 'Can change hospital registration model', 11, 'change_hospitalregistrationmodel'),
(43, 'Can delete hospital registration model', 11, 'delete_hospitalregistrationmodel'),
(44, 'Can view hospital registration model', 11, 'view_hospitalregistrationmodel'),
(45, 'Can add hospital send request model', 12, 'add_hospitalsendrequestmodel'),
(46, 'Can change hospital send request model', 12, 'change_hospitalsendrequestmodel'),
(47, 'Can delete hospital send request model', 12, 'delete_hospitalsendrequestmodel'),
(48, 'Can view hospital send request model', 12, 'view_hospitalsendrequestmodel'),
(49, 'Can add bloodbank registration model', 13, 'add_bloodbankregistrationmodel'),
(50, 'Can change bloodbank registration model', 13, 'change_bloodbankregistrationmodel'),
(51, 'Can delete bloodbank registration model', 13, 'delete_bloodbankregistrationmodel'),
(52, 'Can view bloodbank registration model', 13, 'view_bloodbankregistrationmodel'),
(53, 'Can add bloodbank send request model', 14, 'add_bloodbanksendrequestmodel'),
(54, 'Can change bloodbank send request model', 14, 'change_bloodbanksendrequestmodel'),
(55, 'Can delete bloodbank send request model', 14, 'delete_bloodbanksendrequestmodel'),
(56, 'Can view bloodbank send request model', 14, 'view_bloodbanksendrequestmodel'),
(57, 'Can add user reciptant model', 15, 'add_userreciptantmodel'),
(58, 'Can change user reciptant model', 15, 'change_userreciptantmodel'),
(59, 'Can delete user reciptant model', 15, 'delete_userreciptantmodel'),
(60, 'Can view user reciptant model', 15, 'view_userreciptantmodel');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank_registration_details`
--

DROP TABLE IF EXISTS `bloodbank_registration_details`;
CREATE TABLE IF NOT EXISTS `bloodbank_registration_details` (
  `Bloodbank_id` int(11) NOT NULL AUTO_INCREMENT,
  `Bloodname` longtext NOT NULL,
  `Bloodaddress` longtext NOT NULL,
  `Bloodmobilenumber` bigint(20) NOT NULL,
  `Bloodemail` varchar(50) NOT NULL,
  `Bloodpassword` varchar(200) NOT NULL,
  `Bloodreg_date` date DEFAULT NULL,
  `bloodbank_status` varchar(200) NOT NULL,
  `upload_bloodbank` varchar(50) DEFAULT NULL,
  `bloodbank_upload_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Bloodbank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodbank_registration_details`
--

INSERT INTO `bloodbank_registration_details` (`Bloodbank_id`, `Bloodname`, `Bloodaddress`, `Bloodmobilenumber`, `Bloodemail`, `Bloodpassword`, `Bloodreg_date`, `bloodbank_status`, `upload_bloodbank`, `bloodbank_upload_image`) VALUES
(2, 'bloodbank', 'lb,nagar', 8686876108, 'bloodbank@gmail.com', 'cloud123', '2022-05-14', 'Accepted', '', 'about_3_2INq5fB.jpg'),
(3, 'apj blood bank', 'hyd', 7845878547, 'apjbloodbank@gmail.com', 'apj', '2022-05-14', 'Pending', '', 'pexels-nataliya-vaitkevich-5554754.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank_send_bloodrequest_details`
--

DROP TABLE IF EXISTS `bloodbank_send_bloodrequest_details`;
CREATE TABLE IF NOT EXISTS `bloodbank_send_bloodrequest_details` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `bloodbank_name` longtext NOT NULL,
  `bloodbank_mobilenumber` bigint(20) NOT NULL,
  `bloodbank_bloodgroup_requried` varchar(50) NOT NULL,
  `bloodbank_blood_requried_ml` varchar(50) NOT NULL,
  `bloodbank_send_reg_date` date DEFAULT NULL,
  `bloodbank_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `bloodbank_id1_id` int(11) DEFAULT NULL,
  `b_status` varchar(50) NOT NULL,
  `Bloodemail` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`b_id`),
  KEY `bloodbank_send_bloodrequest_details_bloodbank_id1_id_698fd949` (`bloodbank_id1_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodbank_send_bloodrequest_details`
--

INSERT INTO `bloodbank_send_bloodrequest_details` (`b_id`, `bloodbank_name`, `bloodbank_mobilenumber`, `bloodbank_bloodgroup_requried`, `bloodbank_blood_requried_ml`, `bloodbank_send_reg_date`, `bloodbank_id`, `hospital_id`, `status`, `bloodbank_id1_id`, `b_status`, `Bloodemail`) VALUES
(2, 'kamineni ', 9876543210, 'B+', '300ml', '2022-05-14', 2, 4, 'bloodbank Is Accepted', NULL, 'Accepted', NULL),
(3, 'apj bloodbank', 8789854785, 'AB+', '250ml', '2022-05-14', NULL, 0, 'Rejected', NULL, 'Rejected', NULL),
(4, 'bloodbank', 8686876108, 'B+', '300ml', '2022-05-17', NULL, NULL, 'Pending', NULL, 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'userregistrationmodel'),
(8, 'userapp', 'ngoregistrationmodel'),
(9, 'userapp', 'ngocampconductmodel'),
(10, 'userapp', 'userprofilemodel'),
(11, 'hospitalapp', 'hospitalregistrationmodel'),
(12, 'hospitalapp', 'hospitalsendrequestmodel'),
(13, 'bloodbankapp', 'bloodbankregistrationmodel'),
(14, 'bloodbankapp', 'bloodbanksendrequestmodel'),
(15, 'userapp', 'userreciptantmodel');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-04-23 09:45:22.343783'),
(2, 'auth', '0001_initial', '2022-04-23 09:45:22.554692'),
(3, 'admin', '0001_initial', '2022-04-23 09:45:22.620747'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-04-23 09:45:22.626662'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-04-23 09:45:22.635661'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-04-23 09:45:22.674529'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-04-23 09:45:22.692530'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-04-23 09:45:22.711925'),
(9, 'auth', '0004_alter_user_username_opts', '2022-04-23 09:45:22.718991'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-04-23 09:45:22.737999'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-04-23 09:45:22.739995'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-04-23 09:45:22.745118'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-04-23 09:45:22.763264'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-04-23 09:45:22.780995'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-04-23 09:45:22.798995'),
(16, 'auth', '0011_update_proxy_permissions', '2022-04-23 09:45:22.810995'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-04-23 09:45:22.829056'),
(18, 'sessions', '0001_initial', '2022-04-23 09:45:22.851273'),
(19, 'userapp', '0001_initial', '2022-04-23 09:45:34.890889'),
(20, 'userapp', '0002_alter_userprofilemodel_user_profile_dateofbirth', '2022-04-23 09:52:27.616674'),
(21, 'userapp', '0003_alter_userprofilemodel_user_profile_donated_lastmonth', '2022-04-23 10:31:23.222592'),
(22, 'userapp', '0004_remove_userprofilemodel_user_profile_dateofbirth', '2022-04-23 10:51:43.763524'),
(23, 'userapp', '0005_userregistrationmodel_user_gender_and_more', '2022-04-23 11:32:35.420574'),
(24, 'userapp', '0006_alter_userprofilemodel_table', '2022-04-24 07:41:07.846101'),
(25, 'userapp', '0007_alter_userprofilemodel_table', '2022-04-24 07:41:54.552636'),
(26, 'userapp', '0008_alter_userprofilemodel_user_id', '2022-04-24 07:45:18.480762'),
(27, 'userapp', '0009_userreciptantmodel', '2022-04-24 09:02:39.527462'),
(28, 'hospitalapp', '0001_initial', '2022-04-26 10:22:57.824771'),
(29, 'hospitalapp', '0002_alter_hospitalsendrequestmodel_hospital_blood_requried_ml_and_more', '2022-04-29 04:28:06.103365'),
(30, 'hospitalapp', '0003_alter_hospitalsendrequestmodel_hospital_name', '2022-04-29 04:31:40.690643'),
(31, 'bloodbankapp', '0001_initial', '2022-04-29 04:57:23.628938'),
(32, 'userapp', '0010_userprofilemodel_user_profile_blood', '2022-04-30 06:35:39.641108'),
(33, 'userapp', '0011_userprofilemodel_user_profile_blood_donated_date', '2022-04-30 07:29:47.980846'),
(34, 'userapp', '0012_alter_userprofilemodel_user_profile_mobilenumber', '2022-04-30 07:46:59.943601'),
(35, 'userapp', '0013_userprofilemodel_status_and_more', '2022-05-02 06:33:29.561949'),
(36, 'userapp', '0014_remove_userprofilemodel_user_id_and_more', '2022-05-02 06:45:02.182735'),
(37, 'hospitalapp', '0004_hospitalsendrequestmodel_status_and_more', '2022-05-04 10:51:55.947524'),
(38, 'bloodbankapp', '0002_bloodbanksendrequestmodel_hospital_id_and_more', '2022-05-05 06:54:34.834547'),
(39, 'userapp', '0002_userreciptantmodel_hospital_id', '2022-05-06 06:34:18.573486'),
(40, 'userapp', '0003_userreciptantmodel_status', '2022-05-06 07:45:16.114836'),
(41, 'hospitalapp', '0005_hospitalsendrequestmodel_bloodbank_id', '2022-05-06 10:20:36.193526'),
(42, 'userapp', '0004_userreciptantmodel_bloodbank_id', '2022-05-06 10:20:58.658237'),
(43, 'bloodbankapp', '0003_bloodbanksendrequestmodel_bloodbank_id1_and_more', '2022-05-06 12:01:00.619913'),
(44, 'userapp', '0005_userregistrationmodel_user_status', '2022-05-07 07:55:41.883579'),
(45, 'hospitalapp', '0006_hospitalregistrationmodel_hospital_status', '2022-05-07 07:56:06.599767'),
(46, 'bloodbankapp', '0004_bloodbankregistrationmodel_bloodbank_status', '2022-05-07 07:56:28.384811'),
(47, 'userapp', '0006_ngoregistrationmodel_ngo_upload_profile', '2022-05-08 12:36:06.858125'),
(48, 'userapp', '0007_rename_ngo_upload_profile_ngoregistrationmodel_ngo_upload_image', '2022-05-08 14:39:20.136264'),
(49, 'hospitalapp', '0007_hospitalregistrationmodel_hospital_upload_image', '2022-05-08 14:40:28.606267'),
(50, 'userapp', '0008_userprofilemodel_user_profile_address_and_more', '2022-05-09 07:29:17.254934'),
(51, 'userapp', '0009_rename_ngo_camp_centername_ngocampconductmodel_ngo_camp_name_and_more', '2022-05-09 10:40:32.714401'),
(52, 'userapp', '0010_ngoregistrationmodel_ngo_status', '2022-05-12 05:32:31.297399'),
(53, 'hospitalapp', '0008_rename_status_hospitalsendrequestmodel_hospital_status', '2022-05-12 05:53:14.071305'),
(54, 'hospitalapp', '0009_rename_hospital_status_hospitalregistrationmodel_status', '2022-05-12 05:53:44.516114'),
(55, 'hospitalapp', '0010_rename_status_hospitalregistrationmodel_hospital_status', '2022-05-12 06:24:34.906780'),
(56, 'bloodbankapp', '0005_bloodbankregistrationmodel_upload_bloodbank', '2022-05-14 06:20:39.280235'),
(57, 'userapp', '0011_ngocampconductmodel_bloodbank_id_and_more', '2022-05-14 09:19:14.903859'),
(58, 'userapp', '0012_userreciptantmodel_user_upload_profile', '2022-05-14 11:13:58.688173'),
(59, 'userapp', '0013_rename_user_upload_profile_userreciptantmodel_user_upload', '2022-05-14 11:37:47.306652'),
(60, 'userapp', '0014_remove_userreciptantmodel_user_upload_and_more', '2022-05-14 12:03:36.265090'),
(61, 'bloodbankapp', '0006_bloodbankregistrationmodel_bloodbank_upload_image', '2022-05-14 13:00:37.914657'),
(62, 'bloodbankapp', '0007_alter_bloodbankregistrationmodel_bloodbank_status_and_more', '2022-05-15 08:08:03.519229'),
(63, 'hospitalapp', '0011_alter_hospitalregistrationmodel_hospital_status_and_more', '2022-05-15 08:08:03.528230'),
(64, 'userapp', '0015_alter_ngoregistrationmodel_ngo_status_and_more', '2022-05-15 08:08:03.538236'),
(65, 'bloodbankapp', '0008_alter_bloodbankregistrationmodel_bloodbank_status_and_more', '2022-05-15 08:11:11.206829'),
(66, 'hospitalapp', '0012_alter_hospitalregistrationmodel_hospital_status_and_more', '2022-05-15 08:11:11.287853'),
(67, 'userapp', '0016_alter_ngocampconductmodel_status_and_more', '2022-05-15 08:11:11.448680'),
(68, 'bloodbankapp', '0009_bloodbanksendrequestmodel_b_status', '2022-05-15 09:27:00.982541'),
(69, 'hospitalapp', '0013_hospitalsendrequestmodel_h_status', '2022-05-15 09:27:01.014541'),
(70, 'userapp', '0017_userprofilemodel_p_status_and_more', '2022-05-15 09:27:01.071013'),
(71, 'hospitalapp', '0014_alter_hospitalsendrequestmodel_hospital_id', '2022-05-15 12:46:17.443535'),
(72, 'bloodbankapp', '0010_alter_bloodbanksendrequestmodel_bloodbank_id_and_more', '2022-05-16 05:48:44.886768'),
(73, 'hospitalapp', '0015_alter_hospitalsendrequestmodel_bloodbank_id', '2022-05-16 05:48:44.934152'),
(74, 'userapp', '0018_alter_ngocampconductmodel_bloodbank_id_and_more', '2022-05-16 05:48:45.137502'),
(75, 'userapp', '0019_rename_p_status_userprofilemodel_p_status', '2022-05-16 15:43:53.896604'),
(76, 'userapp', '0020_ngocampconductmodel_n_status', '2022-05-16 16:28:26.562339'),
(77, 'userapp', '0021_alter_userprofilemodel_bloodbank_id_and_more', '2022-05-16 20:23:46.523937'),
(78, 'userapp', '0022_alter_userprofilemodel_bloodbank_id_and_more', '2022-05-16 20:25:48.794500'),
(79, 'hospitalapp', '0002_hospitalsendrequestmodel_hospital_email', '2022-05-17 07:50:53.078750'),
(80, 'bloodbankapp', '0011_bloodbanksendrequestmodel_bloodemail', '2022-05-17 08:59:01.450867'),
(81, 'userapp', '0023_ngocampconductmodel_ngo_email_and_more', '2022-05-17 08:59:58.394571'),
(82, 'userapp', '0024_remove_userprofilemodel_user_email_and_more', '2022-05-17 09:03:06.930507');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('bu11bjo2bwgtxqycvf2anor6bewa78he', 'eyJ1c2VyX2lkIjoxfQ:1niCLH:Tt0tthT6zvxTI61g3E422X8GSQgYjkEIDJCMTi3_VCA', '2022-05-07 09:46:15.815720'),
('l4zw3pyjqapiaq5bdfw1l49j4jvkjq33', 'eyJ1c2VyX2lkIjoxfQ:1niCwd:nm8NvYH1fGRgPHhbfVsMAkacwY2yxkCSG0gr0ewzHbs', '2022-05-07 10:24:51.263947'),
('k1njell5rh4moiot6pxw5ysgpqziyn0r', '.eJyrViotTi2Kz0xRsjLUUcrILy7ILEnMgfGdcvLzU5IS87JhAnnp-RBmLQAuzRLc:1np2Uc:zEZuYDxLZz1lRICA0SyOCoMXIJU5j16Iu3q6IpMXkJo', '2022-05-26 06:40:10.634082'),
('e0mj6oq6utri4qqphi7texkwyu9qqhb0', 'eyJCbG9vZGJhbmtfaWQiOjEsImhvc3BpdGFsX2lkIjoxfQ:1nkJkZ:tt2nv7eYODwFw0mR_KmZDPcFdPWNLS6axytg-Tx-AQQ', '2022-05-13 06:05:07.464498'),
('3wnmzqifthkcr4nuy0fa6vbp1apvut2s', 'eyJ1c2VyX2lkIjoxLCJuZ29faWQiOjF9:1nos6r:yEYggtTy8Pt2T-7vXgLBMu8k5eYl1I-8WDKZPDvciMw', '2022-05-25 19:34:57.146188'),
('f97wurknx5qr0kkvmiuj22mi13bd5xhx', '.eJyrViotTi2Kz0xRsjLUUcpLz4cxM_KLCzJLEnNgfKec_PyUpMS8bIhALQAijhLc:1no1pH:DG123K7_IDupWAFY4TyzRDbCXJ105LQbW46ELTcYjAw', '2022-05-23 11:45:19.854865'),
('vdlutbfkpfq03ktqazxk4uz9nzuxx3jq', '.eJyrVsrILy7ILEnMic9MUbIy1FFyysnPT0lKzMuGCZQWpxbB2Hnp-RBmLQA2LxLc:1np887:x0T99faO_JPyKJXdbDMSePgGBx3c2ogcipF53-gjPf8', '2022-05-26 12:41:19.508497'),
('nknkuksiv6hj404jfa3t4gpg45f18agf', '.eJyrViotTi2Kz0xRsjI01FHKS88Hs010lJxy8vNTkhLzssECRjpKGfnFBZkliTkQBbUALQgTFA:1nqxF1:Y681x-wRvHA0NkAW6EucRnFGCU1qM2sN3D1NOjES1cg', '2022-05-31 13:27:59.819324');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_registration_details`
--

DROP TABLE IF EXISTS `hospital_registration_details`;
CREATE TABLE IF NOT EXISTS `hospital_registration_details` (
  `hospital_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` longtext NOT NULL,
  `hospital_address` longtext NOT NULL,
  `hospital_mobilenumber` bigint(20) NOT NULL,
  `hpospital_email` varchar(50) NOT NULL,
  `hospital_password` varchar(200) NOT NULL,
  `hospital_reg_date` date DEFAULT NULL,
  `hospital_status` varchar(200) NOT NULL,
  `hospital_upload_image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_registration_details`
--

INSERT INTO `hospital_registration_details` (`hospital_id`, `hospital_name`, `hospital_address`, `hospital_mobilenumber`, `hpospital_email`, `hospital_password`, `hospital_reg_date`, `hospital_status`, `hospital_upload_image`) VALUES
(3, 'sunshine', 'hyd', 4788878458, 'sunshine@gmail.com', 'sunshine', '2022-05-14', 'Accepted', '11395828845_058e29d5f7_b_JFFUUOn.jpg'),
(4, 'apollo Hospital', 'shapur', 8686876108, 'abhijakka98@gmail.com', 'cloud123', '2022-05-15', 'Accepted', 'about_3_2INq5fB_1_T1Mpklj.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hospital_send_bloodrequest_details`
--

DROP TABLE IF EXISTS `hospital_send_bloodrequest_details`;
CREATE TABLE IF NOT EXISTS `hospital_send_bloodrequest_details` (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_name` longtext,
  `hospital_mobilenumber` bigint(20) NOT NULL,
  `hospital_bloodgroup_requried` varchar(50) NOT NULL,
  `hospital_blood_requried_ml` varchar(50) NOT NULL,
  `hospital_send_reg_date` date DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `hospital_status` varchar(50) NOT NULL,
  `bloodbank_id` int(11) DEFAULT NULL,
  `h_status` varchar(50) NOT NULL,
  `hospital_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`h_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital_send_bloodrequest_details`
--

INSERT INTO `hospital_send_bloodrequest_details` (`h_id`, `hospital_name`, `hospital_mobilenumber`, `hospital_bloodgroup_requried`, `hospital_blood_requried_ml`, `hospital_send_reg_date`, `hospital_id`, `hospital_status`, `bloodbank_id`, `h_status`, `hospital_email`) VALUES
(8, 'apollo Hospital', 8686876108, 'A-', '450ml', '2022-05-15', 0, 'Rejected', NULL, 'Rejected', NULL),
(9, 'ff', 8686876108, 'B-', '200ml', '2022-05-16', 0, 'bloodbank Is Accepted', 2, 'Accepted', NULL),
(10, 'gbgh', 8686876108, 'B+', '150ml', '2022-05-16', 3, 'sunshine Is Accepted', NULL, 'Accepted', NULL),
(11, 'cc', 8686876108, 'B+', '150ml', '2022-05-16', 4, 'apollo Hospital Is Accepted', 2, 'Accepted', NULL),
(12, 'kamineni ', 8686876108, 'B+', '250ml', '2022-05-16', 4, 'apollo Hospital Is Accepted', NULL, 'Accepted', NULL),
(13, 'ijuij', 8686876108, 'B+', '150ml', '2022-05-16', 4, 'apollo Hospital Is Accepted', NULL, 'Accepted', NULL),
(14, 'hhh', 8686876108, 'B+', '250ml', '2022-05-17', 4, 'apollo Hospital Is Accepted', NULL, 'Accepted', NULL),
(15, 'apollo Hospital', 8686876108, 'AB+', '250ml', '2022-05-17', 0, 'Rejected', NULL, 'Rejected', NULL),
(16, 'apollo Hospital', 8686876108, 'B-', '250ml', '2022-05-17', 0, 'Rejected', NULL, 'Rejected', NULL),
(17, 'apollo Hospital', 8686876108, 'A-', '150ml', '2022-05-17', 0, 'Rejected', NULL, 'Rejected', 'abhijakka98@gmail.com'),
(18, 'apollo Hospital', 8686876108, 'A-', '150ml', '2022-05-17', NULL, 'Pending', NULL, 'Pending', 'abhijakka98@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_conduct_camps_details`
--

DROP TABLE IF EXISTS `ngo_conduct_camps_details`;
CREATE TABLE IF NOT EXISTS `ngo_conduct_camps_details` (
  `ngo_camp_id` int(11) NOT NULL AUTO_INCREMENT,
  `ngo_camp_name` varchar(50) NOT NULL,
  `ngo_camp_location` longtext NOT NULL,
  `ngo_conduct_time` time(6) DEFAULT NULL,
  `ngo_conduct_date` date NOT NULL,
  `ngo_reg_date` date DEFAULT NULL,
  `ngo_camp_contact` varchar(50) DEFAULT NULL,
  `ngo_camp_person_name` varchar(50) DEFAULT NULL,
  `ngo_conduct_end_time` time(6) DEFAULT NULL,
  `bloodbank_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `n_status` varchar(50) NOT NULL,
  `ngo_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ngo_camp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo_conduct_camps_details`
--

INSERT INTO `ngo_conduct_camps_details` (`ngo_camp_id`, `ngo_camp_name`, `ngo_camp_location`, `ngo_conduct_time`, `ngo_conduct_date`, `ngo_reg_date`, `ngo_camp_contact`, `ngo_camp_person_name`, `ngo_conduct_end_time`, `bloodbank_id`, `hospital_id`, `status`, `n_status`, `ngo_email`) VALUES
(12, 'humanity', 'hyderbad', '10:00:00.000000', '2022-05-21', '2022-05-14', '9876543210', 'codebook', '17:00:00.000000', NULL, 4, 'apollo Hospital Is Accepted', 'Accepted', NULL),
(13, 'humanity', 'hyderbad', '00:43:00.000000', '2022-05-11', '2022-05-17', '9505751988', 'yeshwanth', '15:44:00.000000', NULL, 4, 'apollo Hospital Is Accepted', 'Accepted', 'humanity@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ngo_registration_details`
--

DROP TABLE IF EXISTS `ngo_registration_details`;
CREATE TABLE IF NOT EXISTS `ngo_registration_details` (
  `ngo_id` int(11) NOT NULL AUTO_INCREMENT,
  `ngo_name` longtext NOT NULL,
  `ngo_address` longtext NOT NULL,
  `ngo_mobilenumber` bigint(20) NOT NULL,
  `ngo_email` varchar(50) NOT NULL,
  `ngo_password` varchar(200) NOT NULL,
  `ngo_reg_date` date DEFAULT NULL,
  `ngo_upload_image` varchar(50) DEFAULT NULL,
  `ngo_status` varchar(50) NOT NULL,
  PRIMARY KEY (`ngo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ngo_registration_details`
--

INSERT INTO `ngo_registration_details` (`ngo_id`, `ngo_name`, `ngo_address`, `ngo_mobilenumber`, `ngo_email`, `ngo_password`, `ngo_reg_date`, `ngo_upload_image`, `ngo_status`) VALUES
(4, 'humanity', 'hyd', 1234567890, 'humanity@gmail.com', 'humanity', '2022-05-14', 'pexels-nataliya-vaitkevich-5554754_gJESQoi.jpg', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `user_donate_request_details`
--

DROP TABLE IF EXISTS `user_donate_request_details`;
CREATE TABLE IF NOT EXISTS `user_donate_request_details` (
  `user_profile_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_profile_name` longtext NOT NULL,
  `user_profile_bloodgroup` varchar(50) NOT NULL,
  `user_profile_email` varchar(50) NOT NULL,
  `user_profile_mobilenumber` bigint(20) DEFAULT NULL,
  `user_profile_reg_date` date DEFAULT NULL,
  `user_profile_certificate` varchar(50) NOT NULL,
  `user_profile_donated_lastmonth` varchar(50) DEFAULT NULL,
  `user_profile_blood` varchar(50) DEFAULT NULL,
  `user_profile_blood_donated_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `bloodbank_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `user_profile_address` varchar(50) DEFAULT NULL,
  `user_upload` varchar(50) DEFAULT NULL,
  `P_status` varchar(50) NOT NULL,
  PRIMARY KEY (`user_profile_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_donate_request_details`
--

INSERT INTO `user_donate_request_details` (`user_profile_id`, `user_profile_name`, `user_profile_bloodgroup`, `user_profile_email`, `user_profile_mobilenumber`, `user_profile_reg_date`, `user_profile_certificate`, `user_profile_donated_lastmonth`, `user_profile_blood`, `user_profile_blood_donated_date`, `status`, `bloodbank_id`, `hospital_id`, `user_profile_address`, `user_upload`, `P_status`) VALUES
(22, 'lilly', 'AB+', 'lilly@gmail.com', 8686876108, '2022-05-14', 'Yes', 'More than 3 Months', '250ml', '2022-05-19', 'apollo Hospital Is Accepted', 3, 4, 'kukatpally', 'india_img-01.jpg', 'Accepted'),
(21, 'abhi', 'O-', 'abhijakka98@gmail.com', 8686876108, '2022-05-14', 'Yes', 'More than 3 Months', '250ml', '2022-05-26', 'apollo Hospital Is Accepted', 3, 4, 'lb,nagar', 'passport.jpg', 'Accepted'),
(23, 'saddam', 'O+', 'saddam@gmail.com', 8686876108, '2022-05-14', 'Yes', 'Less than 3 Months', NULL, '2022-05-14', 'apollo Hospital Is Accepted', 0, 4, 'chintal', 'Photo_SJqDITq.jpg', 'Accepted'),
(24, 'zakir', 'B-', 'zakir@gmail.com', 8686876108, '2022-05-14', 'Yes', 'More than 3 Months', NULL, '2022-05-14', 'apollo Hospital Is Accepted', 0, 4, 'medak', 'Photo_hHmHPNO.jpg', 'Accepted'),
(27, 'codebook', 'AB+', 'fazalsirprojects@gmail.com', 9876543210, '2022-05-14', 'Yes', 'Less than 3 Months', NULL, '2022-05-14', 'apollo Hospital Is Accepted', 0, 4, 'hyd', 'pexels-karolina-grabowska-6328941_p9DH0RD.jpg', 'Accepted'),
(26, 'abhi', 'B+', 'abhi@gmail.com', 8686876108, '2022-05-14', 'Yes', 'More than 3 Months', NULL, '2022-05-14', 'apollo Hospital Is Accepted', 0, 4, 'jeedimetla', 'image_RF8q2WK.jpg', 'Accepted'),
(28, 'abhi', 'A+', 'abhijakka98@gmail.com', 8686876108, '2022-05-17', '', 'More than 3 Months', NULL, '2022-05-17', 'apollo Hospital Is Accepted', NULL, 4, 'lb,nagar', 'passport.jpg', 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `user_reciptant_request_details`
--

DROP TABLE IF EXISTS `user_reciptant_request_details`;
CREATE TABLE IF NOT EXISTS `user_reciptant_request_details` (
  `user_reciptant_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_reciptant_name` longtext NOT NULL,
  `user_reciptant_email` varchar(50) NOT NULL,
  `user_reciptant_mobilenumber` bigint(20) NOT NULL,
  `user_reciptant_requried_ml` varchar(50) DEFAULT NULL,
  `user_reciptant_requried_bloodgroup` varchar(50) DEFAULT NULL,
  `user_reciptant_reg_date` date DEFAULT NULL,
  `user_id_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `bloodbank_id` int(11) DEFAULT NULL,
  `u_status` varchar(50) NOT NULL,
  PRIMARY KEY (`user_reciptant_id`),
  KEY `user_reciptant_request_details_user_id_id_3135ad0e` (`user_id_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_reciptant_request_details`
--

INSERT INTO `user_reciptant_request_details` (`user_reciptant_id`, `user_reciptant_name`, `user_reciptant_email`, `user_reciptant_mobilenumber`, `user_reciptant_requried_ml`, `user_reciptant_requried_bloodgroup`, `user_reciptant_reg_date`, `user_id_id`, `hospital_id`, `status`, `bloodbank_id`, `u_status`) VALUES
(38, 'zakir', 'zakir@gmail.com', 8686876108, '300ml', 'B+', '2022-05-14', NULL, 4, 'apollo Hospital Is Accepted', 0, 'Accepted'),
(37, 'saddam', 'saddam@gmail.com', 8686876108, '200ml', 'A-', '2022-05-14', NULL, 3, 'bloodbank Is Accepted', 2, 'Accepted'),
(36, 'lilly', 'lilly@gmail.com', 8686876108, '150ml', 'A+', '2022-05-14', NULL, 4, 'bloodbank Is Accepted', 2, 'Accepted'),
(35, 'abhi', 'abhijakka98@gmail.com', 8686876108, '350ml', 'O-', '2022-05-14', NULL, 4, 'bloodbank Is Accepted', 2, 'Accepted'),
(39, 'abhi', 'abhi@gmail.com', 8686876108, '200ml', 'B-', '2022-05-14', NULL, 4, 'apollo Hospital Is Accepted', 0, 'Accepted'),
(40, 'codebook', 'fazalsirprojects@gmail.com', 9876543210, '200ml', 'A+', '2022-05-14', NULL, 4, 'apollo Hospital Is Accepted', 0, 'Accepted'),
(41, 'abhi', 'abhijakka98@gmail.com', 8686876108, '150ml', 'A+', '2022-05-17', NULL, 4, 'apollo Hospital Is Accepted', NULL, 'Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration_details`
--

DROP TABLE IF EXISTS `user_registration_details`;
CREATE TABLE IF NOT EXISTS `user_registration_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` longtext NOT NULL,
  `user_bloodgroup` varchar(50) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_mobilenumber` bigint(20) NOT NULL,
  `user_dateofbirth` date NOT NULL,
  `user_password` varchar(50) NOT NULL,
  `user_reg_date` date DEFAULT NULL,
  `user_gender` varchar(50) DEFAULT NULL,
  `user_upload_profile` varchar(50) DEFAULT NULL,
  `user_status` varchar(200) NOT NULL,
  `user_address` longtext,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_registration_details`
--

INSERT INTO `user_registration_details` (`user_id`, `user_name`, `user_bloodgroup`, `user_email`, `user_mobilenumber`, `user_dateofbirth`, `user_password`, `user_reg_date`, `user_gender`, `user_upload_profile`, `user_status`, `user_address`) VALUES
(17, 'lovely', 'B-', 'lovely@gmail.com', 8686876108, '2022-05-19', 'cloud123', '2022-05-14', 'Female', '11395828845_058e29d5f7_b_LuKV2kz.jpg', 'Accepted', 'balanagar'),
(16, 'lilly', 'O+', 'lilly@gmail.com', 8686876108, '2022-05-19', 'cloud123', '2022-05-14', 'Female', 'india_img-01.jpg', 'Accepted', 'kukatpally'),
(15, 'saddam', 'AB-', 'saddam@gmail.com', 8686876108, '2022-05-25', 'cloud123', '2022-05-14', 'Male', 'Photo_SJqDITq.jpg', 'Accepted', 'chintal'),
(14, 'zakir', 'AB+', 'zakir@gmail.com', 8686876108, '2022-05-18', 'cloud123', '2022-05-14', 'Male', 'Photo_hHmHPNO.jpg', 'Accepted', 'medak'),
(13, 'abhi', 'B+', 'abhi@gmail.com', 8686876108, '2022-06-02', 'cloud123', '2022-05-14', 'Male', 'image_RF8q2WK.jpg', 'Pending', 'jeedimetla'),
(11, 'abhi', 'A+', 'abhijakka98@gmail.com', 8686876108, '2022-06-16', 'cloud123', '2022-05-14', 'Male', 'passport.jpg', 'Accepted', 'lb,nagar'),
(12, 'jhon', 'A-', 'jhon@gmail.com', 8686876108, '2022-05-20', 'cloud123', '2022-05-14', 'Male', '11395828845_058e29d5f7_b.jpg', 'Pending', 'shapur'),
(18, 'galib', 'O-', 'galib@gmail.com', 8686876108, '2022-05-19', 'cloud123', '2022-05-14', 'Male', 'Photo_jN3E9Lw.jpg', 'Accepted', 'chintal'),
(19, 'codebook', 'AB+', 'fazalsirprojects@gmail.com', 9876543210, '2000-01-01', 'codebook', '2022-05-14', 'Male', 'pexels-karolina-grabowska-6328941_p9DH0RD.jpg', 'Accepted', 'hyd');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
