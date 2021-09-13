-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 26, 2020 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `da_bansach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) DEFAULT NULL,
  `color` varchar(7) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `color`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(17, 'Sách nước ngoài', 'sach-nuoc-ngoai', 1, 0, '0', '#ff9800', '2017-03-08 23:04:22', '2', '2020-08-30 16:01:39', '', 1, 1, 1, '', ''),
(18, 'Đồ lưu niệm', 'do-luu-niem', 1, 0, '0', '#8ac400', '2017-03-08 23:04:37', '2', '2020-08-30 15:54:59', '', 1, 1, 1, '', ''),
(19, 'Sách trong nước', 'sach-trong-nuoc', 1, 0, '0', '#3c8dbc', '2017-03-08 23:04:48', '2', '2020-08-30 16:01:55', '', 1, 1, 1, '', ''),
(20, 'Dụng cụ VPPP', 'dung-cu-vppp', 1, 0, '1', '#dd4b39', '2017-03-08 23:05:02', '2', '2020-08-30 22:46:00', '4', 1, 1, 1, '', ''),
(21, 'Hành trang tới trường', 'hanh-trang-toi-truong', 1, 0, '0', '#00a65a', '2017-03-08 23:05:18', '2', '2020-08-30 22:44:54', '4', 1, 1, 1, '', ''),
(22, 'Đồ chơi', 'do-choi', 1, 0, '0', '#f39c12', '2017-03-08 23:07:11', '2', '2020-08-30 15:52:07', '', 1, 1, 1, '', ''),
(23, 'Dụng cụ học sinh', 'dung-cu-hoc-sinh', 1, 0, '0', '#8ac400', '2017-03-08 23:07:48', '2', '2020-08-30 15:59:02', '', 1, 1, 1, '', ''),
(24, 'Jack London', 'jack-london', 2, 17, '0', '', '2017-03-08 23:08:14', '2', '2020-08-30 16:27:51', '', 1, 1, 1, '', ''),
(25, 'Hachiko', 'hachiko', 2, 17, '0', '', '2017-03-08 23:08:29', '2', '2020-08-30 16:27:30', '', 1, 1, 1, '', ''),
(26, 'Cho Chang – In', 'cho-chang-?-in', 2, 17, '0', '', '2017-03-08 23:08:47', '2', '2020-08-30 16:26:54', '', 1, 1, 1, '', ''),
(27, 'Khaled Hosseini', 'khaled-hosseini', 2, 17, '0', '', '2017-03-08 23:09:00', '2', '2020-08-30 16:26:34', '', 1, 1, 1, '', ''),
(28, 'Colorful – Mori Eto', 'colorful-?-mori-eto', 2, 17, '0', '', '2017-03-08 23:09:15', '2', '2020-08-30 16:26:14', '', 1, 1, 1, '', ''),
(29, 'J. D. Salinger', 'j-d-salinger', 2, 17, '0', '', '2017-03-08 23:09:24', '2', '2020-08-30 16:25:54', '', 1, 1, 1, '', ''),
(30, 'Nicola Yoon', 'nicola-yoon', 2, 17, '0', '', '2017-03-08 23:09:36', '2', '2020-08-30 16:25:36', '', 1, 1, 1, '', ''),
(31, 'Làm đẹp sức khỏe', 'lam-dep-suc-khoe', 1, 0, '0', '', '2017-03-08 23:09:47', '2', '2020-08-30 16:00:47', '', 1, 1, 1, '', ''),
(32, 'Sách học ngoại ngữ', 'sach-hoc-ngoai-ngu', 2, 19, '0', '', '2017-03-09 00:44:17', '2', '2020-08-30 16:13:58', '', 1, 1, 1, '', ''),
(33, 'Sách thiếu nhi', 'sach-thieu-nhi', 2, 19, '0', '', '2017-03-09 00:44:42', '2', '2020-08-30 16:11:59', '', 1, 1, 1, '', ''),
(34, 'Giáo khoa tham khảo', 'giao-khoa-tham-khao', 2, 19, '0', '', '2017-03-09 00:44:59', '2', '2020-08-30 16:11:37', '', 1, 1, 1, '', ''),
(36, 'Tâm lý - Kỹ năng sống', 'tam-ly-ky-nang-song', 2, 19, '0', '', '2017-03-09 00:47:07', '2', '2020-08-30 16:10:56', '', 1, 1, 1, '', ''),
(37, 'Kinh tế', 'kinh-te', 2, 19, '0', '', '2017-03-09 00:47:21', '2', '2020-08-30 16:09:57', '', 1, 1, 1, '', ''),
(38, 'Đề thi thử lớp 12', 'de-thi-thu-lop-12', 2, 21, '0', '', '2017-03-09 00:47:51', '2', '2020-08-30 16:23:25', '', 1, 1, 1, '', ''),
(39, 'Đề thi ', 'de-thi', 2, 21, '0', '', '2017-03-09 00:48:46', '2', '2020-08-30 16:22:56', '', 1, 1, 1, '', ''),
(40, 'Lớp 12', 'lop-12', 2, 21, '0', '', '2017-03-09 00:49:01', '2', '2020-08-30 16:22:32', '', 1, 1, 1, '', ''),
(41, 'Lớp 11', 'lop-11', 2, 21, '0', '', '2017-03-09 00:49:14', '2', '2020-08-30 16:22:17', '', 1, 1, 1, '', ''),
(42, 'Lớp 10', 'lop-10', 2, 21, '0', '', '2017-03-09 00:49:24', '2', '2020-08-30 16:22:04', '', 1, 1, 1, '', ''),
(43, 'Lớp 8', 'lop-8', 2, 21, '0', '', '2017-03-09 00:49:51', '2', '2020-08-30 16:20:42', '', 1, 1, 1, '', ''),
(44, 'Lớp 3', 'lop-3', 2, 21, '0', '', '2017-03-09 00:50:04', '2', '2020-08-30 16:18:57', '', 1, 1, 1, '', ''),
(45, 'Lớp 7', 'lop-7', 2, 21, '0', '', '2017-03-09 00:50:13', '2', '2020-08-30 16:20:29', '', 1, 1, 1, '', ''),
(46, 'Lớp 6', 'lop-6', 2, 21, '0', '', '2017-03-09 00:50:43', '2', '2020-08-30 16:20:10', '', 1, 1, 1, '', ''),
(47, 'Lớp 2', 'lop-2', 2, 21, '0', '', '2017-03-09 00:50:59', '2', '2020-08-30 16:18:35', '', 1, 1, 1, '', ''),
(48, 'Lớp  4', 'lop-4', 2, 21, '0', '', '2017-03-09 00:51:14', '2', '2020-08-30 16:19:38', '', 1, 1, 1, '', ''),
(49, 'Lớp 5', 'lop-5', 2, 21, '0', '', '2017-03-09 00:52:22', '2', '2020-08-30 16:19:57', '', 1, 1, 1, '', ''),
(50, 'Lớp 1', 'lop-1', 2, 21, '0', '', '2017-03-09 00:52:33', '2', '2020-08-30 16:18:07', '', 1, 1, 1, '', ''),
(51, 'Lớp 9', 'lop-9', 2, 21, '0', '', '2017-03-09 00:53:41', '2', '2020-08-30 16:21:31', '', 1, 1, 1, '', ''),
(53, 'Văn học ', 'van-hoc', 2, 19, '0', '', '2017-03-20 20:28:59', '4', '2020-08-30 16:09:13', '', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(64) NOT NULL,
  `mail_port` smallint(6) NOT NULL,
  `mail_info` varchar(64) NOT NULL,
  `mail_noreply` varchar(64) NOT NULL,
  `mail_password` varchar(64) NOT NULL,
  `priceShip` mediumtext NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keyword` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_port`, `mail_info`, `mail_noreply`, `mail_password`, `priceShip`, `title`, `description`, `keyword`) VALUES
(1, '', 29, 'hodienloi', 'hodienloi@', '', '30000', 'Web site bán hàng Demo', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `view` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `view`, `status`, `trash`, `fullname`) VALUES
(1, '', '01234567891', 'lenhsangcntt1508@gmail.com', 'aaa', '0000-00-00 00:00:00', 1, 1, 0, 'lenhsang'),
(2, 'Phản hổi khách hàng', '9058473345', 'dasdsd@fsdasdasd.com', 'Cảm ơn Shop', '0000-00-00 00:00:00', 1, 1, 1, 'Dang Dinh Tiep TTT'),
(3, 'ad', '0359728865', 'admin02@gmail.com', 'adb', '0000-00-00 00:00:00', 1, 1, 1, 'Sách giáo khoa cấp 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Super Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(2, 'Bức tranh sinh động về khoa học', 'buc-tranh-sinh-dong-ve-khoa-hoc', '', '<p>Khoa học thường bị mặc định l&agrave; bộ m&ocirc;n kh&ocirc; cứng. S&aacute;ch khoa học cần ph&aacute; vỡ r&agrave;o cản t&acirc;m l&yacute; n&agrave;y, gi&uacute;p độc giả c&oacute; hứng khởi tiếp nhận. Cuốn s&aacute;ch&nbsp;<em>Thuyết minh trực quan nhất về khoa học</em>&nbsp;l&agrave; nỗ lực ph&aacute; vỡ định kiến ấy.</p>\r\n\r\n<p>S&aacute;ch do c&aacute;c nh&agrave; khoa học h&agrave;ng đầu của Anh bi&ecirc;n soạn, nh&agrave; xuất bản (NXB) DK ph&aacute;t h&agrave;nh.</p>\r\n\r\n<p><em>Thuyết minh trực quan nhất về khoa học</em>&nbsp;l&agrave; tập hợp th&ocirc;ng tin, h&igrave;nh ảnh được kết hợp h&agrave;i h&ograve;a, mang tới bức tranh sinh động, rộng lớn về khoa học v&agrave; lịch sử khoa học.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w1600/Uploaded/oplukaa/2020_09_24/science_thuyet_minh_truc_quan_nhat_ve_khoa_hoc.jpg\" style=\"height:1008px; width:1500px\" /></p>\r\n\r\n<p>C&aacute;c th&ocirc;ng tin trong s&aacute;ch đề cập 6 chủ đề lớn: To&aacute;n học, vật l&yacute;, h&oacute;a học, sinh học, khoa học Tr&aacute;i Đất, thi&ecirc;n văn học, c&ocirc;ng nghệ vũ trụ.</p>\r\n\r\n<p><em>Thuyết minh trực quan nhất về khoa học</em>&nbsp;t&oacute;m gọn th&ocirc;ng tin về từng ng&agrave;nh khoa học, chỉ ra mối li&ecirc;n kết chặt chẽ giữa c&aacute;c bộ m&ocirc;n với nhau. S&aacute;ch n&ecirc;u, diễn giải kh&aacute;i niệm, qu&aacute; tr&igrave;nh nghi&ecirc;n cứu, sự kiện lịch sử của mỗi ng&agrave;nh.</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, s&aacute;ch c&oacute; c&aacute;c h&igrave;nh ảnh minh họa ch&acirc;n thật, mang t&iacute;nh lịch sử từ nguồn lưu trữ như: Bảo t&agrave;ng Tự nhi&ecirc;n Mỹ, NASA, bản ghi ch&eacute;p của nh&agrave; khoa học (c&acirc;y sự sống Darwin, bản đồ từ học Halley&hellip; gi&uacute;p độc giả th&ecirc;m hứng th&uacute; khi kh&aacute;m ph&aacute; cuốn s&aacute;ch.</p>\r\n\r\n<p>Bố cục s&aacute;ch chia l&agrave;m 5 chương, sắp xếp theo tiến tr&igrave;nh ph&aacute;t triển của lịch sử khoa học.</p>\r\n\r\n<p>Chương một,&nbsp;<em>B&igrave;nh minh của khoa học</em>&nbsp;(thời tiền sử đến năm 1.500) đề cập những ph&aacute;t minh sơ khai, mang t&iacute;nh nền tảng cho sự ph&aacute;t triển chung của nh&acirc;n loại. Đ&oacute; l&agrave; việc d&ugrave;ng đồng để chế tạo c&ocirc;ng cụ, b&aacute;nh răng để chế tạo m&aacute;y, hệ thống số cổ đại, thuật giả kim&hellip;</p>\r\n\r\n<p>Thời kỳ n&agrave;y c&oacute; c&aacute;c ph&aacute;t kiến của những nh&agrave; thi&ecirc;n văn đầu ti&ecirc;n như Hipparchus (vẽ bản đồ bầu trời đ&ecirc;m với độ ch&iacute;nh x&aacute;c đ&aacute;ng kinh ngạc); c&aacute;c học giả như Euclid, Al-Khwarizmi đặt nền m&oacute;ng cho to&aacute;n học.</p>\r\n\r\n<p>Chương 2,&nbsp;<em>Thời kỳ Phục hưng v&agrave; Khai s&aacute;ng</em>&nbsp;(1500-1700) l&agrave; những bước nhảy đột ph&aacute; trong thi&ecirc;n văn học, y học. Giai đoạn n&agrave;y c&oacute; những ph&aacute;t minh như k&iacute;nh thi&ecirc;n văn, k&iacute;nh hiển vi gi&uacute;p con người nh&igrave;n được những thứ qu&aacute; xa hoặc qu&aacute; nhỏ.</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; giai đoạn xuất hiện những bộ &oacute;c lỗi lạc như Galileo, Newton, nh&agrave; tư tưởng Descartes&hellip;</p>\r\n\r\n<p>Chương 3,&nbsp;<em>C&aacute;ch mạng c&ocirc;ng nghiệp</em>&nbsp;(1700-1890) l&agrave; giai đoạn giới khoa học nghi&ecirc;n cứu về bản chất của nhiệt, năng lượng, h&oacute;a chất v&agrave; chu tr&igrave;nh phản ứng. C&aacute;c nghi&ecirc;n cứu n&agrave;y dẫn đến ph&aacute;t hiện về định luật nhiệt động lực học, l&yacute; thuyết nguy&ecirc;n tử v&agrave; bảng tuần ho&agrave;n, điện, mối quan hệ giữa điện v&agrave; từ...</p>\r\n\r\n<p>Ở giai đoạn n&agrave;y, c&aacute;c nh&agrave; khoa học cũng kh&aacute;m ph&aacute; rằng con người chỉ l&agrave; một lo&agrave;i mới xuất hiện giữa nhiều lo&agrave;i sinh vật kh&aacute;c từ rất l&acirc;u. C&aacute;c nh&agrave; tự nhi&ecirc;n học c&oacute; bước th&agrave;nh c&ocirc;ng trong nghi&ecirc;n cứu vi khuẩn, sức đề kh&aacute;ng, miễn dịch v&agrave; ti&ecirc;m chủng.</p>\r\n\r\n<p>Chương 4,&nbsp;<em>Thời đại nguy&ecirc;n tử</em>&nbsp;(1890-1970) với những nghi&ecirc;n cứu: L&yacute; thuyết lượng tử v&agrave; thuyết tương đối Einstein, kh&aacute;m ph&aacute; bầu trời, bức xạ, phản ứng nguy&ecirc;n tử, vệ tinh nh&acirc;n tạo&hellip; c&ugrave;ng c&aacute;c bước nghi&ecirc;n cứu về nhiễm sắc thể, m&atilde; di truyền.</p>\r\n\r\n<p><img alt=\"\" src=\"https://znews-photo.zadn.vn/w1600/Uploaded/oplukaa/2020_09_24/Khoa_hoc_1.jpg\" style=\"height:788px; width:1500px\" /></p>\r\n\r\n<p>Chương 5,&nbsp;<em>Thời đại th&ocirc;ng tin</em>&nbsp;(từ năm 1970 đến nay) l&agrave; những tiến bộ trong việc kh&aacute;m ph&aacute; vũ trụ. T&agrave;u vũ trụ đ&atilde; đ&aacute;p xuống Hỏa tinh, đi đến những nơi xa nhất trong Hệ Mặt Trời. C&aacute;c nh&agrave; vi sinh học đ&atilde; lập bản đồ gen của mọi lo&agrave;i.</p>\r\n\r\n<p>C&aacute;c nh&agrave; vật l&yacute; cũng đạt được những đột ph&aacute; nhằm m&ocirc; tả tương t&aacute;c của mọi hạt v&agrave; lực trong vũ trụ.</p>\r\n\r\n<p>Ở giai đoạn n&agrave;y, khoa học cũng cảnh b&aacute;o hậu quả v&agrave; thiệt hại m&agrave; c&ocirc;ng nghệ c&oacute; thể g&acirc;y ra với m&ocirc;i trường.</p>\r\n\r\n<p>Cuốn s&aacute;ch c&oacute; những b&agrave;i tiểu sử về 18 vĩ nh&acirc;n, c&ugrave;ng 100 b&agrave;i giới thiệu ph&aacute;c họa những nh&agrave; ti&ecirc;n phong trong khoa học.</p>\r\n\r\n<p>Cuối cuốn s&aacute;ch l&agrave; 54 trang tham khảo, bao gồm tiểu sử t&oacute;m tắt của c&aacute;c nh&agrave; khoa học vĩ đại từ xưa tới nay, c&ugrave;ng nhiều sự kiện xảy ra trong khoa học.</p>\r\n\r\n<p><em>Thuyết minh trực quan nhất về khoa học&nbsp;</em>ph&ugrave; hợp với sinh vi&ecirc;n, học sinh, những phụ huynh muốn truyền t&igrave;nh y&ecirc;u khoa học đến con c&aacute;i.</p>\r\n', 'Khoa_hoc_1.jpg', '2020-09-26 09:29:49', '4', '2020-09-26 09:29:49', '4', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `gender`, `birthday`, `address`, `phone`, `email`, `created`, `trash`, `access`, `status`) VALUES
(1, 'Đặng Đình Tiệp', 'trungphatit', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '21 lê văn lương hà nội', '0359728865', 'tiep.admin@gmail.com', '2017-04-19 23:34:03', 1, 1, 1),
(4, '', '', '', NULL, '0000-00-00', '', '', 'admin@gmail.com', '2017-04-22 10:15:10', 1, 1, 1),
(5, '', '', '', NULL, '0000-00-00', '', '', 'customer@gmail.com', '2017-04-22 10:33:51', 1, 1, 1),
(6, '', '', '', NULL, '0000-00-00', '', '', 'phat123@gmail.com', '2017-04-22 10:53:23', 1, 1, 1),
(7, '', '', '', NULL, '0000-00-00', '', '', 'shopping@gmail.com', '2017-04-25 21:44:05', 1, 1, 1),
(15, 'admin002', 'admin002', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292454', 'admin002@gmail.com', '2017-04-26 00:18:47', 1, 1, 1),
(14, 'admin001', 'admin001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292453', 'admin001@gmail.com', '2017-04-26 00:17:43', 1, 1, 1),
(13, 'admintest02', 'admintest02', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01654292451', 'admintest02@gmail.com', '2017-04-26 00:04:27', 1, 1, 1),
(16, 'admin009', 'admin009', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '09876543299', 'admin009@gmail.com', '2017-04-26 00:26:07', 1, 1, 1),
(17, 'supperadmin001', 'supperadmin001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'số 1 hoàng đạo thúy', '01234567819', 'supperadmin001@gmil.com', '2017-04-27 02:06:45', 1, 1, 1),
(18, 'admina1222', 'admina1', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567812', 'admina1@gmail.com', '2017-04-27 02:12:48', 1, 1, 1),
(19, 'admin123', 'admin123', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567813', 'admin123@gmail.com', '2017-04-27 02:15:37', 1, 1, 1),
(20, 'admin1234', 'admin1234', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '01234567814', 'admin1234@gmail.com', '2017-04-27 02:24:23', 1, 1, 1),
(45, 'Đặng Đình Tiệp', 'tieplxb2001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '', '098780984', 'tieplxb2001@gmail.com', '2020-09-19 22:47:47', 1, 1, 1),
(39, 'Dang Dinh Tiep', 'Phat Admin', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', '10 tố hữu trung văn', '0102030405', 'customer.fahasa@gmail.com', '2017-05-13 08:20:53', 1, 1, 1),
(43, 'Đặng Đình Tiệp', 'tieplx2001', 'e10adc3949ba59abbe56e057f20f883e', NULL, '0000-00-00', 'xóm 5 thôn lưu xá xã phú túc phú xuyên hà nội', '01313464', 'tiep@gmail.com', '2020-09-03 22:46:05', 1, 1, 1),
(46, '', '', '', NULL, '0000-00-00', '', '', 'hfhhdh@gmail.com', '2020-09-26 10:37:57', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(6) NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `money` int(12) NOT NULL,
  `province` int(10) NOT NULL,
  `district` int(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `province`, `district`, `address`, `trash`, `status`) VALUES
(29, 'N2sdAp', 40, '2020-08-31 09:45:10', 'Đặng đình tiệp', '0359728865', 259000, 1, 5, 'so2 to yen nghia', 0, 1),
(30, 'yY6zgG', 40, '2020-08-31 22:17:56', 'Đặng đình tiệp', '0359728865', 187000, 1, 5, 'so2 to yen nghia', 0, 1),
(31, 'tVM3w4', 40, '2020-09-03 22:18:39', 'Đặng đình tiệp', '0359728865', 187000, 1, 268, 'so2 to yen nghia', 1, 1),
(32, 'srDQHx', 43, '2020-09-03 22:47:25', 'Đặng đình tiệp', '01313464', 117000, 64, 623, 'so2 to yen nghia', 1, 1),
(33, 'MmHiCR', 43, '2020-09-07 12:31:12', 'Đặng Đình Tiệp', '01313464', 116000, 1, 271, 'so2 to yen nghia', 1, 1),
(34, 'P0gWp6', 43, '2020-09-08 16:24:12', 'Đặng Đình Tiệp', '01313464', 116000, 1, 277, 'xóm 5 thôn lưu xá xã phú túc phú xuyên hà nội', 1, 1),
(35, 'UGQeyM', 42, '2020-09-19 22:33:11', 'Đặng Đình Tiệp', '0124569778', 150000, 27, 262, 'dqdqdqdw', 1, 1),
(36, 'QfSu94', 44, '2020-09-19 22:35:22', 'Dang Dinh Tiep TTT', '09058473345', 106000, 95, 958, 'Nguooid saoi 212 adhdaidsh', 1, 1),
(37, 'p3YTyu', 44, '2020-09-19 22:36:08', 'Đặng Đình Tiệp', '01313464', 116000, 79, 771, 'èahsvdahsvdcjkasbjas', 1, 1),
(38, 'ardTEt', 44, '2020-09-19 22:56:17', 'Sách giáo khoa cấp 1', '0359728865', 139000, 24, 219, 'èahsvdahsvdcjkasbjas', 1, 1),
(39, 'CunWJa', 43, '2020-09-26 09:35:15', 'Đặng Đình Tiệp', '01313464', 354700, 1, 10, 'so2 to yen nghia', 1, 1),
(40, '87Bclq', 43, '2020-09-26 10:11:45', 'Đặng Đình Tiệp', '01313464', 54732, 1, 6, 'so2 to yen nghia', 0, 1),
(41, 'IXdP7b', 46, '2020-09-26 10:38:33', 'Phạm Tùng Lâm', '09238233', 209000, 1, 20, 'Số 1 Hoàng Đạo Thúy', 0, 1),
(42, 'qm5Cvo', 46, '2020-09-26 10:49:45', 'Đặng Đình Tiệp', '01313464', 116000, 1, 277, 'hsdhdhsdhsd', 1, 0),
(43, 'BzG2rd', 46, '2020-09-26 10:53:52', 'Đặng Đình Tiệp', '01313464', 106000, 1, 271, 'so2 to yen nghia', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(44, 29, 65, 1, 109000, 1, 1),
(45, 29, 60, 1, 120000, 1, 1),
(46, 30, 69, 1, 157000, 1, 1),
(47, 31, 69, 1, 157000, 1, 1),
(48, 32, 68, 1, 87000, 1, 1),
(49, 33, 63, 1, 86000, 1, 1),
(50, 34, 63, 1, 86000, 1, 1),
(51, 35, 60, 1, 120000, 1, 1),
(52, 36, 64, 1, 76000, 1, 1),
(53, 37, 63, 1, 86000, 1, 1),
(54, 38, 62, 1, 109000, 1, 1),
(55, 39, 79, 2, 12350, 1, 1),
(56, 39, 71, 2, 150000, 1, 1),
(57, 40, 79, 2, 12350, 1, 1),
(58, 40, 75, 2, 16, 1, 1),
(59, 41, 82, 1, 179000, 1, 1),
(60, 42, 63, 1, 86000, 1, 1),
(61, 43, 64, 1, 76000, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(20, 'Nhà xuất bản Kim Đồng', 'cap1', 'kimdong', '2020-08-30 20:51:07', 4, '2020-08-30 20:56:04', 4, 1, 1),
(21, 'Nhà xuất bản Trẻ', 'Tre', 'tre', '2020-08-30 20:56:26', 4, '2020-08-30 20:56:26', 4, 1, 1),
(22, 'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh', 'hcm', 'nxbhochiminh', '2020-08-30 20:57:16', 4, '2020-08-30 20:57:16', 4, 1, 1),
(23, 'Nhà xuất bản chính trị quốc gia sự thật', 'quocgia', 'quocgiasuthat', '2020-08-30 20:57:42', 4, '2020-08-30 20:57:42', 4, 1, 1),
(24, 'Nhà xuất bản giáo dục', 'giaoduc', 'giaoduc', '2020-08-30 20:58:02', 4, '2020-08-30 20:58:02', 4, 1, 1),
(25, 'Nhà xuất bản Hội Nhà văn', 'Nhà xuất bản Hội Nhà văn', 'hoinhava', '2020-08-30 20:58:23', 4, '2020-08-30 20:58:23', 4, 1, 1),
(26, 'Nhà xuất bản Đại học Quốc Gia Hà Nội', 'Quoc Gia HN', 'quocgiahanoi', '2020-08-30 20:59:04', 4, '2020-08-30 20:59:04', 4, 1, 1),
(27, 'Đại học Oxford', 'Oxford', 'Oxford', '2020-08-30 21:03:06', 4, '2020-08-30 21:03:06', 4, 1, 1),
(28, 'Đại học Cambridge', 'Cambridge', 'Cambridge', '2020-08-30 21:03:27', 4, '2020-08-30 21:03:27', 4, 1, 1),
(29, ' Đại học California ', 'California ', 'California ', '2020-08-30 21:03:57', 4, '2020-08-30 21:03:57', 4, 1, 1),
(30, 'The MIT Press', 'The MIT Press', 'The MIT Press', '2020-08-30 21:04:11', 4, '2020-08-30 21:04:11', 4, 1, 1),
(31, 'Routledge', 'Routledge', 'Routledge', '2020-08-30 21:04:54', 4, '2020-08-30 21:04:54', 4, 1, 1),
(32, 'Cengage Learning', ' Cengage Learning', ' Cengage Learning', '2020-08-30 21:05:16', 4, '2020-08-30 21:05:16', 4, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `sortDesc` text NOT NULL,
  `detail` text NOT NULL,
  `producer` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL DEFAULT 'HDL',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `metakey` varchar(155) NOT NULL,
  `metadesc` varchar(155) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(70, 41, 'SÁCH GIÁO KHOA BỘ LỚP 11', 'sach-giao-khoa-bo-lop-11', '84479cfe982c49c03406596ef28210ed.jpg', '12d088e6e9a6980232ec66b96cacbca5.jpg#3b833bd319f19fb051b53942fff15375.jpg', 'Sách Giáo Khoa Bộ Lớp 11 - Sách Bài Học Phía Bắc (Bộ 12 Cuốn) (2020)\r\n\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040190291</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>280</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>268</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/ong-trum-truong-hoc?fhs_campaign=INTERNAL_LINKING\">&Ocirc;ng Tr&ugrave;m Trường Học</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa - Tham Khảo C&aacute;c Cấp</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa-cap-3?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa Cấp 3</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-11/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 155800, 150000, '2020-08-31 09:28:14', '4', '2020-08-31 09:28:14', '4', 1, 1, 1, '', ''),
(71, 40, 'Sách giáo khoa lớp  12', 'sach-giao-khoa-lop-12', '44529a9af588486ce6661fbbc77fa387.jpg', '3e19d07c09c57514a5a705b0784d356d.jpg#abed483b12f5196d591d2d7798337377.jpg#bdcb22de2c4d69bf08be6c3d499cce1b.jpg', 'Sách Giáo Khoa Bộ Lớp 12 - Sách Bài Học Phía Bắc (Bộ 12 Cuốn) (2020)\r\n\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040189059</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>120</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>120</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/ong-trum-truong-hoc?fhs_campaign=INTERNAL_LINKING\">&Ocirc;ng Tr&ugrave;m Trường Học</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa - Tham Khảo C&aacute;c Cấp</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa-cap-3?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa Cấp 3</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-12/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 158000, 150000, '2020-08-31 09:30:31', '4', '2020-08-31 09:30:31', '4', 1, 1, 1, '', ''),
(69, 42, 'Sách Giáo Khoa Bộ Lớp 10 Cơ Bản', 'sach-giao-khoa-bo-lop-10-co-ban', 'de21b2d24b8a77b6e6ac414ba12748c5.jpg', '36662976f406dfa4540be812cb2fcac5.jpg#eceab22eb560cfc549e31c7d2b30eb62.jpg#9e74b8a15ae0f608a6d5c32a17120c15.jpg', 'Sách Giáo Khoa Bộ Lớp 10 Cơ Bản - Sách Bài Học (Bộ 14 Cuốn) (2020)\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124100267022</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>2450</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-10/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 10 Cơ Bản - S&aacute;ch B&agrave;i Học (Bộ 14 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&igrave;a</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Gi&aacute;o dục Quốc ph&ograve;ng - An ninh 10</td>\r\n			<td>9,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Đại số 10</td>\r\n			<td>10,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>H&igrave;nh học 10</td>\r\n			<td>6,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Vật l&iacute; 10</td>\r\n			<td>17,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Ho&aacute; học 10</td>\r\n			<td>14,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Sinh học 10</td>\r\n			<td>11,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>C&ocirc;ng nghệ 10 - N&ocirc;ng, l&acirc;m, ngư nghiệp, tạo lập doanh nghiệp</td>\r\n			<td>16,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Ngữ văn 10/1</td>\r\n			<td>10,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Ngữ văn 10/2</td>\r\n			<td>10,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Lịch sử 10</td>\r\n			<td>15,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Địa l&iacute; 10</td>\r\n			<td>14,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Gi&aacute;o dục c&ocirc;ng d&acirc;n 10</td>\r\n			<td>7,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Tin học 10</td>\r\n			<td>10,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>14</td>\r\n			<td>Tiếng Anh 10</td>\r\n			<td>15,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 1, 1, 5, 164000, 157000, '2020-08-31 09:25:17', '4', '2020-08-31 09:25:17', '4', 1, 1, 1, '', ''),
(67, 43, 'Sách Giáo Khoa Bộ Lớp 8', 'sach-giao-khoa-bo-lop-8', 'bbb7760dccb8b4c6829008bba44cff07.jpg', '941aa0a2797fe19289148bf161c91e75.jpg#2759612367331fa1486363ca960227b3.jpg', 'Sách Giáo Khoa Bộ Lớp 8 - Sách Bài Học Phía Bắc (Bộ 12 Cuốn) (2020)\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124080342825</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>2030</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-8/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 8 - S&aacute;ch B&agrave;i Học Ph&iacute;a Nam (Bộ 13 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&igrave;a</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>To&aacute;n 8/1</td>\r\n			<td>8,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>To&aacute;n 8/2</td>\r\n			<td>8,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Vật l&iacute; 8</td>\r\n			<td>8,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Ho&aacute; học 8</td>\r\n			<td>12,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Sinh học 8</td>\r\n			<td>18,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>C&ocirc;ng nghệ 8 - C&ocirc;ng nghiệp</td>\r\n			<td>17,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Ngữ văn 8, tập 1</td>\r\n			<td>10,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Ngữ văn 8, tập 2</td>\r\n			<td>10,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Lịch sử 8</td>\r\n			<td>12,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Địa l&iacute; 8</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Gi&aacute;o dục c&ocirc;ng d&acirc;n 8</td>\r\n			<td>4,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>&Acirc;m nhạc v&agrave; Mĩ thuật 8</td>\r\n			<td>15,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Tiếng Anh 8</td>\r\n			<td>14,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 149000, 141000, '2020-08-31 09:19:05', '4', '2020-08-31 09:19:05', '4', 1, 1, 1, '', ''),
(68, 51, 'Sách Giáo Khoa Bộ Lớp 9', 'sach-giao-khoa-bo-lop-9', '0b909a100167e80985a94ae520874ca4.jpg', '3d69d08936cceb1c4b521c17822ba823.jpg#d841ff627a6171807ba8766edbb06a5f.jpg#550062cbbadf83c2022289872a6e62d2.jpg', 'Sách Giáo Khoa Bộ Lớp 9 - Sách Bài Tập Phía Nam (Bộ 7 Cuốn) (2020)\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124090343270</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1130</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-9/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 9 - S&aacute;ch B&agrave;i Tập Ph&iacute;a Nam (Bộ 7 Cuốn) (2020)</strong>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&igrave;a</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>B&agrave;i tập To&aacute;n 9/1</td>\r\n			<td>18,100</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>B&agrave;i tập To&aacute;n 9/2</td>\r\n			<td>17,600</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>B&agrave;i tập Vật l&iacute; 9</td>\r\n			<td>10,700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>B&agrave;i tập H&oacute;a học 9</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>B&agrave;i tập Ngữ văn 9/1</td>\r\n			<td>11,300</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>B&agrave;i tập Ngữ văn 9/2</td>\r\n			<td>10,200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>B&agrave;i tập Tiếng Anh 9</td>\r\n			<td>11,300</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 92000, 87000, '2020-08-31 09:21:40', '4', '2020-08-31 09:21:40', '4', 1, 1, 1, '', ''),
(64, 49, 'Sách Giáo Khoa Bộ Lớp 5', 'sach-giao-khoa-bo-lop-5', 'cb8fe3db8387e2a0a860dc6b68a41b0a.jpg', 'e6a351ef62461bf1c9638fd01578e2bf.jpg#11b4d6d86817283b08447bff18f171bd.jpg#77c70e3a719296569fd5a5724f58de3f.jpg', 'Sách Giáo Khoa Bộ Lớp 5 - Sách Bài Học Phía Bắc (Bộ 8 Cuốn) (2020)\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124050334928</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1110</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/ong-trum-truong-hoc?fhs_campaign=INTERNAL_LINKING\">&Ocirc;ng Tr&ugrave;m Trường Học</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa - Tham Khảo C&aacute;c Cấp</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa-cap-1?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa Cấp 1</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-5/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 5 - S&aacute;ch B&agrave;i Học Ph&iacute;a Bắc (Bộ 8 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&igrave;a</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Tiếng Việt 5/1</td>\r\n			<td>15,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Tiếng Việt 5/2</td>\r\n			<td>14,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>To&aacute;n 5</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Khoa học 5</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Lịch sử v&agrave; Địa l&iacute; 5</td>\r\n			<td>11,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>&Acirc;m nhạc 5</td>\r\n			<td>5,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Đạo đức 5</td>\r\n			<td>4,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Kĩ thuật 5</td>\r\n			<td>5,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 80000, 76000, '2020-08-31 09:10:05', '4', '2020-08-31 09:10:05', '4', 1, 1, 1, '', ''),
(65, 46, 'Sách Giáo Khoa Bộ Lớp 6', 'sach-giao-khoa-bo-lop-6', '66f8526332bcb2d25f4aa7a31434fe4b.jpg', 'aa32d6cd1f2efd77ba9f384d4ef00253.jpg#fa8102d5c5e2e6e5ddf02803f6bfd899.jpg#220bd6082f74b689d307e22777f51702.jpg', 'Sách Giáo Khoa Bộ Lớp 6 - Sách Bài Học Phía Nam (Bộ 12 Cuốn) (2020)\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124060342968</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1600</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-6/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 6 - S&aacute;ch B&agrave;i Học Ph&iacute;a Nam (Bộ 12 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>To&aacute;n 6/1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>To&aacute;n 6/2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Vật l&iacute; 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>C&ocirc;ng nghệ 6 - Kinh tế gia đ&igrave;nh</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Ngữ văn 6/1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Ngữ văn 6/2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Lịch sử 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Địa l&iacute; 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Gi&aacute;o dục c&ocirc;ng d&acirc;n 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>&Acirc;m nhạc v&agrave; Mĩ thuật 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Tiếng Anh 6</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Sinh học 6</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 115000, 109000, '2020-08-31 09:13:40', '4', '2020-08-31 09:13:40', '4', 1, 1, 1, '', ''),
(66, 45, 'Sách Giáo Khoa Bộ Lớp 7', 'sach-giao-khoa-bo-lop-7', '8b3853716b40835ec665aec913050c35.jpg', '22b550dd2153fce8b3b7c70014b6c1f5.jpg#0d46b8b52975489c80a58359b8bf36ba.jpg#96b81fa445777b5edec50b21ba119abb.jpg', 'Sách Giáo Khoa Bộ Lớp 7 - Sách Bài Học Phía Nam (Bộ 12 Cuốn) (2020)', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124070342989</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1840</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-7/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 7 - S&aacute;ch B&agrave;i Học Ph&iacute;a Nam (Bộ 12 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&igrave;a</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>To&aacute;n 7/1</td>\r\n			<td>9,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>To&aacute;n 7/2</td>\r\n			<td>5,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>Vật l&iacute; 7</td>\r\n			<td>6,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>C&ocirc;ng nghệ 7 - N&ocirc;ng nghiệp</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Ngữ văn 7/1</td>\r\n			<td>12,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Ngữ văn 7/2</td>\r\n			<td>10,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Lịch sử 7</td>\r\n			<td>12,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Địa l&iacute; 7</td>\r\n			<td>16,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Gi&aacute;o dục c&ocirc;ng d&acirc;n 7</td>\r\n			<td>4,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>&Acirc;m nhạc v&agrave; Mĩ thuật 7</td>\r\n			<td>14,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Tiếng Anh 7</td>\r\n			<td>16,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Sinh học 7</td>\r\n			<td>17,000</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 134000, 127000, '2020-08-31 09:16:23', '4', '2020-08-31 09:16:23', '4', 1, 1, 1, '', ''),
(72, 47, 'Sách giáo khoa lớp  2', 'sach-giao-khoa-lop-2', 'baca15342cd0c25e67620a3d00eeea6e.jpg', 'c10e8e063060b29b0e8e57615a0d150d.jpg#e7973ad080e094ec472ac2c0ea6708e4.jpg', 'Sách Giáo Khoa Bộ Lớp 2 (Bộ 13 Cuốn) (2020)\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124020356493</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>0</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/ong-trum-truong-hoc?fhs_campaign=INTERNAL_LINKING\">&Ocirc;ng Tr&ugrave;m Trường Học</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa - Tham Khảo C&aacute;c Cấp</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa-cap-1?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa Cấp 1</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/tham-khao-lop-2/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 2 (Bộ 13 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Tiếng Việt 2/1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Tiếng Việt 2/2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>To&aacute;n 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Tự nhi&ecirc;n v&agrave; X&atilde; hội 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Tập viết 2 - tập 1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Tập viết 2 - tập 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Vở b&agrave;i tập Tiếng Việt 2/1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Vở b&agrave;i tập Tiếng Việt 2/2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Vở b&agrave;i tập To&aacute;n 2/1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Vở b&agrave;i tập To&aacute;n 2/2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Vở b&agrave;i tập Tự nhi&ecirc;n v&agrave; X&atilde; hội 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Vở b&agrave;i tập Đạo đức 2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Tập b&agrave;i h&aacute;t 2</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 11, 11, 5, 1000000, 95000, '2020-08-31 09:41:05', '40', '2020-08-31 09:41:05', '40', 1, 1, 1, '', ''),
(62, 44, 'Sách giáo khoa lớp 3', 'sach-giao-khoa-lop-3', 'ed1acd250746d9f81c1ae5117ff0e0dd.jpg', '593c02a119faa40d4bd348a166ab1061.jpg#7d14b8e92d53a4ca5adf27b4cc2e1571.jpg#224ba15536da62ebd680d16b1db4308a.jpg', 'Sách Giáo Khoa Bộ Lớp 3 (Bộ 13 Cuốn) (2020)\r\n', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124030334856</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>0</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-3/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 3 (Bộ 13 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&igrave;a</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Tiếng Việt 3/1</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Tiếng Việt 3/2</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>To&aacute;n 3</td>\r\n			<td>13,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Tự nhi&ecirc;n v&agrave; X&atilde; hội 3</td>\r\n			<td>11,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Tập viết 3/1</td>\r\n			<td>4,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>Tập viết 3/2</td>\r\n			<td>4,000</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Vở b&agrave;i tập Tiếng Việt 3/1</td>\r\n			<td>8,700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Vở b&agrave;i tập Tiếng Việt 3/2</td>\r\n			<td>7,800</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Vở b&agrave;i tập To&aacute;n 3/1</td>\r\n			<td>10,500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>10</td>\r\n			<td>Vở b&agrave;i tập To&aacute;n 3/2</td>\r\n			<td>10,500</td>\r\n		</tr>\r\n		<tr>\r\n			<td>11</td>\r\n			<td>Vở b&agrave;i tập Tự nhi&ecirc;n v&agrave; X&atilde; hội 3</td>\r\n			<td>9,200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>12</td>\r\n			<td>Vở b&agrave;i tập Đạo đức 3</td>\r\n			<td>5,700</td>\r\n		</tr>\r\n		<tr>\r\n			<td>13</td>\r\n			<td>Tập b&agrave;i h&aacute;t 3</td>\r\n			<td>4,700</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 110, 110, 5, 115000, 109000, '2020-08-31 09:04:48', '4', '2020-08-31 09:04:48', '4', 1, 1, 1, '', ''),
(63, 48, 'Bộ sách giáo khoa lớp 4', 'bo-sach-giao-khoa-lop-4', 'e73024a52dbca894844ffae54817e694.jpg', '3a5756c4b9d6f8dc2c368c3af2ab2c8c.jpg#847910bd1a1ab8b549544181c2cd707c.jpg', 'Sách Giáo Khoa Bộ Lớp 4 - Sách Bài Học Phía Nam (Bộ 9 Cuốn) (2020)', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124040335102</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Bộ Gi&aacute;o Dục V&agrave; Đ&agrave;o Tạo</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1060</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/ong-trum-truong-hoc?fhs_campaign=INTERNAL_LINKING\">&Ocirc;ng Tr&ugrave;m Trường Học</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa - Tham Khảo C&aacute;c Cấp</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa-cap-1?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa Cấp 1</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-4/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>S&aacute;ch Gi&aacute;o Khoa Bộ Lớp 4 - S&aacute;ch B&agrave;i Học Ph&iacute;a Nam (Bộ 9 Cuốn) (2020)</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>T&ecirc;n sản phẩm</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>Tiếng Việt 4/1</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>Tiếng Việt 4/2</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>To&aacute;n 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Khoa học 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>5</td>\r\n			<td>Lịch sử v&agrave; Địa l&iacute; 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>6</td>\r\n			<td>&Acirc;m nhạc 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>7</td>\r\n			<td>Mĩ thuật 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>8</td>\r\n			<td>Đạo đức 4</td>\r\n		</tr>\r\n		<tr>\r\n			<td>9</td>\r\n			<td>Kĩ thuật 4</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '24', 12, 1, 5, 89000, 86000, '2020-08-31 09:07:33', '4', '2020-08-31 09:07:45', '4', 1, 1, 1, '', ''),
(60, 50, 'Sách giáo khoa lớp 1', 'sach-giao-khoa-lop-1', '09e9f180233a68b4556b4a574cb22ee6.jpg', '', 'Bộ Sách Giáo Khoa Lớp 1 - Sách Bài Tập - Bộ Sách Chân Trời Sáng Tạo (Bộ 11 Cuốn)', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124010357318</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Nh&agrave; xuất bản Gi&aacute;o Dục</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>450</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>26.5 x 19 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm hiển thị trong</th>\r\n			<td>\r\n			<ul>\r\n				<li><a href=\"https://www.fahasa.com/ong-trum-truong-hoc?fhs_campaign=INTERNAL_LINKING\">&Ocirc;ng Tr&ugrave;m Trường Học</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa - Tham Khảo C&aacute;c Cấp</a></li>\r\n				<li><a href=\"https://www.fahasa.com/sach-giao-khoa-cap-1?fhs_campaign=INTERNAL_LINKING\">S&aacute;ch Gi&aacute;o Khoa Cấp 1</a></li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bộ S&aacute;ch Gi&aacute;o Khoa Lớp 1 - S&aacute;ch B&agrave;i Tập - Bộ S&aacute;ch Ch&acirc;n Trời S&aacute;ng Tạo (Bộ 11 Cuốn)</p>\r\n\r\n<p>Bộ s&aacute;ch bao gồm:</p>\r\n\r\n<p>1. Vở B&agrave;i Tập Đạo Đức 1</p>\r\n\r\n<p>2. Vở B&agrave;i Tập Mĩ Thuật 1</p>\r\n\r\n<p>3. Vở B&agrave;i Tập Hoạt Động Trải Nghiệm 1</p>\r\n\r\n<p>4. Vở B&agrave;i Tập &Acirc;m Nhạc 1</p>\r\n\r\n<p>5. Vở B&agrave;i Tập To&aacute;n 1/1</p>\r\n\r\n<p>6. Vở B&agrave;i Tập Tiếng Việt 1/2</p>\r\n\r\n<p>7. Vở B&agrave;i Tập Tự Nhi&ecirc;n v&agrave; X&atilde; Hội 1</p>\r\n\r\n<p>8. Vở B&agrave;i Tập To&aacute;n 1/2</p>\r\n\r\n<p>9. Vở B&agrave;i Tập Tiếng Việt 1/1</p>\r\n\r\n<p>10. Tập Viết 1/1</p>\r\n\r\n<p>11. Tập Viết 1/2</p>\r\n', '24', 11, 11, 5, 130000, 120000, '2020-08-31 08:48:57', '4', '2020-08-31 08:54:06', '4', 1, 1, 1, '', ''),
(73, 50, 'Luyện Viết Và Học Từ Vựng Tiếng Anh - Lớp 1 (Theo Giáo Trình Family Anh Friends)', 'luyen-viet-va-hoc-tu-vung-tieng-anh-lop-1-theo-giao-trinh-family-anh-friends', 'default.png', '1d21f64bfe2280e13c53042b5213a076.jpg', 'Tác giả:Mai Lan Hương, Hà Thanh Uyên\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8794069300998</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td><a href=\"https://www.fahasa.com/zen-books\">ZenBooks</a></td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Mai Lan Hương, H&agrave; Thanh Uy&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Đ&agrave; Nẵng</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2018</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>100</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>19 x 26,5</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>63</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/lop-2/tham-khao-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Tham Khảo b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Luyện viết v&agrave; học từ vựng tiếng anh lớp 1, l&agrave; vở b&agrave;i tập được bi&ecirc;n soạn theo gi&aacute;o tr&igrave;nh Family and&nbsp; Friends (special edition) của nh&agrave; xuất bản Gi&aacute;o Dục Việt Nam kết hợp với nh&agrave; sản xuất Oxford.</p>\r\n\r\n<p>Cuốn s&aacute;ch được bi&ecirc;n soạn nhằm gi&uacute;p c&aacute;c em học sinh lớp 1 bước đầu l&agrave;m quen với c&aacute;c từ vựng tiếng anh đơn giản. C&aacute;c em sẽ luyện viết v&agrave; học từ tiếng anh bằng c&aacute;c h&igrave;nh ảnh minh họa sinh động. Sau phần luyện viết từ vựng l&agrave; c&aacute;c hoạt động chọn từ đ&uacute;ng, điền từ, gh&eacute;p từ với h&igrave;nh th&iacute;ch hợp, sắp xếp từ,v.v. Nhằm gi&uacute;p c&aacute;c em &ocirc;n luyện từ vựng đ&atilde; học. Sau mỗi 3 đơn vị b&agrave;i học c&oacute; phần &ocirc;n tập (Review) với c&aacute;c hoạt động l&yacute; th&uacute; gi&uacute;p c&aacute;c em củng cố kiến thức.</p>\r\n\r\n<p>Zenbooks hy vọng Luyện viết v&agrave; học từ vựng tiếng anh lớp 1 sẽ l&agrave; cuốn s&aacute;ch bổ trợ thiết thực gi&uacute;p c&aacute;c em học sinh lớp 1 học tốt m&ocirc;n tiếng anh.</p>\r\n', '21', 100, 100, 15, 32000, 27200, '2020-09-25 06:42:35', '4', '2020-09-25 06:42:35', '4', 0, 1, 1, '', ''),
(74, 50, 'Hướng Dẫn Học Tin Học - Lớp 1', 'huong-dan-hoc-tin-hoc-lop-1', 'af70eaa5b7145eff59c7c5f80e57bb45.jpg', '4a48dd98530bf4cc5892c7078bdebdce.jpg', 'Tác giả:Lê Viết Chung\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040104656</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty S&aacute;ch &amp; Thiết Bị Gi&aacute;o Dục Miền Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>L&ecirc; Viết Chung</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>06-2017</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>200</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>24 x 17</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>31</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/lop-2/tham-khao-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Tham Khảo b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bộ s&aacute;ch Hướng Dẫn Học Tin Học được ph&acirc;n th&agrave;nh 5 quyển theo 5 lớp của chương tr&igrave;nh bậc tiểu học. S&aacute;ch được bi&ecirc;n soạn nhằm gi&uacute;p c&aacute;c em học sinh c&oacute; những hiểu biết đầu ti&ecirc;n về m&aacute;y t&iacute;nh, đồng thời khơi gợi niềm vui, niềm hứng th&uacute; trong bước đầu l&agrave;m quen với m&ocirc;n tin học.</p>\r\n\r\n<p>Cấu tr&uacute;c của từng b&agrave;i học trong s&aacute;ch gồm c&aacute;c phần: hoạt động cơ bản, hoạt động thực h&agrave;nh v&agrave; mục em cần ghi nhớ nhằm hướng dẫn c&aacute;c em t&igrave;m hiểu v&agrave; thực hiện c&aacute;c thao t&aacute;c đầu ti&ecirc;n với m&aacute;y t&iacute;nh, gi&uacute;p c&aacute;c em học tập hiệu quả hơn.</p>\r\n', '20', 100, 100, 2, 13000, 12740, '2020-09-25 06:45:09', '4', '2020-09-25 06:45:09', '4', 1, 1, 1, '', ''),
(75, 50, 'Phiếu Bài Tập Cuối Tuần Tiếng Anh 1', 'phieu-bai-tap-cuoi-tuan-tieng-anh-1', 'b15877becb5cfefdbe0eaa16bb50517a.jpg', 'a06f5fdaed9907a9a2f3d938fc532ea1.jpg', 'Tác giả:Nguyễn Hoàng Thanh Ly, Nguyễn Văn Hai, Hồ Tấn Mẫn\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>8935092806082</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty Văn H&oacute;a Bảo Long</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nguyễn Ho&agrave;ng Thanh Ly, Nguyễn Văn Hai, Hồ Tấn Mẫn</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Đại Học Quốc Gia H&agrave; Nội</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>100</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>29 x 20 x 0.3 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>39</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/lop-2/tham-khao-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Tham Khảo b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '21', 100, 100, 20, 20000, 16, '2020-09-25 06:47:19', '4', '2020-09-25 06:47:19', '4', 1, 1, 1, '', ''),
(76, 50, 'Tiếng Anh 1 - Sách Bài Tập (2020)', 'tieng-anh-1-sach-bai-tap-2020', 'c851d4b1e0fc82d7e53e0271bd7416fa.jpg', '3556f8a732f31086d122887ed7c28519.jpg', 'Tác giả:Nhiều Tác Giả\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040223951</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>147</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>27 x 19 x 0.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>59</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/lop-2/tham-khao-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Tham Khảo b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bộ s&aacute;ch Tiếng Anh do Nh&agrave; xuất bản Gi&aacute;o dục Việt Nam bi&ecirc;n soạn theo chương tr&igrave;nh th&iacute; điểm Tiếng Anh Tiểu học do Bộ GD ban h&agrave;nh, với sự hợp t&aacute;c chặt chẽ về chuy&ecirc;n m&ocirc;n v&agrave; kĩ thuật của Nh&agrave; xuất bản Macmillan(MPC). S&aacute;ch được bi&ecirc;n soạn theo đường hướng giao tiếp, gi&uacute;p học sinh bước đầu h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển năng lực giao tiếp bằng tiếng anh, th&ocirc;ng qua bốn kĩ năng nghe, n&oacute;i, đọc, viết, trong đ&oacute; ưu ti&ecirc;n hai kĩ năng nghe v&agrave; n&oacute;i.</p>\r\n', '24', 1, 1, 5, 35000, 33250, '2020-09-25 06:55:56', '4', '2020-09-25 06:55:56', '4', 1, 1, 1, '', '');
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`, `metakey`, `metadesc`) VALUES
(77, 50, 'Tiếng Anh 1 - Explore Our World (Bộ Sách Cánh Diều)', 'tieng-anh-1-explore-our-world-bo-sach-canh-dieu', '699c3032fe9435a40dba14b376e92b2c.jpg', 'f7ce752eaee8cb689f424a9eab309d7c.jpg', 'Tác giả:Nguyễn Quốc Hùng\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786049930324</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>C&ocirc;ng ty Cổ Phần Đầu Tư Xu&acirc;t Bản - Thiết Bị Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nguyễn Quốc H&ugrave;ng</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Đại Học Sư Phạm Tp Hồ Ch&iacute; Minh</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>202</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Anh</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>234</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>26.2 x 20.5 x 0.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>46</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/lop-2/tham-khao-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Tham Khảo b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bộ s&aacute;ch&nbsp;<strong><em>Tiếng Anh 1 Explore Our World&nbsp;</em></strong>(l&agrave; b&ocirc;̣ sách được ph&acirc;n ph&ocirc;́i đ&ocirc;̣c quy&ecirc;̀n bởi C&ocirc;ng ty Đầu tư Xuất bản &ndash; Thiết bị Gi&aacute;o dục Việt Nam) gia nhập v&agrave;o<strong>&nbsp;Tủ &nbsp;</strong><strong>s&aacute;ch gi&aacute;o khoa lớp 1 C&aacute;nh Diều</strong>. Ng&agrave;y 20/01/2020, bộ s&aacute;ch&nbsp;<strong><em>Tiếng Anh 1 Explore Our World</em></strong>&nbsp;đ&atilde; được Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo ph&ecirc; duyệt sử dụng trong cơ sở gi&aacute;o dục phổ th&ocirc;ng từ năm học 2020 &ndash; 2021 theo&nbsp;<strong>Quyết định số 180/QĐ-BGDĐT.</strong></p>\r\n\r\n<p>C&aacute;c đơn vị tổ chức bi&ecirc;n soạn, xuất bản bộ s&aacute;ch n&agrave;y mong muốn cung cấp một bộ s&aacute;ch c&oacute; chất lượng cao, ph&ugrave; hợp với điều kiện dạy v&agrave; học ở Việt Nam về nhiều phương diện. Với phương ch&acirc;m v&agrave; triết l&yacute; gi&aacute;o dục thế kỷ 21, bộ s&aacute;ch gi&uacute;p học sinh c&oacute; điều kiện ph&aacute;t triển năng lực v&agrave; phẩm chất theo c&aacute;c y&ecirc;u cầu cần đạt của Chương tr&igrave;nh gi&aacute;o dục phổ th&ocirc;ng 2018.</p>\r\n\r\n<p>Sử dụng ngu&ocirc;̀n ngữ li&ecirc;̣u có bản quy&ecirc;̀n từ b&ocirc;̣ sách g&ocirc;́c&nbsp;<em>Our world&nbsp;</em>c&acirc;́p đ&ocirc;̣ Starter (Tác giả: Diane Pinkley &ndash; JoAnn (Jodi) Crandall &ndash; Joan Kang Shin, Nhà xu&acirc;́t bản National Geographic Learning, Hoa Kỳ), B&ocirc;̣ SGK&nbsp;<strong><em>Tiếng Anh 1 &ndash; Explore Our World&nbsp;</em></strong>được hi&ecirc;̣u chỉnh và bi&ecirc;n soạn bởi những nh&agrave; gi&aacute;o, nh&agrave; khoa học, chuy&ecirc;n gia gi&aacute;o dục uy t&iacute;n đang l&agrave;m c&ocirc;ng t&aacute;c giảng dạy v&agrave; đ&agrave;o tạo gi&aacute;o vi&ecirc;n ti&ecirc;́ng Anh ti&ecirc;̉u học của Việt Nam là&nbsp;<strong>Thạc sĩ Nguy&ecirc;̃n Qu&ocirc;́c Hùng (chủ bi&ecirc;n) và Thạc sĩ Đ&ocirc;̃ Thị Kim Thanh</strong>, với sự c&ocirc;́ v&acirc;́n của các chuy&ecirc;n gia Hoa Kỳ có kinh nghi&ecirc;̣m v&ecirc;̀ thiết kế chương tr&igrave;nh, t&agrave;i liệu dạy và học, v&ecirc;̀ x&acirc;y dựng ti&ecirc;u chuẩn v&agrave; đ&agrave;o tạo gi&aacute;o vi&ecirc;n trong giảng dạy ti&ecirc;́ng Anh cho người nước ngoài&hellip; Quan đi&ecirc;̉m&nbsp;<em>Gắn c&aacute;c mục ti&ecirc;u v&agrave; y&ecirc;u cầu của Chương tr&igrave;nh với đổi mới nội dung v&agrave; phương ph&aacute;p; Đ</em><em>ảm bảo tính li&ecirc;n th&ocirc;ng của chương trình ph&ocirc;̉ th&ocirc;ng m&ocirc;n Ti&ecirc;́ng Anh&nbsp;</em>lu&ocirc;n được các tác giả th&ocirc;́ng nh&acirc;́t xuy&ecirc;n su&ocirc;́t trong quá trình bi&ecirc;n soạn đã tạo n&ecirc;n m&ocirc;̣t b&ocirc;̣ SGK Ti&ecirc;́ng Anh lớp 1 có chất lượng cao, ph&ugrave; hợp với học sinh ở c&aacute;c v&ugrave;ng miền của Vi&ecirc;̣t Nam.</p>\r\n\r\n<p><strong>Những điểm nổi bật của Bộ s&aacute;ch gi&aacute;o khoa&nbsp;<em>Tiếng Anh 1 Explore Our World</em>:</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; bộ s&aacute;ch c&oacute;&nbsp;<strong>100% bản mẫu</strong>&nbsp;được Hội đồng thẩm định th&ocirc;ng qua với tỉ lệ phiếu đ&aacute;nh gi&aacute;&nbsp;<strong>&ldquo;Đạt&rdquo; tuyệt đối.</strong></p>\r\n\r\n<p>Bộ s&aacute;ch với&nbsp;<strong>triết l&iacute;</strong>&nbsp;<strong>&ldquo;Mang th&ecirc;́ giới vào lớp học và đưa lớp học ra ngoài cu&ocirc;̣c s&ocirc;́ng&rdquo;</strong>&nbsp;gi&uacute;p c&aacute;c gi&aacute;o vi&ecirc;n tiếng Anh v&agrave; học sinh của họ trải nghiệm sự hứng khởi v&agrave; niềm vui trong học tập , dạy v&agrave; học về thế giới bằng c&aacute;ch trải nghiệm ch&iacute;nh thế giới đ&oacute;. Sử dụng nội dung về thế giới thực tế với c&aacute;c bức ảnh v&agrave; video tuyệt đẹp c&oacute; được từ National Geographic (Hiệp hội Địa l&iacute; Hoa Kỳ), c&ugrave;ng sự kết hợp đa dạng giữa c&aacute;c t&agrave;i liệu giấy v&agrave; t&agrave;i liệu số nhằm thu h&uacute;t triệt để v&agrave; th&uacute;c đẩy học sinh t&igrave;m hiểu về thế giới bằng tiếng Anh. C&aacute;c học vi&ecirc;n nhỏ tuổi sẽ bị thu h&uacute;t bởi c&aacute;c bức ảnh đẹp v&agrave; nội dung đầy th&iacute;ch th&uacute; li&ecirc;n quan đến thế giới khi c&aacute;c em t&igrave;m hiểu về con người v&agrave; c&aacute;c địa điểm tr&ecirc;n to&agrave;n cầu.&nbsp;<strong><em>Tiếng Anh 1 Explore Our World</em></strong>&nbsp;độc đ&aacute;o ở c&aacute;ch m&agrave; n&oacute; mang thế giới thực, với tất cả vẻ đẹp v&agrave; sự đa dạng, v&agrave;o lớp học tiếng Anh cho trẻ em.</p>\r\n\r\n<p><strong>Nội dung b&aacute;m s&aacute;t Chương tr&igrave;nh</strong>&nbsp;l&agrave;m quen tiếng Anh lớp 1 v&agrave; lớp 2 của Bộ Gi&aacute;o dục v&agrave; Đ&agrave;o tạo. C&aacute;c chủ đề, trọng t&acirc;m ng&ocirc;n ngữ, năng lực giao tiếp v&agrave; từ vựng trong bộ Tiếng Anh 1 Explore Our World ph&ugrave; hợp chặt chẽ với những định hướng l&agrave;m quen với tiếng Anh của Bộ Gi&aacute;o Dục v&agrave; Đ&agrave;o Tạo.</p>\r\n\r\n<p>&ldquo;Bộ s&aacute;ch sử dụng nhiều h&igrave;nh ảnh thật của nhiều nền văn h&oacute;a đất nước kh&aacute;c nhau; h&igrave;nh ảnh sinh động, ch&acirc;n thật, hấp dẫn l&ocirc;i cuốn khơi gợi t&iacute;nh t&ograve; m&ograve; khuyến kh&iacute;ch học sinh kh&aacute;m ph&aacute; thế giới xung quanh th&ocirc;ng qua qu&aacute; tr&igrave;nh l&agrave;m quen với tiếng Anh; thể hiện đ&uacute;ng triết l&iacute; đưa thế giới v&agrave;o lớp học của bộ s&aacute;ch, cho ph&eacute;p người học sử dụng tiếng Anh như một c&ocirc;ng cụ để học hỏi v&agrave; kết nối với con người v&agrave; nền văn h&oacute;a kh&aacute;c. Đồng thời s&aacute;ch c&oacute; nhiều h&igrave;nh ảnh về con người, đất nước Việt Nam gi&uacute;p học sinh thấy gần gũi, th&acirc;n thuộ<em>c</em>&nbsp;trong qu&aacute; tr&igrave;nh học&rdquo;.</p>\r\n\r\n<p><strong>Ứng dụng c&ocirc;ng nghệ 4.0</strong>&nbsp;trong việc hỗ trợ dạy v&agrave; học phong ph&uacute;, đa dạng. Bộ s&aacute;ch gi&aacute;o khoa&nbsp;<strong><em>Tiếng Anh 1 Explore Our</em></strong>&nbsp;World được hỗ trợ th&ecirc;m c&aacute;c nguồn t&agrave;i liệu phong ph&uacute; v&agrave; đa dạng tại website:&nbsp;https://cloudbook.vn&nbsp;v&agrave; trang web trực tuyến miễn ph&iacute; mang t&ecirc;n Our World Professional Development cengage.com/ourworld/profdev nhằm gi&uacute;p gi&aacute;o vi&ecirc;n thực h&agrave;nh, củng cố, mở rộng nội dung của bộ s&aacute;ch cũng như đ&aacute;p ứng nhu cầu ph&aacute;t triển nghiệp vụ chuy&ecirc;n m&ocirc;n cho gi&aacute;o vi&ecirc;n.</p>\r\n\r\n<p>Hiện nay, c&aacute;c đơn vị&nbsp;tổ chức bi&ecirc;n soạn, xuất bản bộ s&aacute;ch gi&aacute;o khoa&nbsp;<strong><em>Tiếng Anh 1 Explore Our World</em></strong>&nbsp;đang hợp t&aacute;c với Sở Gi&aacute;o dục v&agrave; Đ&agrave;o tạo địa phương để tổ chức Hội thảo tập huấn v&agrave; hướng dẫn sử dụng s&aacute;ch gi&aacute;o khoa cho gi&aacute;o vi&ecirc;n.</p>\r\n', '22', 1, 1, 10, 89000, 80100, '2020-09-25 06:58:00', '4', '2020-09-25 06:58:00', '4', 1, 1, 1, '', ''),
(78, 50, 'Tiếng Anh 1 - Sách Học Sinh (2020)', 'tieng-anh-1-sach-hoc-sinh-2020', 'b8bfe6dac081bad0edebbd15ff1c920a.jpg', 'c85d993f1996276d086f196a328d26c9.jpg', 'Tác giả:Nhiều Tác Giả\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040224057</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>184</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>27 x 19 x 0.5 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Số trang</th>\r\n			<td>75</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/lop-2/tham-khao-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Tham Khảo b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Bộ s&aacute;ch Tiếng Anh do Nh&agrave; xuất bản Gi&aacute;o dục Việt Nam bi&ecirc;n soạn theo chương tr&igrave;nh th&iacute; điểm Tiếng Anh Tiểu học do Bộ GD ban h&agrave;nh, với sự hợp t&aacute;c chặt chẽ về chuy&ecirc;n m&ocirc;n v&agrave; kĩ thuật của Nh&agrave; xuất bản Macmillan(MPC). S&aacute;ch được bi&ecirc;n soạn theo đường hướng giao tiếp, gi&uacute;p học sinh bước đầu h&igrave;nh th&agrave;nh v&agrave; ph&aacute;t triển năng lực giao tiếp bằng tiếng anh, th&ocirc;ng qua bốn kĩ năng nghe, n&oacute;i, đọc, viết, trong đ&oacute; ưu ti&ecirc;n hai kĩ năng nghe v&agrave; n&oacute;i.</p>\r\n', '23', 1, 1, 5, 45000, 42750, '2020-09-25 06:59:54', '4', '2020-09-25 06:59:54', '4', 1, 1, 1, '', ''),
(79, 50, 'Em Tập Viết Đúng Viết Đẹp Lớp 1 - Tập 2', 'em-tap-viet-dung-viet-dep-lop-1-tap-2', 'b8aa8a86b6ba39a5b11aa107457e6846.jpg', 'f34e897e2e09d69bca494484ffe02d90.jpg#f6a3282e1a40a2642d0da578cededd4e.jpg', 'Tác giả:Lê Ngọc Diệp, Phạm Thị Kim Oanh...\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>9786040153449</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>Cty Phương Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>L&ecirc; Ngọc Diệp, Phạm Thị Kim Oanh</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2019</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>100</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>15 x 21</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/lop-2/tham-khao-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Tham Khảo b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Em Tập Viết Đ&uacute;ng Viết Đẹp Lớp 1 - Tập 2</p>\r\n', '24', 1, 1, 5, 13000, 12350, '2020-09-25 07:01:53', '4', '2020-09-25 07:01:53', '4', 1, 1, 1, '', ''),
(80, 50, 'Bài Tập Phát Triển Năng Lực Học Sinh Môn Toán Lớp 1 - Tập 1', 'bai-tap-phat-trien-nang-luc-hoc-sinh-mon-toan-lop-1-tap-1', 'd628a6a9a5204ae0dc4f2e8cb1d7549d.jpg', '6b29232541b68f5be08e2ed636f9ad1a.jpg', '', '', '22', 100, 100, 20, 40000, 32, '2020-09-25 07:03:01', '4', '2020-09-25 07:03:01', '4', 1, 1, 1, '', ''),
(81, 50, 'Bộ sách giáo khoa lớp 1 (9 cuốn)', 'bo-sach-giao-khoa-lop-1-9-cuon', 'default.png', '', 'Tác giả:Nhiều Tác Giả\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124010356670</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>C&ocirc;ng ty Cổ Phần Đầu Tư Xu&acirc;t Bản - Thiết Bị Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Đại Học Sư Phạm TPHCM</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1955</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>26.5 x 19 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-1/sach-bai-hoc-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Bộ S&aacute;ch Gi&aacute;o Khoa Lớp 1 - Bộ S&aacute;ch C&aacute;nh Diều (Bộ 9 Cuốn)&nbsp;gồm:</strong></p>\r\n\r\n<p>1. Hoạt Động Trải Nghiệm 1</p>\r\n\r\n<p>2. Mĩ Thuật 1</p>\r\n\r\n<p>3. &Acirc;m Nhạc 1</p>\r\n\r\n<p>4. Gi&aacute;o Dục Thể Chất 1</p>\r\n\r\n<p>5. Tự Nhi&ecirc;n V&agrave; X&atilde; Hội 1</p>\r\n\r\n<p>6. Đạo Đức 1</p>\r\n\r\n<p>7. To&aacute;n 1</p>\r\n\r\n<p>8. Tiếng Việt 1 - Tập 1</p>\r\n\r\n<p>9. Tiếng Việt 1 - Tập 2</p>\r\n', '24', 100, 100, 10, 199000, 179100, '2020-09-25 07:08:37', '4', '2020-09-25 07:08:37', '4', 0, 1, 1, '', ''),
(82, 50, 'Bộ sách giáo khoa lớp 1 (9 quyển)', 'bo-sach-giao-khoa-lop-1-9-quyen', 'de8efb66babfd32c2bc7d80402f6f92e.jpg', '', 'Tác giả:Nhiều Tác Giả\r\nhình thức bìa:Bìa Mềm', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>M&atilde; h&agrave;ng</th>\r\n			<td>1124010356670</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\r\n			<td>C&ocirc;ng ty Cổ Phần Đầu Tư Xu&acirc;t Bản - Thiết Bị Gi&aacute;o Dục Việt Nam</td>\r\n		</tr>\r\n		<tr>\r\n			<th>T&aacute;c giả</th>\r\n			<td>Nhiều T&aacute;c Giả</td>\r\n		</tr>\r\n		<tr>\r\n			<th>NXB</th>\r\n			<td>NXB Đại Học Sư Phạm TPHCM</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Năm XB</th>\r\n			<td>2020</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Ng&ocirc;n Ngữ</th>\r\n			<td>Tiếng Việt</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Trọng lượng (gr)</th>\r\n			<td>1955</td>\r\n		</tr>\r\n		<tr>\r\n			<th>K&iacute;ch thước</th>\r\n			<td>26.5 x 19 cm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>H&igrave;nh thức</th>\r\n			<td>B&igrave;a Mềm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\r\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/giao-khoa-tham-khao/sach-giao-khoa/giao-khoa-lop-1/sach-bai-hoc-lop-1/sort-by/num_orders_month/sort-direction/asc.html\">Top 100 sản phẩm S&aacute;ch Gi&aacute;o Khoa b&aacute;n chạy của th&aacute;ng</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p><strong>Bộ S&aacute;ch Gi&aacute;o Khoa Lớp 1 - Bộ S&aacute;ch C&aacute;nh Diều (Bộ 9 Cuốn)&nbsp;gồm:</strong></p>\r\n\r\n<p>1. Hoạt Động Trải Nghiệm 1</p>\r\n\r\n<p>2. Mĩ Thuật 1</p>\r\n\r\n<p>3. &Acirc;m Nhạc 1</p>\r\n\r\n<p>4. Gi&aacute;o Dục Thể Chất 1</p>\r\n\r\n<p>5. Tự Nhi&ecirc;n V&agrave; X&atilde; Hội 1</p>\r\n\r\n<p>6. Đạo Đức 1</p>\r\n\r\n<p>7. To&aacute;n 1</p>\r\n\r\n<p>8. Tiếng Việt 1 - Tập 1</p>\r\n\r\n<p>9. Tiếng Việt 1 - Tập 2</p>\r\n', '24', 100, 100, 10, 199000, 179000, '2020-09-25 07:12:58', '4', '2020-09-25 07:12:58', '4', 1, 1, 1, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_quanhuyen`
--

CREATE TABLE `db_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `db_quanhuyen`
--

INSERT INTO `db_quanhuyen` (`maqh`, `name`, `type`, `matp`) VALUES
('1', 'Quận Ba Đình', 'Quận', '1'),
('10', 'Huyện Sóc Sơn', 'Huyện', '1'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('11', 'Huyện Đông Anh', 'Huyện', '1'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('18', 'Huyện Gia Lâm', 'Huyện', '1'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('19', 'Quận Nam Từ Liêm', 'Quận', '1'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('2', 'Quận Hoàn Kiếm', 'Quận', '1'),
('20', 'Huyện Thanh Trì', 'Huyện', '1'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('21', 'Quận Bắc Từ Liêm', 'Quận', '1'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('24', 'Thành phố Hà Giang', 'Thành phố', '2'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '1'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('26', 'Huyện Đồng Văn', 'Huyện', '2'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '1'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '1'),
('27', 'Huyện Mèo Vạc', 'Huyện', '2'),
('271', 'Huyện Ba Vì', 'Huyện', '1'),
('272', 'Huyện Phúc Thọ', 'Huyện', '1'),
('273', 'Huyện Đan Phượng', 'Huyện', '1'),
('274', 'Huyện Hoài Đức', 'Huyện', '1'),
('275', 'Huyện Quốc Oai', 'Huyện', '1'),
('276', 'Huyện Thạch Thất', 'Huyện', '1'),
('277', 'Huyện Chương Mỹ', 'Huyện', '1'),
('278', 'Huyện Thanh Oai', 'Huyện', '1'),
('279', 'Huyện Thường Tín', 'Huyện', '1'),
('28', 'Huyện Yên Minh', 'Huyện', '2'),
('280', 'Huyện Phú Xuyên', 'Huyện', '1'),
('281', 'Huyện Ứng Hòa', 'Huyện', '1'),
('282', 'Huyện Mỹ Đức', 'Huyện', '1'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('29', 'Huyện Quản Bạ', 'Huyện', '2'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('3', 'Quận Tây Hồ', 'Quận', '1'),
('30', 'Huyện Vị Xuyên', 'Huyện', '2'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('31', 'Huyện Bắc Mê', 'Huyện', '2'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('32', 'Huyện Hoàng Su Phì', 'Huyện', '2'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('33', 'Huyện Xín Mần', 'Huyện', '2'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('34', 'Huyện Bắc Quang', 'Huyện', '2'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('35', 'Huyện Quang Bình', 'Huyện', '2'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('4', 'Quận Long Biên', 'Quận', '1'),
('40', 'Thành phố Cao Bằng', 'Thành phố', '4'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('42', 'Huyện Bảo Lâm', 'Huyện', '4'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('43', 'Huyện Bảo Lạc', 'Huyện', '4'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('44', 'Huyện Thông Nông', 'Huyện', '4'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('45', 'Huyện Hà Quảng', 'Huyện', '4'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('46', 'Huyện Trà Lĩnh', 'Huyện', '4'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('47', 'Huyện Trùng Khánh', 'Huyện', '4'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('48', 'Huyện Hạ Lang', 'Huyện', '4'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('49', 'Huyện Quảng Uyên', 'Huyện', '4'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('5', 'Quận Cầu Giấy', 'Quận', '1'),
('50', 'Huyện Phục Hoà', 'Huyện', '4'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('51', 'Huyện Hoà An', 'Huyện', '4'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('52', 'Huyện Nguyên Bình', 'Huyện', '4'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('53', 'Huyện Thạch An', 'Huyện', '4'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('58', 'Thành Phố Bắc Kạn', 'Thành phố', '6'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('6', 'Quận Đống Đa', 'Quận', '1'),
('60', 'Huyện Pác Nặm', 'Huyện', '6'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('61', 'Huyện Ba Bể', 'Huyện', '6'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H\' Drai', 'Huyện', '62'),
('62', 'Huyện Ngân Sơn', 'Huyện', '6'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('63', 'Huyện Bạch Thông', 'Huyện', '6'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('64', 'Huyện Chợ Đồn', 'Huyện', '6'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H\'leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M\'gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('65', 'Huyện Chợ Mới', 'Huyện', '6'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M\'Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('66', 'Huyện Na Rì', 'Huyện', '6'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('7', 'Quận Hai Bà Trưng', 'Quận', '1'),
('70', 'Thành phố Tuyên Quang', 'Thành phố', '8'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('71', 'Huyện Lâm Bình', 'Huyện', '8'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('72', 'Huyện Nà Hang', 'Huyện', '8'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('73', 'Huyện Chiêm Hóa', 'Huyện', '8'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('74', 'Huyện Hàm Yên', 'Huyện', '8'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('75', 'Huyện Yên Sơn', 'Huyện', '8'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('76', 'Huyện Sơn Dương', 'Huyện', '8'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('8', 'Quận Hoàng Mai', 'Quận', '1'),
('80', 'Thành phố Lào Cai', 'Thành phố', '10'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('82', 'Huyện Bát Xát', 'Huyện', '10'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('83', 'Huyện Mường Khương', 'Huyện', '10'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('84', 'Huyện Si Ma Cai', 'Huyện', '10'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('85', 'Huyện Bắc Hà', 'Huyện', '10'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('86', 'Huyện Bảo Thắng', 'Huyện', '10'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('87', 'Huyện Bảo Yên', 'Huyện', '10'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('88', 'Huyện Sa Pa', 'Huyện', '10'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('89', 'Huyện Văn Bàn', 'Huyện', '10'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('9', 'Quận Thanh Xuân', 'Quận', '1'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('94', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('95', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('96', 'Huyện Mường Nhé', 'Huyện', '11'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('97', 'Huyện Mường Chà', 'Huyện', '11'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96'),
('98', 'Huyện Tủa Chùa', 'Huyện', '11'),
('99', 'Huyện Tuần Giáo', 'Huyện', '11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `options` varchar(2) DEFAULT NULL,
  `active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_tinhthanhpho`
--

CREATE TABLE `db_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `db_tinhthanhpho`
--

INSERT INTO `db_tinhthanhpho` (`matp`, `name`, `type`) VALUES
('1', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('2', 'Tỉnh Hà Giang', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('4', 'Tỉnh Cao Bằng', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('6', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('8', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `img` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `img`, `created`, `trash`, `access`, `status`) VALUES
(2, 'Đặng Đình Tiệp', 'greenadmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'dangdinhtiep@gmail.com', 1, '0165429', 'admin.jpg', '2016-10-03 22:30:00', 1, 1, 1),
(3, 'Huy Admin', 'huyadmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'huy@gmail.com', 1, '0167892', '26ce8716.png', '2016-10-03 22:30:00', 1, 1, 1),
(4, 'Supper Admin', 'supperadmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'dangdinhtiep@gmail.com', 1, '0167892', 'a22aeef917ae5c59006182ced50f72e8.png', '2016-10-03 22:30:00', 1, 1, 1),
(5, 'admin01', '', '', 2, '', 0, '', '', '2017-03-11 00:16:05', 1, 1, 1),
(6, 'admin02', 'admin02', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin02@gmail.com', 0, '0987654321', '', '2017-03-11 00:20:51', 1, 1, 1),
(7, 'admin03', 'admin03', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'ngotrungphat12@gmail.com', 0, '01654292452', 'images.png', '2017-03-11 00:26:52', 1, 1, 1),
(8, 'admin04', 'admin04', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin04@gmail.com', 0, '09990990', 'ef792cce5f7cf64e2c6ed2a1cebfd0cf.jpg', '2017-03-11 00:28:28', 1, 1, 1),
(9, 'admin07', 'admin07', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin07@gmail.com', 1, '19008198', '2a977c82712e6bc4fedd4e3e46d7e91c.jpg', '2017-03-11 22:34:03', 1, 1, 1),
(10, 'admin08', 'admin08', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'amdin08@gmail.com', 0, '09878988999', 'd9c2a3da4b64d8e89bff1254f77530d5.jpg', '2017-03-12 00:59:10', 1, 1, 1),
(11, 'admin09', 'admin09', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin09@gmail.com', 1, '0987654322', 'f28c2ae06974a46b9a1c566344019366.jpg', '2017-03-12 01:01:25', 1, 1, 1),
(12, 'admin10', 'admin10', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'admin10@gmail.com', 0, '0123456781', '006cec6866aae3a5c54a014f47d2fdc5.jpg', '2017-03-12 01:02:34', 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'Quản trị', '2015-07-09 00:00:00', 4, '2020-07-09 00:00:00', 4, 1, 1, 1),
(2, 'Chủ shop', '2015-07-09 00:00:00', 4, '2020-07-09 00:00:00', 4, 1, 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_quanhuyen`
--
ALTER TABLE `db_quanhuyen`
  ADD PRIMARY KEY (`maqh`);

--
-- Chỉ mục cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_tinhthanhpho`
--
ALTER TABLE `db_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Chỉ mục cho bảng `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT cho bảng `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
