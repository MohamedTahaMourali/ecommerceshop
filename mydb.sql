-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour ecom_store
CREATE DATABASE IF NOT EXISTS `ecom_store` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ecom_store`;

-- Listage de la structure de la table ecom_store. about_us
CREATE TABLE IF NOT EXISTS `about_us` (
  `about_id` int(10) NOT NULL AUTO_INCREMENT,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL,
  PRIMARY KEY (`about_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.about_us : ~1 rows (environ)
DELETE FROM `about_us`;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
	(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. admins
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(10) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.admins : ~1 rows (environ)
DELETE FROM `admins`;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
	(2, 'Test Name', 'admin@ave.com', '123', 'admin.jpg', '077885221', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. bundle_product_relation
CREATE TABLE IF NOT EXISTS `bundle_product_relation` (
  `rel_id` int(10) NOT NULL AUTO_INCREMENT,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL,
  PRIMARY KEY (`rel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.bundle_product_relation : ~3 rows (environ)
DELETE FROM `bundle_product_relation`;
/*!40000 ALTER TABLE `bundle_product_relation` DISABLE KEYS */;
INSERT INTO `bundle_product_relation` (`rel_id`, `rel_title`, `product_id`, `bundle_id`) VALUES
	(8, 'jacket bundle relation -1', 4, 11),
	(9, 'jacket bundle relation -2', 5, 11),
	(10, 'jacket bundle relation -3', 6, 11);
/*!40000 ALTER TABLE `bundle_product_relation` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. cart
CREATE TABLE IF NOT EXISTS `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.cart : ~0 rows (environ)
DELETE FROM `cart`;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. categories
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.categories : ~3 rows (environ)
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
	(11, 'Ordinateur de bureau', '', 'ordinateur de bureau.jpg'),
	(12, 'Ordinateur portable', '', 'ordinateur portable.jfif'),
	(13, 'tÃ©lÃ©phone', '', 'smart phone.jfif');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. contact_us
CREATE TABLE IF NOT EXISTS `contact_us` (
  `contact_id` int(10) NOT NULL AUTO_INCREMENT,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL,
  PRIMARY KEY (`contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.contact_us : ~1 rows (environ)
DELETE FROM `contact_us`;
/*!40000 ALTER TABLE `contact_us` DISABLE KEYS */;
INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
	(1, 'sad.ahmed22224@gmail.com', 'Contact  To Us', 'If you have any questions, please feel free to contact us, our customer service center is working for you 24/7.');
/*!40000 ALTER TABLE `contact_us` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. coupons
CREATE TABLE IF NOT EXISTS `coupons` (
  `coupon_id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.coupons : ~1 rows (environ)
DELETE FROM `coupons`;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
	(3, 9, 'Remind T-shirt', '40', '333444', 5, 1);
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. customers
CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.customers : ~1 rows (environ)
DELETE FROM `customers`;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
	(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', '');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. customer_orders
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.customer_orders : ~6 rows (environ)
DELETE FROM `customer_orders`;
/*!40000 ALTER TABLE `customer_orders` DISABLE KEYS */;
INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
	(16, 2, 207, 1715523401, 3, 'Small', '2017-02-20 09:21:42', 'pending'),
	(17, 2, 100, 1715523401, 2, 'Large', '2017-02-20 09:21:42', 'pending'),
	(18, 2, 300, 1715523401, 1, 'Medium', '2017-02-20 09:21:42', 'pending'),
	(19, 2, 150, 1068059025, 1, 'Medium', '2017-02-20 09:26:47', 'pending'),
	(20, 2, 288, 909940689, 3, 'Large', '2017-02-27 12:06:32', 'complete'),
	(21, 2, 400, 909940689, 2, 'Meduim', '2017-02-27 12:06:37', 'complete');
/*!40000 ALTER TABLE `customer_orders` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. enquiry_types
CREATE TABLE IF NOT EXISTS `enquiry_types` (
  `enquiry_id` int(10) NOT NULL AUTO_INCREMENT,
  `enquiry_title` varchar(255) NOT NULL,
  PRIMARY KEY (`enquiry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.enquiry_types : ~3 rows (environ)
DELETE FROM `enquiry_types`;
/*!40000 ALTER TABLE `enquiry_types` DISABLE KEYS */;
INSERT INTO `enquiry_types` (`enquiry_id`, `enquiry_title`) VALUES
	(1, 'Order and Delivery Support'),
	(2, 'Technical Support'),
	(3, 'Price Concern');
/*!40000 ALTER TABLE `enquiry_types` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. manufacturers
CREATE TABLE IF NOT EXISTS `manufacturers` (
  `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.manufacturers : ~7 rows (environ)
DELETE FROM `manufacturers`;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
	(7, 'HP', 'no', 'hp.png'),
	(8, 'ASUS', 'no', 'asus.png'),
	(9, 'DELL', 'no', 'dell.png'),
	(10, 'LENOVO', 'no', 'lenevo.png'),
	(11, 'HUAWEI', 'no', 'huawei.png'),
	(12, 'APPLE', 'no', 'apple.png'),
	(13, 'SAMSUNG', 'no', 'sumsang.png');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. payments
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(10) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.payments : ~2 rows (environ)
DELETE FROM `payments`;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
	(2, 1607603019, 447, 'UBL/Omni Paisa', 5678, 33, '11/1/2016'),
	(3, 314788500, 345, 'UBL/Omni Paisa', 443, 865, '11/1/2016');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. pending_orders
CREATE TABLE IF NOT EXISTS `pending_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.pending_orders : ~6 rows (environ)
DELETE FROM `pending_orders`;
/*!40000 ALTER TABLE `pending_orders` DISABLE KEYS */;
INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
	(16, 2, 1715523401, '2', 3, 'Small', 'pending'),
	(17, 2, 1715523401, '9', 2, 'Large', 'pending'),
	(18, 2, 1715523401, '11', 1, 'Medium', 'pending'),
	(19, 2, 1068059025, '7', 1, 'Medium', 'pending'),
	(20, 2, 909940689, '6', 3, 'Large', 'complete'),
	(21, 2, 909940689, '11', 2, 'Meduim', 'complete');
/*!40000 ALTER TABLE `pending_orders` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. products
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `product_quantity` int(10) DEFAULT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.products : ~24 rows (environ)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `product_quantity`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
	(14, 6, 12, 3, 8, '2022-05-02 21:47:01', 'ASUS CHROMEBOOK C204', 'ASUS-CHROMEBOOK-C204', 'ASUS12.jpg', 'asus1.jpg', 'asus11.jpg', 589, 500, '\r\n\r\n\r\n\r\nEcran 11.6" HD LED - Processeur Intel celeron N4020, up to 2,8 GHz, 4 Mo de MÃ©moire Cache - MÃ©moire 4 Go - Disque 32 Go - Carte graphique Intel UHD Graphics 600 - Wifi - Bluetooth 5.0 - Webcam HD - Clavier Chiclet - Type-A USB 3.2 - Type-C USB 3.1 - Lecteur de cartes - Clavier Chiclet - Chrome OS - Couleur Gris - Garantie 1 an\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'asus', 'asus', 'product'),
	(15, 6, 12, 40, 8, '2022-05-02 22:15:25', 'ASUS X543MA', 'ASUS-X543MA', 'asus21.jpg', 'asus22.jpg', 'asus2.jpg', 879, 879, '\r\n\r\nEcran 15.6" HD - Processeur Intel Celeron Dual Core N4020, up to 2.8 Ghz, 4 Mo de mÃ©moire cache - MÃ©moire 4 Go - Disque 1 To - Intel HD Graphics - Lecteur de cartes - Wifi - Bluetooth - USB 3.1 - 2x USB 2.0 - HDMI - Webcam avec Micro - Windows 10 - Couleur Gris - Garantie 1 an', '\r\n\r\n', '\r\n\r\n', 'asus', 'asus', 'product'),
	(17, 6, 12, NULL, 10, '2022-05-02 18:20:41', 'LENOVO IDEAPAD 3 15IGL05', 'LENOVO-IDEAPAD-3-15IGL05', 'lenevo2.png', 'lenovo21.jpg', 'lenevo22.png', 799, 750, '\r\n\r\n\r\n\r\nEcran 15.6" HD - Processeur Intel Celeron Dual Core N4020, 2.8 Ghz, 4 Mo de mÃ©moire cache - MÃ©moire 4 Go - Disque 1 To - Carte graphique Intel UHD Graphics 600 - Wifi - Bluetooth 5.0 - Webcam HD avec Micro - HDMI - Lecteur de cartes - USB 3.2 - USB 2.0 - Couleur Noir - Garantie 1 an\r\n', '\r\n\r\n', '\r\n\r\n', 'lenovo', 'lenovo', 'product'),
	(18, 6, 12, NULL, 8, '2022-05-02 18:23:26', 'ASUS VIVOBOOK E210MA', 'ASUS-VIVOBOOK-E210MA', 'asus3.jpg', 'asus31.jpg', 'asus32.jpg', 839, 800, '\r\n\r\nEcran 11.6" HD LED - Processeur Intel Celeron N4020, up to 2.8 GHz, 4 Mo de MÃ©moire Cache - MÃ©moire 4 Go - Disque 128 Go SSD - Carte graphique Intel UHD Graphics - Wifi - Bluetooth - Webcam - 1x Type-A USB 3.1 - 1x Type-C USB 3.1 - 1x USB 2.0 - Lecteur de cartes - Clavier Chiclet - Windows 11 - Couleur Bleu - Garantie 1 an', '\r\n\r\n', '\r\n\r\n', 'asus', 'asus', 'product'),
	(19, 6, 12, NULL, 10, '2022-05-02 18:28:25', 'LENOVO V15 IGL', 'LENOVO-V15-IGL', 'lenevo3.png', 'lenevo31.png', 'lenevo32.png', 875, 800, '\r\n\r\nEcran 15.6" LED HD - Processeur Intel Celeron Dual Core N4020, up to 2.8 GHz, 4 Mo de mÃ©moire cache - MÃ©moire 4 Go - Disque 1 To + 256 Go SSD - Carte graphique Intel UHD Graphics 600 - Wifi - Bluetooth - 2x USB 3.1 Gen 1 - 1x HDMI - Lecteur de cartes - Webcam HD - Garantie 1 an', '\r\n\r\n', '\r\n\r\n', 'lenovo', 'lenovo', 'product'),
	(20, 6, 12, NULL, 11, '2022-05-02 18:57:59', 'HUAWEI MATEBOOK D 14', 'HUAWEI-MATEBOOK-D14', 'h22.jpg', 'h23.jpg', 'h24.jpg', 2499, 2499, '\r\n\r\n\r\nEcran 14\' Full HD IPS - RÃ©solution 1920 x 1080px - Processeur Intel Core i5-1135G7, up to 4.2 Ghz, 8 Mo de cache - MÃ©moire RAM 8 Go - Stockage 512 Go SSD \r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'huawei', 'huawei', 'product'),
	(21, 8, 13, 100, 13, '2022-05-02 21:57:37', 'SAMSUNG GALAXY A12', 'SAMSUNG-GALAXY-A12', 's1.jpg', 's11.jpg', '12.jpg', 665, 665, '\r\n\r\n\r\nDouble SIM - Ecran 6.5" HD+ PLS TFT LCD  (720 x 1600 px) - Processeur Octa Core 2.3 GHz - RAM 4  Go - MÃ©moire 128 Go - Android 10 - CamÃ©ra arriÃ¨re Quad 48 MP + 5 MP + 2 MP + 2 MP, CamÃ©ra frontale 8 Mp\r\n', '\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n', 'samsung', 'samsung', 'product'),
	(22, 8, 13, NULL, 13, '2022-05-02 19:46:55', 'SAMSUNG GALAXY S22 ULTRA', 'SAMSUNG-GALAXY-S22-ULTRA', 'galaxy-s22-ultra1.jpg', 'galaxy-s22-ultra2.jpg', 'galaxy-s22-ultra3.jpg', 5999, 5999, '\r\n\r\nDouble SIM - Ecran Infinity 6.8" QHD+ HDR10+, Dynamic AMOLED 2X, 1440 x 3080 px, Super Smooth 120Hz, Gorilla Glass Victus+ - Processeur Qualcomm SM8450 Snapdragon 8 Gen 1 Octa-core (1x3.00 GHz Cortex-X2 & 3x2.40 GHz Cortex-A710 & 4x1.70 GHz Cortex-A510), Adreno 730 - RAM 12 Go', '\r\n\r\n', '\r\n\r\n', 'samsung', 'samsung', 'product'),
	(23, 8, 13, NULL, 12, '2022-05-02 19:51:22', 'IPHONE 12 PRO MAX', 'IPHONE-12-PRO-MAX', 'i1.jpg', 'i11.jpg', 'i12.jpg', 4649, 4649, 'Ecran 6.7" HDR OLED Super Retina XDR (1284 x 2778 px) - Processeur Apple A14 Bionic Hexa Core - Etanche IP68 - RAM 6 Go - MÃ©moire 128 Go - SystÃ¨me Apple iOS 14 - Appareil Photo: Triple CamÃ©ra ArriÃ¨re 3x 12 MP, 12 MP (Frontale)\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'IPHONE', 'iphone', 'product'),
	(24, 8, 13, NULL, 11, '2022-05-02 20:51:27', 'HUAWEI MATE 40 PRO', 'HUAWEI-MATE-40-PRO', 'hu1.jpg', 'h222.jpg', 'h223.jpg', 3999, 3999, '\r\n\r\nDouble SIM - Ecran 6.76" Full HD OLED, HDR10, 90Hz, 1344 x 2772 px - Processeur Kirin 9000 5G Octa-core (1x3.13 GHz Cortex-A77 & 3x2.54 GHz Cortex-A77 & 4x2.05 GHz Cortex-A55), Mali-G78 MP24 - Android 10, EMUI 11 - RAM 8 Go - MÃ©moire 256 Go - CamÃ©ra frontale 13 MP, f/2.4, 18mm\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n', 'huawei', 'huawei', 'product'),
	(25, 8, 13, NULL, 13, '2022-05-02 19:57:39', 'SAMSUNG GALAXY S21 FE', 'SAMSUNG-GALAXY-S21-FE', 'g1.jpg', 'g11.jpg', 'g13.jpg', 3099, 3099, 'Double SIM - Ecran Infinity 6.4" FHD+ Dynamic AMOLED 2X, 1080 x 2340 px, 120Hz, Gorilla Glass 7, Filtre de lumiÃ¨re bleue, HDR10+ - Processeur Qualcomm SM8350 Snapdragon 888 5G Octa-core (1x2.84 GHz Kryo 680 & 3x2.42 GHz Kryo 680 & 4x1.80 GHz Kryo 680), Adreno 660 - RAM 8 Go - MÃ©moire 256 Go\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'Galaxy', 'samsung', 'product'),
	(26, 8, 13, NULL, 13, '2022-05-02 20:00:09', 'SAMSUNG GALAXY A53', 'SAMSUNG-GALAXY-A53', 'g2.jpg', 'g21.jpg', 'g22.jpg', 1899, 1899, '\r\nDouble Sim - Ecran 6.5" Infinity-O, Super AMOLED, Full HD+ 1080 x 2400 pixels - 120 Hz, HDR, Gorilla Glass 5, HDR10+ - Processeur Exynos 1280 Octo-Core cadencÃ© Ã  2.4 GHz - RAM 8 Go - MÃ©moire 128 Go - Android 12 + Samsung One UI 4.1 - Appareil Photo 64 MP (f/1.8, OIS) + 12 MP (ultra grand angle, f/2.2, FOV 120Â°) + 5 MP (macro, f/2.4) + 5 MP (portrait, f/2.4)\r\n', '\r\n\r\n', '\r\n\r\n', 'galaxy', 'samsung', 'product'),
	(27, 8, 13, NULL, 11, '2022-05-02 20:03:28', 'HUAWEI NOVA 9', 'HUAWEI-NOVA-9', 'hu1.jpg', 'hu2.jpg', 'hu3.jpg', 1889, 1889, '\r\nHuawei Nova 9 128 Go bleuSmartphone Huawei Nova 9-Ecran 6.57" Full HD+ OLED 120Hz HDR10 - RÃ©solution 2340 x 1080px - Processeur Qualcomm SM7325 Snapdragon 778G, Octa-core (4x2.4 GHz Kryo 670 & 4x1.8 GHz Kryo 670), Adreno 642L - EMUI 12 - RAM 8 Go - MÃ©moire 128 Go\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'huawei', 'huawei', 'product'),
	(28, 5, 12, NULL, 7, '2022-05-02 20:09:35', 'HP PAVILION GAMING 15-EC2015NK', 'HP-PAVILION-GAMING-15-EC2015NK', 'hp1.jpg', 'hp2.jpg', 'hp3.jpg', 2349, 2349, 'Ã‰cran 15.6" Full HD IPS - Processeur AMD Ryzen 5600H, up to 4.2 Ghz, 16 Mo de cache - MÃ©moire 8 Go - Disque 256 Go SSD + 1 To - Carte graphique Nvidia GeForce GTX 1650, 4 Go de mÃ©moire GDDR6 dÃ©diÃ©e\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'gaming', 'HP', 'product'),
	(29, 5, 12, NULL, 9, '2022-05-02 20:11:43', 'DELL GAMING G15 5510', 'DELL-GAMING-G15-5510', 'dell1.jpg', 'dell2.jpg', 'dell3.jpg', 2405, 2405, '\r\nEcran 15.6" FHD 120Hz - Processeur Intel Core i5-10500H, up to 4.5 Ghz, 12 Mo de mÃ©moire cache - MÃ©moire 8 Go - Disque 256 Go SSD - Carte graphique Nvidia GeForce GTX 1650, 4 Go de mÃ©moire dÃ©diÃ©e\r\n', '\r\n\r\n', '\r\n\r\n', 'gamong', 'DELL', 'product'),
	(30, 5, 12, NULL, 10, '2022-05-02 20:14:12', 'LENOVO IDEAPAD GAMING 3 15IMH05', 'LENOVO-IDEAPAD-GAMING 3-15IMH05', 'len1.jpg', 'len2.jpg', 'len3.jpg', 2628, 2628, 'Ã‰cran 15.6" IPS Full HD 120 Hz - Processeur Intel Core i5-10300H, up to 4.5 Ghz, 8 Mo de cache - MÃ©moire 16 Go - Disque SSD 256 Go + 1 To - Carte graphique Nvidia GTX 1650 Ti, 4 Go de mÃ©moire GDDR6 dÃ©diÃ©e - Wifi - Bluetooth - 1x USB 3.1 Type C - 2x USB 3.1 - HDMI 2.0 - RJ45  - Clavier RetroÃ©clairÃ© - Couleur Bleu - Garantie 2 ans\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'gaming', 'lenovo', 'product'),
	(31, 5, 12, NULL, 8, '2022-05-02 20:16:53', 'ASUS TUF F15 FX506LH-HN004T', 'ASUS-TUF-F15-FX506LH-HN004T', 'asuss1.jpg', 'asuss2.jpg', 'asuss3.jpg', 3079, 3079, 'Ecran 15.6" Full HD IPS 144Hz - Processeur Intel Core i5-10300H, up to 4.5 Ghz, 8 Mo de mÃ©moire cache - MÃ©moire 8 Go - Disque 512 Go SSD - Carte graphique Nvidia GeForce GTX 1650, 4 Go de mÃ©moire DÃ©diÃ©e - Wifi - Bluetooth - 1x USB 3.1 Type C - 2x USB 3.2 - USB 2.0 - 1x HDMI - Thunderbolt 4 - Webcam avec Micro - Clavier rÃ©troÃ©clairÃ© \r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'gaming', 'ASUS', 'product'),
	(32, 5, 12, NULL, 10, '2022-05-02 20:23:42', 'LENOVO IDEAPAD GAMING 3 15ACH6', 'LENOVO-IDEAPAD ', 'll1.jpg', 'll2.jpg', 'll3.jpg', 3444, 3444, 'Ecran 15.6" IPS Full HD 165 Hz - Processeur AMD Ryzen 5 5600H, up to 4.2 GHz, 16 Mo de mÃ©moire cache - MÃ©moire 12 Go - Disque 512 Go SSD - Carte graphique NVIDIA GeForce RTX 3060, 6 Go de mÃ©moire dÃ©diÃ©e GDDR6\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'gaming', 'lenovo', 'product'),
	(33, 6, 11, NULL, 10, '2022-05-02 20:26:22', 'LENOVO V50T 13IMB', 'LENOVO-V50T-13IMB', 'pb1.jpg', 'pb2.jpg', 'pb3.jpg', 894, 894, 'Processeur Dual Core Intel Pentium Gold G6400, 4 Ghz, 4 Mo de mÃ©moire cache - MÃ©moire 4 Go - Disque 1 To - Carte graphique Intel UHD Graphics 610\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'bureautique', 'lenovo', 'product'),
	(34, 6, 11, NULL, 9, '2022-05-02 20:30:50', 'DELL VOSTRO 3888', 'DELL-VOSTRO-3888', 'pbd1.jpg', 'pbd2.jpg', 'pbd3.jpg', 929, 929, 'Processeur Intel Pentium Gold Dual Core G6400, 4.0 GHz, 4 Mo de mÃ©moire cache - MÃ©moire 4 Go - Disque 1 To - Carte Graphique intel UHD Graphics \r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'bureautique', 'DELL', 'product'),
	(35, 6, 11, NULL, 7, '2022-05-02 20:42:31', 'HP PRO 300 G6', 'HP-PRO-300-G6', 'pbh1.jpg', 'pbh2.jpg', 'pbh3.jpg', 999, 999, 'Processeur Intel Pentium Gold G6400, 4.00 Ghz, 4 Mo de mÃ©moire cache - MÃ©moire 4 Go - Disque 1 To - Carte graphique Intel UHD 610 - Graveur DVD - HDMI - VGA - RJ-45\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'bureautique', 'HP', 'product'),
	(36, 6, 11, NULL, 12, '2022-05-02 20:57:52', 'APPLE IMAC', 'APPLE-IMAC', 'mac1.jpg', 'mac2.jpg', 'mac3.jpg', 5795, 5795, 'Pc de Bureau Apple iMac 2020 Tout-En-Un -  Ã‰cran 21.5" Retina 4K - RÃ©solution 4096 x 2304 pixels - Mac OS X 10.15 Catalina - Processeur Intel Core i5-8500 up to 4.1 Ghz, 9 Mo de mÃ©moire cache - MÃ©moire 8 Go DDR4 - Disque SSD 256 Go\r\n', '\r\n\r\n', '\r\n\r\n', 'mac', 'Mac', 'product'),
	(37, 5, 11, NULL, 8, '2022-05-02 21:00:53', 'ASUS ROG STRIX GL10CE', 'ASUS-ROG-STRIX-GL10CE', 'rog1.jpg', 'rog2.jpg', 'rog3.jpg', 4499, 4499, 'Processeur Intel Core i5 10400F, up to 4.3 Ghz, 12 Mo de mÃ©moire cache - MÃ©moire 16 Go - Disque 256 Go SSD - Carte graphique Nvidia GeForce RTX 3070\r\n\r\n', '\r\n\r\n', '\r\n\r\n', 'gaming', 'ASUS', 'product'),
	(38, 6, 12, 6, 9, '2022-05-02 21:48:54', 'testttt', 'testttt', '12.jpg', 'a1.jpg', '12.jpg', 20000, 200000, '\r\n\r\ntestttt', '\r\n\r\n', '\r\n\r\n', 'testttt', 'testttt', 'product');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `p_cat_id` int(10) NOT NULL AUTO_INCREMENT,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL,
  PRIMARY KEY (`p_cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.product_categories : ~3 rows (environ)
DELETE FROM `product_categories`;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
	(5, 'Pc Gaming', 'no', 'gaming.jpeg'),
	(6, 'Pc Portable Pro', 'no', 'ordinateur portable.jfif'),
	(8, 'SmartPhones', 'yes', 'smart phone.jfif');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. store
CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(10) NOT NULL AUTO_INCREMENT,
  `store_title` varchar(255) NOT NULL,
  `store_image` varchar(255) NOT NULL,
  `store_desc` text NOT NULL,
  `store_button` varchar(255) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.store : ~3 rows (environ)
DELETE FROM `store`;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` (`store_id`, `store_title`, `store_image`, `store_desc`, `store_button`, `store_url`) VALUES
	(4, 'London Store', 'store (3).jpg', '<p style="text-align: center;"><strong>180-182 RECENTS STREET, LONDON, W1B 5BT</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
	(5, 'New York Store', 'store (1).png', '<p style="text-align: center;"><strong>109 COLUMBUS CIRCLE, NEW YORK, NY10023</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce'),
	(6, 'Paris Store', 'store (2).jpg', '<p style="text-align: center;"><strong>2133 RUE SAINT-HONORE, 75001 PARIS&nbsp;</strong></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut libero erat, aliquet eget mauris ut, dictum sagittis libero. Nam at dui dapibus, semper dolor ac, malesuada mi. Duis quis lobortis arcu. Vivamus sed sodales orci, non varius dolor.</p>', 'View Map', 'http://www.thedailylux.com/ecommerce');
/*!40000 ALTER TABLE `store` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. terms
CREATE TABLE IF NOT EXISTS `terms` (
  `term_id` int(10) NOT NULL AUTO_INCREMENT,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL,
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.terms : ~3 rows (environ)
DELETE FROM `terms`;
/*!40000 ALTER TABLE `terms` DISABLE KEYS */;
INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
	(1, 'Rules And Regulations', 'rules', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.&nbsp;</p>'),
	(2, 'Refund Policy', 'link2', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on'),
	(3, 'Pricing and Promotions Policy', 'link3', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).Why do we use it?It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on');
/*!40000 ALTER TABLE `terms` ENABLE KEYS */;

-- Listage de la structure de la table ecom_store. wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlist_id` int(10) NOT NULL AUTO_INCREMENT,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  PRIMARY KEY (`wishlist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Listage des données de la table ecom_store.wishlist : ~1 rows (environ)
DELETE FROM `wishlist`;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`wishlist_id`, `customer_id`, `product_id`) VALUES
	(2, 2, 8);
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
