-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2022 at 06:17 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test5`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_account`
--

CREATE TABLE `accounts_account` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superadmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_account`
--

INSERT INTO `accounts_account` (`id`, `password`, `first_name`, `last_name`, `username`, `email`, `phone_number`, `date_joined`, `last_login`, `is_admin`, `is_staff`, `is_active`, `is_superadmin`) VALUES
(1, 'pbkdf2_sha256$320000$vV2fKRbaxWAhz0KvREKWOz$/C97tHoo7fPUdkuDzBekPwwkPYYd8bCWSqSniK7W8ic=', 'k', 'k', 'k', 'k@gmail.com', '123', '2022-05-10 14:27:27.877387', '2022-05-17 18:33:39.202174', 1, 1, 1, 1),
(2, 'pbkdf2_sha256$320000$RPs7DZhCuwTgKdDnxTL795$uRtkfTckOvbc8aAYI6gusrR/ljJfLHLP1Qpxo6fxntw=', 'b', 'b', 'b', 'b@gmail.com', '123', '2022-05-10 17:54:42.939163', '2022-05-17 17:46:33.731276', 1, 1, 1, 1),
(3, 'pbkdf2_sha256$320000$SdNOtsSEKQUIQTFbn3EMhW$0zugX2JZg992/3Y7XfZ29tX+tUIabxlcis+yJlB6jjw=', 'a', 'a', 'a', 'a@gmail.com', '123', '2022-05-12 14:43:47.432701', '2022-05-18 16:13:29.379016', 1, 1, 1, 1),
(4, 'pbkdf2_sha256$320000$7U2mr1Xr7uUnqdeGDtrhZx$Sa3xJONZl2nKQaW6RoSo9QPDGQe3Bc+Wlvwh2Iw2eKI=', 'c', 'c', 'c', 'c@gmail.com', '112', '2022-05-17 16:09:46.341227', '2022-05-17 16:10:34.696276', 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add category', 6, 'add_category'),
(22, 'Can change category', 6, 'change_category'),
(23, 'Can delete category', 6, 'delete_category'),
(24, 'Can view category', 6, 'view_category'),
(25, 'Can add product', 7, 'add_product'),
(26, 'Can change product', 7, 'change_product'),
(27, 'Can delete product', 7, 'delete_product'),
(28, 'Can view product', 7, 'view_product'),
(29, 'Can add review rating', 8, 'add_reviewrating'),
(30, 'Can change review rating', 8, 'change_reviewrating'),
(31, 'Can delete review rating', 8, 'delete_reviewrating'),
(32, 'Can view review rating', 8, 'view_reviewrating'),
(33, 'Can add variation', 9, 'add_variation'),
(34, 'Can change variation', 9, 'change_variation'),
(35, 'Can delete variation', 9, 'delete_variation'),
(36, 'Can view variation', 9, 'view_variation'),
(37, 'Can add cart', 10, 'add_cart'),
(38, 'Can change cart', 10, 'change_cart'),
(39, 'Can delete cart', 10, 'delete_cart'),
(40, 'Can view cart', 10, 'view_cart'),
(41, 'Can add cart item', 11, 'add_cartitem'),
(42, 'Can change cart item', 11, 'change_cartitem'),
(43, 'Can delete cart item', 11, 'delete_cartitem'),
(44, 'Can view cart item', 11, 'view_cartitem'),
(45, 'Can add account', 12, 'add_account'),
(46, 'Can change account', 12, 'change_account'),
(47, 'Can delete account', 12, 'delete_account'),
(48, 'Can view account', 12, 'view_account'),
(49, 'Can add order', 13, 'add_order'),
(50, 'Can change order', 13, 'change_order'),
(51, 'Can delete order', 13, 'delete_order'),
(52, 'Can view order', 13, 'view_order'),
(53, 'Can add order product', 14, 'add_orderproduct'),
(54, 'Can change order product', 14, 'change_orderproduct'),
(55, 'Can delete order product', 14, 'delete_orderproduct'),
(56, 'Can view order product', 14, 'view_orderproduct'),
(57, 'Can add payment', 15, 'add_payment'),
(58, 'Can change payment', 15, 'change_payment'),
(59, 'Can delete payment', 15, 'delete_payment'),
(60, 'Can view payment', 15, 'view_payment');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` bigint(20) NOT NULL,
  `cart_id` varchar(250) NOT NULL,
  `date_added` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts_cart`
--

INSERT INTO `carts_cart` (`id`, `cart_id`, `date_added`) VALUES
(64, '2ccvsp6jo4njxkrvarujmoxmkkuby0jh', '2022-05-18 09:15:12.853049'),
(65, 'erzlg5pllrev2byxaarail5c66vir69v', '2022-05-18 09:39:20.726754');

-- --------------------------------------------------------

--
-- Table structure for table `carts_cartitem`
--

CREATE TABLE `carts_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `cart_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_category`
--

