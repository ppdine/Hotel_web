-- --------------------------------------------------------
-- Máy chủ:                      127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Phiên bản:           12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;



-- Dumping structure for table khachsan.admin_cred
CREATE TABLE IF NOT EXISTS `admin_cred` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_pass` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.admin_cred: ~0 rows (approximately)
INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
	(2, 'admin', '1');

-- Dumping structure for table khachsan.booking_details
CREATE TABLE IF NOT EXISTS `booking_details` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `booking_id` int DEFAULT NULL,
  `room_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` int DEFAULT NULL,
  `total_pay` int DEFAULT NULL,
  `room_no` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phonenum` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.booking_details: ~11 rows (approximately)
INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
	(96, 97, 'Phòng Bình Dân', 800000, 4800000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(97, 98, 'Phòng Bình Dân', 800000, 4000000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(98, 99, 'Phòng Bình Dân', 800000, 4000000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(99, 100, 'Phòng Bình Dân', 800000, 4800000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(100, 101, 'Phòng Bình Dân', 800000, 5600000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(101, 102, 'Phòng Vip 3', 1500000, 1500000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(102, 103, 'Phòng Bình Dân', 800000, 4800000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(103, 104, 'Phòng Vip 3', 1500000, 3000000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(104, 105, 'Phòng Vip 3', 1500000, 4500000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(105, 106, 'Phòng Đơn', 500000, 2500000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(106, 107, 'Phòng Đơn', 500000, 2500000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh'),
	(107, 108, 'Phòng Đơn', 500000, 1500000, NULL, 'Tuấn An', '0941400924', 'Điện Biên Phủ - Phường 22 - Bình Thạnh');

-- Dumping structure for table khachsan.booking_order
CREATE TABLE IF NOT EXISTS `booking_order` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `arrival` int DEFAULT '0',
  `refund` int DEFAULT NULL,
  `booking_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Đã Đặt',
  `order_id` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trans_id` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `trans_amt` int DEFAULT NULL,
  `trans_status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Đã Đặt',
  `trans_resp_msg` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rate_review` int DEFAULT NULL,
  `datentime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



-- Dumping data for table khachsan.booking_order: ~0 rows (approximately)
INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
	(96, 9, 3, '2024-09-1', '2024-09-6', 0, NULL, 'Đã Đặt', 'ORD_97949965', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-1 15:18:38'),
	(97, 9, 3, '2024-09-1', '2024-09-8', 0, 0, 'Đã Huỷ', 'ORD_98661978', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-1 15:23:42'),
	(98, 9, 3, '2024-09-1', '2024-09-6', 0, 0, 'Đã Huỷ', 'ORD_96810887', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-1 15:34:08'),
	(99, 9, 3, '2024-09-1', '2024-09-6', 0, 0, 'Đã Huỷ', 'ORD_9394029', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-1 15:34:19'),
	(100, 9, 3, '2024-09-1', '2024-09-8', 1, NULL, 'Đã Thanh Toán', 'ORD_9554729', NULL, 4800000, 'TXN_SUCCESS', NULL, NULL, '2024-09-1 15:39:59'),
	(101, 9, 3, '2024-09-1', '2024-09-20', 0, 0, 'Đã Huỷ', 'ORD_91676809', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-1 15:40:38'),
	(102, 9, 6, '2024-09-10', '2024-09-14', 0, NULL, 'Đã Xác Nhận Đặt Phòng', 'ORD_95687526', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-14 05:33:26'),
	(103, 9, 3, '2024-09-14', '2024-09-20', 0, 0, 'Đã Huỷ', 'ORD_96612782', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-14 06:59:30'),
	(104, 9, 6, '2024-09-14', '2024-09-16', 0, 0, 'Đã Huỷ', 'ORD_91367634', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-14 09:54:35'),
	(105, 9, 6, '2024-09-14', '2024-09-17', 1, NULL, 'Đã Thanh Toán', 'ORD_91493479', NULL, 4500000, 'TXN_SUCCESS', NULL, NULL, '2024-09-14 10:43:24'),
	(106, 9, 8, '2024-09-15', '2024-09-20', 0, NULL, 'Đã Xác Nhận Đặt Phòng', 'ORD_91032898', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-15 19:12:10'),
	(107, 9, 8, '2024-09-15', '2024-09-20', 0, NULL, 'Đã Đặt', 'ORD_92583238', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-09-15 19:12:24'),
	(108, 9, 8, '2024-09-09', '2024-09-12', 0, 0, 'Đã Huỷ', 'ORD_91221854', NULL, NULL, 'Đã Đặt', NULL, NULL, '2024-09-09 12:02:02');

-- Dumping structure for table khachsan.carousel
CREATE TABLE IF NOT EXISTS `carousel` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.carousel: ~5 rows (approximately)
INSERT INTO `carousel` (`sr_no`, `image`) VALUES
	(4, 'IMG_62045.png'),
	(5, 'IMG_93127.png'),
	(6, 'IMG_99736.png'),
	(8, 'IMG_40905.png'),
	(9, 'IMG_55677.png');

-- Dumping structure for table khachsan.contact_details
CREATE TABLE IF NOT EXISTS `contact_details` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `address` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `gmap` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pn1` bigint NOT NULL,
  `pn2` bigint NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `fb` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `insta` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `tw` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `iframe` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.contact_details: ~0 rows (approximately)
INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
	(1, 'Điện Biên Phủ-Phường 22-Bình Thạnh', 'https://maps.app.goo.gl/EYewTJWci6ntL3zLA', 84370727659, 84387301927, '2251120310@ut.edu.vn', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.twitter.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.209954704619!2d106.7218884!3d10.795225499999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317529df2b91991f%3A0xf6f9c919a956aed0!2sVinpearl%20Landmark%2081%2C%20Autograph%20Collection!5e0!3m2!1svi!2s!4v1725924150693!5m2!1svi!2s');

-- Dumping structure for table khachsan.facilities
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.facilities: ~6 rows (approximately)
INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
	(13, 'IMG_43553.svg', 'Wifi', 'Wifi trong khách sạn cho phép khách hàng kết nối internet không dây tốc độ cao, có thể truy cập vào các trang web yêu thích của họ, xem phim, nghe nhạc, tải xuống các tài liệu, và liên lạc với người thân và bạn bè. '),
	(14, 'IMG_49949.svg', 'Điều Hoà', ' Khách hàng có thể dễ dàng điều chỉnh nhiệt độ và các tính năng khác trên điều hòa để đáp ứng các nhu cầu của họ và tạo ra một không gian nghỉ ngơi lý tưởng.'),
	(15, 'IMG_41622.svg', 'Tivi', 'TV cung cấp cho khách hàng nhiều kênh truyền hình đa dạng và phong phú, bao gồm cả các kênh quốc tế và địa phương, các kênh phim, chương trình giải trí, tin tức, thể thao và giáo dục'),
	(17, 'IMG_47816.svg', 'Spa', 'Tại spa, khách hàng có thể trải nghiệm các liệu pháp chăm sóc da, tắm thủy lực, massage và nhiều dịch vụ khác.'),
	(18, 'IMG_96423.svg', 'Máy Sưởi', 'Máy sưởi phòng được thiết kế để giữ cho phòng ấm áp và thoải mái trong suốt mùa đông.'),
	(19, 'IMG_27079.svg', 'Nóng Lạnh', 'Được trang bị các tính năng và thiết bị hiện đại như màn hình LCD hiển thị nhiệt độ, điều khiển từ xa, cảm biến nhiệt độ và chức năng tự động điều chỉnh nhiệt độ nước.');

-- Dumping structure for table khachsan.features
CREATE TABLE IF NOT EXISTS `features` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.features: ~4 rows (approximately)
INSERT INTO `features` (`id`, `name`) VALUES
	(18, 'Phòng Ngủ'),
	(19, 'Ban Công'),
	(20, 'Phòng Bếp'),
	(21, 'Ghế sofa');

-- Dumping structure for table khachsan.rating_review
CREATE TABLE IF NOT EXISTS `rating_review` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `room_id` int NOT NULL,
  `user_id` int NOT NULL,
  `rating` int NOT NULL,
  `review` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `seen` int NOT NULL DEFAULT '0',
  `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.rating_review: ~0 rows (approximately)

-- Dumping structure for table khachsan.rooms
CREATE TABLE IF NOT EXISTS `rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `area` int NOT NULL,
  `price` int NOT NULL,
  `quantity` int NOT NULL,
  `adult` int NOT NULL,
  `children` int NOT NULL,
  `description` varchar(350) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `removed` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.rooms: ~6 rows (approximately)
INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
	(3, 'Phòng Bình Dân', 30, 800000, 4, 5, 3, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 0),
	(4, 'Phòng VIP 1', 40, 1000000, 3, 5, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
	(5, 'Phòng Vip 2', 40, 1200000, 3, 8, 6, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 0),
	(6, 'Phòng Vip 3', 50, 1500000, 7, 9, 10, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 0),
	(7, 'Phòng Đơn', 20, 800000, 2, 2, 2, 'phòng rộng rãi', 1, 1),
	(8, 'Phòng Đơn', 20, 500000, 2, 2, 2, 'rộng rãi thoáng mát', 1, 0);

-- Dumping structure for table khachsan.room_facilities
CREATE TABLE IF NOT EXISTS `room_facilities` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `facilities_id` int NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.room_facilities: ~0 rows (approximately)
INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
	(52, 4, 13),
	(53, 4, 14),
	(54, 4, 19),
	(65, 3, 13),
	(66, 3, 14),
	(67, 3, 15),
	(68, 5, 13),
	(69, 5, 14),
	(70, 5, 19),
	(71, 6, 13),
	(72, 6, 14),
	(73, 6, 15),
	(74, 6, 18),
	(75, 6, 19),
	(77, 8, 13);

-- Dumping structure for table khachsan.room_features
CREATE TABLE IF NOT EXISTS `room_features` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `features_id` int NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.room_features: ~0 rows (approximately)
INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
	(36, 4, 18),
	(37, 4, 19),
	(38, 4, 20),
	(46, 3, 18),
	(47, 3, 20),
	(48, 5, 18),
	(49, 5, 19),
	(50, 5, 21),
	(51, 6, 18),
	(52, 6, 19),
	(53, 6, 20),
	(54, 6, 21),
	(56, 8, 18);

-- Dumping structure for table khachsan.room_images
CREATE TABLE IF NOT EXISTS `room_images` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `room_id` int NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `thumb` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.room_images: ~0 rows (approximately)
INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
	(26, 3, 'IMG_95263.png', 1),
	(27, 3, 'IMG_67237.png', 0),
	(28, 4, 'IMG_45742.png', 0),
	(29, 4, 'IMG_25983.png', 1),
	(30, 5, 'IMG_61875.png', 1),
	(31, 5, 'IMG_48729.png', 0),
	(32, 6, 'IMG_96889.png', 0),
	(33, 6, 'IMG_82238.jpg', 1),
	(34, 8, 'IMG_71497.png', 1);

-- Dumping structure for table khachsan.settings
CREATE TABLE IF NOT EXISTS `settings` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `site_title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `site_about` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `shutdown` tinyint(1) NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.settings: ~0 rows (approximately)
INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
	(1, 'Luxury Hotel', 'Khách sạn Luxury Hotel là một trong những khách sạn hàng đầu tại Việt Nam, được thiết kế theo phong cách hiện đại và đầy đủ tiện nghi, với hệ thống phòng nghỉ sang trọng, nhà hàng, quầy bar, trung tâm thể dục và spa. Khách sạn có hơn 50 tầng', 0);

-- Dumping structure for table khachsan.team_details
CREATE TABLE IF NOT EXISTS `team_details` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `picture` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.team_details: ~0 rows (approximately)

-- Dumping structure for table khachsan.user_cred
CREATE TABLE IF NOT EXISTS `user_cred` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(120) COLLATE utf8mb4_general_ci NOT NULL,
  `phonenum` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pincode` int NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `is_verified` int NOT NULL DEFAULT '0',
  `token` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int NOT NULL DEFAULT '1',
  `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.user_cred: ~2 rows (approximately)
INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
	(9, 'Tuấn An', '2251120266@ut.edu.vn', '59 - QL13 - Bình Thạnh', '0941400924', 700000, '2004-06-23', 'IMG_26096.jpg', '$2y$10$jJ1ecibawp8lN2t7MOIe5.R2yz49m0hwfUW2KPz3XF/DmwDphCAOC', 1, NULL, NULL, 1, '2024-09-04 14:32:35'),
	(10, 'Hoàng Phong', '2251120310@ut.edu.vn', '12 - Tô Ký - Q12', '0370727659', 700000, '2004-08-17', 'hung.jpg', '$2y$10$VKXJmosMmMcIs4xd1vnEIOd1dc8vpdfP3DjJOcPFKfLoqiEZwT.om', 1, NULL, NULL, 1, '2024-09-7 14:58:38'),
	(11, 'Huy Hảo', '2251120287@ut.edu.vn', '12 - Tô Ký - Q12', '0387301927', 700000, '2004-08-17', 'hao.jpg', '$2y$10$VKXJmosMmMcIs4xd1vnEIOd1dc8vpdfP3DjJOcPFKfLoqiEZwT.om', 1, NULL, NULL, 1, '2024-09-7 19:58:38');

-- Dumping structure for table khachsan.user_queries
CREATE TABLE IF NOT EXISTS `user_queries` (
  `sr_no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `datentime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `seen` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`sr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table khachsan.user_queries: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
