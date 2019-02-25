-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.37-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table chemdb.abouts
CREATE TABLE IF NOT EXISTS `abouts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name_line2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_header` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_footer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `googleplus` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` bigint(20) NOT NULL,
  `created_by` bigint(20) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.abouts: ~0 rows (approximately)
/*!40000 ALTER TABLE `abouts` DISABLE KEYS */;
INSERT INTO `abouts` (`id`, `address`, `site_title`, `site_name`, `company_name`, `company_name_line2`, `logo_header`, `logo_footer`, `content`, `phone`, `email`, `facebook`, `googleplus`, `youtube`, `skype`, `updated_at`, `created_at`, `updated_by`, `created_by`, `deleted`) VALUES
	(1, '151 Bến Vân Đồn, Phường 6, Quận 4', 'HACO Trading', 'yourdomain.com', 'CÔNG TY TNHH TM DV XNK KHÁNH HÀ', 'KHACH HA CO., Ltd', '/public/files/images/logo.png', '/public/files/images/logo.png', '&lt;h2 style=&quot;font-style:italic;&quot;&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;&lt;b&gt;C&amp;Ocirc;NG TY TNHH TM DV XUẤT NHẬP KHẨU&amp;nbsp;KH&amp;Aacute;NH H&amp;Agrave; (HACO limitted)&lt;/b&gt;&lt;/span&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;L&amp;agrave; c&amp;ocirc;ng ty chuy&amp;ecirc;n cung ứng h&amp;oacute;a chất cho c&amp;aacute;c đơn vị c&amp;ocirc;ng ty sản xuất tr&amp;ecirc;n phạm vi to&amp;agrave;n quốc.&lt;/p&gt;\r\n\r\n&lt;p&gt;Với nhiều năm kinh nghiệm v&amp;agrave; ph&amp;aacute;t triển ng&amp;agrave;y nay c&amp;ocirc;ng ty&amp;nbsp;&lt;strong&gt;KH&amp;Aacute;NH H&amp;Agrave;&lt;/strong&gt;&amp;nbsp;đ&amp;atilde; c&amp;oacute; đầy đủ đội ngũ nh&amp;acirc;n vi&amp;ecirc;n h&amp;ugrave;ng mạnh v&amp;agrave; cơ sở vật chất vững tr&amp;atilde;i, đảm bảo phục vụ tốt mọi nhu cầu của qu&amp;yacute; kh&amp;aacute;ch h&amp;agrave;ng.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;C&amp;ocirc;ng ty ch&amp;uacute;ng t&amp;ocirc;i chuy&amp;ecirc;n:&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n	&lt;li&gt;&lt;strong&gt;&lt;em&gt;Mua b&amp;aacute;n c&amp;aacute;c sản phẩm h&amp;oacute;a chất c&amp;ocirc;ng nghiệp phục vụ ng&amp;agrave;nh sản xuất.&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;&lt;em&gt;Tư vấn v&amp;agrave; Mua b&amp;aacute;n Phụ gia, hương liệu m&amp;agrave;u &amp;nbsp;thực phẩm&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;&lt;em&gt;Tư vấn v&amp;agrave; &amp;nbsp;cung cấp dịch vụ về xử l&amp;yacute; nước&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;Mua b&amp;aacute;n ho&amp;aacute; chất chuy&amp;ecirc;n ng&amp;agrave;nh thuỷ sản, tẩy rửa, s&amp;aacute;t khuẩn,&amp;hellip;.&lt;/strong&gt;&lt;/li&gt;\r\n	&lt;li&gt;&lt;strong&gt;&lt;em&gt;Cung cấp c&amp;aacute;c sản phẩm nước tẩy rửa dung trong gia đ&amp;igrave;nh, nh&amp;agrave; h&amp;agrave;ng v&amp;agrave; kh&amp;aacute;ch sạn (Home care).&lt;/em&gt;&lt;/strong&gt;&lt;/li&gt;\r\n&lt;/ol&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;&lt;em&gt;​&lt;/em&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;C&amp;ocirc;ng ty chuy&amp;ecirc;n kinh doanh, nhập khẩu c&amp;aacute;c sản phẩm ho&amp;aacute; chất tinh khiết từ c&amp;aacute;c h&amp;atilde;ng lớn tr&amp;ecirc;n thế giới như Samsung, Xi long, ihuada.. C&amp;aacute;c sản phẩm h&amp;oacute;a chất c&amp;ocirc;ng nghiệp d&amp;ugrave;ng cho c&amp;aacute;c ng&amp;agrave;nh c&amp;ocirc;ng nghiệp như: Dệt nhuộm, mạ điện, khai kho&amp;aacute;ng, sơn, giấy, xử l&amp;yacute; nước cấp, nước thải,..&lt;/p&gt;\r\n\r\n&lt;p&gt;Nhập khẩu một số ho&amp;aacute; chất c&amp;ocirc;ng nghiệp sử dụng trong c&amp;aacute;c ng&amp;agrave;nh c&amp;ocirc;ng nghiệp như mạ,thực phẩm, giấy, khai kho&amp;aacute;ng, thức ăn gia s&amp;uacute;c, ho&amp;aacute; dược v&amp;agrave; xử l&amp;yacute; m&amp;ocirc;i trường của c&amp;aacute;c nh&amp;agrave; sản xuất c&amp;oacute; uy t&amp;iacute;n tr&amp;ecirc;n thế giới như : Th&amp;aacute;i Lan ,Ph&amp;aacute;p &amp;yacute;, Đức , &amp;nbsp;T&amp;acirc;y Ban nha , Nhật, H&amp;agrave;n Quốc, Trung quốc, Mỹ, Đ&amp;agrave;i Loan..&lt;/p&gt;\r\n\r\n&lt;p&gt;Định hướng ph&amp;aacute;t triển mũi nhọn của c&amp;ocirc;ng ty hiện nay l&amp;agrave; đẩy mạnh kinh doanh c&amp;aacute;c sản phẩm chuy&amp;ecirc;n s&amp;acirc;u về ho&amp;aacute; học c&amp;oacute; hiệu quả sử dụng cao, th&amp;acirc;n thiện với m&amp;ocirc;i trường sống v&amp;agrave; kh&amp;ocirc;ng ngừng n&amp;acirc;ng cao&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;HACO&lt;/strong&gt;&amp;nbsp;&amp;quot;&lt;strong&gt;S&amp;aacute;ng tạo &amp;ndash; Đổi mới&amp;nbsp; - Ph&amp;aacute;t triển&amp;quot; &amp;nbsp;để phục vụ kh&amp;aacute;ch h&amp;agrave;ng &amp;nbsp;!&lt;/strong&gt;&lt;/p&gt;\r\n', '0919 493 663 - 0965 316 208', 'khanhhaltd2018@gmail.com', NULL, NULL, NULL, NULL, '2019-02-25 21:18:53', '2018-12-08 16:26:20', 1, 1, 0);
/*!40000 ALTER TABLE `abouts` ENABLE KEYS */;

-- Dumping structure for table chemdb.banner
CREATE TABLE IF NOT EXISTS `banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `animtion` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `animtion_text_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `animtion_text_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.banner: ~4 rows (approximately)
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` (`id`, `image`, `animtion`, `text`, `text2`, `position_text`, `animtion_text_1`, `animtion_text_2`, `link`, `deleted`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
	(1, '/public/files/images/panel_1.jpg', 'fadeIn', 'HACO', '&lt;p&gt;- Tinh bột&lt;/p&gt;\r\n', 'slide_style_left', 'bounceInDown', 'fadeIn', '#', 0, '2016-04-25 12:52:33', '2019-01-02 22:01:15', 0, 1),
	(2, '/public/files/images/panel_3.jpg', 'fadeIn', '/', '&lt;p&gt;Cung cấp c&amp;aacute;c sản phẩm từ nha đam, thạch dừa v&amp;agrave; t&amp;ugrave; tr&amp;a', 'slide_style_left', 'flipInY', 'flipInX', '#', 0, '2016-07-01 10:39:28', '2019-01-02 22:00:09', 1, 1),
	(5, '/images/banner/panel_4.jpeg', NULL, 'cvbcvbc', 'dfgdfgdfg', NULL, NULL, NULL, '#', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0),
	(6, '/public/files/images/panel_2.jpg', 'fadeIn', '/', '&lt;p&gt;Cung cấp c&amp;aacute;c dung m&amp;ocirc;i, h&amp;oacute;a chất c&amp;ocirc;ng nghiệp cho c', 'slide_style_right', 'slideInDown', 'fadeIn', NULL, 0, '2018-04-23 22:15:38', '2019-01-02 22:00:40', 3, 1);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;

-- Dumping structure for table chemdb.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT '',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table chemdb.categories: ~4 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `deleted`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
	(1, 'Hoá Chất Ngành Thực Phẩm', 'thuc-pham', '', 0, 1, 0, '2018-11-22 22:14:00', '2018-08-30 16:28:54'),
	(2, 'Hoá Chất Nghành Dược', 'nganh-duoc', '', 0, 1, 0, '2018-11-22 22:16:08', '2018-08-29 16:28:59'),
	(3, 'Hoá Chật và Vật Tư Nghành Môi Trường', 'moi-truong', '', 0, 1, 0, '2018-11-22 22:16:18', '2018-08-28 16:29:03'),
	(4, 'Hoá Chất và Dung Môi Công Nghiệp', 'cong-nghiep', '', 0, 1, 0, '2018-11-22 22:16:26', '2018-08-27 16:29:06');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table chemdb.category_details
CREATE TABLE IF NOT EXISTS `category_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` bigint(20) NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table chemdb.category_details: ~21 rows (approximately)
/*!40000 ALTER TABLE `category_details` DISABLE KEYS */;
INSERT INTO `category_details` (`id`, `name`, `slug`, `category_id`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, 'Hương Liệu Thực Phẩm', 'huong-lieu-thuc-pham', 1, '', 3, 1, '2018-04-22 22:20:13', '2018-12-12 21:27:39', 0),
	(2, 'Màu thực phẩm', 'mau-thuc-pham', 1, '', 3, 1, '2018-04-22 22:20:20', '2018-12-12 21:27:46', 0),
	(3, 'Chất bảo quản', 'chat-bao-quan', 1, '', 3, 1, '2018-04-22 22:20:30', '2018-12-12 21:27:53', 0),
	(4, 'Chất tạo ngọt', 'chat-tao-ngot', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:27:58', 0),
	(5, 'Chất điều vị', 'chat-dieu-vi', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:28:06', 0),
	(6, 'Chất chống oxy hóa', 'chat-chong-oxy-hoa', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:28:16', 0),
	(7, 'Chất tạo xốp', 'chat-tao-xop', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:28:23', 0),
	(8, 'Chất làm dầy', 'chat-lam-day', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:28:30', 0),
	(9, 'Chất điều chỉnh acid', 'chat-dieu-chinh-acid', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:28:40', 0),
	(10, 'Chất làm rắn chắc', 'chat-lam-ran-chac', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:28:49', 0),
	(11, 'Chất nhũ hóa', 'chat-nhu-hoa', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:28:57', 0),
	(12, 'Chất ổn định', 'chat-on-dinh', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:04', 0),
	(13, 'Chất làm bóng', 'chat-lam-bong', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:10', 0),
	(14, 'Chất chống vón', 'chat-chong-von', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:17', 0),
	(15, 'Chất tạo phức', 'chat-tao-phuc', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:25', 0),
	(16, 'Chất chống tạo bọt', 'chat-chong-tao-bot', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:33', 0),
	(17, 'Chế Biến Thịt cá', 'che-bien-thit-ca', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:41', 0),
	(18, 'Chế Biến Cà phê', 'che-bien-ca-phe', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:48', 0),
	(19, 'Nước giải khát', 'nuoc-giai-khat', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:29:55', 0),
	(20, 'Bột thực phẩm', 'bot-thuc-pham', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:30:13', 0),
	(21, 'Bánh kẹo', 'banh-keo', 1, '', 3, 1, '2018-04-22 22:20:39', '2018-12-12 21:30:18', 0);
/*!40000 ALTER TABLE `category_details` ENABLE KEYS */;

-- Dumping structure for table chemdb.contacts
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT '0',
  `user_id` bigint(20) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci,
  `deleted` tinyint(4) NOT NULL,
  `created_by` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.contacts: ~11 rows (approximately)
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` (`id`, `product_id`, `user_id`, `name`, `adress`, `email`, `phone`, `title`, `message`, `deleted`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
	(1, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', '', 0, 0, '2018-11-24 22:13:43', 0, '2018-11-24 22:13:43'),
	(2, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', '', 0, 0, '2018-11-24 22:28:52', 0, '2018-11-24 22:28:52'),
	(3, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', '', 0, 0, '2018-11-24 22:31:51', 0, '2018-11-24 22:31:51'),
	(4, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', '', 0, 0, '2018-11-24 22:34:17', 0, '2018-11-24 22:34:17'),
	(5, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', '', 0, 0, '2018-11-24 22:47:04', 0, '2018-11-24 22:47:04'),
	(6, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', 'aaaaaaaaaaaaaaaaaaa', 0, 0, '2018-11-24 22:48:39', 0, '2018-11-24 22:48:39'),
	(7, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', 'aaaaaaaaaaaaaaa', 0, 0, '2018-11-24 22:57:01', 0, '2018-11-24 22:57:01'),
	(8, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', 'aaaaaaa', 0, 0, '2018-11-24 22:58:02', 0, '2018-11-24 22:58:02'),
	(9, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '0765743476', 'liên lạc mới', 'kjskjdskdjks', 0, 0, '2018-11-25 19:52:26', 0, '2018-11-25 19:52:26'),
	(10, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '076-574-3476', 'liên lạc mới', 'sasasaas', 0, 0, '2018-12-01 14:23:55', 0, '2018-12-01 14:23:55'),
	(11, 0, 0, 'Thach Thai Huy', 'asdssds', 'ththhuy@gmail.com', '076-574-3476', 'Liên Hê Về Sản Phẩm Acid Lactic - C3H6O3', 'thong tin ve gia', 0, 0, '2018-12-12 21:26:00', 0, '2018-12-12 21:26:00');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;

-- Dumping structure for table chemdb.feedbacks
CREATE TABLE IF NOT EXISTS `feedbacks` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `deleted` tinyint(4) NOT NULL,
  `created_by` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` tinyint(4) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.feedbacks: ~0 rows (approximately)
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;

-- Dumping structure for table chemdb.manufactures
CREATE TABLE IF NOT EXISTS `manufactures` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) COLLATE utf8_bin NOT NULL,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Dumping data for table chemdb.manufactures: ~16 rows (approximately)
/*!40000 ALTER TABLE `manufactures` DISABLE KEYS */;
INSERT INTO `manufactures` (`id`, `name`, `slug`, `deleted`, `updated_by`, `created_by`, `created_at`, `updated_at`) VALUES
	(18, 'On Optinum Nutrition', 'on-optinum-nutrition', 0, 1, 1, '2018-08-30 16:52:47', '2018-08-30 16:52:47'),
	(19, 'Muscletech', 'muscletech', 0, 1, 1, '2018-08-30 16:53:07', '2018-08-30 16:53:07'),
	(20, 'Dymatize', 'dymatize', 0, 1, 1, '2018-08-30 16:53:15', '2018-08-30 16:53:15'),
	(21, 'Labrada', 'labrada', 0, 1, 1, '2018-08-30 16:53:26', '2018-08-30 16:53:26'),
	(22, 'BPI Sport', 'bpi-sport', 0, 1, 1, '2018-08-30 16:53:36', '2018-08-30 16:53:36'),
	(23, 'All Max', 'all-max', 0, 1, 1, '2018-08-30 16:53:47', '2018-08-30 16:53:47'),
	(24, 'My Protein', 'my-protein', 0, 1, 1, '2018-08-30 16:54:25', '2018-08-30 16:54:25'),
	(25, 'Rule 1 Protein', 'rule-1-protein', 0, 1, 1, '2018-08-30 16:54:32', '2018-08-30 16:54:32'),
	(26, 'Cellucor', 'cellucor', 0, 1, 1, '2018-08-30 16:54:42', '2018-08-30 16:54:42'),
	(27, 'Mutant', 'mutant', 0, 1, 1, '2018-08-30 16:54:50', '2018-08-30 16:54:50'),
	(28, 'Nutrex', 'nutrex', 0, 1, 1, '2018-08-30 16:55:01', '2018-08-30 16:55:01'),
	(29, 'Bulk Powder', 'bulk-powder', 0, 1, 1, '2018-08-30 16:55:30', '2018-08-30 16:55:30'),
	(30, 'Quaker', 'quaker', 0, 1, 1, '2018-08-30 16:55:38', '2018-08-30 16:55:38'),
	(31, 'Scivation', 'scivation', 0, 1, 1, '2018-08-30 16:57:21', '2018-08-30 16:57:21'),
	(32, 'Prosupps', 'prosupps', 0, 1, 1, '2018-09-18 15:18:41', '2018-09-18 15:18:41'),
	(33, 'MusclePharm', 'musclepharm', 0, 1, 1, '2018-09-18 15:49:19', '2018-09-18 15:49:19');
/*!40000 ALTER TABLE `manufactures` ENABLE KEYS */;

-- Dumping structure for table chemdb.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `total_price` double NOT NULL DEFAULT '0',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '1. Chưa xem, 2. Đang xử lý, 3. Đã giao hàng, 4. Hủy',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.orders: ~0 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table chemdb.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL DEFAULT '0',
  `product_id` bigint(20) NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.order_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

-- Dumping structure for table chemdb.partner
CREATE TABLE IF NOT EXISTS `partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_web` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.partner: ~5 rows (approximately)
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` (`id`, `name`, `image`, `link_web`, `deleted`, `created_by`, `updated_by`, `updated_at`, `created_at`) VALUES
	(1, 'MDI', '/images/partner/MDILogo.png', '', 0, 0, 0, '2018-11-24 14:02:06', '2018-11-24 13:49:54'),
	(2, 'Plasma', '/images/partner/plasmalogo.jpg', '', 0, 0, 0, '2018-11-24 14:02:09', '2018-11-24 13:49:54'),
	(3, 'ABC', '/images/partner/logo_3.png', '', 0, 0, 0, '2018-11-24 14:04:06', '2018-11-24 13:49:54'),
	(4, 'XYZ', '/images/partner/logo_4.jpg', '', 0, 0, 0, '2018-11-24 14:04:06', '2018-11-24 13:49:54'),
	(5, 'bbbbbbbbbb', '/public/files/images/4.jpg', '', 0, 1, 1, '2018-12-01 09:10:45', '2018-12-01 09:06:17');
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;

-- Dumping structure for table chemdb.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `resource` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usersId` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table chemdb.permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table chemdb.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table chemdb.posts: ~0 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table chemdb.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL DEFAULT '0',
  `category_detail_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `sale_price` double DEFAULT '0',
  `image_thumbnail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `image_slides` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `short_description` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0. Cũ, 1. Mới, 2. Hot',
  `specifications` text COLLATE utf8mb4_unicode_ci,
  `rating` float DEFAULT '0',
  `count_rating` float DEFAULT '0',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.products: ~39 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `category_id`, `category_detail_ids`, `name`, `slug`, `price`, `sale_price`, `image_thumbnail`, `image_slides`, `short_description`, `description`, `status`, `specifications`, `rating`, `count_rating`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, 1, ',1,9,17,25,33,', 'Aedream Black Raspberry Extract saadddddd', 'aedream-black-raspberry-extract-1692300', 1, 0, '/images/products/1.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', 'Product Code: ABRE-30PCH Availability: In Stock', 'Richest source of Vitamin C1', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>30 Pouches x 100ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<p>Black Raspberry&nbsp;95%</p>\r\n\r\n			<p>Oligosaccharide&nbsp;5%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>3.4kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-01 22:57:34', '2017-07-02 03:11:02', 1),
	(2, 1, '17,25,33,10,', 'AEDREAM ORGANIC BLUEBERRY EXTRACT', 'aedream-organic-blueberry-extract-0022900', 22222, 1111, '/images/products/2.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', 'Product Code: AOBE-30PCH Availability: In Stock', 'Richest source of Vitamin C2', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>30 Pouches x 80ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<p>Blueberry 95%</p>\r\n\r\n			<p>Oligosaccharide 5%</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>2.83kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:13:30', '2016-07-02 04:30:20', 1),
	(3, 1, ',1,9,17,25,10,', 'ASAMI COLLAGEN EX10000', 'asami-collagen-ex10000-1221100', 2, 2342, '/images/products/3.jpg', '/images/products/15.jpg,/images/products/9.jpg,/images/products/10.jpg,/images/products/11.jpg', 'Product Code: AC10000-10PCH Availability: In Stock', 'Richest source of Vitamin C3', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>10 Pouches x 50ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<p>Fish Collagen Peptide</p>\r\n\r\n			<p>Rose Petal Extract</p>\r\n\r\n			<p>Seaweed Extract</p>\r\n\r\n			<p>Camellia Japonica Seed Extract</p>\r\n\r\n			<p>CoEnzyme Q10</p>\r\n\r\n			<p>Elastin Peptide</p>\r\n\r\n			<p>Hyaluronic Acid</p>\r\n\r\n			<p>Chondroitin Sulfate/Glucosamine Hydrochloride</p>\r\n\r\n			<p>L-Cystine</p>\r\n\r\n			<p>L-Carnitine</p>\r\n\r\n			<p>Calcium</p>\r\n\r\n			<p>Vitamin C</p>\r\n\r\n			<p>Multi Vitamins</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>610gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:16:24', '2016-07-02 03:16:24', 1),
	(4, 1, ',9,17,25,10,', 'FERMENT BLACK GARLIC', 'ferment-black-garlic-2118900', 3, 345345, '/images/products/4.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', 'Product Code: FBG-90CPS Availability: In Stock68.00 ', 'Richest source of Vitamin C4', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>90 Capsules x 250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n\r\n			<p>(Per 3 Capsules)</p>\r\n			</td>\r\n			<td>\r\n			<p>510mg Ferment Black Garlic Extract</p>\r\n\r\n			<p>150mg Black Onion Extract</p>\r\n\r\n			<p>90mg Dextrin</p>\r\n\r\n			<p>90mg Ester</p>\r\n\r\n			<p>90mg Silicon Dioxide.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>55gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:18:26', '2016-07-02 03:18:26', 1),
	(5, 2, ',2,10,18,26,34,', 'GLUTATHIONE GOLD', 'glutathione-gold-5197100', 4, 0, '/images/products/5.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', 'Product Code: GG-60SCH Availability: In Stock', 'Richest source of Vitamin C5', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>60 Sachets x 2g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<p>Yeast Extract</p>\r\n\r\n			<p>Gluthathione</p>\r\n\r\n			<p>Dextrin</p>\r\n\r\n			<p>Milk Sugar</p>\r\n\r\n			<p>Apple Juice Powder</p>\r\n\r\n			<p>L-Ornitine</p>\r\n\r\n			<p>Malic</p>\r\n\r\n			<p>Apple Flavour</p>\r\n\r\n			<p>Sucralose</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>193gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:21:00', '2016-07-02 03:21:00', 1),
	(6, 2, ',18,26,34,', 'HIGH GOLD VITAMIN C 1000', 'high-gold-vitamin-c-1000-7703300', 5, 0, '/images/products/6.jpg', '/images/products/15.jpg,/images/products/9.jpg,/images/products/10.jpg,/images/products/11.jpg', 'Product Code: HGVC-30SCH Availability: In Stock', 'Richest source of Vitamin C6', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>30 Sachet x 3g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<p>1050mg Vitamin C</p>\r\n\r\n			<p>900mg Powder Sugar</p>\r\n\r\n			<p>876.9mg Milk Sugar</p>\r\n\r\n			<p>60mg Honey Powder</p>\r\n\r\n			<p>30mg Camcam (Myrciariadubia)</p>\r\n\r\n			<p>30mg Acerola</p>\r\n\r\n			<p>30mg Lemon Flavour</p>\r\n\r\n			<p>9mg Starch</p>\r\n\r\n			<p>7.5mg Rose HP</p>\r\n\r\n			<p>5.4mg Sucralose</p>\r\n\r\n			<p>1.2mg Vitamin B2</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>123gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:22:11', '2016-07-02 03:22:11', 1),
	(7, 2, ',2,10,18,4,', 'KAKI GOLD (JAPANESE OYSTER WITH SHITAKE EXTRACT)', 'kaki-gold-japanese-oyster-with-shitake-extract-5347800', 69, 69, '/images/products/7.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', 'Product Code: JOEKG-90SGL Availability: In Stock', 'Richest source of Vitamin C7', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>90 Softgels x 450mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n\r\n			<p>(Per 3 Softgels)</p>\r\n			</td>\r\n			<td>\r\n			<p>390mg Japanese Oyster Extract Powder</p>\r\n\r\n			<p>360mg Japanese Oyster Extract</p>\r\n\r\n			<p>90mg Shitake Extract</p>\r\n\r\n			<p>60mg Vitamin E</p>\r\n\r\n			<p>369mg Safflower Oil</p>\r\n\r\n			<p>81mg Beewax</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>65gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:24:03', '2016-07-02 03:24:15', 1),
	(8, 2, ',10,18,26,', 'MANNAN CGF EXTRACT', 'mannan-cgf-extract-7082200', 6, 0, '/images/products/8.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', 'Product Code: MCGF-720ML Availability: In Stock', 'Richest source of Vitamin C8', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>720ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<p>CGF</p>\r\n\r\n			<p>Honey</p>\r\n\r\n			<p>Oligosaccharide</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>1.57kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:25:54', '2016-07-02 03:25:54', 1),
	(9, 3, ',11,19,27,35,10,', 'MANNAN CHLORELLA ACE GOLD (1500 TABLETS)', 'mannan-chlorella-ace-gold-1500-tablets-2907700', 7, 0, '/images/products/9.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', 'Product Code: MCAG-1500TBL Availability: In Stock', 'Richest source of Vitamin C9', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>1500 Tablets x 200mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n			</td>\r\n			<td>100% Top Grade Chlorella Powder</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>764gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:38:13', '2016-07-02 03:38:31', 1),
	(10, 3, ',19,27,35,10,', 'MANNAN CHLORELLA ACE GOLD (300 TABLETS)', 'mannan-chlorella-ace-gold-300-tablets-5609700', 8, 0, '/images/products/10.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', 'Product Code: MCAG-300TBL Availability: In Stock', 'Richest source of Vitamin C10', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>300 Tablets x 200mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n			</td>\r\n			<td>100% Top Grade Chlorella Powder</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:40:33', '2016-07-02 03:40:33', 1),
	(11, 3, ',11,19,27,10,', 'MANNAN SPIRULINA', 'mannan-spirulina-462800', 9, 456, '/images/products/11.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', 'Product Code: MS-1300TBL Availability: In Stock', 'Richest source of Vitamin C11', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>1300 Tablets x 200mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n			</td>\r\n			<td>100% Top Grade Spirulina Powder</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>723gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 03:42:28', '2016-07-02 04:56:44', 1),
	(12, 5, ',5,13,21,29,10,', 'NATTOKINASE SOD', 'nattokinase-sod-745300', 98, 0, '/images/products/12.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', 'Product Code: NTK-90CPS Availability: In Stock', 'Richest source of Vitamin C12', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>90 Capsules x 300mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n			</td>\r\n			<td>\r\n			<p>Fermented Soybean Extract</p>\r\n\r\n			<p>GMT (Fermented Rice Embryo &amp; Soybean Extract)</p>\r\n\r\n			<p>Safflower Oil</p>\r\n\r\n			<p>Glycerlin Fatty Acid Ester.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>92gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 04:07:11', '2016-07-02 04:07:11', 1),
	(13, 5, ',1,9,17,25,10,', 'PURE FISH COLLAGEN', 'pure-fish-collagen-0082300', 67, 567567, '/images/products/13.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', 'Product Code: PFC-300TBL Availability: In Stock', 'Richest source of Vitamin C13', 0, '<p>Content300 Tablets x 200mg</p>\r\n\r\n<p>Ingredients</p>\r\n\r\n<p>Fish Collagen</p>\r\n\r\n<p>Chondroitin</p>\r\n\r\n<p>Royal Jelly</p>\r\n\r\n<p>Vitamin C</p>\r\n\r\n<p>Calcium</p>\r\n\r\n<p>Gross Weight90gm</p>\r\n', 0, 0, 1, 1, '2016-07-02 04:11:39', '2016-07-02 04:11:39', 1),
	(14, 5, ',5,13,21,37,45,10,', 'SILKY AMINO', 'silky-amino-3643600', 4555553, 2423455, '/images/products/14.jpg', '/images/products/15.jpg,/images/products/9.jpg,/images/products/10.jpg,/images/products/11.jpg', 'Product Code: SA-60SCH Availability: In Stock', 'Richest source of Vitamin C14', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>60 Sachets x 3g</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n			</td>\r\n			<td>\r\n			<p>Silk Peptide Powder</p>\r\n\r\n			<p>Sugaralose</p>\r\n\r\n			<p>Leucine</p>\r\n\r\n			<p>Fish Collagen Peptide</p>\r\n\r\n			<p>Dextrin</p>\r\n\r\n			<p>Valine Isoleucine</p>\r\n\r\n			<p>Citric Acid</p>\r\n\r\n			<p>Lemon Flavour</p>\r\n\r\n			<p>Ornitine</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>250gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 04:13:17', '2016-07-02 04:13:17', 1),
	(15, 2, ',49,10,26,42,2,', 'SOD BALANCER', 'sod-balancer-8664700', 56, 345345, '/images/products/15.jpg', '/images/products/15.jpg,/images/products/9.jpg,/images/products/10.jpg,/images/products/11.jpg', '&lt;p&gt;Product Code: SODB-30PCH Availability: In Stock&lt;/p&gt;\r\n', '&lt;p&gt;Richest source of Vitamin C15&lt;/p&gt;\r\n', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>30 Pouches x 30ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ingredients</td>\r\n			<td>\r\n			<p>GMT (fermented rice embryo - soy bean extract)</p>\r\n\r\n			<p>Glucose</p>\r\n\r\n			<p>Green Tea Extract</p>\r\n\r\n			<p>DL-Alanine</p>\r\n\r\n			<p>Rooibos Tea Pure Powder (Aspalathos Linearis)</p>\r\n\r\n			<p>Oligosaccharide</p>\r\n\r\n			<p>Fiber</p>\r\n\r\n			<p>Ganoderma Lucidum Extract</p>\r\n\r\n			<p>Collagen</p>\r\n\r\n			<p>Crataegus Extract</p>\r\n\r\n			<p>Ascorbic Acid</p>\r\n\r\n			<p>Citric Acid</p>\r\n\r\n			<p>Caramel</p>\r\n\r\n			<p>Hyaluronic Acid</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>1.13kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 3, '2016-07-02 04:15:41', '2018-04-24 00:15:30', 1),
	(16, 5, ',5,13,21,10,', 'SUPER COLLAGEN COQ10', 'super-collagen-coq10-2350800', 128.1, 455656, '/images/products/16.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', 'Product Code: SCCOQ10-720ML Availability: In Stock', 'Richest source of Vitamin C16', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>720ml</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n			</td>\r\n			<td>\r\n			<p>Fish Collagen Peptide</p>\r\n\r\n			<p>CO-Q10</p>\r\n\r\n			<p>A-Lipoic Acid</p>\r\n\r\n			<p>Catechin</p>\r\n\r\n			<p>L-Carnitine</p>\r\n\r\n			<p>Glucosamine</p>\r\n\r\n			<p>Chondroitin</p>\r\n\r\n			<p>Hyaluronic Acid</p>\r\n\r\n			<p>Beta-Cartene</p>\r\n\r\n			<p>Milk Calcium</p>\r\n\r\n			<p>Elastin</p>\r\n\r\n			<p>Royal Jelly</p>\r\n\r\n			<p>Vitamin B1, B2, B6, C, D3, E</p>\r\n\r\n			<p>Magnesium </p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>1.59kg</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 04:17:58', '2016-07-02 04:34:11', 1),
	(17, 4, ',1,9,17,25,', 'GINGKO LEAF EXTRACT', 'gingko-leaf-extract-4809300', 545, 3434, '/images/products/17.jpg', '/images/products/15.jpg,/images/products/9.jpg,/images/products/10.jpg,/images/products/11.jpg', '', 'Richest source of Vitamin C17', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>90 Softgels x 250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n\r\n			<p>(Per 2 Softgels)</p>\r\n			</td>\r\n			<td>\r\n			<p>130mg Ginkgo Leaf Extract</p>\r\n\r\n			<p>100mg Pine Leaf Extract</p>\r\n\r\n			<p>20mg Vitamin E</p>\r\n\r\n			<p>40mg Saffron Powder</p>\r\n\r\n			<p>40mg Soybean Lecithin</p>\r\n\r\n			<p>170mg Safflower.</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>70gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 04:21:56', '2016-07-02 04:21:56', 1),
	(18, 4, ',36,44,20,', 'SUPER DHA 46', 'super-dha-46-4008900', 567, 0, '/images/products/18.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', '', 'Richest source of Vitamin C18', 0, '<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>Content</td>\r\n			<td>120 Softgels x 250mg</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p>Ingredients</p>\r\n			</td>\r\n			<td>\r\n			<p>46% Pure DHA</p>\r\n\r\n			<p>4% EPA</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Gross Weight</td>\r\n			<td>75gm</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 0, 0, 1, 1, '2016-07-02 04:24:16', '2016-07-02 04:24:16', 1),
	(19, 5, ',13,29,37,45,', 'aaaaa 1 22222 3333 444', 'aaaaa-adfasdfasdf-4869900', 1231231123, 34234231, '/images/products/19.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', '&lt;p&gt;fasfdas fasdf &amp;aacute;dfasdfasdf afd &amp;agrave;asfds&lt;/p&gt;\r\n', '&lt;p&gt;lkj aksdfasfdasfawer qẻ waer werwa re&lt;/p&gt;\r\n', 2, NULL, 0, 0, 3, 3, '2017-12-11 22:50:38', '2018-04-24 00:15:09', 1),
	(20, 16, ',8,16,24,40,48,', 'xbhgdfg', 'xbhgdfg-1650200', 46456456, 0, '/images/products/20.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', '&lt;p&gt;fasfdas fasdf &amp;aacute;dfasdfasdf afd &amp;agrave;asfds&lt;/p&gt;\r\n', '&lt;p&gt;lkj aksdfasfdasfawer qẻ waer werwa re&lt;/p&gt;\r\n', 1, NULL, 0, 0, 3, 3, '2018-04-01 22:51:32', '2018-04-24 00:14:36', 1),
	(21, 2, ',1,9,17,25,', 'AAAAAAAAAAA', 'aaaaaaaaaaa-9049100', 243234, 234, '/images/products/8.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', '', '', 0, NULL, 0, 0, 3, 3, '2018-04-23 23:00:04', '2018-04-23 23:00:04', 1),
	(22, 3, ',11,35,10,', 'zxcvzxcvzxcv', 'zxcvzxcvzxcv-0874300', 234234, 5345, '/images/products/8.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', '', '', 2, NULL, 0, 0, 3, 3, '2018-04-23 23:01:36', '2018-04-23 23:01:36', 1),
	(23, 6, ',6,30,10,', 'cbxcncbncbn', 'cbxcncbncbn-8536500', 234, 0, '/images/products/8.jpg', '/images/products/6.jpg,/images/products/5.jpg,/images/products/7.jpg,/images/products/8.jpg', '&lt;p&gt;fasfdas fasdf &amp;aacute;dfasdfasdf afd &amp;agrave;asfds&lt;/p&gt;\r\n', '&lt;p&gt;lkj aksdfasfdasfawer qẻ waer werwa re&lt;/p&gt;\r\n', 1, NULL, 0, 0, 3, 3, '2018-04-23 23:10:31', '2018-04-23 23:26:46', 1),
	(24, 16, ',8,32,10,', 'xcvxcv', 'xcvxcv-390400', 234234, 123, '/images/products/8.jpg', '/images/products/1.jpg,/images/products/2.jpg,/images/products/3.jpg,/images/products/4.jpg', '&lt;p&gt;fasfdas fasdf &amp;aacute;dfasdfasdf afd &amp;agrave;asfds&lt;/p&gt;\r\n', '&lt;p&gt;lkj aksdfasfdasfawer qẻ waer werwa re&lt;/p&gt;\r\n', 2, NULL, 0, 0, 3, 3, '2018-04-23 23:13:36', '2018-04-23 23:26:31', 1),
	(25, 4, ',,', 'Bột nhựa PVC 225P', 'rule-1-protein-5lbs-0403200', 50000, 0, '/public/files/images/20-c-i-M-n-c-Kem-Baking-S-c-T-M-u-Th-c-Ph.jpg_640x640.jpg', '/public/files/images/zsp1461547075.jpg', '&lt;p&gt;PVC còn được gọi là Polyvinyl clorua là m&amp;ocirc;̣t loại nhựa kh&amp;ocirc;ng mùi và ở th&amp;ecirc;̉ rắn. Loại nhựa này ph&amp;ocirc;̉ bi&amp;ecirc;́n nh&amp;acirc;́t là màu trắng nhưng cũng có loại kh&amp;ocirc;ng màu hoặc màu h&amp;ocirc;̉ phách.&lt;/p&gt;\r\n', '&lt;h2&gt;&lt;strong&gt;Ph&amp;acirc;n loại và đặc tính&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;Nhựa PVC&amp;nbsp;có 2 dạng: dạng b&amp;ocirc;̣t màu trắng hoặc dạng b&amp;ocirc;̣t vi&amp;ecirc;n.&lt;/p&gt;\r\n\r\n&lt;p&gt;PVC được tạo thành từ các ph&amp;acirc;n tử vinyl clorua li&amp;ecirc;n k&amp;ecirc;́t với nhau, từ đó tạo thành m&amp;ocirc;̣t polymer.&lt;/p&gt;\r\n\r\n&lt;p&gt;PVC được làm m&amp;ecirc;̀m và linh hoạt hơn bằng cách b&amp;ocirc;̉ sung phthalates vào trong quá trình sản xu&amp;acirc;́t.&lt;/p&gt;\r\n\r\n&lt;p&gt;PVC kh&amp;ocirc;ng độc, sở dĩ n&amp;oacute; chỉ độc là bởi phụ gia, monome VC c&amp;ograve;n dư. Khi gia c&amp;ocirc;ng chế tạo sản phẩm , nhựa sẽ có sự t&amp;aacute;ch tho&amp;aacute;t HCl vì v&amp;acirc;̣y mà &amp;nbsp;PVC chịu va đập k&amp;eacute;m.&lt;/p&gt;\r\n\r\n&lt;p&gt;Để tăng cường t&amp;iacute;nh va đập cho nhựa PVC, người sản xu&amp;acirc;́t thường sử dụng : MBS, ABS, CPE, EVA với tỉ lệ từ 5 &amp;ndash; 15%.&lt;/p&gt;\r\n\r\n&lt;p&gt;PVC là vật liệu c&amp;aacute;ch điện r&amp;acirc;́t tốt, người ta thường th&amp;ecirc;m các ch&amp;acirc;́t hóa dẻo đ&amp;ecirc;̉ tạo tính m&amp;ecirc;̀m dẻo cho PVC. Từ đó, có th&amp;ecirc;̉ ứng dụng PVC vào làm các v&amp;acirc;̣t li&amp;ecirc;̣u cách đi&amp;ecirc;̣n.&lt;/p&gt;\r\n\r\n&lt;h2&gt;&lt;strong&gt;Ứng dụng của nhựa PVC là gì&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;PVC thường được sử dụng đ&amp;ecirc;̉ làm đường &amp;ocirc;́ng, &amp;ocirc;́ng d&amp;acirc;̃n và phụ ki&amp;ecirc;̣n đường &amp;ocirc;́ng.&lt;/li&gt;\r\n	&lt;li&gt;V&amp;acirc;̣t li&amp;ecirc;̣u đ&amp;ecirc;̉ làm sàn vinyl và vinyl vách ngoài.&lt;/li&gt;\r\n	&lt;li&gt;Được sử dụng đ&amp;ecirc;̉ làm d&amp;acirc;y và cáp sơn.&lt;/li&gt;\r\n	&lt;li&gt;V&amp;acirc;̣t li&amp;ecirc;̣u đóng gói, bao bì màng, máng nước, mi&amp;ecirc;́ng đ&amp;ecirc;̣m, poster, pano, băng r&amp;ocirc;n quảng cáo&lt;/li&gt;\r\n	&lt;li&gt;D&amp;ecirc;̣t may hoàn thi&amp;ecirc;̣n, b&amp;ocirc;̣ trải giường mỏng, màng mái,h&amp;ecirc;̣ th&amp;ocirc;́ng thủy lợi, thảm sàn&amp;hellip;&lt;/li&gt;\r\n	&lt;li&gt;Làm&amp;nbsp;t&amp;acirc;́m nhựa PVC, ứng dụng trong n&amp;ocirc;̣i th&amp;acirc;́t, x&amp;acirc;y dựng&amp;hellip;&lt;/li&gt;\r\n	&lt;li&gt;Sử dụng làm các thi&amp;ecirc;́t bị y t&amp;ecirc;́ như túi xách tĩnh mạch, túi đựng máu, &amp;ocirc;́ng h&amp;ocirc; h&amp;acirc;́p, &amp;ocirc;́ng th&amp;ocirc;ng, thi&amp;ecirc;́t bị lọc máu,&amp;hellip;&lt;/li&gt;\r\n	&lt;li&gt;Làm đ&amp;ocirc;̀ chơi giải trí và m&amp;ocirc;̣t s&amp;ocirc;́ đ&amp;ocirc;̀ th&amp;ecirc;̉ thao.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 0, NULL, 0, 0, 1, 1, '2018-08-30 17:15:50', '2018-12-11 22:33:48', 0),
	(26, 4, ',,', 'Methyl Acetate', 'rule-1-protein-10-lbs-9334400', -1, 0, '/public/files/images/ch3oh-dm-2714.png', '/public/files/images/h%C6%B0%C6%A1ng%20thit%20thai%20lan.jpg', '&lt;p&gt;Xuất xứ: Đ&amp;agrave;i Loan&lt;/p&gt;\r\n\r\n&lt;p&gt;Quy c&amp;aacute;ch: 190 kg/phuy&lt;/p&gt;\r\n', '&lt;p&gt;C&amp;ocirc;ng thức h&amp;oacute;a học: C3H6O2 hay CH3COOCH3&lt;/p&gt;\r\n\r\n&lt;p&gt;Khối lượng ph&amp;acirc;n tử:74.08g/mol&lt;/p&gt;\r\n\r\n&lt;h2&gt;C&amp;aacute;c đặc t&amp;iacute;nh của h&amp;oacute;a chất Methyl Acetate:&lt;/h2&gt;\r\n\r\n&lt;p&gt;Dạng tồn tại: Chất lỏng kh&amp;ocirc;ng m&amp;agrave;u, trong suốt&lt;/p&gt;\r\n\r\n&lt;p&gt;M&amp;ugrave;i: Ngọt nhẹ&lt;/p&gt;\r\n\r\n&lt;p&gt;Khối lượng ri&amp;ecirc;ng: 0.98g/cm3&lt;/p&gt;\r\n\r\n&lt;p&gt;Nhiệt độ đ&amp;ocirc;ng đặc: -98oC&lt;/p&gt;\r\n\r\n&lt;p&gt;Nhiệt độ s&amp;ocirc;i: 56.9oC&lt;/p&gt;\r\n\r\n&lt;p&gt;Lượng h&amp;ograve;a tan trong nước: 244 g/l&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;Aacute;p suất hơi: 48 kPa&lt;/p&gt;\r\n\r\n&lt;p&gt;Độ nhớt: 0.37 cP&lt;/p&gt;\r\n\r\n&lt;h2&gt;Ứng dụng của Methyl Acetate:&lt;/h2&gt;\r\n\r\n&lt;p&gt;Methyl Acetate được d&amp;ugrave;ng l&amp;agrave;m&amp;nbsp;dung m&amp;ocirc;i&amp;nbsp;quan trọng trong c&amp;aacute;c ng&amp;agrave;nh như keo, sơn, chất tẩy m&amp;oacute;ng nhờ c&amp;oacute; đặc t&amp;iacute;nh bay hơi nhanh v&amp;agrave; độc t&amp;iacute;nh thấp.&lt;/p&gt;\r\n\r\n&lt;p&gt;D&amp;ugrave;ng trong sản xuất Acetic anhydride&lt;/p&gt;\r\n', 1, NULL, 0, 0, 1, 1, '2018-08-30 17:27:54', '2018-12-08 15:01:14', 0),
	(27, 4, ',,', 'Dung môi Acetone C3H6O2', 'iso-100-5lbs-3778900', -1, 0, '/public/files/images/ch3oh-dm-2714.png', '/public/files/images/58329cf281d08_1479711986.jpg', '&lt;p&gt;H&amp;oacute;a chất Acetone được d&amp;ugrave;ng l&amp;agrave;m dung m&amp;ocirc;i c&amp;ocirc;ng nghiệp v&amp;agrave; c&amp;oacute; rất nhiều ứng dụng trong ng&amp;agrave;nh kinh tế.&lt;/p&gt;\r\n', '&lt;h2&gt;1. Đặc t&amp;iacute;nh của h&amp;oacute;a chất&amp;nbsp;Acetone C3H6O2:&lt;/h2&gt;\r\n\r\n&lt;p&gt;Ngoại quan:&amp;nbsp;Acetone l&amp;agrave; một chất lỏng kh&amp;ocirc;ng m&amp;agrave;u, trong suốt, rất độc&lt;/p&gt;\r\n\r\n&lt;p&gt;C&amp;oacute; t&amp;iacute;nh tan mạnh trong nước, trong c&amp;aacute;c dung m&amp;ocirc;i hữu cơ v&amp;agrave; c&amp;oacute; tốc độ bay hơi nhanh.&lt;/p&gt;\r\n\r\n&lt;p&gt;Đ&amp;oacute;ng g&amp;oacute;i: 160kg/phuy&lt;/p&gt;\r\n\r\n&lt;p&gt;Nhập khẩu từ: Trung Quốc, Đ&amp;agrave;i Loan&lt;/p&gt;\r\n\r\n&lt;h2&gt;2. Ứng dụng kinh tế của&amp;nbsp;h&amp;oacute;a chất&amp;nbsp;Acetone C3H6O2:&lt;/h2&gt;\r\n\r\n&lt;p&gt;Acetone được d&amp;ugrave;ng l&amp;agrave;m&amp;nbsp;dung m&amp;ocirc;i&amp;nbsp;tẩy rửa v&amp;agrave; khử nước cho c&amp;aacute;c th&amp;agrave;nh phần điện tử, dung m&amp;ocirc;i trong tẩy rửa kh&amp;ocirc;, l&amp;agrave;m dung m&amp;ocirc;i gi&amp;uacute;p mực mau kh&amp;ocirc;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Acetone C3H6O2 được sử dụng l&amp;agrave;m chất tẩy rửa c&amp;ocirc;ng nghiệp trong ng&amp;agrave;nh c&amp;ocirc;ng nghiệp keo, trong việc tẩy rửa dầu mỡ, l&amp;agrave;m sạch bề mặt kim loại, dụng cụ trước khi sử dụng v&amp;agrave;o c&amp;aacute;c mục đ&amp;iacute;ch kh&amp;aacute;c nhau.&lt;/p&gt;\r\n\r\n&lt;p&gt;Một ứng dụng rất lớn của Acetone trong ng&amp;agrave;nh dược v&amp;agrave; mỹ phẩm l&amp;agrave; được d&amp;ugrave;ng l&amp;agrave;m chất khử trong thuốc v&amp;agrave; trong c&amp;ocirc;ng nghiệp mỹ phẩm, sơn v&amp;agrave; nước rửa m&amp;oacute;ng tay.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ngo&amp;agrave;i ra, Acetone được d&amp;ugrave;ng l&amp;agrave;m dung m&amp;ocirc;i trong ng&amp;agrave;nh c&amp;ocirc;ng nghiệp sơn để l&amp;agrave;m giảm độ nhớt của sơn, đặc biệt l&amp;agrave; sơn mau kh&amp;ocirc;.&lt;/p&gt;\r\n', 2, NULL, 0, 0, 1, 1, '2018-09-18 14:01:42', '2018-12-08 14:59:59', 0),
	(28, 3, ',,', 'CHẤT ỔN ĐỊNH H2O2', 'whey-gold-standard-5lbs-227kg-6190400', -1, 0, '/public/files/images/99-5-High-Quality-Food-Grade-Sodium-Bicarbonate-ZL-SB-.jpg', '/public/files/images/lactic-88-dai-dien.png', '&lt;p&gt;&lt;strong&gt;Vitex OXR&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Chất khử H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&lt;/sub&gt;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&lt;/sub&gt;&amp;nbsp;l&amp;agrave; một chất oxy h&amp;oacute;a cực mạnh thường được sử dụng rộng r&amp;atilde;i trong qui tr&amp;igrave;nh tẩy trắng. Thường th&amp;igrave; sau khi tẩy, dư lượng H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&amp;nbsp;&lt;/sub&gt;d&amp;ugrave; chỉ c&amp;ograve;n một lượng nhỏ, khi sang giai đoạn nhuộm sẽ g&amp;acirc;y ra vấn đề: m&amp;agrave;u nhuộm sẽ bị tẩy v&amp;agrave; kh&amp;ocirc;ng thấm đều l&amp;ecirc;n vải, đem lại sự kh&amp;aacute;c biệt m&amp;agrave;u v&amp;agrave; t&amp;aacute;i hiện m&amp;agrave;u k&amp;eacute;m. Dư lượng H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&lt;/sub&gt;&amp;nbsp;tồn tr&amp;ecirc;n mặt vải kh&amp;ocirc;ng dễ d&amp;agrave;ng được giặt sạch bằng nước. Do đ&amp;oacute;, y&amp;ecirc;u cầu khử sạch ho&amp;agrave;n to&amp;agrave;n H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&amp;nbsp;&lt;/sub&gt;c&amp;ograve;n tồn đọng tr&amp;ecirc;n vải sau khi tẩy l&amp;agrave; rất cần thiết.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;p&gt;Vitex OXR l&amp;agrave; một chất đặc biệt, ho&amp;agrave;n to&amp;agrave;n c&amp;oacute; thể loại bỏ dư lượng H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&lt;/sub&gt;&amp;nbsp;s&amp;acirc;u ở b&amp;ecirc;n trong c&amp;aacute;c loại vải sau khi tẩy trắng. N&amp;oacute; kh&amp;ocirc;ng g&amp;acirc;y ra vấn đề m&amp;agrave;u nhuộm sẽ bị tẩy v&amp;agrave; kh&amp;ocirc;ng thấm đều l&amp;ecirc;n vải, cải thiện độ chuẩn m&amp;agrave;u.&lt;/p&gt;\r\n\r\n&lt;p&gt;Đặc biệt, kh&amp;aacute;c với c&amp;aacute;c chất tẩy H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&lt;/sub&gt;&amp;nbsp;thường l&amp;agrave;m bằng enzyme kh&amp;ocirc;ng th&amp;iacute;ch hợp cho những nơi nhiệt độ n&amp;oacute;ng ẩm. (Nhiệt cao sẽ giết chết hầu hết c&amp;aacute;c enzyme v&amp;agrave; ảnh hưởng đến hiệu quả loại bỏ H&lt;sub&gt;2&lt;/sub&gt;O&lt;sub&gt;2&lt;/sub&gt;, m&amp;agrave;u sắc trong giai đoạn nhuộm cũng sẽ kh&amp;ocirc;ng ch&amp;iacute;nh x&amp;aacute;c.) Vitex OXR l&amp;agrave; một chất c&amp;oacute; khả năng chịu nhiệt tuyệt vời v&amp;agrave; gi&amp;uacute;p giải quyết được c&amp;aacute;c vấn đề tr&amp;ecirc;n.&lt;/p&gt;\r\n', 0, NULL, 0, 0, 1, 1, '2018-09-18 14:11:06', '2018-12-08 14:56:45', 0),
	(29, 3, ',,', 'CHẤT KHỬ MÀU NƯỚC THẢI', 'iso-surge-5lbs-3988000', -1, 0, '/public/files/images/lactic-88-dai-dien.png', '/public/files/images/nsr1365838241.jpg', '&lt;h2&gt;&lt;strong&gt;Chất khử m&amp;agrave;u nhuộm trong nước thải&lt;/strong&gt;&lt;/h2&gt;\r\n\r\n&lt;p&gt;CF - WCR5 l&amp;agrave; chất khử m&amp;agrave;u chuy&amp;ecirc;n d&amp;ugrave;ng trong quy tr&amp;igrave;nh xử l&amp;yacute; nước thải.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;p&gt;CF - WCR5 l&amp;agrave; 1 loại h&amp;oacute;a chất ho&amp;agrave;n to&amp;agrave;n cải tiến, trọng lượng ph&amp;acirc;n tử cao, t&amp;iacute;nh H-Cation, th&amp;iacute;ch ứng xử l&amp;yacute; nước sau c&amp;aacute;c quy tr&amp;igrave;nh: dệt nhuộm, ng&amp;agrave;nh giấy, in lụa, thuộc da, v.v&amp;hellip; C&amp;aacute;c ng&amp;agrave;nh c&amp;ocirc;ng nghiệp khi xử l&amp;yacute; nước thải c&amp;oacute; m&amp;agrave;u đều th&amp;iacute;ch hợp sử dụng. Đặc biệt đối với&amp;nbsp;&lt;strong&gt;m&amp;agrave;u nhuộm Hoạt t&amp;iacute;nh&amp;nbsp;&lt;/strong&gt;trong ng&amp;agrave;nh dệt nhuộm, v&amp;igrave; kh&amp;oacute; khử m&amp;agrave;u, độ &amp;ocirc; nhiễm cao, cho n&amp;ecirc;n sử dụng CF - WCR5 rất th&amp;iacute;ch hợp để xử l&amp;yacute;.&lt;/p&gt;\r\n\r\n&lt;p&gt;Th&amp;ocirc;ng thường c&amp;aacute;c nh&amp;agrave; m&amp;aacute;y khi xử l&amp;yacute; nước thải thường sử dụng lượng nước tẩy (Chloride) rất lớn, ph&amp;aacute;t sinh hiện tượng muối tẩy h&amp;oacute;a (Chloride) tạo n&amp;ecirc;n trường hợp &amp;ocirc; nhiễm 2 lần, rất l&amp;atilde;ng ph&amp;iacute; lượng h&amp;oacute;a chất v&amp;agrave; thời gian xử l&amp;yacute; đồng thời c&amp;ograve;n ảnh hưởng đến m&amp;ocirc;i trường sống chung quanh.CF - WCR5 khi phối hợp với&amp;nbsp;PAC + Polymer&lt;strong&gt;(t&amp;iacute;nh Anion)&lt;/strong&gt;sẽ đem lại hiệu quả kinh tế cao trong quy tr&amp;igrave;nh xử l&amp;yacute; nước thải, tiết kiệm thời gian v&amp;agrave; h&amp;oacute;a chất.&lt;/p&gt;\r\n\r\n&lt;p&gt;Ngo&amp;agrave;i ra, CF - WCR5 c&amp;oacute; hiệu quả trung h&amp;ograve;a c&amp;aacute;c loại m&amp;agrave;u m&amp;agrave; c&amp;aacute;c loại polymer kh&amp;ocirc;ng xử l&amp;yacute; được, cũng như chất tạp v&amp;agrave; c&amp;aacute;c loại h&amp;oacute;a chất ph&amp;acirc;n tử nhỏ trong nước thải. Sulfate electride nhanh ch&amp;oacute;ng kết tủa th&amp;agrave;nh c&amp;aacute;c hạt lớn dễ lắng xuống đ&amp;aacute;y bể. Sau khi xử l&amp;yacute;, nước thải sẽ đạt được ti&amp;ecirc;u chuẩn chất lượng (S.S) của m&amp;ocirc;i trường.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;strong&gt;C&amp;aacute;ch sử dụng đạt hiệu quả nhất :&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;- &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Thải nước v&amp;agrave;o bể chứa để tự &amp;ocirc;xy h&amp;oacute;a, để cho nhiệt độ nước thải hạ dần từ 35&lt;sup&gt;0&lt;/sup&gt;C trở xuống.&lt;/p&gt;\r\n\r\n&lt;p&gt;- &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; Khống chế pH : 6 ~ 8 cho CF - WCR5 v&amp;agrave; lượng PAC th&amp;iacute;ch ứng v&amp;agrave;o, với thời gian 5 ~ 10 ph&amp;uacute;t, cho th&amp;ecirc;m lượng&amp;nbsp;Polymer&amp;nbsp;&lt;strong&gt;(t&amp;iacute;nh Ion th&amp;iacute;ch hợp)&lt;/strong&gt;&amp;nbsp;v&amp;agrave;o. Sau đ&amp;oacute; c&amp;aacute;c chất &amp;ocirc; nhiễm v&amp;agrave; m&amp;agrave;u thừa sẽ kết tụ v&amp;agrave; lắng xuống bể chứa.&lt;/p&gt;\r\n', 1, NULL, 0, 0, 1, 1, '2018-09-18 14:25:41', '2018-12-08 14:55:14', 0),
	(30, 2, ',,', 'NaHCO3 - Sodium bicarbonate 99.5%', 'optimum-nutrition-hydro-whey-9410600', -1, 0, '/public/files/images/zsp1461547075.jpg', '/public/files/images/99-5-High-Quality-Food-Grade-Sodium-Bicarbonate-ZL-SB-.jpg', '&lt;p&gt;C&amp;ocirc;ng Thức H&amp;oacute;a Học : NaHCO3&lt;/p&gt;\r\n\r\n&lt;p&gt;Xuất Xứ: Trung Quốc&lt;/p&gt;\r\n', '&lt;p&gt;Quy C&amp;aacute;ch: 25kg/ bao&lt;/p&gt;\r\n\r\n&lt;p&gt;Ngoại Quan: dạng bột, m&amp;agrave;u trắng&lt;/p&gt;\r\n\r\n&lt;p&gt;Ứng Dụng: d&amp;ugrave;ng trong ng&amp;agrave;nh nu&amp;ocirc;i trồng thủy sản, thực phẩm dược phẩm...&lt;/p&gt;\r\n\r\n&lt;p&gt;Bảo Quản: để nơi tho&amp;aacute;ng m&amp;aacute;t,tr&amp;aacute;ng &amp;aacute;nh s&amp;aacute;ng trực tiếp&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Ứng dụng:&lt;/p&gt;\r\n\r\n&lt;p&gt;- Natri bicacbonat với t&amp;ecirc;n thường gặp trong đời sống l&amp;agrave; s&amp;ocirc; đa hay bột nở c&amp;oacute; t&amp;aacute;c dụng tạo xốp, gi&amp;ograve;n cho thức ăn v&amp;agrave; ngo&amp;agrave;i ra c&amp;ograve;n c&amp;oacute; t&amp;aacute;c dụng l&amp;agrave;m đẹp cho b&amp;aacute;nh.&lt;/p&gt;\r\n\r\n&lt;p&gt;- D&amp;ugrave;ng để tạo bọt v&amp;agrave; tăng pH trong c&amp;aacute;c loại thuốc sủi bọt (v&amp;iacute; dụ thuốc nhức đầu, v.v.)&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;NaHCO&lt;sub&gt;3&lt;/sub&gt;&amp;nbsp;chủ yếu được điều chế bằng c&amp;ocirc;ng nghệ Solvay, cho phản ứng giữa cacbonat canxi, clorua natri, amoniac, v&amp;agrave; đi&amp;ocirc;x&amp;iacute;t cacbon trong nước. Tại thời điểm năm 2001, quy m&amp;ocirc; sản xuất khoảng 100.000 tấn mỗi năm.&lt;sup id=&quot;cite_ref-1&quot;&gt;[1]&lt;/sup&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;NaHCO&lt;sub&gt;3&lt;/sub&gt;&amp;nbsp;c&amp;oacute; thể thu được từ phản ứng của đi&amp;ocirc;x&amp;iacute;t cacbon với dung dịch hydroxit natri trong nước. Phản ứng ban đầu tạo ra cacbonat natri:&lt;/p&gt;\r\n\r\n&lt;dl&gt;\r\n	&lt;dd&gt;CO&lt;sub&gt;2&lt;/sub&gt;&amp;nbsp;+ 2NaOH &amp;rarr; Na&lt;sub&gt;2&lt;/sub&gt;CO&lt;sub&gt;3&lt;/sub&gt;&amp;nbsp;+ H&lt;sub&gt;2&lt;/sub&gt;O&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n\r\n&lt;p&gt;Sau đ&amp;oacute; cho th&amp;ecirc;m đi&amp;ocirc;x&amp;iacute;t cacbon để tạo bicacbonat natri, v&amp;agrave; được c&amp;ocirc; đặc đủ cao để thu được muối kh&amp;ocirc;:&lt;/p&gt;\r\n\r\n&lt;dl&gt;\r\n	&lt;dd&gt;&amp;nbsp;&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;dl&gt;\r\n	&lt;dd&gt;Na&lt;sub&gt;2&lt;/sub&gt;CO&lt;sub&gt;3&lt;/sub&gt;&amp;nbsp;+ CO&lt;sub&gt;2&lt;/sub&gt;&amp;nbsp;+ H&lt;sub&gt;2&lt;/sub&gt;O &amp;rarr; 2NaHCO&lt;sub&gt;3&lt;/sub&gt;&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Sản lượng thương mại của loại b&amp;aacute;nh soda cũng được sản xuất bằng phương ph&amp;aacute;p tương tự: tro soda, loại được khai th&amp;aacute;c từ quặng&amp;nbsp;trona, đem h&amp;ograve;a tan v&amp;agrave;o nước v&amp;agrave; xử l&amp;yacute; với đi&amp;ocirc;x&amp;iacute;t cacbon. Bicacbonat natri được tạo ra ở dạng rắn theo:&lt;/p&gt;\r\n\r\n&lt;dl&gt;\r\n	&lt;dd&gt;Na&lt;sub&gt;2&lt;/sub&gt;CO&lt;sub&gt;3&lt;/sub&gt;&amp;nbsp;+ CO&lt;sub&gt;2&lt;/sub&gt;&amp;nbsp;+ H&lt;sub&gt;2&lt;/sub&gt;O &amp;rarr; 2NaHCO&lt;sub&gt;3&lt;/sub&gt;&lt;/dd&gt;\r\n&lt;/dl&gt;\r\n', 1, NULL, 0, 0, 1, 1, '2018-09-18 14:30:53', '2018-12-08 14:49:58', 0),
	(31, 2, ',,', 'Al2(SO4)3 - Aluminium Sulfate 15-17%', 'whey-gold-standard-10lbs-454kg-1068500', -1, 0, '/public/files/images/aluminium-sulfat-1.jpg', '/public/files/images/Aluminum-Sulphate-Al2-So4-3-Al2-So4-3-Aluminum-Sulfate-.jpg', '&lt;p&gt;C&amp;ocirc;ng thức:&lt;strong&gt;&amp;nbsp;Al2(SO4)3.18H2O&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Xuất xứ&amp;nbsp;&amp;nbsp;&amp;nbsp; : Trung Quốc, VIỆT NAM, INDO&lt;/p&gt;\r\n', '&lt;p&gt;C&amp;ocirc;ng dụng: Xử l&amp;yacute; nước cấp v&amp;agrave; nước thải&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Th&amp;ocirc;ng số kỹ thuật:&lt;/p&gt;\r\n\r\n&lt;p&gt;- Khi tinh khiết,&lt;strong&gt;&amp;nbsp;Al2(SO4)3.18H2O&lt;/strong&gt;&amp;nbsp;c&amp;oacute; trọng lượng ri&amp;ecirc;ng 1,62.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Dễ tan trong nước. Khi nung n&amp;oacute;ng, muối nh&amp;ocirc;m sunfat phồng to v&amp;agrave; biến th&amp;agrave;nh khối xốp, ở nhiệt độ nung đỏ n&amp;oacute; bị ph&amp;acirc;n ly để tạo th&amp;agrave;nh SO3 v&amp;agrave; Al2O3.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;Ngoại quan: Dạng hạt, m&amp;agrave;u trắng đục.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; - &amp;nbsp;Al2O3&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;: &amp;ge; 14,5%&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; -&amp;nbsp; Fe2O3&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;: &amp;le; 0,2 %&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; -&amp;nbsp; H2SO4&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;: &amp;le;1,5 %&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; -&amp;nbsp; Cặn&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;: &amp;le; 0,5 %&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; - pH ( dung dịch 10%): 2.3 &amp;divide;2.5&lt;/p&gt;\r\n\r\n&lt;p&gt;Đ&amp;oacute;ng g&amp;oacute;i: 25, 50kg/bao&lt;/p&gt;\r\n\r\n&lt;p&gt;Điều kiện bảo quản: Ghi tr&amp;ecirc;n bao b&amp;igrave;, để nơi kh&amp;ocirc;, tho&amp;aacute;ng m&amp;aacute;t&lt;/p&gt;\r\n\r\n&lt;p&gt;Ưu, nhược điểm:&lt;/p&gt;\r\n\r\n&lt;p&gt;L&amp;agrave;m giảm độ pH của nước sau khi sử l&amp;yacute; n&amp;ecirc;n phải d&amp;ugrave;ng v&amp;ocirc;i để hiệu chỉnh lại độ pH &amp;nbsp;dẫn đến chi ph&amp;iacute; tăng. Khi cho qu&amp;aacute; liều lượng&amp;nbsp;&amp;nbsp;cần thiết sẽ sẩy ra hiện tượng keo tụ bị ph&amp;acirc;n huỷ l&amp;agrave;m cho&amp;nbsp; nước đục trởi lại. Như vậy khi độ đục, độ m&amp;agrave;u của nước nguồn cao th&amp;igrave; ph&amp;egrave;n nh&amp;ocirc;m k&amp;eacute;m t&amp;aacute;c dụng Phải d&amp;ugrave;ng th&amp;ecirc;m chất phụ gia trợ keo tụ, trợi lắng &amp;hellip;H&amp;agrave;m lượng nh&amp;ocirc;m tồn dư trong nước sẽ cao hơn so với chất keo tụ kh&amp;aacute;c v&amp;agrave; c&amp;oacute; thể cao hơn mức quy định vệ sinh ( 0,2mg/l) Tăng độ trong của nước sau khi lắng, k&amp;eacute;o d&amp;agrave;i chu kỳ lọc v&amp;agrave; tăng chất lượng nước sau lọc.&lt;/p&gt;\r\n\r\n&lt;p&gt;Kh&amp;ocirc;ng bị chảy nước hay v&amp;oacute;n cụ khi mở bao.&lt;/p&gt;\r\n\r\n&lt;p&gt;Hướng dẫn sử dụng:&lt;/p&gt;\r\n\r\n&lt;p&gt;Pha chế th&amp;agrave;nh dung dịch 5%-10% v&amp;agrave; ch&amp;acirc;m v&amp;agrave;o nước nguồn cần xử l&amp;yacute;.&lt;/p&gt;\r\n', 0, NULL, 0, 0, 1, 1, '2018-09-18 14:42:18', '2018-12-08 14:47:37', 0),
	(32, 2, ',,', 'Acid Lactic - C3H6O3', 'outlift-0575100', -1, 0, '/public/files/images/lactic_master.jpg', '/public/files/images/lactic-88-dai-dien.png', '&lt;p&gt;T&amp;ecirc;n Sản Phẩm : Acid Lactic&lt;/p&gt;\r\n\r\n&lt;p&gt;T&amp;ecirc;n C&amp;ocirc;ng Thức : C3H6O3&lt;/p&gt;\r\n\r\n&lt;p&gt;Quy C&amp;aacute;ch : 25kg/Can&lt;/p&gt;\r\n', '&lt;p&gt;Xuất Xứ : Purac Thailan&lt;/p&gt;\r\n\r\n&lt;p&gt;Ngoại Quan : Chất lỏng m&amp;agrave;u v&amp;agrave;ng nhạt&lt;/p&gt;\r\n\r\n&lt;p&gt;Ứng Dụng :&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;&lt;a href=&quot;http://khangnghi.com.vn/&quot;&gt;Acid Lactic&lt;/a&gt;&amp;nbsp;được sử dụng trong thực phẩm như một chất tạo chua v&amp;agrave; d&amp;ugrave;ng bảo quản thực phẩm. được d&amp;ugrave;ng để l&amp;ecirc;n men sữa chua, phomat l&amp;agrave;m n&amp;acirc;ng cao gi&amp;aacute; trị dinh dưỡng c&amp;oacute; t&amp;aacute;c dụng trị bệnh đường ruột.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;http://khangnghi.com.vn/&quot;&gt;Acid Lactic&lt;/a&gt;&amp;nbsp;được d&amp;ugrave;ng để tăng qu&amp;aacute; tr&amp;igrave;nh l&amp;ecirc;n men cho ng&amp;agrave;nh thực phẩm m&amp;agrave; kh&amp;ocirc;ng g&amp;acirc;y hại cho thực phẩm,&amp;nbsp; v&amp;agrave; sức khỏe con người, gi&amp;uacute;p bảo quản thực phẩm tốt hơn.&lt;/li&gt;\r\n	&lt;li&gt;&lt;a href=&quot;http://khangnghi.com.vn/&quot;&gt;Acid Lactic&lt;/a&gt;&amp;nbsp;ức chế sản sinh một số vi khuẩn c&amp;oacute; hại&amp;nbsp;tạo điều kiện ph&amp;acirc;n hủy nhanh c&amp;aacute;c đại ph&amp;acirc;n tử hữu cơ m&amp;agrave; kh&amp;ocirc;ng tạo ra c&amp;aacute;c sản phẩm độc hại cho c&amp;aacute;c vi sinh vật sống chung trong chế phẩm cũng như cho m&amp;ocirc;i trường sống v&amp;agrave; c&amp;acirc;y trồng.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', 2, NULL, 0, 0, 1, 1, '2018-09-18 14:59:46', '2018-12-08 14:44:29', 0),
	(33, 1, ',2,', 'Màu caramel AAA S5000', 'cellucor-c4-original-30-servings-0133400', -1, 0, '/public/files/images/Caramen-la-gi.jpg', '/public/files/images/203c34c20f-1-Nuoc-siro-cung-chua-chat-tao-mau-gay-ung-thu-1.jpeg', '&lt;p&gt;M&amp;ocirc; tả: M&amp;agrave;u caramen hay đường thắng l&amp;agrave; sản phẩm m&amp;agrave;u n&amp;acirc;u n&amp;acirc;u, thu được bằng c&amp;aacute;ch đun c&amp;aacute;c loại đường.&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', '&lt;p&gt;M&amp;agrave;u caramen được d&amp;ugrave;ng để tạo m&amp;agrave;u v&amp;agrave; hương vị cho c&amp;aacute;c c&amp;agrave; ph&amp;ecirc; rang xay, loại b&amp;aacute;nh keo, nước tương nước mắm, hạt n&amp;ecirc;m, gia vị...&lt;br /&gt;\r\nXuất xứ: Malaysia&lt;br /&gt;\r\nQuy c&amp;aacute;ch 30kg/can&lt;/p&gt;\r\n', 1, NULL, 0, 0, 1, 1, '2018-09-18 15:07:45', '2018-12-08 14:41:05', 0),
	(34, 1, ',2,', 'Màu Xanh Dương (Blue)', 'mr-hyde-nitrox-8891100', -1, 0, '/public/files/images/20-c-i-M-n-c-Kem-Baking-S-c-T-M-u-Th-c-Ph.jpg_640x640.jpg', '/public/files/images/srrcqkf16acv9.jpg', '&lt;p&gt;T&amp;ecirc;n h&amp;agrave;ng h&amp;oacute;a: Blue (M&amp;agrave;u Xanh Dương)&lt;br /&gt;\r\nPhụ gia tạo m&amp;agrave;u thực ph&amp;acirc;̉m&lt;/p&gt;\r\n', '&lt;p&gt;Xu&amp;acirc;́t xứ : &amp;Acirc;́n Đ&amp;ocirc;̣&lt;br /&gt;\r\nĐịnh lượng: 25 kg/th&amp;ugrave;ng&lt;br /&gt;\r\nPha trộn m&amp;agrave;u thực phẩm&lt;br /&gt;\r\nD&amp;ugrave;ng trong dược phẩm&lt;br /&gt;\r\nTất cả c&amp;aacute;c chế phẩm ăn được&lt;br /&gt;\r\nHướng d&amp;acirc;̃n sử dụng/bảo quản: Đ&amp;ecirc;̉ nơi kh&amp;ocirc; r&amp;aacute;o, tho&amp;aacute;ng m&amp;aacute;t, tr&amp;aacute;nh xa ngu&amp;ocirc;̀n nhi&amp;ecirc;̣t v&amp;agrave; lửa.&lt;br /&gt;\r\nC&amp;ocirc;ng dụng :&lt;br /&gt;\r\nPha trộn m&amp;agrave;u thực phẩm&lt;br /&gt;\r\nD&amp;ugrave;ng trong dược phẩm&lt;br /&gt;\r\nTất cả c&amp;aacute;c chế phẩm ăn được&lt;br /&gt;\r\nHướng d&amp;acirc;̃n sử dụng/bảo quản: Đ&amp;ecirc;̉ nơi kh&amp;ocirc; r&amp;aacute;o, tho&amp;aacute;ng m&amp;aacute;t, tr&amp;aacute;nh xa ngu&amp;ocirc;̀n nhi&amp;ecirc;̣t v&amp;agrave; lửa&lt;/p&gt;\r\n', 1, NULL, 0, 0, 1, 1, '2018-09-18 15:24:00', '2018-12-08 14:38:01', 0),
	(35, 1, ',2,', 'màu tự nhiên paprika - màu ớt- E 160C', 'prosupps-creatine-200gram-9818600', -1, 0, '/public/files/images/20-c-i-M-n-c-Kem-Baking-S-c-T-M-u-Th-c-Ph.jpg_640x640.jpg', '/public/files/images/srrcqkf16acv9.jpg', '&lt;p&gt;T&amp;ecirc;n h&amp;agrave;ng h&amp;oacute;a: m&amp;agrave;u tự nhi&amp;ecirc;n paprika - m&amp;agrave;u ớt&lt;/p&gt;\r\n', '&lt;p&gt;Phụ gia tạo m&amp;agrave;u thực ph&amp;acirc;̉m&lt;br /&gt;\r\nXu&amp;acirc;́t xứ : &amp;Acirc;́n Đ&amp;ocirc;̣&lt;br /&gt;\r\nĐịnh lượng : 10 kg/th&amp;ugrave;ng -25 kg/th&amp;ugrave;ng&lt;br /&gt;\r\nC&amp;ocirc;ng dụng :&lt;br /&gt;\r\nPha trộn m&amp;agrave;u thực phẩm&lt;br /&gt;\r\nD&amp;ugrave;ng trong dược phẩm&lt;br /&gt;\r\nTất cả c&amp;aacute;c chế phẩm ăn được&lt;br /&gt;\r\nHướng d&amp;acirc;̃n sử dụng/bảo quản: Đ&amp;ecirc;̉ nơi kh&amp;ocirc; r&amp;aacute;o, tho&amp;aacute;ng m&amp;aacute;t, tr&amp;aacute;nh xa ngu&amp;ocirc;̀n nhi&amp;ecirc;̣t v&amp;agrave; lửa.&lt;/p&gt;\r\n', 0, NULL, 0, 0, 1, 1, '2018-09-18 15:29:06', '2018-12-08 14:36:36', 0),
	(36, 1, ',1,', 'Hương Nước giải khát 1', 'best-creatine-50-servings-7073500', -1, 0, '/public/files/images/3-cach-lam-nuoc-giai-khat-mua-he-don-gian-cho-ban011.jpg', '/public/files/images/soda-kiwi-bac-ha.jpg', '&lt;p&gt;Hương liệu Hương Giải Kh&amp;aacute;t&lt;br /&gt;\r\nSTT T&amp;ecirc;n hương liệu&lt;br /&gt;\r\n1 SEN&lt;br /&gt;\r\n2 B&amp;Ograve; H&amp;Uacute;C&lt;br /&gt;\r\n3 S&amp;Acirc;M&lt;br /&gt;\r\n4 L&amp;Agrave;I&lt;br /&gt;\r\n5 L&amp;Agrave;I&lt;br /&gt;\r\n6 L&amp;Agrave;I&lt;br /&gt;\r\n7 L&amp;Agrave;I&lt;br /&gt;\r\n9 TR&amp;Agrave; XANH&lt;br /&gt;\r\n10 HỒNG TR&amp;Agrave;&lt;br /&gt;\r\n11 Hương Chanh&lt;/p&gt;\r\n', '&lt;p&gt;Hương liệu Hương Giải Kh&amp;aacute;t&lt;/p&gt;\r\n', 0, NULL, 0, 0, 1, 1, '2018-09-18 15:32:38', '2018-12-08 14:32:34', 0),
	(37, 1, ',1,', 'Hương mực dạng lỏng', 'creatine-monohydrate-05kg-3568300', -1, 0, '/public/files/images/huong%20-muc.jpg', '/public/files/images/Bi-quyet-chon-muc-tuoi-ngon-1.jpg', '&lt;p&gt;- Hương mực được tổng hợp dựa tr&amp;ecirc;n m&amp;ugrave;i vị cơ bản từ mực tươi hoặc mực kh&amp;ocirc;. Với c&amp;aacute;c ph&amp;acirc;n tử nhỏ li ti sẽ khuếch t&amp;aacute;n đều trong sản phẩm v&amp;agrave; kh&amp;ocirc;ng kh&amp;iacute;, sản phẩm hương b&amp;ograve; dạng lỏng sẽ gi&amp;uacute;p định hướng m&amp;ugrave;i hương của sản phẩm được ứng dụng r&amp;otilde; r&amp;agrave;ng, hấp dẫn hơn.&lt;/p&gt;\r\n', '&lt;p&gt;-&amp;nbsp;&lt;strong&gt;Ứng dụng&lt;/strong&gt;: sản phẩm ph&amp;ugrave; hợp sử dụng trong ng&amp;agrave;nh sản xuất m&amp;igrave; ăn liền, ch&amp;aacute;o, đồ hộp, x&amp;uacute;c x&amp;iacute;ch, gia vị tẩm ướp... Đặc biệt sản phẩm rất th&amp;iacute;ch hợp sử dụng trong thực phẩm chay.&lt;/p&gt;\r\n', 0, NULL, 0, 0, 1, 1, '2018-09-18 15:39:24', '2018-12-08 14:29:49', 0),
	(38, 1, ',1,', 'Hương gà', 'cla-weight-loss90v-5885100', -1, 0, '/public/files/images/huong-ga.jpg', '/public/files/images/1444376455_huonglong.jpg', '&lt;p&gt;- Hương g&amp;agrave; được tổng hợp dựa tr&amp;ecirc;n m&amp;ugrave;i vị cơ bản từ thịt g&amp;agrave;. Với c&amp;aacute;c ph&amp;acirc;n tử nhỏ li ti sẽ khuếch t&amp;aacute;n đều trong sản phẩm v&amp;agrave; kh&amp;ocirc;ng kh&amp;iacute;, sản phẩm hương g&amp;agrave; dạng lỏng sẽ gi&amp;uacute;p định hướng m&amp;ugrave;i hương của sản phẩm được ứng dụng r&amp;otilde; r&amp;agrave;ng, hấp dẫn hơn.&lt;/p&gt;\r\n', '&lt;p&gt;-&amp;nbsp;&lt;strong&gt;Ứng dụng&lt;/strong&gt;: sản phẩm ph&amp;ugrave; hợp sử dụng trong ng&amp;agrave;nh sản xuất m&amp;igrave; ăn liền, ch&amp;aacute;o, đồ hộp, x&amp;uacute;c x&amp;iacute;ch, gia vị tẩm ướp... Đặc biệt sản phẩm rất th&amp;iacute;ch hợp sử dụng trong thực phẩm chay.&lt;/p&gt;\r\n', 1, NULL, 0, 0, 1, 1, '2018-09-18 15:58:55', '2018-12-08 14:26:46', 0),
	(39, 1, ',1,', 'Hương thịt heo giò chả', 'cla-myprotein180v-5564000', -1, 0, '/public/files/images/h%C6%B0%C6%A1ng%20thit%20thai%20lan.jpg', '/public/files/images/nsr1365838241.jpg,/public/files/images/foody-mobile-gio-cha-quoc-huong-hang-bong-ha-noi-140623111120.jpg', '&lt;p&gt;Hương thịt heo :chất lượng ổn định, m&amp;ugrave;i thơm dễ chịu, thơm l&amp;acirc;u, chịu nhiệt độ cao&lt;/p&gt;\r\n', '&lt;p&gt;Hương thịt heo :chất lượng ổn định, m&amp;ugrave;i thơm dễ chịu, thơm l&amp;acirc;u, chịu nhiệt độ cao&lt;br /&gt;\r\nXuất xứ Th&amp;aacute;i Lan&amp;nbsp;&lt;br /&gt;\r\nQuy c&amp;aacute;ch đ&amp;oacute;ng g&amp;oacute;i: th&amp;ugrave;ng 25kg/th&amp;ugrave;ng hoặc g&amp;oacute;i /1kg&amp;nbsp;&lt;br /&gt;\r\nSử dụng: tăng cường hương thơm cho c&amp;aacute;c sản phẩm heo vi&amp;ecirc;n, chả lụa, x&amp;uacute;c x&amp;iacute;ch, phở b&amp;ograve;.....&lt;br /&gt;\r\nLượng sử dụng: 1 -3g/kg Sản phẩm (1kg Hương thịt heo d&amp;ugrave;ng cho 500kg sản phẩm)&lt;br /&gt;\r\nC&amp;aacute;ch d&amp;ugrave;ng: Cho v&amp;agrave;o chung với c&amp;aacute;c loại gia vị kh&amp;aacute;c trong l&amp;uacute;c xay trộn, n&amp;ecirc;n cho v&amp;agrave;o giai đoạn cuối của qu&amp;aacute; tr&amp;igrave;nh sản xuất&lt;/p&gt;\r\n', 0, NULL, 0, 0, 1, 1, '2018-09-18 16:03:05', '2018-12-08 14:19:09', 0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table chemdb.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `active` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.roles: ~4 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `active`) VALUES
	(1, 'Sys-Administrators', 'Y'),
	(2, 'Administrators', 'Y'),
	(3, 'Customer', 'Y'),
	(4, 'Shop_Privilege_Customer', 'Y');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table chemdb.ships
CREATE TABLE IF NOT EXISTS `ships` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `delivery_cost` double NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `company_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `address1` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` bigint(20) NOT NULL DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `deleted` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table chemdb.ships: ~8 rows (approximately)
/*!40000 ALTER TABLE `ships` DISABLE KEYS */;
INSERT INTO `ships` (`id`, `order_id`, `delivery_cost`, `first_name`, `last_name`, `company_name`, `email`, `phone`, `address1`, `address2`, `updated_at`, `created_at`, `updated_by`, `created_by`, `deleted`) VALUES
	(1, 1, 20, 'eeeeeeeeeeeee', 'fffffffffffffffffff', 'ddddddddd', '0', '0', 'adsf ádf cvzxcv xczvzxv zxcv xzcvzxcv zxcv', '0', '2016-07-07 10:24:32', '2016-07-07 10:24:32', 0, 0, 0),
	(2, 2, 20, 'eeeeeeeeeeeee', 'fffffffffffffffffff', 'ddddddddd', '0', '0', 'adsf ádf cvzxcv xczvzxv zxcv xzcvzxcv zxcv', '0', '2016-07-07 10:37:00', '2016-07-07 10:37:00', 0, 0, 0),
	(3, 3, 20, 'eeeeeeeeeeeee', 'fffffffffffffffffff', 'ddddddddd', '0', '0', 'adsf ádf cvzxcv xczvzxv zxcv xzcvzxcv zxcv', '0', '2016-07-07 10:39:00', '2016-07-07 10:39:00', 0, 0, 0),
	(4, 4, 20, 'eeeeeeeeeeeee', 'fffffffffffffffffff', 'ddddddddd', '0', '0', 'adsf ádf cvzxcv xczvzxv zxcv xzcvzxcv zxcv', '0', '2016-07-07 10:43:20', '2016-07-07 10:43:20', 0, 0, 0),
	(5, 5, 20, 'ẻawer ', 'aqwer ưer ư', ' ádf ádfa sdfa s', '0', '0', '23412 3123 123 ', '0', '2016-07-07 10:43:48', '2016-07-07 10:43:48', 0, 0, 0),
	(6, 6, 20, 'ẻawer ', 'aqwer ưer ư', ' ádf ádfa sdfa s', '0', '0', '23412 3123 123 ', '0', '2016-07-07 10:44:31', '2016-07-07 10:44:31', 0, 0, 0),
	(7, 8, 0, 'ádf ádf á', 'df àd ádf', ' àd ádf ádf', '0', '0', ' ádf ádf ', '0', '2016-07-07 11:14:11', '2016-07-07 11:14:11', 0, 0, 0),
	(8, 9, 0, 'dhf df', 'hg dfhgdf hdf', 'hg dfhg dfhg', '0', '0', ' dfhdf hd', '0', '2016-07-07 11:18:04', '2016-07-07 11:18:04', 0, 0, 0);
/*!40000 ALTER TABLE `ships` ENABLE KEYS */;

-- Dumping structure for table chemdb.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` tinyint(4) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accept_receive_mail` tinyint(4) NOT NULL DEFAULT '1',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT '1',
  `sub_domain` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_domain` tinyint(4) DEFAULT '0',
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT '0',
  `created_by` bigint(20) NOT NULL,
  `updated_by` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table chemdb.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `first_name`, `name`, `email`, `password`, `phone`, `mobile`, `role_id`, `avatar`, `address1`, `address2`, `city`, `post_code`, `country`, `accept_receive_mail`, `code`, `sub_domain`, `use_domain`, `domain`, `parent_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted`) VALUES
	(1, 'sys-admin', 'sys-admin', 'admin@gmail.com', 'b15a606858a63476cbaa22ee1195bbf3abc56a14', '123456781', NULL, 1, '/files/images/user_profile.png', NULL, NULL, NULL, NULL, NULL, 1, '1', '0', 0, NULL, 0, 0, 1, '2016-04-18 14:19:36', '2019-01-04 23:04:05', 0),
	(10, NULL, 'Thai Huy', 'ththhuy@gmail.com', '7a3f066ec911e3991b656aba894d0305c386c0c1', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, 0, NULL, 0, 1, -1, '2019-01-06 21:04:23', '2019-01-06 22:01:10', 0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
