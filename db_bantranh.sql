-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2014 at 04:36 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bantranh`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatlieu`
--

CREATE TABLE IF NOT EXISTS `chatlieu` (
  `macl` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `tencl` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`macl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chatlieu`
--

INSERT INTO `chatlieu` (`macl`, `tencl`) VALUES
('CL0001', 'Thêu tay'),
('CL0002', 'Sơn mài'),
('CL0003', 'Thêu chữ thập'),
('CL0004', 'Tranh giấy'),
('CL0005', 'In gỗ');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdh`
--

CREATE TABLE IF NOT EXISTS `chitietdh` (
  `madh` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `masp` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `sl` int(11) NOT NULL,
  PRIMARY KEY (`madh`,`masp`),
  UNIQUE KEY `masp` (`masp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE IF NOT EXISTS `donhang` (
  `madh` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `ngaylap` date NOT NULL,
  `tonggia` int(11) NOT NULL,
  `makh` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `trangthai` enum('dangcho','thanhcong','thatbai') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`madh`),
  UNIQUE KEY `makh` (`makh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `makh` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `tenkh` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  `matk` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`makh`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE IF NOT EXISTS `loaisp` (
  `maloai` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `tenloai` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`maloai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`maloai`, `tenloai`) VALUES
('DT0001', 'Phong cảnh'),
('DT0002', 'Hoa cỏ'),
('DT0003', 'Động vật'),
('DT0004', 'Phong thủy'),
('DT0005', 'Tĩnh vật'),
('DT0006', 'Tôn giáo'),
('DT0007', 'Mẫu người'),
('DT0008', 'Chữ thư pháp'),
('DT0009', 'Tranh bộ tứ quý'),
('DT0010', 'Bác Hồ'),
('DT0011', 'Hoạt hình trẻ em');

-- --------------------------------------------------------

--
-- Table structure for table `ncc`
--

CREATE TABLE IF NOT EXISTS `ncc` (
  `mancc` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `tenncc` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` int(11) NOT NULL,
  PRIMARY KEY (`mancc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ncc`
--

INSERT INTO `ncc` (`mancc`, `tenncc`, `diachi`, `email`, `sdt`) VALUES
('NCC001', 'DieLianHua', '130/254  Minh khai Hà nội', 'DieLianHua@gmail.com', 988248842),
('NCC002', 'Enuodoz', 'Số 136 đường Nguyễn Trãi, Hùng Vương, Phúc Yên, Vĩnh Phúc', 'Enuodoz@gmail.com', 917356346),
('NCC003', 'Pinkoo', '338D Bà Triệu, Hoàn Kiếm, Hà Nộ', 'Pinkoo@gmail.com', 462800432),
('NCC004', 'TeaNa', 'Số 1 ngõ 74 Nguyễn Chí Thanh- Đống Đa-HN', 'TeaNa@gmail.com', 466883300),
('NCC005', 'Ailuo', ' 262 Ngọc Hồi,Thị Trấn Văn Điển,Hà Nội', 'Ailuo@gmail.com', 968034918),
('NCC006', 'JK100', '75 ĐẠI CỒ VIỆT, HAI BÀ TRƯNG, HN', 'JK100@gmail.com', 919079189),
('NCC007', 'CandyKit', '1196 CMT8-Tân Bình-HCM', 'CandyKit@gmail.com', 919079189),
('NCC008', 'Hokee', '909 Khu phố 9 Đồng Khởi\r\n-Biên Hòa- Đồng Nai', 'Hokee@gmail.com', 968132596),
('NCC009', 'Dream', 'Khu 9 ,TT Thanh Ba, Huyện Thanh Ba, Phú Thọ', 'Dream@gmail.com', 466883300),
('NCC010', 'Honey Home', '\r\nSố 1 ngõ 74 Nguyễn Chí Thanh-Hà Nội', 'HoneyHome@gmail.com', 462800432),
('NCC011', 'TianYi', '338D Bà Triệu - Hà Nội', 'TianYi@gmail.com', 968034918);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `masp` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `maloai` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `macl` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `mancc` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `kichthuoc` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(11) NOT NULL,
  `slton` int(11) NOT NULL,
  `tensp` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`masp`,`maloai`,`macl`,`mancc`),
  UNIQUE KEY `masp` (`masp`),
  KEY `macl` (`macl`),
  KEY `sanpham_ibfk_1` (`maloai`),
  KEY `sanpham_ibfk_3` (`mancc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE IF NOT EXISTS `taikhoan` (
  `matk` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `taikhoan` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ngaytao` date NOT NULL,
  `capdo` enum('admin','normal') COLLATE utf8_unicode_ci NOT NULL,
  `kichhoat` tinyint(1) NOT NULL,
  PRIMARY KEY (`matk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdh`
--
ALTER TABLE `chitietdh`
  ADD CONSTRAINT `chitietdh_ibfk_2` FOREIGN KEY (`masp`) REFERENCES `sanpham` (`masp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `chitietdh_ibfk_1` FOREIGN KEY (`madh`) REFERENCES `donhang` (`madh`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khachhang` (`makh`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`maloai`) REFERENCES `loaisp` (`maloai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`macl`) REFERENCES `chatlieu` (`macl`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`mancc`) REFERENCES `ncc` (`mancc`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
