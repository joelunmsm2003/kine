-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 30, 2017 at 10:43 AM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kines`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add cors model', 7, 'add_corsmodel'),
(20, 'Can change cors model', 7, 'change_corsmodel'),
(21, 'Can delete cors model', 7, 'delete_corsmodel'),
(22, 'Can add auth group', 8, 'add_authgroup'),
(23, 'Can change auth group', 8, 'change_authgroup'),
(24, 'Can delete auth group', 8, 'delete_authgroup'),
(25, 'Can add auth group permissions', 9, 'add_authgrouppermissions'),
(26, 'Can change auth group permissions', 9, 'change_authgrouppermissions'),
(27, 'Can delete auth group permissions', 9, 'delete_authgrouppermissions'),
(28, 'Can add auth permission', 10, 'add_authpermission'),
(29, 'Can change auth permission', 10, 'change_authpermission'),
(30, 'Can delete auth permission', 10, 'delete_authpermission'),
(31, 'Can add auth user', 11, 'add_authuser'),
(32, 'Can change auth user', 11, 'change_authuser'),
(33, 'Can delete auth user', 11, 'delete_authuser'),
(34, 'Can add auth user groups', 12, 'add_authusergroups'),
(35, 'Can change auth user groups', 12, 'change_authusergroups'),
(36, 'Can delete auth user groups', 12, 'delete_authusergroups'),
(37, 'Can add auth user user permissions', 13, 'add_authuseruserpermissions'),
(38, 'Can change auth user user permissions', 13, 'change_authuseruserpermissions'),
(39, 'Can delete auth user user permissions', 13, 'delete_authuseruserpermissions'),
(40, 'Can add distrito', 14, 'add_distrito'),
(41, 'Can change distrito', 14, 'change_distrito'),
(42, 'Can delete distrito', 14, 'delete_distrito'),
(43, 'Can add kines', 15, 'add_kines'),
(44, 'Can change kines', 15, 'change_kines'),
(45, 'Can delete kines', 15, 'delete_kines'),
(46, 'Can add django admin log', 16, 'add_djangoadminlog'),
(47, 'Can change django admin log', 16, 'change_djangoadminlog'),
(48, 'Can delete django admin log', 16, 'delete_djangoadminlog'),
(49, 'Can add django content type', 17, 'add_djangocontenttype'),
(50, 'Can change django content type', 17, 'change_djangocontenttype'),
(51, 'Can delete django content type', 17, 'delete_djangocontenttype'),
(52, 'Can add django migrations', 18, 'add_djangomigrations'),
(53, 'Can change django migrations', 18, 'change_djangomigrations'),
(54, 'Can delete django migrations', 18, 'delete_djangomigrations'),
(55, 'Can add django session', 19, 'add_djangosession'),
(56, 'Can change django session', 19, 'change_djangosession'),
(57, 'Can delete django session', 19, 'delete_djangosession');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `distrito` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `phone`, `distrito`) VALUES
(1, '!gagnBQtWw5qlSfqp5AnteyH3kROid9apxGYidM3U', NULL, 0, 'joel', '', '', 'elenaunmsm200344', 0, 1, '2017-01-29 19:56:00.118456', NULL, NULL),
(2, 'pbkdf2_sha256$24000$4O7mfkSOimzk$bqCKq4bBpFvOX3gHsLukgeJR1yTVVIi3fcK2Uky4190=', NULL, 0, '22admin4', '', '', '22admin4', 0, 1, '2017-01-29 19:56:51.138114', NULL, NULL),
(4, 'pbkdf2_sha256$24000$BvFsystcm8BO$+3Gp7+PpgdWVrfuH9fu1qjFOrxy2phtJxf5fM6yyr60=', '2017-01-30 02:06:08.083311', 0, '22admin55', '', '', '22admin55', 0, 1, '2017-01-29 20:01:54.662553', NULL, NULL),
(10, 'pbkdf2_sha256$24000$LuMwHHjAN8NZ$CnlKceUhBqtNyrF1domtM2MEjlu4KFPRpjH8IrkUHhE=', NULL, 0, '222admin', '', '', '222admin', 0, 1, '2017-01-29 20:09:45.273854', NULL, NULL),
(11, 'pbkdf2_sha256$24000$HKsieJEsGPkO$cDeOlgs7nBsEanYGgmPOZNrQP07I3pzpp3VhMWXAxjo=', NULL, 0, '222admin233', '', '', '222admin233', 0, 1, '2017-01-29 20:10:43.857969', NULL, NULL),
(12, 'pbkdf2_sha256$24000$sRedPy3cvwGU$1Q8hDzE3bC2KOZAuOpkkfFEftywzEZDfJv+V53Icms0=', NULL, 0, '22admin555', '', '', '22admin555', 0, 1, '2017-01-29 20:18:18.863906', NULL, NULL),
(13, 'pbkdf2_sha256$24000$37M0SxBn0bIw$n3ZkTPOccw3LxrD+TXbKKVtG4xMgXyaaBg8kZeuKBG8=', NULL, 0, '22admin557', '', '', '22admin557', 0, 1, '2017-01-30 01:52:09.005947', NULL, NULL),
(14, 'pbkdf2_sha256$24000$TOckR2SpS5O4$DPqxsxvy/IOuPWMi8rjKr1yA7Hj46kPiQYG+aKhUWPU=', NULL, 0, '222adminkk', '', '', '222adminkk', 0, 1, '2017-01-30 01:52:27.048719', NULL, NULL),
(15, 'pbkdf2_sha256$24000$RhU06SFj3xkV$0umosUaioVT0impdEsd4Nrmuk3r1NgxZlBSjq0t1Yao=', NULL, 0, 'joelrosas', '', '', 'joelrosas', 0, 1, '2017-01-30 01:54:51.632243', NULL, NULL),
(16, 'pbkdf2_sha256$24000$uMIg7quubBqB$atQ5kKpmCgTVegPTIXl54/76XKiSRUgRSppCH/ck1JM=', '2017-01-30 02:12:16.201105', 0, '22admin55ttt', '', '', '22admin55ttt', 0, 1, '2017-01-30 02:06:32.033382', NULL, NULL),
(17, 'pbkdf2_sha256$24000$yvv1SSdwb7dY$inanfFwj4fx6NXBZvW4jU5Cn+zbIXLrCErdfZ4qAnTI=', '2017-01-30 03:01:56.068971', 0, '22admin5r5ttt', 'Anita', '', '22admin5r5ttt', 0, 1, '2017-01-30 02:12:55.940133', '345678', NULL),
(18, 'pbkdf2_sha256$24000$9zT20zjJHVwW$zYsPTapHzMPKDoTdrzHTDrnUqg75MWnBQmR+nHajhDs=', NULL, 0, '22admin55ttt22', '', '', '22admin55ttt22', 0, 1, '2017-01-30 02:13:31.461424', NULL, NULL),
(19, 'pbkdf2_sha256$24000$zGP6evUd8k3H$kJnKAHgEHvorpP7OtP078YupltWU/0hZVHJ8x5B4PNs=', NULL, 0, '22admin444', '', '', '22admin444', 0, 1, '2017-01-30 02:13:47.970862', NULL, NULL),
(20, 'pbkdf2_sha256$24000$IR72MPTsRsPW$tdl2JNpJJXRfulRUFqBM4DTKJBQQlMcRRTsKQy7Al9s=', NULL, 0, '2992admin5r5ttt', '', '', '2992admin5r5ttt', 0, 1, '2017-01-30 02:16:57.065511', NULL, NULL),
(21, 'pbkdf2_sha256$24000$fYGuZgovpMUI$N51kx0Rh7Pr8YimERIquxR54GsSmi0OS1bSBRk5tTe4=', NULL, 0, '9922admin5r5ttt', '', '', '9922admin5r5ttt', 0, 1, '2017-01-30 02:17:20.244553', NULL, NULL),
(22, 'pbkdf2_sha256$24000$HAcfwL9HJJob$SbtSnhjFUr0x8dtSd0do5rAAKiqL3u6TEIZPhD2raGc=', NULL, 0, '22adm5r5ttt', '', '', '22adm5r5ttt', 0, 1, '2017-01-30 02:17:35.463687', NULL, NULL),
(23, 'pbkdf2_sha256$24000$rIkEcNUNxbnp$Uw9pnX8JF6mP6m+HGWs1R0bGgiaYyvE6/ut3JGyevw8=', NULL, 0, '22adm555in5r5ttt', '', '', '22adm555in5r5ttt', 0, 1, '2017-01-30 02:18:41.655471', NULL, NULL),
(24, 'pbkdf2_sha256$24000$C1lTnrlQuazN$9to/0aCAtxVpaKO/yTOLf8c63ncobbzaaxwONl/XVc8=', NULL, 0, '22admin5r5ll', '', '', '22admin5r5ll', 0, 1, '2017-01-30 02:29:56.848612', NULL, NULL),
(25, 'pbkdf2_sha256$24000$JRzo00vEZBHD$jka1DBJbDG0m5jpEKAvYqVH2KsONGiILhLr+P+hzbTI=', NULL, 0, '222adm', '', '', '222adm', 0, 1, '2017-01-30 02:32:23.773783', NULL, NULL),
(26, 'pbkdf2_sha256$24000$4Bxt0azq4aZG$HPJ5RYINCMLVo1al+ApwaCCDilCHh3WP67oYo1P+Rkc=', '2017-01-30 02:43:36.667399', 0, '22ad999min5r5ttt', '', '', '22ad999min5r5ttt', 0, 1, '2017-01-30 02:32:28.370761', NULL, NULL),
(27, 'pbkdf2_sha256$24000$NU8mfNDOP5Hl$SwVoqKyv0uWQOCVq4Jlm7u2otvTrfcDwPExdJIZWgwc=', NULL, 0, '22rrad999min5r5ttt', '', '', '22rrad999min5r5ttt', 0, 1, '2017-01-30 02:44:17.274077', NULL, NULL),
(28, 'pbkdf2_sha256$24000$j1KhfoqIn0L4$r2RHDHtwQYxk47sQ8MpLrlnUHiOSGQNUJIwpBXe23Yo=', NULL, 0, '22ad999mi', '', '', '22ad999mi', 0, 1, '2017-01-30 02:44:41.481192', NULL, NULL),
(29, 'pbkdf2_sha256$24000$kc33GiQq326Z$fEoeUhWllG7BDN2Dny9j89ulLZWbTOiHdqEIVN0SFMs=', NULL, 0, '22min5r5ttt', '', '', '22min5r5ttt', 0, 1, '2017-01-30 02:48:46.633733', NULL, NULL),
(30, 'pbkdf2_sha256$24000$K4qLi8UU1DWK$YRC4lqreaeY5TxgVJW8NaZWNLM+8kLSLTTf6SfmcZ6k=', NULL, 0, '22admin5tt', '', '', '22admin5tt', 0, 1, '2017-01-30 02:50:46.112180', NULL, NULL),
(31, 'pbkdf2_sha256$24000$R3L4BeO7DJW5$xycdeXtzuWi4QcCtrYEoDswKbP/Ri57aZQZos0zr5UI=', '2017-01-30 12:23:15.618146', 0, 'joelunmsm2003', 'jennyfer', '', 'joelunmsm2003', 0, 1, '2017-01-30 04:32:06.820035', '989511133', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `distrito`
--

CREATE TABLE `distrito` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `distrito`
--

INSERT INTO `distrito` (`id`, `name`) VALUES
(1, 'San Juan de Miraflores'),
(2, 'San Martin de Porres'),
(3, 'Santiago de Surco'),
(4, 'Chorrillos'),
(5, 'Lince'),
(6, 'Villa Maria'),
(7, 'Rimac'),
(8, 'Los Olivos'),
(9, 'Jesus Maria');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'corsheaders', 'corsmodel'),
(6, 'sessions', 'session'),
(8, 'sex', 'authgroup'),
(9, 'sex', 'authgrouppermissions'),
(10, 'sex', 'authpermission'),
(11, 'sex', 'authuser'),
(12, 'sex', 'authusergroups'),
(13, 'sex', 'authuseruserpermissions'),
(14, 'sex', 'distrito'),
(16, 'sex', 'djangoadminlog'),
(17, 'sex', 'djangocontenttype'),
(18, 'sex', 'djangomigrations'),
(19, 'sex', 'djangosession'),
(15, 'sex', 'kines');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-01-27 20:18:29.897900'),
(2, 'auth', '0001_initial', '2017-01-27 20:18:30.718128'),
(3, 'admin', '0001_initial', '2017-01-27 20:18:30.917487'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-01-27 20:18:30.940731'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-01-27 20:18:31.088540'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-01-27 20:18:31.118956'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-01-27 20:18:31.146640'),
(8, 'auth', '0004_alter_user_username_opts', '2017-01-27 20:18:31.166292'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-01-27 20:18:31.237456'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-01-27 20:18:31.242573'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-01-27 20:18:31.256742'),
(12, 'sessions', '0001_initial', '2017-01-27 20:18:31.320778'),
(13, 'sex', '0001_initial', '2017-01-27 20:18:53.306053'),
(14, 'sex', '0002_auto_20170127_1522', '2017-01-27 20:22:54.934331');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('04e97s6js80wgplu5jay3lku0enm9a8d', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:13:12.480522'),
('1agis5u0og5c3kgmry7e14r51xfhtk10', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:18:51.617707'),
('1xsi61relkgi3dxbl8w5j5zult66ou19', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 01:15:39.953320'),
('375o4krmmz5u0ex162dqtol5zve77z15', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:19:16.052943'),
('42dl6ua1kpzs3b18ma7of2mv2la4n8w0', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:28:23.167313'),
('49sih6rr6jke00hv7aisr14ef9g245tk', 'ZjVlNjFkM2RjMzljMDBiODk2MjFhYTJiMWUyM2VkMGQxYzYwM2U2Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImE1NDM2M2E0NTkwNDhkZmU2ZTRlZDc5ZDYwZDgzNDczODliMjMwOGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNiJ9', '2017-02-13 02:12:16.206125'),
('54h5t4w7zd75bfhhbeda1k5bcadzbwgd', 'OGUyZGU3MzA3ODhiYzIwZDE0Zjc2YzMyZDhkODE4MWFkOGJiMTY4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4ZWI0MTU2MjA3ZTUwY2VhMzEwNmU3OTJkZWExZGU5ZWJkMDU5MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9', '2017-02-13 05:16:30.839134'),
('5szroksa8831spatlar17k77lmv7eqje', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:17:32.649194'),
('744sp3ifvjw2y7lfl8qvkyz30bk1f01w', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:47:04.670495'),
('83whx8i710xluheqldy05exsekb1l39w', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:19:04.484704'),
('8i36x9i5q8erdxbkamfpmf0f757j6w7h', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:13:15.323094'),
('9mgmfnd2rsk26rxgda5krusw5ozy6js2', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:17:25.834283'),
('a9upcpclrz7z1xcwhk89wn72o94mh65u', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:15:01.048098'),
('aflmos3poupamrutc2vixb6ai33zibq1', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:14:33.232763'),
('aj0etwngphzj1q5c5mzv2asq46q28kt9', 'OGUyZGU3MzA3ODhiYzIwZDE0Zjc2YzMyZDhkODE4MWFkOGJiMTY4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4ZWI0MTU2MjA3ZTUwY2VhMzEwNmU3OTJkZWExZGU5ZWJkMDU5MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9', '2017-02-13 12:19:42.065105'),
('aru4hr7qlb643ouwbzf3rvlvo8vqg8m6', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 02:06:08.092579'),
('b8s33g7i22b8mgn2ew8077lpo19xgrnn', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:11:20.019465'),
('e2hv10jpxghoqdg3vy1pbaht1ecqrti7', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:41:16.842208'),
('ej6i3rd5eovvqcv1rdp3ekuaiprregit', 'MDk3OWZkYWIwOGMyODJmZDZjMTIyY2I1NGZiZDJiM2RlZGQ0ZDg4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFlZjc2NzAzYmYxNDA1M2FiNmZlNzJlN2E5ZTk2ZjNlYzI2ZmNmMGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9', '2017-02-13 03:01:56.074949'),
('ejfqs474t1cljzl2qw8tvezaqbi3kiwo', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:44:23.114222'),
('enwgfqw6rr0xrxnj9tq5h4duk0mursvt', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 00:59:25.093175'),
('fjd57yinyyyynj2sgpc1wrgmt0jl42jv', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:41:01.096012'),
('g0mdqnw6y9e9p13etrilrgiwkhpupf3r', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:17:29.910199'),
('gf67ps951k5jxzsfaq9fz0423kip8nke', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:41:07.241727'),
('hlhwedaouatnr7ns7cmjwp6eak5m449y', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 21:47:30.820471'),
('idiv3r07gd4vo365fvq1c0p44bn5fk4j', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:33:18.526269'),
('ig875fo79irsutci8wl3ads9kvar8rqz', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 01:29:34.538000'),
('iwh1dwatoza7aqjdrwblmx7f41xqgzer', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 01:01:28.551184'),
('j3x1ya2hdm10zp9nw11n5fog533hjzhk', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:25:01.297929'),
('jker9exm3vxbrr84u2dz2yhmp3kq8nbx', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:17:48.957528'),
('js4yjxpt20loyre8sha9az9y5lqpmrps', 'OGUyZGU3MzA3ODhiYzIwZDE0Zjc2YzMyZDhkODE4MWFkOGJiMTY4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4ZWI0MTU2MjA3ZTUwY2VhMzEwNmU3OTJkZWExZGU5ZWJkMDU5MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9', '2017-02-13 05:11:52.734966'),
('k2b5go3yz0dgeqcxt0oouuxmk3lq8181', 'OGUyZGU3MzA3ODhiYzIwZDE0Zjc2YzMyZDhkODE4MWFkOGJiMTY4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4ZWI0MTU2MjA3ZTUwY2VhMzEwNmU3OTJkZWExZGU5ZWJkMDU5MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9', '2017-02-13 12:23:15.624777'),
('la9dxiuj0hcx0f1tp5nu16dex4puozyf', 'NTE5NDUzMmFiMzIzODcxZDA2MTBmOWM0YzRiOWNiZWM1ZDRjYzFkYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImZjOTcyMjcwMGUxYzE5MzlmNGM2ZjM1ZWQ4YTdmOTgyNzMyMTA1YmQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyNiJ9', '2017-02-13 02:43:36.673361'),
('lgk6offtlfghpec2k6w5bx7sdum8q0sk', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 01:01:02.891744'),
('lysu46kq24196moou2xwe38byhg2dop2', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:18:55.104210'),
('mmt2p10rh1wwvcjxtf6ugoivnnqqwtva', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 01:43:11.653361'),
('myaz2k22368s8ixqpdq9l4kpxzjuu3xt', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-13 01:00:57.119302'),
('nhlh66nt443bx3a4g1d1ra924ptm8zeo', 'OGUyZGU3MzA3ODhiYzIwZDE0Zjc2YzMyZDhkODE4MWFkOGJiMTY4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4ZWI0MTU2MjA3ZTUwY2VhMzEwNmU3OTJkZWExZGU5ZWJkMDU5MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9', '2017-02-13 05:04:07.132831'),
('q3bsbmyimzn2g81x6y7cv8jbck1khyz6', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:27:41.350990'),
('qk2gkqom2grkhv8fmppsqzu9xoztm2pf', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:19:25.704236'),
('qp343x236gtj9ogf9kh4xsmr5i4mm2wp', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:19:12.401015'),
('rqyq58sv7gkcff4h657hh61cb7rjsooh', 'OGUyZGU3MzA3ODhiYzIwZDE0Zjc2YzMyZDhkODE4MWFkOGJiMTY4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4ZWI0MTU2MjA3ZTUwY2VhMzEwNmU3OTJkZWExZGU5ZWJkMDU5MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9', '2017-02-13 05:18:07.214501'),
('rua0uf5b2ouru9jm5xqvxv9xi4h36yiz', 'MDk3OWZkYWIwOGMyODJmZDZjMTIyY2I1NGZiZDJiM2RlZGQ0ZDg4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFlZjc2NzAzYmYxNDA1M2FiNmZlNzJlN2E5ZTk2ZjNlYzI2ZmNmMGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9', '2017-02-13 02:51:40.054305'),
('trf5izsvq62fz6uuxo42tw3slinikapc', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:22:08.838763'),
('tux8fscrrovzsf36u8q2lkrn55k91v2g', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:13:08.021634'),
('unj3wzuc7cpnf0ugr1cd53bkadhmne94', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:27:35.991561'),
('uuwbwpg973ysfz5c7erk0dwb65a9edhy', 'OGUyZGU3MzA3ODhiYzIwZDE0Zjc2YzMyZDhkODE4MWFkOGJiMTY4Mjp7Il9hdXRoX3VzZXJfaGFzaCI6Ijc4ZWI0MTU2MjA3ZTUwY2VhMzEwNmU3OTJkZWExZGU5ZWJkMDU5MjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzMSJ9', '2017-02-13 04:58:02.853390'),
('w3xg6dhyz9wu5qi2c9pakrjaqua7qg9l', 'MDk3OWZkYWIwOGMyODJmZDZjMTIyY2I1NGZiZDJiM2RlZGQ0ZDg4YTp7Il9hdXRoX3VzZXJfaGFzaCI6ImFlZjc2NzAzYmYxNDA1M2FiNmZlNzJlN2E5ZTk2ZjNlYzI2ZmNmMGIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxNyJ9', '2017-02-13 02:29:45.680015'),
('wnrtuymcceihk1qhxmw84vdf6zvyrrb2', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 20:17:19.559795'),
('ygtys37ldehq6aaougclepv8m278uye2', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:41:09.666671'),
('zg89u79m3tgj7aoe9gb34vzeip0d4euq', 'ZTBlYTU3OTFiOTExMGJlNjVjZjNhYzliMmZiM2JmYmY5ZGFmN2M1MTp7Il9hdXRoX3VzZXJfaGFzaCI6IjQzOWJkMjIxNjliMDNiNzRjNTZkZGJhNTEyNWE1NzJhNzY4MGRkN2YiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI0In0=', '2017-02-12 22:28:01.988701');

-- --------------------------------------------------------

--
-- Table structure for table `kines`
--

CREATE TABLE `kines` (
  `id` int(123) NOT NULL,
  `phone` varchar(123) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` varchar(10234) DEFAULT NULL,
  `direccion` varchar(234) DEFAULT NULL,
  `distrito` int(123) DEFAULT NULL,
  `photo` varchar(10000) DEFAULT NULL,
  `precio` int(100) DEFAULT NULL,
  `edad` int(100) DEFAULT NULL,
  `user` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kines`
--

INSERT INTO `kines` (`id`, `phone`, `name`, `description`, `direccion`, `distrito`, `photo`, `precio`, `edad`, `user`) VALUES
(24, '960 732 801', 'LUCIANA', 'KIENESIOLOGA LUCIANA soy nueva en esto. si eres de las personas que recure por este lugar ¡¡¡ jamas me viste x aca!!!! será la primera ves q me veas….960 732 801…. soy jovencita 19 añitos y desde hoy brindo mi compañía intima a caballeros EDUCADOS y solventes..que deseen tener relaciones con una NENITA.. COMO YO me podrás hacer el amor todas las veces que quieras TE HARE UN RICO SEXO ORAL Y POSES Q ME PIDAS, trato de enamorados me dejare besar todita.. me encuentras x el distrito de san juan de miraflores, tambien hago salidas a hoteles cercanos al METRO DE ALIPIO PONCE…SI DESEAS PUEDES OSPEDARTE Y VOY A TU ABITACION. MILENIUN ,, DELIRIOS,SHELTON,MERIDIAN te espero y la pasaremos una hora genial ¡!!!', NULL, 1, 'http://www.kinehot.net/adpics/588e68a5f26907d1114502d19.jpg', 100, NULL, 31),
(25, '947134532', 'Martina', 'Hola, soy Martína, tengo 18 años y carita bonita. Me animo a dar mi compañía solo por este mes en hoteles de Surco, cerca a la Bolichera. Mis fotos son reales y tengo vídeo para comprobarlo, escríbeme al whatsapp 947134532 para mandarte mi vídeo. Seré tierna y cariñosa contigo,te trataré como a mi enamorado , solo sé bueno conmigo ya que soy nueva en esto. Te repito mi Wtsp para poder vernos 947134532. Te espero bebé', NULL, 3, 'http://www.kinehot.net/adpics/588ac8c68bae527f724953b3b.jpg', 0, NULL, 31),
(26, '947134532', 'CAMILA', 'HOLITAS TENGO 19 AÑITOS UNA MODELITO MIDO 163 CUERPO CONTORNEADITO DE CARITA ANGELICAL DE CUERPO SUVECITO DURITOS TODO PESONES ROSADITOS Y CULITO BIEN FORMADO CONCHITA JUGOSITA Y ESTRECHITA INSACIABLE EN LA CAMA SOLO HOSPEDATE EN CUALKIER HOSTAL DETRAS DELA DISCO SANDER ......HOTEL IMPERIAL CUSCO HILTON O RITZ.........ME LLAMO CAMILA..................FOTOS REALES .......SIN COMPROMISO...120 SOLES LA HORA AMOR Y 80 SOLES LA MEDIA HORA TODO CON PROTECCION SOY BIEN LIMPIA DE CASA RECIEN ESTOY HACIENDO ESTO ESPERO ME TRATES BIEN COMO YO A TI.... DOY MI COLITA LO HABLAMOS SI??....LLAMAR AL 997241951 ESTARE ATENTA A TU LLAMADITA DE 10 A8 DE LA NOCHE', NULL, 1, 'http://www.kinehot.net/adpics/58880044f24f199bfa5d8a25e.jpg', 120, NULL, 31),
(27, '967163000', 'YULISSA', 'HOLA, SOY YULISSA, TENGO 18 AÑITOS, SOY DE BUEN DERRIER Y DE CARA BONITA, VOY AL GYM Y ANFITRIONO LOS FINES DE SEMANA, APROVECHARÉ MIS VACACIONES DE FIN DE CICLO Y BRINDARÉ MIS SERVICIOS COMO DAMA DE COMPAÑIA A CABALLEROS SOLVENTES EN LOS OLIVOS. PUEDES ESCRIBIRME PARA PODER VERNOS AL WHATSAPP 967-163-000 TE VOY A GUSTAR, SOY LINDA,, TIERNA Y CARIÑOSA. ME GRABÉ UN VÍDEO PARA QUE VEAS QUE 100% SOY REAL, LA MISMA DE LAS FOTOS TAMBIÉM PUEDES LLAMARME AL', NULL, 8, 'http://www.kinehot.net/adpics/5887fc8ab5a9e4c1dbfea97e6.jpg', 0, NULL, 31),
(28, '959002358', 'KARINA', 'mi nombre es karina, estudiante,( 959002358 ) muy femenina y complaciente; lo cual te brindare toda mi sensualidad y exuberancia sin limites en un relax placentero, como si fueras mi pareja. Atiendo a caballeros exigentes,( el servicio que te brindare ….oral ,vaginal y todas las poses que desees y las veces que puedas durante una hora completa ) muy discreta. Tengo 20 años Voy a hostales.lo mas cercano a METRO DE ALIPIO PONCE . EN SJM. o de lo contrario nos vemos primero….. Atrévete a experimentar una atención diferente.', NULL, 1, 'http://www.kinehot.net/adpics/588e663fa5ba26e829290a0a0.jpg', 100, NULL, 31),
(29, '959002358', 'KHALESSI', 'Hola soy una linda CHARAPITA recien llegadita en busca de una ayuda económica para estudiar,, estoy dispuesta a tener intimidad contigo en el hotel de LINCE que te hospedes....\n\n\n\nsolo te pido que seas muy cariñoso porfavor,,, será la primera vez que hare esto y me gustaria que sea algo muy bonito para ambos...\n\n\n\nllamame las 24 horas....\n\n\n\nen tu tiempo podras HACERME EL AMOR TODAS LAS VECES QUE QUIERAS.... 3, 4, 5 veces... pero me ayudas porfa...\n\n\nTambien te hago GARGANTA PROFUNDA y si deseas PUEDES VENIRTE EN MIS PECHOS....\n\n\n\n100 soles x una hora', NULL, 5, 'https://www.kinesiologasenlima.com/ver.php?src=b-1182383-924-359-853-khalessi-charapita-de-18-anitos-a-hoteles-de-lince-las-24-horas-1.jpg', 100, NULL, 31),
(30, '991641723', 'Karim', 'Hola, soy KARIM una chica muy sensual, divertida y cariñosa. Los que me conocen aseguran que mi sensualidad y mi carácter marcan la diferencia en los encuentros íntimos. Mi cuerpo es una invitación a los placeres, con curvas exquisitas, piel sedosa que te encantarán al sólo tocarme. Soy una kine muy completa. 991641723 Trato de enamorados , oral vaginal , poses las que me pidas ! foto real !! HOTELES CERCA AL MOLL DEL SUR Y METRO DE ALIPIO desde las 11 am - 9PM ANTES NOS VEMOS Y JUNTOS NOS VAMOS AL HOTEL , solo llamame y coordinamos nuestro encuentro .. besitos .. No agencia', NULL, 1, 'http://www.kinehot.net/adpics/5888e5f088354d27d2000e3f9.jpg', 0, NULL, 31),
(31, '999753402 - 2812048', 'Grabiela', 'Hola mi amor me llamo GABRIELA - 999753402 - 2812048, soy una mujer con muchas ganas de sexo, estoy dispuesta a hacerte de todo en la cama a cambio de tu ayuda económica 50 soles la hora, seré tuya mi amor, búscame y te daré el mejor relax y buenos MOMENTOS cuando gustes. Soy agradable, me gusta que los hombres sean insacibles en la cama, No te limites a tus pasiones, mi trato es de pareja, y hago todas las fantasías que quieras. te hago garganta profunda un rico oral peladito sin preservativo, sexo anal especial y puedes venirte en mi BOCA, todo con cariño y muy ardiente. Juntos disfrutaremos rico , te!! espero!!. precio especial mi amor ya que estoy preñada, solo salidas por VMT, llámame, te espero desnudita o con lencería, con las piernas abiertas mi amor, te gustará mi conchita mojadita. te lo aseguro. Llámame… HAGO DE TODO FULL SEXO FULL FANTASÍAS Placer Garantizado!! LLAMA NADA DE APUROS!!. LLAMA AHORA MISMO PARA QUE ME DES TODA LA LECHE .TENGO MUCHO FRIO Y NECESITO CON URGENCIA UNA RICA VERGA DENTRO DE MI CONCHITA MI CUERPO ESPERA DE TUS CARICIAS Y BESOS MI AMOR. SI NO TE CONTESTO ES POR QUE ESTOY ATENDIENDO MI AMOR OTROS ME ESTAN LLENANDO LA CONCHITA DE LECHE SOLO FALTAS TU!!. INSISTE HASTA QUE TE CONTESTE Y PUEDA ATENDERTE. VEN Y CACHAME MUY DURO HAZME GOZAR SERE TU PERRA LOCA!! DE LUNES A DOMINGO LAS 24 HORAS!!', NULL, 6, 'http://www.kinehot.net/adpics/57cc51347d5ca388f38e43e42.jpg', 50, NULL, 31),
(32, '989511133', 'jennyfer', 'Mi nombre es jennyfer … mi número es 989511133—s/100 por una hora completa. soy muy dulce, simpática , Jovencita muy bonita de piel suave y tersa, con excelentes medidas. Poseo una seducción a flor de piel, muy femenina y apasionada a la vez. Estoy dispuesta a que nuestro momento sea muy agradable y placentero, llámame y vive tu mejor experiencia conmigo---- metro de Alipio Ponce en san juan de Miraflores-----', NULL, 1, 'http://www.kinehot.net/adpics/5745d6ee593363cb2f550cd02.jpg', 100, NULL, 31);

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `distrito`
--
ALTER TABLE `distrito`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `kines`
--
ALTER TABLE `kines`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `distrito`
--
ALTER TABLE `distrito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `kines`
--
ALTER TABLE `kines`
  MODIFY `id` int(123) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