CREATE TABLE `category_category` (
  `id` bigint(20) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_category`
--

INSERT INTO `category_category` (`id`, `category_name`, `slug`, `description`) VALUES
(1, 'Hành động', 'hanh-dong', 'Sách hành động'),
(3, 'Trinh thám', 'trinh-tham', ''),
(4, 'Đời thường', 'doi-thuong', ''),
(5, 'Kinh dị', 'kinh-di', ''),
(6, 'Viễn tưởng', 'vien-tuong', ''),
(7, 'Tình cảm', 'tinh-cam', '');

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-05-10 14:35:02.117123', '1', 'Hành động', 1, '[{\"added\": {}}]', 6, 1),
(2, '2022-05-10 14:38:14.408461', '1', 'Ảo ảnh và tro tàn', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-05-10 15:09:03.097888', '1', 'Ảo ảnh và tro tàn', 3, '', 7, 1),
(4, '2022-05-10 15:09:57.769843', '2', 'Ảo ảnh và tro tàn', 1, '[{\"added\": {}}]', 7, 1),
(5, '2022-05-10 15:11:06.780460', '2', 'Ảo ảnh và tro tàn', 3, '', 7, 1),
(6, '2022-05-10 15:15:18.850720', '2', 'Light Novel', 1, '[{\"added\": {}}]', 6, 1),
(7, '2022-05-10 15:16:32.027444', '3', 'GRIMGAR - ẢO ẢNH VÀ TRO TÀN', 1, '[{\"added\": {}}]', 7, 1),
(8, '2022-05-10 15:19:11.934018', '3', 'Trinh thám', 1, '[{\"added\": {}}]', 6, 1),
(9, '2022-05-10 15:19:14.701729', '4', 'THÁM TỬ LỪNG DANH CONAN - HỒ SƠ TUYỆT MẬT - SHUICHI AKAI & TORU AMURO', 1, '[{\"added\": {}}]', 7, 1),
(10, '2022-05-10 15:22:34.559119', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[{\"changed\": {\"fields\": [\"Product name\", \"Price\"]}}]', 7, 1),
(11, '2022-05-10 15:22:56.042216', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[{\"changed\": {\"fields\": [\"Price\"]}}]', 7, 1),
(12, '2022-05-10 15:23:08.785085', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(13, '2022-05-10 15:23:23.349674', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(14, '2022-05-10 15:23:29.665808', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(15, '2022-05-10 15:23:56.387864', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[]', 7, 1),
(16, '2022-05-10 15:23:57.945913', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[]', 7, 1),
(17, '2022-05-10 15:24:14.680404', '3', 'GRIMGAR - Ảo ảnh và tro tàn', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 7, 1),
(18, '2022-05-10 15:25:37.793994', '4', 'Đời thường', 1, '[{\"added\": {}}]', 6, 1),
(19, '2022-05-10 15:25:40.438732', '5', 'Hội chứng tuổi thanh xuân', 1, '[{\"added\": {}}]', 7, 1),
(20, '2022-05-10 15:32:29.323668', '5', 'Kinh dị', 1, '[{\"added\": {}}]', 6, 1),
(21, '2022-05-10 15:32:31.305696', '6', 'Another', 1, '[{\"added\": {}}]', 7, 1),
(22, '2022-05-10 15:35:46.222861', '6', 'Viễn tưởng', 1, '[{\"added\": {}}]', 6, 1),
(23, '2022-05-10 15:35:48.201084', '7', 'Kẻ Dị Biệt Tại Trường Học Phép Thuật', 1, '[{\"added\": {}}]', 7, 1),
(24, '2022-05-10 15:37:22.708557', '8', 'Sword Art Online', 1, '[{\"added\": {}}]', 7, 1),
(25, '2022-05-10 15:40:23.063286', '9', 'Cuốn sách của sự kết thúc', 1, '[{\"added\": {}}]', 7, 1),
(26, '2022-05-10 15:40:57.253099', '9', 'Cuốn Sách Của Sự Kết Thúc', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 7, 1),
(27, '2022-05-10 15:41:11.942212', '5', 'Hội Chứng Tuổi Thanh Xuân', 2, '[{\"changed\": {\"fields\": [\"Product name\"]}}]', 7, 1),
(28, '2022-05-10 15:44:06.037767', '10', 'Re:zero - Bắt Đầu Lại Ở Thế Giới Khác', 1, '[{\"added\": {}}]', 7, 1),
(29, '2022-05-10 15:46:16.972866', '7', 'Tình cảm', 1, '[{\"added\": {}}]', 6, 1),
(30, '2022-05-10 15:46:19.964224', '11', 'Your Name', 1, '[{\"added\": {}}]', 7, 1),
(31, '2022-05-10 15:49:16.328535', '12', 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Là Sai Lầm', 1, '[{\"added\": {}}]', 7, 1),
(32, '2022-05-10 16:06:04.948433', '2', 'Light Novel', 3, '', 6, 1),
(33, '2022-05-10 17:14:00.152796', '7', 'ilzbrbbkjrki0se0tbougwqt73kk9ma0', 3, '', 10, 1),
(34, '2022-05-10 17:14:00.298220', '6', 'x08bzam9x981ds6spgoe5rxv7lhra59g', 3, '', 10, 1),
(35, '2022-05-10 17:14:00.325833', '5', 'ctzkbn9xvdelysuez0mlah8cnd9is95d', 3, '', 10, 1),
(36, '2022-05-10 17:14:00.421195', '4', 'ctzkbn9xvdelysuez0mlah8cnd9is95d', 3, '', 10, 1),
(37, '2022-05-10 17:14:00.460479', '3', '698lj146v0qoj6mwaoxwd14u014soojr', 3, '', 10, 1),
(38, '2022-05-10 17:14:00.476808', '2', 'ppqheeh74ad1i0iyp3h236dgdvz5a9w9', 3, '', 10, 1),
(39, '2022-05-10 17:14:00.505091', '1', 'jiqlrruupnegl6zv55u4k6a0vs49lju5', 3, '', 10, 1),
(40, '2022-05-10 17:14:12.559213', '1', 'k', 3, '', 13, 1),
(41, '2022-05-10 17:14:12.575804', '2', 'k', 3, '', 13, 1),
(42, '2022-05-10 17:14:12.604108', '3', 'k', 3, '', 13, 1),
(43, '2022-05-10 17:14:12.643148', '4', 'k', 3, '', 13, 1),
(44, '2022-05-10 17:14:12.681720', '5', 'k', 3, '', 13, 1),
(45, '2022-05-10 17:14:12.721736', '6', 'k', 3, '', 13, 1),
(46, '2022-05-10 17:14:12.838856', '7', 'k', 3, '', 13, 1),
(47, '2022-05-10 17:14:12.933541', '8', 'k', 3, '', 13, 1),
(48, '2022-05-10 17:14:12.973284', '10', 'k', 3, '', 13, 1),
(49, '2022-05-10 17:14:13.012120', '11', 'k', 3, '', 13, 1),
(50, '2022-05-10 17:14:13.051161', '9', 'k', 3, '', 13, 1),
(51, '2022-05-10 17:15:34.018873', '1', 'Hay', 3, '', 8, 1),
(52, '2022-05-11 17:14:52.419944', '27', 'CartItem object (27)', 3, '', 11, 2),
(53, '2022-05-11 17:14:52.422703', '26', 'CartItem object (26)', 3, '', 11, 2),
(54, '2022-05-11 17:14:52.425224', '23', 'CartItem object (23)', 3, '', 11, 2),
(55, '2022-05-11 17:14:52.428095', '22', 'CartItem object (22)', 3, '', 11, 2),
(56, '2022-05-11 17:14:52.431737', '12', 'CartItem object (12)', 3, '', 11, 2),
(57, '2022-05-11 17:15:03.512734', '17', 'c5a3omfmox1xv266epy6xp6ntjccqpoh', 3, '', 10, 2),
(58, '2022-05-11 17:15:03.516653', '16', '7rvodyhccqqhvfxoa6d72r694wagc3qz', 3, '', 10, 2),
(59, '2022-05-11 17:15:03.518681', '15', 'gng14mzqbgjbwam7vbgyr2it3x6005l8', 3, '', 10, 2),
(60, '2022-05-11 17:15:03.525803', '14', '63f3dvar1qmhn7vj8wyx3rft4aoignb4', 3, '', 10, 2),
(61, '2022-05-11 17:15:03.528124', '13', 'fsywkuus2ldm8ojf2x87msi8m5fv700g', 3, '', 10, 2),
(62, '2022-05-11 17:15:03.530623', '12', '9akwd5sgsprd4259dpxrgzyzjcvf39z2', 3, '', 10, 2),
(63, '2022-05-11 17:15:03.532794', '11', 'l11pkx1dym21ma8rtxfpos9opszfr541', 3, '', 10, 2),
(64, '2022-05-11 17:15:03.535647', '10', 'kzaus0pulotq7li5rkh9u4ntt917jisu', 3, '', 10, 2),
(65, '2022-05-11 17:15:03.538639', '9', 'p24wnwrkk13168mqdg41vjdxsyh7qkl5', 3, '', 10, 2),
(66, '2022-05-11 17:15:03.542640', '8', 'ilzbrbbkjrki0se0tbougwqt73kk9ma0', 3, '', 10, 2),
(67, '2022-05-11 17:15:10.224694', '17', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 2),
(68, '2022-05-11 17:15:10.229007', '16', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 2),
(69, '2022-05-11 17:15:10.231308', '15', 'Re:zero - Bắt Đầu Lại Ở Thế Giới Khác', 3, '', 14, 2),
(70, '2022-05-11 17:15:10.233446', '14', 'GRIMGAR - Ảo ảnh và tro tàn', 3, '', 14, 2),
(71, '2022-05-11 17:15:10.236270', '13', 'GRIMGAR - Ảo ảnh và tro tàn', 3, '', 14, 2),
(72, '2022-05-11 17:15:10.238277', '12', 'Hội Chứng Tuổi Thanh Xuân', 3, '', 14, 2),
(73, '2022-05-11 17:15:10.240811', '11', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 2),
(74, '2022-05-11 17:15:10.244383', '10', 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Là Sai Lầm', 3, '', 14, 2),
(75, '2022-05-11 17:15:10.246907', '9', 'GRIMGAR - Ảo ảnh và tro tàn', 3, '', 14, 2),
(76, '2022-05-11 17:15:10.248703', '8', 'GRIMGAR - Ảo ảnh và tro tàn', 3, '', 14, 2),
(77, '2022-05-11 17:15:17.903329', '12', 'k', 3, '', 13, 2),
(78, '2022-05-11 17:15:17.907168', '13', 'b', 3, '', 13, 2),
(79, '2022-05-11 17:15:17.909753', '14', 'b', 3, '', 13, 2),
(80, '2022-05-11 17:15:17.912114', '15', 'Hoàng', 3, '', 13, 2),
(81, '2022-05-11 17:15:17.914413', '16', 'b', 3, '', 13, 2),
(82, '2022-05-11 17:15:17.917445', '17', 'b', 3, '', 13, 2),
(83, '2022-05-11 17:15:17.920052', '18', 'b', 3, '', 13, 2),
(84, '2022-05-11 17:15:17.922911', '19', 'b', 3, '', 13, 2),
(85, '2022-05-11 17:15:17.925281', '20', 'b', 3, '', 13, 2),
(86, '2022-05-11 17:15:25.533973', '14', '6bbb8daa-e792-4ce3-93e3-6cd36a5f314b', 3, '', 15, 2),
(87, '2022-05-11 17:15:25.536976', '13', 'b678f88c-a95f-4098-8616-325c5fff1c9c', 3, '', 15, 2),
(88, '2022-05-11 17:15:25.539264', '12', '8e004116-3ee3-479b-9759-7e84abd62995', 3, '', 15, 2),
(89, '2022-05-11 17:15:25.541133', '11', '1831b2f2-4f6b-436b-9f84-6c9575ea6e72', 3, '', 15, 2),
(90, '2022-05-11 17:15:25.543232', '10', '6312245c-9f33-4fbf-bd65-0f0e4ef2f120', 3, '', 15, 2),
(91, '2022-05-11 17:15:25.545696', '9', 'adbc24f2-1f00-4719-bab4-dd9ca51db451', 3, '', 15, 2),
(92, '2022-05-11 17:15:25.548358', '8', '0ec3d0ef-6834-41a1-83c8-73688d026f96', 3, '', 15, 2),
(93, '2022-05-11 17:15:25.550648', '7', '755a7c0e-296c-452e-9ae8-2f5a3b369844', 3, '', 15, 2),
(94, '2022-05-11 17:15:25.552792', '6', '0dbd2a97-8d48-47a0-a962-de5fbb065baf', 3, '', 15, 2),
(95, '2022-05-11 17:15:25.554269', '5', '08a73606-a788-42a5-a3d8-107ecb6291b2', 3, '', 15, 2),
(96, '2022-05-11 17:15:25.557209', '4', '3cc47724-3fb5-408e-afde-496a5fb03c2f', 3, '', 15, 2),
(97, '2022-05-11 17:15:25.560277', '3', 'f2df3711-c028-4e4d-88e0-c7cc64bb9f14', 3, '', 15, 2),
(98, '2022-05-11 17:15:25.564564', '2', '83ce978f-1a10-47a5-806b-d78bc19993bd', 3, '', 15, 2),
(99, '2022-05-11 17:15:25.566242', '1', '9f622edc-2f03-439e-8fa7-7473fc45882e', 3, '', 15, 2),
(100, '2022-05-11 17:17:14.038529', '1', 'k@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Phone number\", \"Is admin\", \"Is staff\", \"Is superadmin\"]}}]', 12, 1),
(101, '2022-05-11 17:18:08.081308', '1', 'k@gmail.com', 2, '[{\"changed\": {\"fields\": [\"Is admin\", \"Is staff\", \"Is superadmin\"]}}]', 12, 2),
(102, '2022-05-12 06:48:35.343457', '29', 'CartItem object (29)', 3, '', 11, 1),
(103, '2022-05-12 06:48:35.353294', '28', 'CartItem object (28)', 3, '', 11, 1),
(104, '2022-05-12 06:48:42.691026', '21', '0uuq4n4gjvczwtxl4j1p38g56g3gixic', 3, '', 10, 1),
(105, '2022-05-12 06:48:42.693519', '20', 'urdzf8r5lwkloal6mnpuxz4jiwpkbhzb', 3, '', 10, 1),
(106, '2022-05-12 06:48:42.695440', '19', 'b45cmr7oz33vexmhtx39prahlzrb05n8', 3, '', 10, 1),
(107, '2022-05-12 06:48:42.697940', '18', 'iwl14gjeiy758nyb2qxprrxzsow9jhlp', 3, '', 10, 1),
(108, '2022-05-12 06:48:54.353159', '20', 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Là Sai Lầm', 3, '', 14, 1),
(109, '2022-05-12 06:48:54.363160', '19', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 1),
(110, '2022-05-12 06:48:54.365167', '18', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 1),
(111, '2022-05-12 06:49:02.409544', '21', 'sxc sa', 3, '', 13, 1),
(112, '2022-05-12 06:49:02.412119', '22', 'sdf', 3, '', 13, 1),
(113, '2022-05-12 06:49:02.414633', '23', 'sdf', 3, '', 13, 1),
(114, '2022-05-12 06:49:02.416733', '24', 'czx', 3, '', 13, 1),
(115, '2022-05-12 06:49:10.164082', '16', 'ba4e096e-e1b0-440a-85af-9e9364b5a9d9', 3, '', 15, 1),
(116, '2022-05-12 06:49:10.173627', '15', 'e05d15d7-ce1e-43d3-a7db-2dccf1d4271a', 3, '', 15, 1),
(117, '2022-05-12 11:20:54.782376', '12', 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Là Sai Lầm', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(118, '2022-05-12 11:21:00.154638', '11', 'Your Name', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(119, '2022-05-12 11:21:05.290632', '10', 'Re:zero - Bắt Đầu Lại Ở Thế Giới Khác', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(120, '2022-05-12 11:21:10.356074', '9', 'Cuốn Sách Của Sự Kết Thúc', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(121, '2022-05-12 11:21:13.820039', '10', 'Re:zero - Bắt Đầu Lại Ở Thế Giới Khác', 2, '[]', 7, 2),
(122, '2022-05-12 11:21:18.065629', '8', 'Sword Art Online', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(123, '2022-05-12 11:21:22.901876', '7', 'Kẻ Dị Biệt Tại Trường Học Phép Thuật', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(124, '2022-05-12 11:21:26.853411', '6', 'Another', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(125, '2022-05-12 11:21:30.923836', '5', 'Hội Chứng Tuổi Thanh Xuân', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(126, '2022-05-12 11:21:34.707453', '4', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(127, '2022-05-12 11:21:38.667283', '3', 'GRIMGAR - Ảo ảnh và tro tàn', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 2),
(128, '2022-05-12 12:30:30.056564', '41', 'CartItem object (41)', 3, '', 11, 2),
(129, '2022-05-12 12:30:35.344694', '24', '9wi1r5zqzzlzbzgc9511ulu7t194ossv', 3, '', 10, 2),
(130, '2022-05-12 12:30:35.347171', '23', 'd3rosl4zpa6fgoj9blnp7fjqka9nq17q', 3, '', 10, 2),
(131, '2022-05-12 12:30:35.350671', '22', '0uuq4n4gjvczwtxl4j1p38g56g3gixic', 3, '', 10, 2),
(132, '2022-05-12 12:30:46.192016', '25', 'as', 3, '', 13, 2),
(133, '2022-05-12 12:30:46.196022', '26', 'asdf', 3, '', 13, 2),
(134, '2022-05-12 12:30:46.198377', '27', 'asfd', 3, '', 13, 2),
(135, '2022-05-12 12:30:46.201377', '28', 's', 3, '', 13, 2),
(136, '2022-05-12 12:30:46.203383', '29', 'c', 3, '', 13, 2),
(137, '2022-05-12 12:30:46.205378', '30', 'Tấn Bình', 3, '', 13, 2),
(138, '2022-05-12 12:30:54.948892', '22', 'bab914fb-8f7c-4883-92d7-9fe64e44aaa8', 3, '', 15, 2),
(139, '2022-05-12 12:30:54.954891', '21', '698e98c2-d9ee-4c19-9b1d-3e526ca663f0', 3, '', 15, 2),
(140, '2022-05-12 12:30:54.957521', '20', '93c26929-2653-4872-b695-d682ecf8969f', 3, '', 15, 2),
(141, '2022-05-12 12:30:54.960521', '19', 'be9e9584-ec32-4f63-84a7-fa67550a99bd', 3, '', 15, 2),
(142, '2022-05-12 12:30:54.963174', '18', 'cc6dc88e-c195-4b7d-9d3e-3505ed4f1856', 3, '', 15, 2),
(143, '2022-05-12 12:30:54.968110', '17', 'b4bf1788-c3af-4c90-b9fe-d73714bd756e', 3, '', 15, 2),
(144, '2022-05-12 12:33:26.308989', '42', 'CartItem object (42)', 2, '[{\"changed\": {\"fields\": [\"Cart\"]}}]', 11, 2),
(145, '2022-05-12 12:35:41.524040', '42', 'CartItem object (42)', 3, '', 11, 2),
(146, '2022-05-12 12:35:51.999450', '25', '9wi1r5zqzzlzbzgc9511ulu7t194ossv', 3, '', 10, 2),
(147, '2022-05-12 13:22:58.396337', '26', '9wi1r5zqzzlzbzgc9511ulu7t194ossv', 3, '', 10, 2),
(148, '2022-05-12 13:23:04.897287', '43', 'CartItem object (43)', 3, '', 11, 2),
(149, '2022-05-12 13:24:50.541797', '28', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 2),
(150, '2022-05-12 13:24:55.556294', '31', 'Tấn Bình', 3, '', 13, 2),
(151, '2022-05-12 13:25:00.749517', '23', 'a3579f38-0d55-4815-9c66-f7b7d27b486b', 3, '', 15, 2),
(152, '2022-05-12 13:25:57.740621', '27', '9wi1r5zqzzlzbzgc9511ulu7t194ossv', 3, '', 10, 2),
(153, '2022-05-12 13:27:17.570151', '28', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(154, '2022-05-12 13:27:30.113847', '29', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(155, '2022-05-12 13:28:01.810454', '30', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(156, '2022-05-12 13:42:43.095816', '31', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(157, '2022-05-12 13:43:57.998173', '32', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(158, '2022-05-12 13:44:55.527040', '33', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(159, '2022-05-12 13:59:59.677283', '34', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(160, '2022-05-12 14:07:56.016264', '32', 'T', 3, '', 13, 2),
(161, '2022-05-12 14:07:56.021484', '33', 'Tấn Bình', 3, '', 13, 2),
(162, '2022-05-12 14:07:56.026054', '34', 'Tấn Bình', 3, '', 13, 2),
(163, '2022-05-12 14:07:56.030863', '35', 't', 3, '', 13, 2),
(164, '2022-05-12 14:07:56.034502', '36', 'Tấn Bình', 3, '', 13, 2),
(165, '2022-05-12 14:07:56.035961', '37', 'Tấn Bình', 3, '', 13, 2),
(166, '2022-05-12 14:08:00.309844', '24', '6b1af0c6-8507-49e7-85fe-f28ba55a122b', 3, '', 15, 2),
(167, '2022-05-12 14:08:06.949742', '35', 'b7lkytpcq0qwwei874grzcbkm3uxk9wk', 3, '', 10, 2),
(168, '2022-05-12 14:32:36.078308', '36', '6z5eknc9sg9a4zivlyexo4284dwn49b8', 3, '', 10, 2),
(169, '2022-05-12 14:44:43.472130', '50', 'CartItem object (50)', 3, '', 11, 3),
(170, '2022-05-12 14:44:43.475128', '49', 'CartItem object (49)', 3, '', 11, 3),
(171, '2022-05-12 14:44:43.477131', '48', 'CartItem object (48)', 3, '', 11, 3),
(172, '2022-05-12 14:44:43.480129', '46', 'CartItem object (46)', 3, '', 11, 3),
(173, '2022-05-12 14:44:48.139455', '40', 'fcxrht0ptilh8v49u7osgjycqf25e3lw', 3, '', 10, 3),
(174, '2022-05-12 14:44:48.142452', '39', 'u85achspapbh97crphxriedfim5dhnus', 3, '', 10, 3),
(175, '2022-05-12 14:44:48.144452', '38', 'bg7tehgs4jplox71pxqd237u1vdl65j2', 3, '', 10, 3),
(176, '2022-05-12 14:44:48.145452', '37', 'niimrnh9t9qlnc98tt1cpihzt3o6sxrk', 3, '', 10, 3),
(177, '2022-05-12 14:44:53.363863', '30', 'GRIMGAR - Ảo ảnh và tro tàn', 3, '', 14, 3),
(178, '2022-05-12 14:44:58.958771', '38', 'Trung Khoa', 3, '', 13, 3),
(179, '2022-05-12 14:45:03.155356', '25', 'a68f9445-64a8-425e-98c2-69ba906028cc', 3, '', 15, 3),
(180, '2022-05-12 14:48:52.929285', '54', 'CartItem object (54)', 3, '', 11, 3),
(181, '2022-05-12 14:48:52.938784', '53', 'CartItem object (53)', 3, '', 11, 3),
(182, '2022-05-12 14:48:52.942235', '52', 'CartItem object (52)', 3, '', 11, 3),
(183, '2022-05-12 14:48:52.948231', '51', 'CartItem object (51)', 3, '', 11, 3),
(184, '2022-05-12 14:49:01.558007', '43', 'oyhp7trde4db7ure14jj7jgyzj6lxxal', 3, '', 10, 3),
(185, '2022-05-12 14:49:01.568509', '42', 'ts6nocyykh0ec9bc0vip71c6xzw4by2i', 3, '', 10, 3),
(186, '2022-05-12 14:49:01.571503', '41', 'i4e83kalm0mb3qac4zxccjbo03vurbsd', 3, '', 10, 3),
(187, '2022-05-12 14:53:58.927918', '46', '3as2svan7j6pzjlv3p6792ir8yr4k1yj', 3, '', 10, 3),
(188, '2022-05-12 14:53:58.932417', '45', 'yv46bmctdx14mzlo4wesrfnu5t5txeo9', 3, '', 10, 3),
(189, '2022-05-12 14:53:58.934917', '44', 'haisp3yke3qbmhf83rwm1vfq88mmv5h0', 3, '', 10, 3),
(190, '2022-05-12 14:54:07.772218', '26', '8b5f0c7c-44fb-47a5-93df-be4a542f0644', 3, '', 15, 3),
(191, '2022-05-12 14:54:12.535215', '39', 'a', 3, '', 13, 3),
(192, '2022-05-13 03:57:56.717177', '5', 'fsdfasdf', 3, '', 8, 3),
(193, '2022-05-13 03:57:56.730516', '4', 'fasdfsdf', 3, '', 8, 3),
(194, '2022-05-13 03:57:56.733461', '3', 'câcs', 3, '', 8, 3),
(195, '2022-05-13 03:57:56.735447', '2', 'cascas', 3, '', 8, 3),
(196, '2022-05-13 03:58:51.876147', '6', 'các', 3, '', 8, 3),
(197, '2022-05-13 04:00:12.897579', '7', 'cấc', 3, '', 8, 3),
(198, '2022-05-17 17:45:10.346976', '65', 'CartItem object (65)', 3, '', 11, 3),
(199, '2022-05-17 17:45:10.351161', '64', 'CartItem object (64)', 3, '', 11, 3),
(200, '2022-05-17 17:45:15.368433', '52', '0p7m8w0ewv93pk8uzt56n58pbqs3v271', 3, '', 10, 3),
(201, '2022-05-17 17:45:15.370630', '51', 'w0ezv1yv9wxcye2iqm93a5ai622730ve', 3, '', 10, 3),
(202, '2022-05-17 17:45:15.374081', '50', 'oea91coevspiep35zjrybyz1knkqrj1i', 3, '', 10, 3),
(203, '2022-05-17 17:45:15.377234', '49', 'j0ytr9tw4lvcoflu353zlkod88l6l3wi', 3, '', 10, 3),
(204, '2022-05-17 17:45:15.379648', '48', 'ehpne923amimlvtlugslsv9y6r9whvp8', 3, '', 10, 3),
(205, '2022-05-17 17:45:15.383142', '47', 'sfgsyfmqhufbi5abhpt4zgec9k2spp9j', 3, '', 10, 3),
(206, '2022-05-17 17:45:24.046029', '37', 'Another', 3, '', 14, 3),
(207, '2022-05-17 17:45:24.055752', '36', 'Kẻ Dị Biệt Tại Trường Học Phép Thuật', 3, '', 14, 3),
(208, '2022-05-17 17:45:24.058776', '35', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 3),
(209, '2022-05-17 17:45:24.061349', '34', 'Your Name', 3, '', 14, 3),
(210, '2022-05-17 17:45:24.064458', '33', 'Hội Chứng Tuổi Thanh Xuân', 3, '', 14, 3),
(211, '2022-05-17 17:45:24.067456', '32', 'Sword Art Online', 3, '', 14, 3),
(212, '2022-05-17 17:45:28.988869', '40', 'b', 3, '', 13, 3),
(213, '2022-05-17 17:45:28.999254', '41', 'Hoàng', 3, '', 13, 3),
(214, '2022-05-17 17:45:29.003240', '42', 'fsadf', 3, '', 13, 3),
(215, '2022-05-17 17:45:29.006331', '43', 'sdfs', 3, '', 13, 3),
(216, '2022-05-17 17:45:29.009293', '44', 'ádfasf', 3, '', 13, 3),
(217, '2022-05-17 17:45:29.012127', '45', 'asd', 3, '', 13, 3),
(218, '2022-05-17 17:45:29.015125', '46', 'Tấn Bình', 3, '', 13, 3),
(219, '2022-05-17 17:45:34.957638', '32', '8402ae3c-e73c-4ee6-8376-1f04f983ab14', 3, '', 15, 3),
(220, '2022-05-17 17:45:34.967856', '31', '117d9b6c-7109-42ad-877a-dd26ea2ee0ac', 3, '', 15, 3),
(221, '2022-05-17 17:45:34.973043', '30', 'd2d633a2-10f1-480b-af24-f09c131f89b7', 3, '', 15, 3),
(222, '2022-05-17 17:45:34.976027', '29', 'd761db85-4184-4cb2-b104-6971d0fdcd86', 3, '', 15, 3),
(223, '2022-05-17 17:45:34.978023', '28', '7a2967e1-bd16-4cef-9604-c33d08ee09e7', 3, '', 15, 3),
(224, '2022-05-17 17:45:34.981014', '27', '7b67c1a6-7603-4d60-a8f2-529cf8f0d18b', 3, '', 15, 3),
(225, '2022-05-17 18:15:36.083993', '57', 'hn66of5zqztlj25pcgzyh0i7y14h0wl5', 3, '', 10, 3),
(226, '2022-05-17 18:15:36.091621', '56', 'vu6sq54tsz8icll3yhp8gnvhljpqtu6w', 3, '', 10, 3),
(227, '2022-05-17 18:15:36.094439', '55', 'c179br1l1hzm3gkupqmwmjeoeiagixzh', 3, '', 10, 3),
(228, '2022-05-17 18:15:36.097055', '54', '79psweca6omw5cub1p7lrfoiidodnff8', 3, '', 10, 3),
(229, '2022-05-17 18:15:36.099203', '53', '0p7m8w0ewv93pk8uzt56n58pbqs3v271', 3, '', 10, 3),
(230, '2022-05-17 18:32:58.528802', '58', 'hbyhskw7cw9wvvhvyi35bnxdtpyz9h94', 3, '', 10, 3),
(231, '2022-05-18 04:47:21.032096', '61', '94wjo4isejtfm8uehr7d0g1ypgkzzzqr', 3, '', 10, 1),
(232, '2022-05-18 04:47:21.043022', '60', '2ccvsp6jo4njxkrvarujmoxmkkuby0jh', 3, '', 10, 1),
(233, '2022-05-18 04:47:21.045507', '59', 'vijw5pk01dse3hlz09wrf959mstp1n6s', 3, '', 10, 1),
(234, '2022-05-18 04:47:27.815046', '47', 'b', 3, '', 13, 1),
(235, '2022-05-18 04:47:27.825323', '48', 'k', 3, '', 13, 1),
(236, '2022-05-18 04:47:27.827667', '49', 'a', 3, '', 13, 1),
(237, '2022-05-18 04:47:27.830072', '50', 'b', 3, '', 13, 1),
(238, '2022-05-18 04:47:27.831645', '51', 'k', 3, '', 13, 1),
(239, '2022-05-18 04:47:27.833551', '52', 'fsdaf', 3, '', 13, 1),
(240, '2022-05-18 07:46:12.027063', '53', 'k', 3, '', 13, 1),
(241, '2022-05-18 07:46:18.342155', '62', '2ccvsp6jo4njxkrvarujmoxmkkuby0jh', 3, '', 10, 1),
(242, '2022-05-18 08:45:38.213903', '10', 'sas', 3, '', 8, 1),
(243, '2022-05-18 08:46:18.967337', '11', 'Introduct to Java', 3, '', 8, 1),
(244, '2022-05-18 08:51:49.680111', '12', '333333333', 3, '', 8, 1),
(245, '2022-05-18 09:14:00.821815', '63', '2ccvsp6jo4njxkrvarujmoxmkkuby0jh', 3, '', 10, 1),
(246, '2022-05-18 09:14:06.017903', '50', 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 3, '', 14, 1),
(247, '2022-05-18 09:14:06.020835', '51', 'Cuốn Sách Của Sự Kết Thúc', 3, '', 14, 1),
(248, '2022-05-18 09:14:11.018167', '54', 'Hoàng', 3, '', 13, 1),
(249, '2022-05-18 09:14:11.021252', '55', 'Hoàng', 3, '', 13, 1),
(250, '2022-05-18 09:14:11.023227', '56', 'Hoàng', 3, '', 13, 1),
(251, '2022-05-18 09:14:11.025644', '57', 'Hoàng', 3, '', 13, 1),
(252, '2022-05-18 09:14:16.225076', '13', 'AFASDF', 3, '', 8, 1),
(253, '2022-05-18 09:14:16.227067', '9', 'dasda', 3, '', 8, 1),
(254, '2022-05-18 09:14:16.229060', '8', 'saas', 3, '', 8, 1),
(255, '2022-05-18 09:51:13.666307', '3', 'GRIMGAR - Ảo ảnh và tro tàn', 2, '[{\"changed\": {\"fields\": [\"Stock\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'accounts', 'account'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(10, 'carts', 'cart'),
(11, 'carts', 'cartitem'),
(6, 'category', 'category'),
(4, 'contenttypes', 'contenttype'),
(13, 'orders', 'order'),
(14, 'orders', 'orderproduct'),
(15, 'orders', 'payment'),
(5, 'sessions', 'session'),
(7, 'store', 'product'),
(8, 'store', 'reviewrating'),
(9, 'store', 'variation');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'accounts', '0001_initial', '2022-05-10 14:24:06.768291'),
(2, 'accounts', '0002_alter_account_is_admin_alter_account_is_staff_and_more', '2022-05-10 14:24:06.790740'),
(3, 'contenttypes', '0001_initial', '2022-05-10 14:24:07.076706'),
(4, 'admin', '0001_initial', '2022-05-10 14:24:08.167225'),
(5, 'admin', '0002_logentry_remove_auto_add', '2022-05-10 14:24:08.187721'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2022-05-10 14:24:08.206265'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-05-10 14:24:08.533616'),
(8, 'auth', '0001_initial', '2022-05-10 14:24:11.415376'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-05-10 14:24:11.877026'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-05-10 14:24:11.896544'),
(11, 'auth', '0004_alter_user_username_opts', '2022-05-10 14:24:11.925826'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-05-10 14:24:11.989804'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-05-10 14:24:12.898018'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-05-10 14:24:13.079554'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-05-10 14:24:13.103994'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-05-10 14:24:13.123474'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-05-10 14:24:13.191794'),
(18, 'auth', '0011_update_proxy_permissions', '2022-05-10 14:24:13.216193'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-05-10 14:24:13.240593'),
(20, 'category', '0001_initial', '2022-05-10 14:24:13.416273'),
(21, 'store', '0001_initial', '2022-05-10 14:24:13.969146'),
(22, 'store', '0002_variation', '2022-05-10 14:24:14.803163'),
(23, 'store', '0003_reviewrating', '2022-05-10 14:24:15.976316'),
(24, 'orders', '0001_initial', '2022-05-10 14:24:24.780861'),
(25, 'orders', '0002_remove_order_is_ordered', '2022-05-10 14:24:25.113211'),
(26, 'orders', '0003_remove_orderproduct_variations', '2022-05-10 14:24:26.268215'),
(27, 'carts', '0001_initial', '2022-05-10 14:24:28.732713'),
(28, 'carts', '0002_cartitem_variations', '2022-05-10 14:24:31.655578'),
(29, 'carts', '0003_auto_20210619_1554', '2022-05-10 14:24:35.145530'),
(30, 'carts', '0004_remove_cartitem_variations', '2022-05-10 14:24:35.303641'),
(31, 'store', '0004_delete_variation', '2022-05-10 14:24:35.492987'),
(32, 'store', '0005_variation', '2022-05-10 14:24:37.837231'),
(33, 'carts', '0005_cartitem_variations', '2022-05-10 14:24:41.827039'),
(34, 'category', '0002_alter_category_id', '2022-05-10 14:24:45.547339'),
(35, 'orders', '0004_orderproduct_variations', '2022-05-10 14:24:49.141788'),
(36, 'orders', '0005_order_is_ordered', '2022-05-10 14:24:49.399454'),
(37, 'orders', '0006_remove_order_payment_remove_orderproduct_payment_and_more', '2022-05-10 14:24:51.009142'),
(38, 'orders', '0007_payment_order_payment_orderproduct_payment', '2022-05-10 14:24:56.130047'),
(39, 'sessions', '0001_initial', '2022-05-10 14:24:56.757328'),
(40, 'category', '0003_remove_category_category_image', '2022-05-10 14:34:14.733025'),
(41, 'store', '0006_alter_product_description', '2022-05-10 15:13:23.123979'),
(42, 'orders', '0008_rename_city_order_district_and_more', '2022-05-10 16:42:27.022356'),
(43, 'orders', '0009_alter_order_created_at', '2022-05-10 18:45:55.809505'),
(44, 'orders', '0010_alter_order_created_at', '2022-05-10 18:46:46.808849'),
(45, 'accounts', '0003_alter_account_id', '2022-05-12 08:50:16.004660'),
(46, 'carts', '0006_alter_cart_id_alter_cartitem_id', '2022-05-12 08:50:16.474261'),
(47, 'orders', '0009_alter_order_id_alter_order_order_number_and_more', '2022-05-12 08:50:17.387167'),
(48, 'store', '0007_alter_product_id_alter_reviewrating_id_and_more', '2022-05-12 08:50:18.520916'),
(49, 'orders', '0010_alter_order_order_number', '2022-05-12 08:52:55.917750'),
(50, 'carts', '0006_cart_user_alter_cart_id_alter_cartitem_id', '2022-05-12 12:47:06.476862'),
(51, 'orders', '0009_alter_order_id_alter_orderproduct_id_and_more', '2022-05-12 12:47:07.153091'),
(52, 'carts', '0007_remove_cart_user', '2022-05-12 13:26:28.619877'),
(53, 'carts', '0008_cart_user', '2022-05-12 13:59:26.803349'),
(54, 'carts', '0009_remove_cart_user', '2022-05-12 14:23:30.011538'),
(55, 'store', '0008_alter_reviewrating_created_at_and_more', '2022-05-13 03:03:25.544500'),
(56, 'store', '0009_alter_reviewrating_created_at_and_more', '2022-05-13 03:09:46.822903'),
(57, 'store', '0010_alter_reviewrating_created_at_and_more', '2022-05-13 03:13:58.912243'),
(58, 'store', '0011_alter_reviewrating_created_at_and_more', '2022-05-13 03:15:27.735182'),
(59, 'store', '0012_alter_reviewrating_created_at_and_more', '2022-05-13 03:19:49.754918'),
(60, 'store', '0013_alter_reviewrating_created_at_and_more', '2022-05-13 03:25:13.218790'),
(61, 'store', '0014_alter_reviewrating_created_at_and_more', '2022-05-13 03:29:21.884005'),
(62, 'store', '0015_alter_reviewrating_created_at_and_more', '2022-05-13 03:30:44.405303'),
(63, 'store', '0016_alter_reviewrating_created_at_and_more', '2022-05-13 03:32:33.753392'),
(64, 'store', '0017_alter_reviewrating_created_at_and_more', '2022-05-13 03:34:18.917956'),
(65, 'store', '0018_alter_reviewrating_created_at_and_more', '2022-05-13 03:46:07.427918'),
(66, 'store', '0019_alter_reviewrating_created_at', '2022-05-13 03:57:40.954948'),
(67, 'store', '0020_alter_reviewrating_created_at_and_more', '2022-05-13 03:58:36.725227'),
(68, 'carts', '0010_remove_cartitem_variations', '2022-05-17 17:37:28.364604'),
(69, 'orders', '0010_remove_orderproduct_variations', '2022-05-17 17:37:28.386205'),
(70, 'store', '0021_delete_variation', '2022-05-17 17:37:28.397244'),
(71, 'orders', '0011_remove_order_payment_remove_orderproduct_payment_and_more', '2022-05-18 04:47:05.621011'),
(72, 'store', '0022_remove_reviewrating_status', '2022-05-18 08:45:27.922546'),
(73, 'store', '0023_alter_reviewrating_created_at_and_more', '2022-05-18 08:59:28.739989');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('2ccvsp6jo4njxkrvarujmoxmkkuby0jh', '.eJxVjEEOgjAQRe_StWko05bWpXvOQKYzU0FNSSisjHcXEha6_e-9_1YDbus4bFWWYWJ1VUZdfreE9JRyAH5guc-a5rIuU9KHok9adT-zvG6n-3cwYh33GkInEi0Z8MC5bb2wcw1Si9QBR4xAaFwjTXIx2MxsMIDNmYyA37n6fAHokjhh:1nr20p:XhHmyVXBrHfs8EwDrnozNQeFSbOD2Y2ACRJ3gXOw7io', '2022-05-31 18:33:39.206087'),
('erzlg5pllrev2byxaarail5c66vir69v', '.eJxVjEEOwiAQRe_C2pApFAou3XsGMjCDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwkzgLLU6_W8T04LoDumO9NZlaXZc5yl2RB-3y2oifl8P9OyjYy7dm4BGSTRN5M6BNJsaoPOfoQHvlNQDghECgXR5GdDpnNMpldNaDdSTeH-rjN80:1nrG3u:S2jZrP8y-9y7QeSyyJA23cle6NBHkWPkEeZSF107hRk', '2022-06-01 09:33:46.640412'),
('ilzbrbbkjrki0se0tbougwqt73kk9ma0', '.eJxVjEEOgjAQRe_StWko05bWpXvOQKYzU0FNSSisjHcXEha6_e-9_1YDbus4bFWWYWJ1VUZdfreE9JRyAH5guc-a5rIuU9KHok9adT-zvG6n-3cwYh33GkInEi0Z8MC5bb2wcw1Si9QBR4xAaFwjTXIx2MxsMIDNmYyA37n6fAHokjhh:1noRGR:Powa1lUPxpE-WXwrI6BQ7YwI44eWU7AJa2uwhiqUL1A', '2022-05-24 14:55:03.502692'),
('p0xj6fsgrwuf4rhjj8etgaxbj69djl7y', '.eJxVjEEOwiAQRe_C2pApFAou3XsGMjCDVA0kpV0Z765NutDtf-_9lwi4rSVsnZcwkzgLLU6_W8T04LoDumO9NZlaXZc5yl2RB-3y2oifl8P9OyjYy7dm4BGSTRN5M6BNJsaoPOfoQHvlNQDghECgXR5GdDpnNMpldNaDdSTeH-rjN80:1nrMIj:1GzhLzXd2yW8tCTfEyYzmhm8qWylDoinr30F7eJq1z8', '2022-06-01 16:13:29.385045'),
('znoel969zypo4k8zfsdyjc89uox3u98p', '.eJxVjEEOgjAQRe_StWko05bWpXvOQKYzU0FNSSisjHcXEha6_e-9_1YDbus4bFWWYWJ1VUZdfreE9JRyAH5guc-a5rIuU9KHok9adT-zvG6n-3cwYh33GkInEi0Z8MC5bb2wcw1Si9QBR4xAaFwjTXIx2MxsMIDNmYyA37n6fAHokjhh:1noQqv:M0QlafY53lUipttNXM9-oWi-4W3OmixympxCrV4S5X8', '2022-05-24 14:28:41.489750');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` bigint(20) NOT NULL,
  `order_number` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address_line_1` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `ward` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `order_note` varchar(100) NOT NULL,
  `order_total` double NOT NULL,
  `tax` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `is_ordered` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_order`
--

INSERT INTO `orders_order` (`id`, `order_number`, `first_name`, `last_name`, `phone`, `email`, `address_line_1`, `province`, `ward`, `district`, `order_note`, `order_total`, `tax`, `status`, `ip`, `created_at`, `updated_at`, `user_id`, `is_ordered`) VALUES
(58, '2022051858', 'T', 'Phan', '123', 'k@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', 'nhanh lên', 181560, 3560, 'New', '127.0.0.1', '2022-05-18 09:15:56.537079', '2022-05-18 09:16:07.341181', 1, 1),
(59, '2022051859', 'Hoàng', 'Nguyễn', '123', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 110160, 2160, 'New', '127.0.0.1', '2022-05-18 09:39:44.998462', '2022-05-18 09:39:49.021546', 3, 1),
(60, '2022051860', 'Hoàng', 'Nguyễn', '123', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 80580, 1580, 'New', '127.0.0.1', '2022-05-18 09:41:51.344012', '2022-05-18 09:41:54.826589', 3, 1),
(61, '2022051861', 'b', 'b', '123', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 161160, 3160, 'New', '127.0.0.1', '2022-05-18 09:43:24.482642', '2022-05-18 09:43:25.848861', 3, 1),
(62, '2022051862', 'b', 'b', '123', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 110160, 2160, 'New', '127.0.0.1', '2022-05-18 09:44:27.002275', '2022-05-18 09:44:30.015394', 3, 1),
(63, '2022051863', 'Hoàng', 'Nguyễn', '123', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 330480, 6480, 'New', '127.0.0.1', '2022-05-18 09:45:32.328080', '2022-05-18 09:45:34.935072', 3, 1),
(64, '2022051864', 'Hoàng', 'Nguyễn', '123', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 110160, 2160, 'New', '127.0.0.1', '2022-05-18 09:47:00.430432', '2022-05-18 09:47:03.974789', 3, 1),
(65, '2022051865', 'Hoàng', 'Nguyễn', '123', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 110160, 2160, 'New', '127.0.0.1', '2022-05-18 09:49:44.981148', '2022-05-18 09:49:47.000970', 3, 1),
(66, '2022051866', 'Hoàng', 'Nguyễn', '0778051926', 'a@gmail.com', 'Đường 154', 'HCM', 'Tân Phú', 'Quận 9', '', 173400, 3400, 'New', '127.0.0.1', '2022-05-18 09:50:33.691662', '2022-05-18 09:50:36.017865', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderproduct`
--

CREATE TABLE `orders_orderproduct` (
  `id` bigint(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `product_price` double NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders_orderproduct`
--

INSERT INTO `orders_orderproduct` (`id`, `quantity`, `product_price`, `ordered`, `created_at`, `updated_at`, `order_id`, `product_id`, `user_id`) VALUES
(52, 2, 89000, 1, '2022-05-18 09:16:07.351405', '2022-05-18 09:16:07.351405', 58, 7, 1),
(53, 1, 108000, 1, '2022-05-18 09:39:49.031518', '2022-05-18 09:39:49.031518', 59, 4, 3),
(54, 1, 79000, 1, '2022-05-18 09:41:54.842271', '2022-05-18 09:41:54.842271', 60, 12, 3),
(55, 2, 79000, 1, '2022-05-18 09:43:25.861667', '2022-05-18 09:43:25.861667', 61, 12, 3),
(56, 1, 108000, 1, '2022-05-18 09:44:30.025356', '2022-05-18 09:44:30.025356', 62, 4, 3),
(57, 3, 108000, 1, '2022-05-18 09:45:34.944050', '2022-05-18 09:45:34.944050', 63, 4, 3),
(58, 1, 108000, 1, '2022-05-18 09:47:03.985142', '2022-05-18 09:47:03.985142', 64, 4, 3),
(59, 1, 108000, 1, '2022-05-18 09:49:47.012755', '2022-05-18 09:49:47.012755', 65, 4, 3),
(60, 1, 94000, 1, '2022-05-18 09:50:36.027831', '2022-05-18 09:50:36.027831', 66, 5, 3),
(61, 1, 76000, 1, '2022-05-18 09:50:36.041173', '2022-05-18 09:50:36.042167', 66, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `store_product`
--

CREATE TABLE `store_product` (
  `id` bigint(20) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(11) NOT NULL,
  `images` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `modified_date` datetime(6) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_product`
--

INSERT INTO `store_product` (`id`, `product_name`, `slug`, `description`, `price`, `images`, `stock`, `is_available`, `created_date`, `modified_date`, `category_id`) VALUES
(3, 'GRIMGAR - Ảo ảnh và tro tàn', 'grimgar-ao-anh-va-tro-tan', 'Tại sao chúng tôi lại phải làm việc này…?\r\n\r\nKhi nhận thức được, Haruhiro đã ở trong bóng tối. Cậu vẫn chẳng hiểu tại sao mình lại ở một chỗ như thế này, cũng không biết được nơi đây là đâu. Xung quanh đều là những chàng trai cô gái giống cậu, chỉ nhớ được duy nhất tên của bản thân. Thứ đón chờ họ sau khi ra khỏi đường hầm dưới đất là thế giới “giống như trong game”. Để sinh tồn, Haruhiro đã lập tổ đội với những chiến hữu cùng chung cảnh ngộ, học tập các kĩ năng, dấn bước vào thế giới “Grimgar” này với tư cách một người lính tình nguyện tập sự.\r\n\r\nCho dù vẫn không biết điều gì đang chờ đợi mình phía trước…\r\n\r\nĐây là câu chuyện phiêu lưu được sinh ra từ trong đám tro tàn.\r\n\r\n* GRIMGAR - ẢO ẢNH VÀ TRO TÀN là series light-novel dài kì đặc sắc của tác giả Ao Jyumonji:\r\n\r\n- Luôn nằm trong top sách bán chạy theo tuần tại Nhật Bản mỗi khi ra tập mới!\r\n\r\n- Được chuyển thể thành manga, anime, OVA!\r\n\r\n- Đã chuyển ngữ sang nhiều nước trên thế giới như Anh, Pháp, Đài Loan.\r\n\r\n- Số tập: 16 (on-going)\r\n\r\n \r\n\r\n---\r\n\r\nMột ấn phẩm của WINGS BOOKS - Thương hiệu sách trẻ của NXB Kim Đồng.', 76000, 'photos/products/1_98065a1d7fc34b9b88536d4ef2763312_master_1_IB2MOso.png', 0, 1, '2022-05-10 15:16:32.009878', '2022-05-18 09:51:13.665313', 1),
(4, 'Thám tử lừng danh Conan - Hồ sơ tuyệt mật - Shuichi Akai & Toru Amuro', 'conan', 'Series Magazine Conan - Secret Archives tiết lộ những bí mật chưa từng được công bố xoay quanh dàn nhân vật \"Cực phẩm\" trong Conan chính thức được phát hành tại Việt Nam!!\r\n\r\nTập đầu tiên bao gồm Hồ sơ cá nhân của Shuichi Akai và Toru Amuro cùng những nhân vật liên quan chắc chắn sẽ làm bạn không thể rời mắt!!\r\n\r\nĐiệp viên FBI Vs. Cảnh sát An ninh: SHUICHI AKAI & TORU AMURO!! Akai Shuichi và Amuro Toru là hai người hoàn toàn trái ngược nhau. Akai là đặc vụ của Cục Điều tra Liên bang Hoa Kì (hay còn gọi là FBI), Amuro là cảnh sát trực thuộc Lực lượng Cảnh sát An ninh Nhật Bản. Akai ít nói và luôn hành động một cách bí mật, còn Amuro dồn ép đối phương bằng sự hoạt ngôn bẩm sinh. Thế nhưng, Akai Shuichi và Amuro Toru vẫn có những điểm rất giống nhau. Cả hai đều sở hữu trí thông minh tuyệt đỉnh, cộng thêm khả năng chiến đấu đáng nể!\r\n\r\nBạn sẽ được cuốn theo các phân cảnh chủ đạo của Akai và Amuro trong Movie “Cơn ác mộng đen tối”! Ngoài ra còn có các tranh gốc, bảng phân cảnh và bản chỉnh sửa cốt truyện mang bút tích của tác giả Gosho Aoyama nữa!!\r\n\r\nHãy cùng đến với cuốn Tạp chí đầu tiên về CONAN, với hình thức cao cấp giống hệt bản gốc: Phần bìa áo ép nhũ, phần ruột được in màu toàn bộ trên giấy C! Chắc chắn sẽ mang đến những trải nghiệm chưa từng có trước nay cho các Fan của chàng thám tử Conan! Nhất là khi tác phẩm đang trên đà kỉ niệm 100 tập truyện và gần 30 năm phát hành tại Việt Nam! Nhà xuất bản Kim Đồng xin trân trọng giới thiệu cùng bạn đọc!', 108000, 'photos/products/conan.png', 87, 1, '2022-05-10 15:19:14.699777', '2022-05-18 09:49:47.015791', 3),
(5, 'Hội Chứng Tuổi Thanh Xuân', 'hoi-chung-tuoi-thanh-xuan', 'Các cô gái mặc đồ thỏ không cư ngụ trong thư viện. Thế nhưng, trái với hiểu biết thông thường ấy, Azusagawa Sakuta đã gặp một nàng thỏ hoang ở đây. Hơn thế nữa, cô gái ấy không chỉ là một nàng thỏ bình thường. Cô chính là Sakurajima Mai, một tài năng nổi tiếng hiện đang tạm ngừng hoạt động và cũng là đàn chị lớp trên của Sakuta. Dường như hiện tượng những người xung quanh không nhìn thấy được Mai đã xảy ra từ vài ngày trước và cô muốn kiểm chứng lại điều đó tại thư viện này.\r\n\r\nViệc ấy liệu có liên quan gì tới hiện tượng kì lạ mang tên “Hội chứng tuổi dậy thì” vẫn được đồn đại trên mạng hay không? Sakuta đã tiếp cận Mai dưới danh nghĩa tìm kiếm nguyên nhân cho hiện tượng này và bắt đầu giải quyết điều bí ẩn. Tuy nhiên, sự tình lại đi theo chiều hướng cậu chẳng hề lường trước…\r\n\r\nCâu chuyện xoay quanh tình yêu của tôi với cô ấy bắt đầu tại một thành phố được bao bọc bởi bầu trời và biển cả.\r\n\r\n* HỘI CHỨNG TUỔI THANH XUÂN là series light-novel cực kì ăn khách của bộ đôi bao gồm tác giả Hajime KAMOSHIDA và hoạ sĩ Keji MIZOGUCHI. Đây chính là nguyên tác của bộ anime đình đám thống lĩnh mọi bảng xếp hạng anime năm 2018 và tiếp tục được chuyển thể thành movie chiếu rạp vào năm 2019!\r\n\r\nBộ sách cũng đã lọt top các series bán chạy nhất nửa đầu 2020 tại thị trường Nhật Bản.\r\n\r\nSố tập: 10 (on-going)', 94000, 'photos/products/thanh-xuan.png', 96, 1, '2022-05-10 15:25:40.436781', '2022-05-18 09:50:36.033193', 4),
(6, 'Another', 'another', 'Another là câu chuyện 3 trong 1: ma, kinh dị, học đường.\r\n\r\nHai mươi sáu năm về trước có một học sinh hoàn thiện hoàn mỹ. Rất đẹp, rất giỏi, rất hòa đồng, ai cũng yêu quý, những lời tán tụng người ấy được truyền mãi qua các thế hệ học sinh của trường. Nhưng tên đầy đủ là gì, chết đi thế nào, thậm chí giới tính ra sao lại không một ai hay biết. Người ta chỉ rỉ tai nhau, bỗng nhiên giữa năm bạn ấy chết, trường lớp không sao thoát được nỗi buồn nhớ thương, họ bèn cư xử như thể học sinh này còn tồn tại. Bàn ghế để nguyên, bạn cùng lớp vẫn giả vờ nói chuyện với người đã khuất.\r\n\r\nVề cơ bản, đây là cách ứng xử đẹp có phần đáng ngợi khen. Nhưng sau chót, lại kéo ra một hệ lụy gai người. Vào lễ tốt nghiệp, cả lớp chụp chung một tấm ảnh kỷ niệm. Đến khi xem ảnh đã tráng rửa, họ nhận ra một chuyện. Trong tấm ảnh tập thể, đứng ở một góc là một người lẽ ra không thể nào xuất hiện. Mỉm cười như bao người khác, nhưng gương mặt cứng đanh, trơ trơ, tái nhợt…\r\n\r\nHệ lụy ấy, thực ra chỉ là khởi điểm, của mọi bắt đầu…\r\n\r\nMời các bạn đón đọc Another của tác giả Yukito Ayatsuji​.', 68000, 'photos/products/another.jpg', 95, 1, '2022-05-10 15:32:31.303745', '2022-05-17 18:03:19.579498', 5),
(7, 'Kẻ Dị Biệt Tại Trường Học Phép Thuật', 'ke-di-biet-tai-truong-hoc-phep-thuat', 'Kẻ dị biệt tại trường học phép thuật (Tên gốc: Mahouka Koukou no Rettousei 魔法科高校の劣等生) của tác giả Sato Tsutomu.\r\n\r\nKẻ dị biệt tại trường học phép thuật là một trong những series ăn khách nhất tại xứ sở Mặt Trời mọc. Tính tới năm 2018, bộ truyện đã phát hành tổng cộng 26 tập, tẩu tán được hơn 8 triệu cuốn sách chỉ tính riêng tại Nhật theo bảng xếp hạng doanh số light novel do Oricon công bố. Không dừng lại ở đó, series này đã được Mad House – một trong những studio nổi tiếng và chắc tay nhất – chuyển thể thành anime vào năm 2014, gây sốt không chỉ ở Nhật Bản mà còn ở nhiều nước trên thế giới, trong đó có Việt Nam. Phiên bản manga của bộ truyện này cũng rất thành công về doanh số bán. Cả phiên bản manga lẫn phiên bản light novel gốc đều đã được rất nhiều các nhà xuất bản nước ngoài mua bản quyền, dịch sang nhiều thứ tiếng. Ngoài ra, series đình đám này còn được chuyển thể thành video game.\r\n\r\nKẻ dị biệt tại trường học phép thuật lấy bối cảnh thế giới tương lai, khi mà phép thuật không còn là sản phẩm của trí tưởng tượng, truyền thuyết hay cổ tích nữa mà đã trở thành công nghệ có thật. Phép thuật được giảng dạy phổ biến tại các trường cấp ba và đại học, trong đó trường Trung học Đệ Nhất là trường cấp ba danh giá nhất trong số chín trường cấp ba trực thuộc Đại học Phép thuật Quốc gia. Tại ngôi trường này, có hai anh em cùng huyết thống là Tatsuya và Miyuki đang chuẩn bị bước những bước chân đầu tiên vào cuộc sống trung học tươi đẹp của mình.\r\n\r\nNếu như trong tập đầu tiên, tác giả đã bước đầu đưa người đọc vào một thế giới phép thuật đậm chất khoa học viễn tưởng với những mô tả rất chi tiết và thuyết phục, thì trong tập thứ hai này câu chuyện sẽ được đẩy lên cao trào với những diễn biến đầy hấp dẫn và bất ngờ. Đó là sự xuất hiện của “phe đồng minh” với những lối tư duy phản biện nghe có vẻ thuyết phục nhưng ẩn chứa đằng sau là những âm mưu chính trị sâu xa. Đó là một cuộc hỗn chiến ở quy mô lớn hơn rất nhiều so với trận chiến Tatsuya đã trải qua ở tập 1 trong tuần lễ chiêu mộ thành viên CLB. Và cuối cùng, khép lại phần đầu tiên mang tên “Nhập học” của series light novel bom tấn này sẽ là một cái kết ngọt ngào hay chỉ là tấm màn đầu tiên được hé mở để lộ ra những âm mưu kinh khủng về sau?', 89000, 'photos/products/mahouka.jpg', 96, 1, '2022-05-10 15:35:48.199132', '2022-05-18 09:16:07.354392', 6),
(8, 'Sword Art Online', 'sword-art-online', 'Chưa phá đảo thì chưa thể thoát được ra ngoài!\r\n\r\nGame Over đồng nghĩa với cái chết thực sự của người chơi. Không hề hay biết chân tướng này, khoảng 10.000 người đã đăng nhập MMO thế hệ mới Sword Art Online (SAO), cùng mở màn cho một cuộc tử chiến tàn khốc. Kirito, nhân vật chính, là người đầu tiên trong số game thủ SAO biết chấp nhận chân tướng ấy. Và ở hiện trường của trò chơi - một thành nổi khổng lồ mang tên Aincrad, cậu ta dần dần hiển lộ được tài năng trong vai trò game thủ solo.\r\n\r\nKirito vốn định duy trì tình trạng chiến đấu đơn độc đầy mạo hiểm đó cho đến khi đạt mục tiêu là vươn tới tầng cao nhất để phá đảo game, nhưng sau lời mời giàu sức thuyết phục của nữ kiếm sĩ Asuna, cậu quyết định sát cánh cùng cô. Cuộc gặp gỡ ấy đã tạo nên bước ngoặt có thể gọi là định mệnh đối với Kirito…', 89000, 'photos/products/sao.png', 92, 1, '2022-05-10 15:37:22.706604', '2022-05-18 04:39:07.640358', 1),
(9, 'Cuốn Sách Của Sự Kết Thúc', 'cuon-sach-cua-su-ket-thuc', '“Tiểu thuyết Vocaloid” - tiểu thuyết được ra đời từ những ca khúc Vocaloid.\r\n\r\nTiểu thuyết Vocaloid là những tiểu thuyết được sáng tác dựa trên những ca khúc vocaloid được yêu thích được đăng tải trên kênh NIKONIKO của Nhật và những câu chuyện được sáng tác nhằm gợi lên được những ca khúc nguyên tác. Vocaloid là một phần mềm ứng dụng được phát triển bởi công ty Yamaha, cho phép người dùng sáng tạo bài hát của riêng mình dựa vào giọng hát của các ca sỹ ngoài đời thực, tất cả những gì bạn phải làm chỉ là nhập lời bài hát và giai điệu. Các nhân vật của vocaloid mang phong cách manga, anime, game.\r\n\r\nCuốn sách của Sự Kết thúc (tập 1) là câu chuyện dựa trên \"Dự án cuốn sách của Sự Kết thúc\", một series bài hát của 150P và Suzumu, theo những trò chơi tuổi thơ của trẻ em Nhật Bản và những truyền thuyết đô thị phổ biến của Nhật.\r\n\r\nCuốn sách của Sự Kết thúc kể về bốn nam nữ sinh thích tìm hiểu về những lời đồn mang tính chất huyền bí và những truyền thuyết đô thị. Họ chơi trò Kokkuri-san (trò chơi gọi hồn - Kokuri-san là tên của linh hồn được gọi) nhằm có được “Cuốn sách của Sự Kết thúc” và “Thẻ đánh dấu Sự Kết thúc”. Và từ đó, bi kịch bắt đầu diễn ra khi họ buộc phải tham gia vào một trò chơi nguy hiểm hơn, “Trò chơi của Sự Kết thúc”.Trò chơi bắt đầu với một kẻ phản bội duy nhất, “Con Cáo”.Nếu muốn thoát khỏi trò chơi, bạn phải cân nhắc kĩ những nguyên tắc dưới đây, sau đó tự tìm ra điểm Kết thúc.\r\n\r\nVậy thì, cùng bắt đầu trò chơi đầy thú vị này thôi!', 59000, 'photos/products/cuonsachcuasuketthuc.jpg', 98, 1, '2022-05-10 15:40:23.061375', '2022-05-18 09:12:56.765268', 5),
(10, 'Re:zero - Bắt Đầu Lại Ở Thế Giới Khác', 'rezero', 'Hôm ấy, ở Nhật Bản hiện đại.\r\n\r\nMột thiếu niên bước ra khỏi cửa hàng tiện lợi, và chớp mắt một cái đã thấy mình xuất hiện trước sạp trái cây ở một khu vực kì lạ, nơi mái tóc đen và bộ đồ thể thao xám bình thường tột độ của cậu trở nên bất thường. Vì bao quanh cậu là đầu tóc sặc sỡ, ăn vận kì dị và các sinh vật với đủ mọi biến thể gene. Dĩ nhiên đó là do, cậu vừa bị triệu hồi tới thế giới khác.Với trí tưởng tượng được nuôi nấng no nê nhờ các sản phẩm giải trí viễn tưởng ảo tưởng giả tưởng hoang tưởng, thiếu niên mau chóng nhận ra cảnh ngộ gặp phải và mò mẫm thử nghiệm xem mình được trao tặng siêu năng lực gì ở đây. Nhưng chỉ mới đi loanh quanh và gặp vài ba người, cậu đã bị một kẻ không rõ mặt chém văng vào tường, chết trong thảm máu.\r\n\r\nVài phút sau, cậu lại xuất hiện trước sạp trái cây… Sau mấy lần buộc phải viếng thăm sạp trái cây, cậu nhận ra siêu năng lực của mình không phải ở sức khỏe vô song, phép thuật hùng mạnh hay bay lượn như chim. Cậu chỉ có một năng lực thôi, đó là quay lại điểm khởi đầu sau khi chết. Sứ mệnh của cậu ở đây hình như cũng không phải giải cứu thế giới hay tiêu diệt người ngoài hành tinh, mà đơn giản và phức tạp hơn nhiều…', 89000, 'photos/products/rezero.png', 100, 1, '2022-05-10 15:44:05.939009', '2022-05-12 11:21:13.816769', 1),
(11, 'Your Name', 'your-name', 'Mitsuha là nữ sinh trung học sống ở vùng quê hẻo lánh. Một ngày nọ, cô mơ thấy mình ở Tokyo trong một căn phòng xa lạ, biến thành con trai, gặp những người bạn chưa từng quen biết.\r\n\r\nTrong khi đó ở một nơi khác, Taki, một nam sinh trung học người Tokyo lại mơ thấy mình biến thành con gái, sống ở vùng quê hẻo lánh.\r\n\r\nCuối cùng hai người họ nhận ra đang bị hoán đổi với nhau qua giấc mơ. Kể từ lúc hai con người xa lạ ấy gặp nhau, bánh xe số phận bắt đầu chuyển động.\r\n\r\nĐây là phiên bản tiểu thuyết của bộ phim hoạt hình Your Name., do chính đạo diễn Shinkai Makoto chấp bút.', 59000, 'photos/products/yourname.jpg', 99, 1, '2022-05-10 15:46:19.962273', '2022-05-13 03:50:03.127448', 7),
(12, 'Chuyện Tình Thanh Xuân Bi Hài Của Tôi Quả Là Sai Lầm', 'chuyen-tinh-thanh-xuan', 'Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. được kể dưới góc nhìn của nhân vật chính Hikigaya Hachiman, một mẫu nam chính rất đặc biệt với thái độ sống tương đối \"cá biệt\". Hachiman luôn mang theo những triết lí rất \"bất cần đời\" nhưng lại không kém phần thấu đáo và sâu sắc, thể hiện rõ tính cách của một bộ phận học sinh trung học Nhật Bản hiện nay. Hachiman chưa bao giờ chịu khuất phục trước sự cô độc. Bạn bè không, bạn gái cũng không. Cứ mỗi lần nhìn những người bạn cùng lớp ca ngợi thời thanh xuân, câu ta lại lầm bầm “Một bọn giả dối. Lũ lừa gạt. Banh xác hết đi!”. Nếu ai đó hỏi cậu ta về ước mơ tương lai, cậu học sinh trung học nổi loạn này sẽ giễu cợt đáp rằng “là không phải đi làm”. Chính vì thái độ khép mình và bất cần đó, Hachiman đã bị cô giáo phụ sách đời sống học sinh \"tóm cổ\" lôi đến câu lạc bộ tình nguyện, nơi có sự hiện diện của một nữ sinh xinh đẹp hoàn hảo mọi thứ (ngoại trừ tính cách tệ hại), và câu chuyện dở khóc dở cười của một Hachiman bất cần nhưng lại phải đi giúp đỡ người khác bắt đầu từ đâu.\r\n\r\nVới lối kể dí dỏm nhưng không kém phần sâu sắc, điểm đặc biệt của Chuyện tình thanh xuân bi hài của tôi quả nhiên là sai lầm. còn nằm ở chỗ các nhân vật thường lồng ghép rất nhiều thông tin từ các bộ truyện tranh, light novel, tác phẩm văn họ khác trong các đoạn hội thoại, kèm theo đó là cách nói chuyện sử dụng nhiều cách thức chơi chữ của các nhân vật chính, khiến bộ truyện trở nên độc đáo và hoàn toàn không giống bất cứ một bộ light novel học đường nào khác.', 79000, 'photos/products/chuyentinh.png', 95, 1, '2022-05-10 15:49:16.325606', '2022-05-18 09:43:25.865662', 7);

-- --------------------------------------------------------

--
-- Table structure for table `store_reviewrating`
--

CREATE TABLE `store_reviewrating` (
  `id` bigint(20) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `review` longtext NOT NULL,
  `rating` double NOT NULL,
  `ip` varchar(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `store_reviewrating`
--

INSERT INTO `store_reviewrating` (`id`, `subject`, `review`, `rating`, `ip`, `created_at`, `updated_at`, `product_id`, `user_id`) VALUES
(14, 'sdfasdf', 'ádf', 3, '127.0.0.1', '2022-05-18 09:25:39.295755', '2022-05-18 09:25:39.295755', 7, 1),
(15, 'fb', 'vbc', 4.5, '127.0.0.1', '2022-05-18 09:42:55.851859', '2022-05-18 09:42:55.851859', 12, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_account`
--
ALTER TABLE `accounts_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

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
-- Indexes for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cartitem_product_id_acd010e4_fk_store_product_id` (`product_id`),
  ADD KEY `carts_cartitem_user_id_4d21e0d9_fk_accounts_account_id` (`user_id`),
  ADD KEY `carts_cartitem_cart_id_9cb0a756_fk_carts_cart_id` (`cart_id`);

--
-- Indexes for table `category_category`
--
ALTER TABLE `category_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_account_id` (`user_id`);

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
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_user_id_e9b59eb1_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_orderproduct_order_id_5022a3e2_fk_orders_order_id` (`order_id`),
  ADD KEY `orders_orderproduct_product_id_4d6ac024_fk_store_product_id` (`product_id`),
  ADD KEY `orders_orderproduct_user_id_1e7a7ab7_fk_accounts_account_id` (`user_id`);

--
-- Indexes for table `store_product`
--
ALTER TABLE `store_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_name` (`product_name`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `store_product_category_id_574bae65_fk` (`category_id`);

--
-- Indexes for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_reviewrating_product_id_2e1974d6_fk_store_product_id` (`product_id`),
  ADD KEY `store_reviewrating_user_id_da0ed849_fk_accounts_account_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_account`
--
ALTER TABLE `accounts_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `category_category`
--
ALTER TABLE `category_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `store_product`
--
ALTER TABLE `store_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- Constraints for table `carts_cartitem`
--
ALTER TABLE `carts_cartitem`
  ADD CONSTRAINT `carts_cartitem_cart_id_9cb0a756_fk` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cartitem_product_id_acd010e4_fk` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `carts_cartitem_user_id_4d21e0d9_fk` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_user_id_e9b59eb1_fk` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `orders_orderproduct`
--
ALTER TABLE `orders_orderproduct`
  ADD CONSTRAINT `orders_orderproduct_order_id_5022a3e2_fk` FOREIGN KEY (`order_id`) REFERENCES `orders_order` (`id`),
  ADD CONSTRAINT `orders_orderproduct_product_id_4d6ac024_fk` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `orders_orderproduct_user_id_1e7a7ab7_fk` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);

--
-- Constraints for table `store_product`
--
ALTER TABLE `store_product`
  ADD CONSTRAINT `store_product_category_id_574bae65_fk` FOREIGN KEY (`category_id`) REFERENCES `category_category` (`id`);

--
-- Constraints for table `store_reviewrating`
--
ALTER TABLE `store_reviewrating`
  ADD CONSTRAINT `store_reviewrating_product_id_2e1974d6_fk` FOREIGN KEY (`product_id`) REFERENCES `store_product` (`id`),
  ADD CONSTRAINT `store_reviewrating_user_id_da0ed849_fk` FOREIGN KEY (`user_id`) REFERENCES `accounts_account` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
