-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 29 Mars 2017 à 11:45
-- Version du serveur :  5.6.20
-- Version de PHP :  5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `transport`
--

-- --------------------------------------------------------

--
-- Structure de la table `bridge_cost`
--

CREATE TABLE IF NOT EXISTS `bridge_cost` (
`bridge_cost_id` int(11) NOT NULL,
  `toll_booth` int(11) DEFAULT NULL,
  `road` int(11) DEFAULT NULL,
  `toll_booth_cost` decimal(10,0) DEFAULT NULL,
  `check_vat` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1861 ;

--
-- Contenu de la table `bridge_cost`
--

INSERT INTO `bridge_cost` (`bridge_cost_id`, `toll_booth`, `road`, `toll_booth_cost`, `check_vat`) VALUES
(1857, 1, 2175, '10000', 1),
(1858, 2, 2175, '20000', 0),
(1859, 2, 2176, '21000', 0),
(1860, 1, 2177, '10000', 1);

-- --------------------------------------------------------

--
-- Structure de la table `bridge_cost_temp`
--

CREATE TABLE IF NOT EXISTS `bridge_cost_temp` (
`bridge_cost_temp_id` int(11) NOT NULL,
  `bridge_cost_id` int(11) NOT NULL,
  `toll_booth` int(11) DEFAULT NULL,
  `road` int(11) DEFAULT NULL,
  `toll_booth_cost` decimal(10,0) DEFAULT NULL,
  `check_vat` int(11) DEFAULT NULL,
  `bridge_cost_temp_date` int(11) DEFAULT NULL,
  `bridge_cost_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `bridge_cost_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `contact_person`
--

CREATE TABLE IF NOT EXISTS `contact_person` (
`contact_person_id` int(11) NOT NULL,
  `contact_person_name` varchar(50) DEFAULT NULL,
  `contact_person_address` varchar(100) DEFAULT NULL,
  `contact_person_phone` varchar(20) DEFAULT NULL,
  `contact_person_mobile` varchar(20) DEFAULT NULL,
  `contact_person_email` varchar(50) DEFAULT NULL,
  `contact_person_position` varchar(20) DEFAULT NULL,
  `contact_person_department` varchar(20) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `contact_person`
--

INSERT INTO `contact_person` (`contact_person_id`, `contact_person_name`, `contact_person_address`, `contact_person_phone`, `contact_person_mobile`, `contact_person_email`, `contact_person_position`, `contact_person_department`, `customer`) VALUES
(1, 'a', '', '12', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_mst` int(11) DEFAULT NULL,
  `customer_address` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_mobile` varchar(20) DEFAULT NULL,
  `customer_email` varchar(50) DEFAULT NULL,
  `customer_bank_account` int(11) DEFAULT NULL,
  `customer_bank_name` varchar(50) DEFAULT NULL,
  `customer_bank_branch` varchar(50) DEFAULT NULL,
  `customer_sub` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_mst`, `customer_address`, `customer_phone`, `customer_mobile`, `customer_email`, `customer_bank_account`, `customer_bank_name`, `customer_bank_branch`, `customer_sub`) VALUES
(1, 'AA', 111, 'a2', '', '', '', 0, '', '', '1,2');

-- --------------------------------------------------------

--
-- Structure de la table `customer_sub`
--

CREATE TABLE IF NOT EXISTS `customer_sub` (
`customer_sub_id` int(11) NOT NULL,
  `customer_sub_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `customer_sub`
--

INSERT INTO `customer_sub` (`customer_sub_id`, `customer_sub_name`) VALUES
(1, 'Sắn'),
(2, 'Mì');

-- --------------------------------------------------------

--
-- Structure de la table `distance`
--

CREATE TABLE IF NOT EXISTS `distance` (
`distance_id` int(11) NOT NULL,
  `road` int(11) DEFAULT NULL,
  `km` float DEFAULT NULL,
  `oil` float DEFAULT NULL,
  `way` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `distance`
--

INSERT INTO `distance` (`distance_id`, `road`, `km`, `oil`, `way`) VALUES
(1, 2175, 1, 0.38, 1),
(2, 2176, 1, 0.58, 2),
(3, 2177, 1, 0.38, 1),
(4, 2175, 1, 0.58, 2);

-- --------------------------------------------------------

--
-- Structure de la table `distance_temp`
--

CREATE TABLE IF NOT EXISTS `distance_temp` (
`distance_temp_id` int(11) NOT NULL,
  `distance_id` int(11) NOT NULL,
  `road` int(11) DEFAULT NULL,
  `km` float DEFAULT NULL,
  `oil` float DEFAULT NULL,
  `way` int(11) DEFAULT NULL,
  `distance_temp_date` int(11) DEFAULT NULL,
  `distance_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `distance_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
`driver_id` int(11) NOT NULL,
  `start_work` int(11) DEFAULT NULL,
  `end_work` int(11) DEFAULT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `steersman` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `driver`
--

INSERT INTO `driver` (`driver_id`, `start_work`, `end_work`, `vehicle`, `steersman`) VALUES
(54, 1489618800, 1490738400, 1, 41),
(55, 1490824800, 1491948000, 1, 42),
(56, 1492034400, 1807567200, 1, 41);

-- --------------------------------------------------------

--
-- Structure de la table `driver_temp`
--

CREATE TABLE IF NOT EXISTS `driver_temp` (
`driver_temp_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `start_work` int(11) DEFAULT NULL,
  `end_work` int(11) DEFAULT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `steersman` int(11) DEFAULT NULL,
  `driver_temp_date` int(11) DEFAULT NULL,
  `driver_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `driver_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `oil`
--

CREATE TABLE IF NOT EXISTS `oil` (
`oil_id` int(11) NOT NULL,
  `way` varchar(20) DEFAULT NULL,
  `oil` float DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `oil`
--

INSERT INTO `oil` (`oil_id`, `way`, `oil`) VALUES
(1, 'Rỗng', 0.38),
(2, 'Lên', 0.58);

-- --------------------------------------------------------

--
-- Structure de la table `oil_temp`
--

CREATE TABLE IF NOT EXISTS `oil_temp` (
`oil_temp_id` int(11) NOT NULL,
  `oil_id` int(11) NOT NULL,
  `way` varchar(20) DEFAULT NULL,
  `oil` float DEFAULT NULL,
  `oil_temp_date` int(11) DEFAULT NULL,
  `oil_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `oil_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `oil_temp`
--

INSERT INTO `oil_temp` (`oil_temp_id`, `oil_id`, `way`, `oil`, `oil_temp_date`, `oil_temp_action`, `oil_temp_user`, `name`) VALUES
(1, 3, 'Xuống', 0.6, 1490652000, 1, 41, 'Định mức dầu'),
(2, 3, 'Xuống', 0.7, 1490652000, 2, 41, 'Định mức dầu'),
(3, 3, 'Xuống', 0.7, 1490652000, 3, 41, 'Định mức dầu');

-- --------------------------------------------------------

--
-- Structure de la table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
`place_id` int(11) NOT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `province` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `place`
--

INSERT INTO `place` (`place_id`, `place_name`, `province`) VALUES
(1, 'Cát Lái', 1),
(2, 'Aeo', 25);

-- --------------------------------------------------------

--
-- Structure de la table `place_temp`
--

CREATE TABLE IF NOT EXISTS `place_temp` (
`place_temp_id` int(11) NOT NULL,
  `place_id` int(11) NOT NULL,
  `place_name` varchar(100) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `place_temp_date` int(11) DEFAULT NULL,
  `place_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `place_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `place_temp`
--

INSERT INTO `place_temp` (`place_temp_id`, `place_id`, `place_name`, `province`, `place_temp_date`, `place_temp_action`, `place_temp_user`, `name`) VALUES
(1, 3, 'sas', 12, 1490652000, 1, 41, 'DS kho hàng'),
(2, 3, 'aa', 12, 1490652000, 2, 41, 'DS kho hàng'),
(3, 3, 'aa', 12, 1490652000, 3, 41, 'DS kho hàng');

-- --------------------------------------------------------

--
-- Structure de la table `province`
--

CREATE TABLE IF NOT EXISTS `province` (
`province_id` int(11) NOT NULL,
  `province_name` varchar(50) DEFAULT NULL,
  `province_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Contenu de la table `province`
--

INSERT INTO `province` (`province_id`, `province_name`, `province_code`) VALUES
(1, 'TP Hồ Chí Minh', 'HCM'),
(2, 'Đồng Nai', 'ĐN'),
(3, 'Bình Dương', 'BD'),
(4, 'Bà Rịa - Vũng Tàu', 'BR-VT'),
(5, 'Long An', 'LA'),
(6, 'Bình Phước', 'BP'),
(7, 'Tây Ninh', 'TN'),
(8, 'TP Cần Thơ', 'CT'),
(9, 'TP Đà Nẵng', 'ĐANA'),
(10, 'TP Hà Nội', 'HN'),
(11, 'TP Hải Phòng', 'HP'),
(12, 'An Giang', 'AG'),
(13, 'Bắc Kạn', 'BK'),
(14, 'Bạc Liêu', 'BL'),
(15, 'Bắc Ninh', 'BN'),
(16, 'Bến Tre', 'BTRE'),
(17, 'Bình Định', 'BĐ'),
(18, 'Bình Thuận', 'BT'),
(19, 'Cà Mau', 'CM'),
(20, 'Cao Bằng', 'CB'),
(21, 'Đắk Lắk', 'ĐL'),
(22, 'Đắk Nông', 'ĐNONG'),
(23, 'Điện Biên', 'ĐB'),
(24, 'Đồng Tháp', 'ĐT'),
(25, 'Gia Lai', 'GL'),
(26, 'Hà Giang', 'HG'),
(27, 'Hà Nam', 'HANA'),
(28, 'Hà Tĩnh', 'HT'),
(29, 'Hải Dương', 'HD'),
(30, 'Hậu Giang', 'HAUGIA'),
(31, 'Hòa Bình', 'HB'),
(32, 'Hưng Yên', 'HY'),
(33, 'Khánh Hòa', 'KH'),
(34, 'Kiên Giang', 'KG'),
(35, 'Kon Tum', 'KT'),
(36, 'Lai Châu', 'LC'),
(37, 'Lâm Đồng', 'LĐ'),
(38, 'Lạng Sơn', 'LS'),
(39, 'Lào Cai', 'LCA'),
(40, 'Nam Định', 'NĐ'),
(41, 'Nghệ An', 'NA'),
(42, 'Ninh Bình', 'NB'),
(43, 'Ninh Thuận', 'NT'),
(44, 'Phú Thọ', 'PT'),
(45, 'Phú Yên', 'PY'),
(46, 'Quảng Bình', 'QB'),
(47, 'Quảng Nam', 'QNA'),
(48, 'Quảng Ngãi', 'QN'),
(49, 'Quảng Ninh', 'QNI'),
(50, 'Quảng Trị', 'QT'),
(51, 'Sóc Trăng', 'ST'),
(52, 'Sơn La', 'SL'),
(53, 'Thái Bình', 'TB'),
(54, 'Thái Nguyên', 'THN'),
(55, 'Thanh Hóa', 'TH'),
(56, 'Thừa Thiên Huế', 'HUE'),
(57, 'Tiền Giang', 'TG'),
(58, 'Trà Vinh', 'TV'),
(59, 'Tuyên Quang', 'TQ'),
(60, 'Vĩnh Long', 'VL'),
(61, 'Vĩnh Phúc', 'VP'),
(62, 'Yên Bái', 'YB');

-- --------------------------------------------------------

--
-- Structure de la table `road`
--

CREATE TABLE IF NOT EXISTS `road` (
`road_id` int(11) NOT NULL,
  `road_from` int(11) DEFAULT NULL,
  `road_to` int(11) DEFAULT NULL,
  `road_km` int(11) DEFAULT NULL,
  `road_oil` float DEFAULT NULL,
  `road_time` float DEFAULT NULL,
  `bridge_cost` decimal(10,0) DEFAULT NULL,
  `police_cost` decimal(10,0) DEFAULT NULL,
  `tire_cost` decimal(10,0) DEFAULT NULL,
  `way` int(11) DEFAULT NULL COMMENT '0:Rong | 1:Len | 2:Xuong | 3:Bang | 4:DN-QN',
  `charge_add` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2178 ;

--
-- Contenu de la table `road`
--

INSERT INTO `road` (`road_id`, `road_from`, `road_to`, `road_km`, `road_oil`, `road_time`, `bridge_cost`, `police_cost`, `tire_cost`, `way`, `charge_add`, `status`, `start_time`, `end_time`) VALUES
(2175, 1, 2, 2, 0.96, 1, '27273', '200000', '50000', 1, '100000', 1, 1490310000, 1490738400),
(2176, 1, 2, 2, 0.96, 1, '18182', '0', '2000', 2, '0', 1, 1490824800, 1492120800),
(2177, 1, 2, 1, 0.38, 0, '9091', '0', '0', 2, '0', 1, 1492207200, 1588197600);

-- --------------------------------------------------------

--
-- Structure de la table `road_temp`
--

CREATE TABLE IF NOT EXISTS `road_temp` (
`road_temp_id` int(11) NOT NULL,
  `road_id` int(11) NOT NULL,
  `road_from` int(11) DEFAULT NULL,
  `road_to` int(11) DEFAULT NULL,
  `road_km` int(11) DEFAULT NULL,
  `road_oil` float DEFAULT NULL,
  `road_time` float DEFAULT NULL,
  `bridge_cost` decimal(10,0) DEFAULT NULL,
  `police_cost` decimal(10,0) DEFAULT NULL,
  `tire_cost` decimal(10,0) DEFAULT NULL,
  `way` int(11) DEFAULT NULL COMMENT '0:Rong | 1:Len | 2:Xuong | 3:Bang | 4:DN-QN',
  `charge_add` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `road_temp_date` int(11) DEFAULT NULL,
  `road_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `road_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
`role_id` int(11) NOT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `role_status` int(1) NOT NULL DEFAULT '1' COMMENT '1:active|0:inactive'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_status`) VALUES
(1, 'Quản trị cấp cao', 1),
(2, 'Báo cáo, tổng hợp', 1),
(3, 'Kế toán', 1),
(4, 'Kinh doanh', 1),
(5, 'Điều độ', 1),
(6, 'Kho', 1),
(7, 'Nhân sự', 1),
(8, 'Vật tư, kỹ thuật', 1),
(21, 'Tài xế', 1);

-- --------------------------------------------------------

--
-- Structure de la table `romooc`
--

CREATE TABLE IF NOT EXISTS `romooc` (
`romooc_id` int(11) NOT NULL,
  `romooc_number` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '0' COMMENT '1:Đã lắp | 0:Trống'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `romooc`
--

INSERT INTO `romooc` (`romooc_id`, `romooc_number`, `status`) VALUES
(1, '72A-32324', 0),
(2, '72C-32300', 0);

-- --------------------------------------------------------

--
-- Structure de la table `romooc_temp`
--

CREATE TABLE IF NOT EXISTS `romooc_temp` (
`romooc_temp_id` int(11) NOT NULL,
  `romooc_id` int(11) NOT NULL,
  `romooc_number` varchar(20) DEFAULT NULL,
  `romooc_temp_date` int(11) DEFAULT NULL,
  `romooc_temp_user` int(11) DEFAULT NULL,
  `romooc_temp_action` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `romooc_temp`
--

INSERT INTO `romooc_temp` (`romooc_temp_id`, `romooc_id`, `romooc_number`, `romooc_temp_date`, `romooc_temp_user`, `romooc_temp_action`, `name`) VALUES
(1, 1, '72A-323245', 1490738400, 41, 1, 'DS xe'),
(2, 1, '72A-32324', 1490738400, 41, 2, 'DS mooc'),
(3, 2, 'sdsd', 1490738400, 41, 1, 'DS xe'),
(4, 2, 'sdsd', 1490738400, 41, 3, 'DS mooc'),
(5, 2, '72C-32300', 1490738400, 41, 1, 'DS mooc');

-- --------------------------------------------------------

--
-- Structure de la table `steersman`
--

CREATE TABLE IF NOT EXISTS `steersman` (
`steersman_id` int(11) NOT NULL,
  `steersman_code` varchar(20) DEFAULT NULL,
  `steersman_name` varchar(50) DEFAULT NULL,
  `steersman_birth` int(11) DEFAULT NULL,
  `steersman_bank` varchar(20) DEFAULT NULL,
  `steersman_start_time` int(11) DEFAULT NULL,
  `steersman_end_time` int(11) DEFAULT NULL,
  `steersman_phone` varchar(20) DEFAULT NULL,
  `steersman_cmnd` int(11) DEFAULT NULL,
  `steersman_gplx` varchar(20) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Contenu de la table `steersman`
--

INSERT INTO `steersman` (`steersman_id`, `steersman_code`, `steersman_name`, `steersman_birth`, `steersman_bank`, `steersman_start_time`, `steersman_end_time`, `steersman_phone`, `steersman_cmnd`, `steersman_gplx`) VALUES
(41, 'MT01', 'Nguyễn Văn A', 1489791600, 'ACB2323001', 1490310000, 1490911200, '090 208 5911', 2147483647, 'GP3236465454'),
(42, 'MT02', 'ABC', 1490223600, '545454545', 1490223600, 0, '090 208 5988', 2147483647, '2323');

-- --------------------------------------------------------

--
-- Structure de la table `steersman_temp`
--

CREATE TABLE IF NOT EXISTS `steersman_temp` (
`steersman_temp_id` int(11) NOT NULL,
  `steersman_id` int(11) NOT NULL,
  `steersman_code` varchar(20) DEFAULT NULL,
  `steersman_name` varchar(50) DEFAULT NULL,
  `steersman_birth` int(11) DEFAULT NULL,
  `steersman_bank` varchar(20) DEFAULT NULL,
  `steersman_start_time` int(11) DEFAULT NULL,
  `steersman_end_time` int(11) DEFAULT NULL,
  `steersman_phone` varchar(20) DEFAULT NULL,
  `steersman_cmnd` int(11) DEFAULT NULL,
  `steersman_gplx` varchar(20) DEFAULT NULL,
  `steersman_temp_date` int(11) DEFAULT NULL,
  `steersman_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `steersman_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `steersman_temp`
--

INSERT INTO `steersman_temp` (`steersman_temp_id`, `steersman_id`, `steersman_code`, `steersman_name`, `steersman_birth`, `steersman_bank`, `steersman_start_time`, `steersman_end_time`, `steersman_phone`, `steersman_cmnd`, `steersman_gplx`, `steersman_temp_date`, `steersman_temp_action`, `steersman_temp_user`, `name`) VALUES
(1, 43, 'a', 'a', 0, '', 1489618800, 0, '0', 0, '', 1490652000, 1, 41, 'DS tài xế'),
(2, 43, 'a', 'a', -94266000, '323', 1489618800, 0, '0534', 2323, '2323', 1490652000, 2, 41, 'DS tài xế'),
(3, 43, 'a', 'a', -94266000, '323', 1489618800, 0, '0534', 2323, '2323', 1490652000, 2, 41, 'DS tài xế'),
(4, 43, 'as', 'aa', -94266000, '323', 1489618800, 0, '0534', 2323, '2323', 1490652000, 2, 41, 'DS tài xế'),
(5, 43, 'as', 'aa', -94266000, '323', 1489618800, 0, '0534', 2323, '2323', 1490652000, 3, 41, 'DS tài xế');

-- --------------------------------------------------------

--
-- Structure de la table `toll`
--

CREATE TABLE IF NOT EXISTS `toll` (
`toll_id` int(11) NOT NULL,
  `toll_name` varchar(200) DEFAULT NULL,
  `toll_mst` varchar(50) DEFAULT NULL,
  `toll_type` int(11) DEFAULT NULL COMMENT '1: Vé thu phí | 2: Cước đường bộ',
  `toll_symbol` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `toll`
--

INSERT INTO `toll` (`toll_id`, `toll_name`, `toll_mst`, `toll_type`, `toll_symbol`) VALUES
(1, 'QL1', '03254659-1', 1, 't2033'),
(2, 'QL2', '52456666', 2, '545454a');

-- --------------------------------------------------------

--
-- Structure de la table `toll_temp`
--

CREATE TABLE IF NOT EXISTS `toll_temp` (
`toll_temp_id` int(11) NOT NULL,
  `toll_id` int(11) NOT NULL,
  `toll_name` varchar(200) DEFAULT NULL,
  `toll_mst` varchar(50) DEFAULT NULL,
  `toll_type` int(11) DEFAULT NULL COMMENT '1: Vé thu phí | 2: Cước đường bộ',
  `toll_symbol` varchar(20) DEFAULT NULL,
  `toll_temp_date` int(11) DEFAULT NULL,
  `toll_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `toll_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  `role` int(11) NOT NULL,
  `user_lock` int(11) DEFAULT NULL,
  `user_group` int(11) DEFAULT NULL,
  `user_dept` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `create_time`, `role`, `user_lock`, `user_group`, `user_dept`) VALUES
(41, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 1411375062, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
`vehicle_id` int(11) NOT NULL,
  `vehicle_number` varchar(20) DEFAULT NULL,
  `cont_number` varchar(20) DEFAULT NULL,
  `vehicle_type` int(11) DEFAULT NULL COMMENT '1:Mới | 2:Thuê | 3:Cũ'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_number`, `cont_number`, `vehicle_type`) VALUES
(1, '51C-34567', 'WLU201020341', 1),
(2, '72F-4321', '', 2);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_romooc`
--

CREATE TABLE IF NOT EXISTS `vehicle_romooc` (
`vehicle_romooc_id` int(11) NOT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `romooc` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `vehicle_romooc`
--

INSERT INTO `vehicle_romooc` (`vehicle_romooc_id`, `vehicle`, `romooc`, `start_time`, `end_time`) VALUES
(14, 1, 2, 1490738400, 1490911200),
(15, 1, 1, 1488322800, 1490652000),
(16, 1, 1, 1490997600, 1490911200),
(17, 1, 2, 1490997600, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_temp`
--

CREATE TABLE IF NOT EXISTS `vehicle_temp` (
`vehicle_temp_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `vehicle_number` varchar(20) DEFAULT NULL,
  `cont_number` varchar(20) DEFAULT NULL,
  `vehicle_type` int(11) DEFAULT NULL COMMENT '1:Mới | 2:Thuê | 3:Cũ',
  `vehicle_temp_date` int(11) DEFAULT NULL,
  `vehicle_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `vehicle_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `vehicle_temp`
--

INSERT INTO `vehicle_temp` (`vehicle_temp_id`, `vehicle_id`, `vehicle_number`, `cont_number`, `vehicle_type`, `vehicle_temp_date`, `vehicle_temp_action`, `vehicle_temp_user`, `name`) VALUES
(1, 3, 'rre', 'fdf', 1, 1490652000, 1, 41, 'DS xe'),
(2, 3, 'rregfg', 'fdfgfg', 1, 1490652000, 2, 41, 'DS xe'),
(3, 3, NULL, NULL, NULL, 1490652000, 3, 41, 'DS tài xế'),
(4, 4, 'a', 'a', 1, 1490652000, 1, 41, 'DS xe'),
(5, 4, 'a', 'a', 1, 1490652000, 3, 41, 'DS tài xế');

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_work`
--

CREATE TABLE IF NOT EXISTS `vehicle_work` (
`vehicle_work_id` int(11) NOT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `start_work` int(11) DEFAULT NULL,
  `end_work` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Contenu de la table `vehicle_work`
--

INSERT INTO `vehicle_work` (`vehicle_work_id`, `vehicle`, `start_work`, `end_work`) VALUES
(39, 1, 1490137200, 1805670000),
(40, 1, 1490824800, 1806357600);

-- --------------------------------------------------------

--
-- Structure de la table `vehicle_work_temp`
--

CREATE TABLE IF NOT EXISTS `vehicle_work_temp` (
`vehicle_work_temp_id` int(11) NOT NULL,
  `vehicle_work_id` int(11) NOT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `start_work` int(11) DEFAULT NULL,
  `end_work` int(11) DEFAULT NULL,
  `vehicle_work_temp_date` int(11) DEFAULT NULL,
  `vehicle_work_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `vehicle_work_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `warehouse`
--

CREATE TABLE IF NOT EXISTS `warehouse` (
`warehouse_id` int(11) NOT NULL,
  `warehouse_name` varchar(200) DEFAULT NULL,
  `warehouse_cont` decimal(10,0) DEFAULT NULL,
  `warehouse_ton` decimal(10,0) DEFAULT NULL,
  `warehouse_weight` decimal(10,0) DEFAULT NULL,
  `warehouse_clean` decimal(10,0) DEFAULT NULL,
  `warehouse_gate` decimal(10,0) DEFAULT NULL,
  `warehouse_add` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `warehouse_code` int(11) DEFAULT NULL,
  `check_new` int(11) DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=662 ;

--
-- Contenu de la table `warehouse`
--

INSERT INTO `warehouse` (`warehouse_id`, `warehouse_name`, `warehouse_cont`, `warehouse_ton`, `warehouse_weight`, `warehouse_clean`, `warehouse_gate`, `warehouse_add`, `status`, `start_time`, `end_time`, `warehouse_code`, `check_new`) VALUES
(660, 'Cát Lái', '60000', '20000', '20000', '20000', '10000', '10000', 1, 1490310000, 1490824800, 1, NULL),
(661, 'Cát Lái', '20000', '0', '0', '0', '0', '20000', 1, 1490911200, 1806444000, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `warehouse_temp`
--

CREATE TABLE IF NOT EXISTS `warehouse_temp` (
`warehouse_temp_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `warehouse_name` varchar(200) DEFAULT NULL,
  `warehouse_cont` decimal(10,0) DEFAULT NULL,
  `warehouse_ton` decimal(10,0) DEFAULT NULL,
  `warehouse_weight` decimal(10,0) DEFAULT NULL,
  `warehouse_clean` decimal(10,0) DEFAULT NULL,
  `warehouse_gate` decimal(10,0) DEFAULT NULL,
  `warehouse_add` decimal(10,0) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `warehouse_code` int(11) DEFAULT NULL,
  `check_new` int(11) DEFAULT NULL,
  `warehouse_temp_date` int(11) DEFAULT NULL,
  `warehouse_temp_action` int(11) DEFAULT NULL COMMENT '1:Add | 2:Edit | 3:Delete',
  `warehouse_temp_user` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `bridge_cost`
--
ALTER TABLE `bridge_cost`
 ADD PRIMARY KEY (`bridge_cost_id`);

--
-- Index pour la table `bridge_cost_temp`
--
ALTER TABLE `bridge_cost_temp`
 ADD PRIMARY KEY (`bridge_cost_temp_id`), ADD KEY `bridge_cost_temp_id` (`bridge_cost_temp_id`);

--
-- Index pour la table `contact_person`
--
ALTER TABLE `contact_person`
 ADD PRIMARY KEY (`contact_person_id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `customer_sub`
--
ALTER TABLE `customer_sub`
 ADD PRIMARY KEY (`customer_sub_id`);

--
-- Index pour la table `distance`
--
ALTER TABLE `distance`
 ADD PRIMARY KEY (`distance_id`);

--
-- Index pour la table `distance_temp`
--
ALTER TABLE `distance_temp`
 ADD PRIMARY KEY (`distance_temp_id`), ADD KEY `distance_temp_id` (`distance_temp_id`);

--
-- Index pour la table `driver`
--
ALTER TABLE `driver`
 ADD PRIMARY KEY (`driver_id`);

--
-- Index pour la table `driver_temp`
--
ALTER TABLE `driver_temp`
 ADD PRIMARY KEY (`driver_temp_id`), ADD KEY `driver_temp_id` (`driver_temp_id`);

--
-- Index pour la table `oil`
--
ALTER TABLE `oil`
 ADD PRIMARY KEY (`oil_id`);

--
-- Index pour la table `oil_temp`
--
ALTER TABLE `oil_temp`
 ADD PRIMARY KEY (`oil_temp_id`), ADD KEY `oil_temp_id` (`oil_temp_id`);

--
-- Index pour la table `place`
--
ALTER TABLE `place`
 ADD PRIMARY KEY (`place_id`);

--
-- Index pour la table `place_temp`
--
ALTER TABLE `place_temp`
 ADD PRIMARY KEY (`place_temp_id`), ADD KEY `place_temp_id` (`place_temp_id`);

--
-- Index pour la table `province`
--
ALTER TABLE `province`
 ADD PRIMARY KEY (`province_id`);

--
-- Index pour la table `road`
--
ALTER TABLE `road`
 ADD PRIMARY KEY (`road_id`);

--
-- Index pour la table `road_temp`
--
ALTER TABLE `road_temp`
 ADD PRIMARY KEY (`road_temp_id`), ADD KEY `road_temp_id` (`road_temp_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`role_id`);

--
-- Index pour la table `romooc`
--
ALTER TABLE `romooc`
 ADD PRIMARY KEY (`romooc_id`);

--
-- Index pour la table `romooc_temp`
--
ALTER TABLE `romooc_temp`
 ADD PRIMARY KEY (`romooc_temp_id`);

--
-- Index pour la table `steersman`
--
ALTER TABLE `steersman`
 ADD PRIMARY KEY (`steersman_id`);

--
-- Index pour la table `steersman_temp`
--
ALTER TABLE `steersman_temp`
 ADD PRIMARY KEY (`steersman_temp_id`), ADD KEY `steersman_temp_id` (`steersman_temp_id`);

--
-- Index pour la table `toll`
--
ALTER TABLE `toll`
 ADD PRIMARY KEY (`toll_id`);

--
-- Index pour la table `toll_temp`
--
ALTER TABLE `toll_temp`
 ADD PRIMARY KEY (`toll_temp_id`), ADD KEY `toll_temp_id` (`toll_temp_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `vehicle`
--
ALTER TABLE `vehicle`
 ADD PRIMARY KEY (`vehicle_id`);

--
-- Index pour la table `vehicle_romooc`
--
ALTER TABLE `vehicle_romooc`
 ADD PRIMARY KEY (`vehicle_romooc_id`);

--
-- Index pour la table `vehicle_temp`
--
ALTER TABLE `vehicle_temp`
 ADD PRIMARY KEY (`vehicle_temp_id`), ADD KEY `vehicle_temp_id` (`vehicle_temp_id`);

--
-- Index pour la table `vehicle_work`
--
ALTER TABLE `vehicle_work`
 ADD PRIMARY KEY (`vehicle_work_id`);

--
-- Index pour la table `vehicle_work_temp`
--
ALTER TABLE `vehicle_work_temp`
 ADD PRIMARY KEY (`vehicle_work_temp_id`), ADD KEY `vehicle_work_temp_id` (`vehicle_work_temp_id`);

--
-- Index pour la table `warehouse`
--
ALTER TABLE `warehouse`
 ADD PRIMARY KEY (`warehouse_id`);

--
-- Index pour la table `warehouse_temp`
--
ALTER TABLE `warehouse_temp`
 ADD PRIMARY KEY (`warehouse_temp_id`), ADD KEY `id` (`warehouse_temp_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `bridge_cost`
--
ALTER TABLE `bridge_cost`
MODIFY `bridge_cost_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1861;
--
-- AUTO_INCREMENT pour la table `bridge_cost_temp`
--
ALTER TABLE `bridge_cost_temp`
MODIFY `bridge_cost_temp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `contact_person`
--
ALTER TABLE `contact_person`
MODIFY `contact_person_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `customer_sub`
--
ALTER TABLE `customer_sub`
MODIFY `customer_sub_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `distance`
--
ALTER TABLE `distance`
MODIFY `distance_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `distance_temp`
--
ALTER TABLE `distance_temp`
MODIFY `distance_temp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `driver`
--
ALTER TABLE `driver`
MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `driver_temp`
--
ALTER TABLE `driver_temp`
MODIFY `driver_temp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `oil`
--
ALTER TABLE `oil`
MODIFY `oil_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `oil_temp`
--
ALTER TABLE `oil_temp`
MODIFY `oil_temp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `place`
--
ALTER TABLE `place`
MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `place_temp`
--
ALTER TABLE `place_temp`
MODIFY `place_temp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `province`
--
ALTER TABLE `province`
MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT pour la table `road`
--
ALTER TABLE `road`
MODIFY `road_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2178;
--
-- AUTO_INCREMENT pour la table `road_temp`
--
ALTER TABLE `road_temp`
MODIFY `road_temp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `romooc`
--
ALTER TABLE `romooc`
MODIFY `romooc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `romooc_temp`
--
ALTER TABLE `romooc_temp`
MODIFY `romooc_temp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `steersman`
--
ALTER TABLE `steersman`
MODIFY `steersman_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT pour la table `steersman_temp`
--
ALTER TABLE `steersman_temp`
MODIFY `steersman_temp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `toll`
--
ALTER TABLE `toll`
MODIFY `toll_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `toll_temp`
--
ALTER TABLE `toll_temp`
MODIFY `toll_temp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `vehicle`
--
ALTER TABLE `vehicle`
MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `vehicle_romooc`
--
ALTER TABLE `vehicle_romooc`
MODIFY `vehicle_romooc_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `vehicle_temp`
--
ALTER TABLE `vehicle_temp`
MODIFY `vehicle_temp_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `vehicle_work`
--
ALTER TABLE `vehicle_work`
MODIFY `vehicle_work_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT pour la table `vehicle_work_temp`
--
ALTER TABLE `vehicle_work_temp`
MODIFY `vehicle_work_temp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `warehouse`
--
ALTER TABLE `warehouse`
MODIFY `warehouse_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=662;
--
-- AUTO_INCREMENT pour la table `warehouse_temp`
--
ALTER TABLE `warehouse_temp`
MODIFY `warehouse_temp_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
