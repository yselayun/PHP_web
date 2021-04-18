-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 15, 2021 lúc 05:40 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `php_mvc_banhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminEmail` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `adminUser` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `adminPass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminId`, `adminName`, `adminEmail`, `adminUser`, `adminPass`, `level`) VALUES
(1, 'Y Sel Ayun', 'yselayun@gmail.com', 'selayun', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandId` int(11) NOT NULL,
  `brandName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandId`, `brandName`) VALUES
(17, 'Kawai'),
(18, 'STEINWAY &amp; SONS'),
(19, 'BOSTON'),
(20, 'KOHLER &amp; CAMPBELL'),
(21, 'YAMAHA'),
(22, 'Roland');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartId`, `productId`, `sId`, `productName`, `price`, `quantity`, `image`) VALUES
(35, 29, 'kl65etjpp70cu7akcjfp070hdd', 'Kawai ND-21', '90500000', 1, 'bd69e70412.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catId` int(11) NOT NULL,
  `catName` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`catId`, `catName`) VALUES
(20, 'Piano Điện'),
(21, 'Piano Cơ'),
(22, 'Keyboard');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_compare`
--

CREATE TABLE `tbl_compare` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `phone`, `email`, `password`) VALUES
(7, 'Y Sel Ayun', '28 Vành đai đại học quốc gia, phường Đông Hòa, Thành phố Dĩ An, tỉnh Bình Dương', '0256212', 'yselayun@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(8, 'MyProject_CCMT', '16d5as45d', '021354', 'ridervssentai14@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(9, 'MyProject02', '16d5as45d', '(+84) 338573944', 'yselayun@gmail.coy', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'MyProject_CCMT', '16d5as45d', '(+84) 338573944', 'yselayun@gmail.co', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date_order` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productId`, `productName`, `customer_id`, `quantity`, `price`, `image`, `status`, `date_order`) VALUES
(75, 32, 'Roland RP-30', 7, 2, '29400000', '9424f903ba.jpg', 0, '2021-04-15 09:21:43'),
(76, 29, 'Kawai ND-21', 7, 1, '90500000', 'bd69e70412.jpg', 0, '2021-04-15 09:21:43'),
(77, 32, 'Roland RP-30', 7, 1, '14700000', '9424f903ba.jpg', 0, '2021-04-15 09:39:35'),
(78, 32, 'Roland RP-30', 7, 1, '14700000', '9424f903ba.jpg', 0, '2021-04-15 09:54:51'),
(79, 33, 'Roland RP-30', 7, 1, '14700000', '2176c83ee9.jpg', 0, '2021-04-15 09:57:25'),
(80, 32, 'Roland RP-30', 7, 1, '14700000', '9424f903ba.jpg', 0, '2021-04-15 09:58:59'),
(81, 33, 'Roland RP-30', 7, 1, '14700000', '2176c83ee9.jpg', 0, '2021-04-15 10:16:44'),
(82, 33, 'Roland RP-30', 7, 1, '14700000', '2176c83ee9.jpg', 0, '2021-04-15 10:22:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productId` int(11) NOT NULL,
  `productName` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `product_code` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `productQuantity` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_soldout` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `product_remain` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `catId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`productId`, `productName`, `product_code`, `productQuantity`, `product_soldout`, `product_remain`, `catId`, `brandId`, `product_desc`, `type`, `price`, `image`) VALUES
(29, 'Kawai ND-21', '', '', '0', '', 21, 17, '<h2><span><a href=\"https://vietthuong.vn/dan-piano-kawai-nd-21.html\">Đ&agrave;n piano Kawai ND-21</a>&nbsp;mang đến chất lượng &acirc;m thanh trong, mạnh v&agrave; một sự ổn định tuyệt đối về kết cấu bề mặt bởi kỹ thuật bộ m&aacute;y được sản xuất theo ti&ecirc;u chuẩn của h&atilde;ng Kawai &ndash; Nhật Bản.</span></h2>', 0, '90500000', 'bd69e70412.jpg'),
(30, 'Kawai K-400', '', '', '0', '', 21, 17, '<h2><span><a href=\"https://vietthuong.vn/dan-piano-kawai-k400.html\">Đ&agrave;n piano Kawai K400</a>&nbsp;mang một phong c&aacute;ch mới sang trọng, c&oacute; gi&aacute; để &acirc;m nhạc giống như những c&acirc;y đ&agrave;n Grand Piano, được thiết kế ngang tầm mắt v&agrave; cho một mặt phẳng vững v&agrave;ng để c&aacute;c bản nhạc hoặc những cuốn s&aacute;ch &acirc;m nhạc qu&aacute; khổ. Đ&acirc;y l&agrave; một trong những c&acirc;y đ&agrave;n được b&aacute;n chạy trong năm 2016 tại Việt Thương về d&ograve;ng piano Upright.</span></h2>', 1, '214000000', '00aec5c1d4.jpg'),
(31, 'Steinway & Sons K-132', '', '', '0', '', 21, 18, '<h2><span>Đ&acirc;y l&agrave; c&acirc;y đ&agrave;n piano Upright cao cấp nhất.&nbsp;<a href=\"https://vietthuong.vn/dan-piano-steinway-sons-k-132.html\">Piano STEINWAY K-132</a>&nbsp;mang đến một sự c&acirc;n bằng ho&agrave;n hảo, phổ &acirc;m thanh rộng v&agrave; &acirc;m sắc phong ph&uacute; m&agrave; kh&ocirc;ng c&oacute; một c&acirc;y upright piano n&agrave;o kh&aacute;c c&oacute; thể s&aacute;nh bằng. Kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i lu&ocirc;n đặt ra những y&ecirc;u cầu cao nhất cho &acirc;m nhạc v&agrave; t&iacute;nh thẩm mỹ, v&agrave; đ&acirc;y l&agrave; l&yacute; do tại sao ch&uacute;ng t&ocirc;i sử dụng c&aacute;c vật liệu tương tự như những chiếc Grand Piano để sản xuất đ&agrave;n piano Upright n&agrave;y tại nh&agrave; m&aacute;y Hamburg.&nbsp;</span></h2>', 1, '90500000', '50ba101e4a.jpg'),
(32, 'Roland RP-30', '', '', '0', '', 20, 22, '<p><a href=\"https://vietthuong.vn/roland-rp-30\"><span>piano RP30</span></a><span>&nbsp;l&agrave; một c&acirc;y đ&agrave;n dễ chơi v&agrave; với mức gi&aacute; hợp l&iacute; bạn sẽ c&oacute; thể mang &acirc;m nhạc về ch&iacute;nh ng&ocirc;i nhac của m&igrave;nh. C&acirc;y đ&agrave;n cho ph&eacute;p bạn lựa chọn 15 tone nhạc t&ugrave;y chỉnh để tăng th&ecirc;m nguồn cảm hứng, những chức năng hỗ trợ việc luyện tập gi&uacute;p cho việc học đ&agrave;n trở n&ecirc;n thư th&aacute;i v&agrave; hứng th&uacute; hơn v&agrave; khung đ&agrave;n bằng gỗ sẽ trang ho&agrave;ng cho ng&ocirc;i nh&agrave; bạn trong một khoảng thời gian rất d&agrave;i.</span></p>', 0, '14700000', '9424f903ba.jpg'),
(33, 'Roland RP-30', '', '', '0', '', 20, 22, '<p><a href=\"https://vietthuong.vn/roland-rp-30\"><span>piano RP30</span></a><span>&nbsp;l&agrave; một c&acirc;y đ&agrave;n dễ chơi v&agrave; với mức gi&aacute; hợp l&iacute; bạn sẽ c&oacute; thể mang &acirc;m nhạc về ch&iacute;nh ng&ocirc;i nhac của m&igrave;nh. C&acirc;y đ&agrave;n cho ph&eacute;p bạn lựa chọn 15 tone nhạc t&ugrave;y chỉnh để tăng th&ecirc;m nguồn cảm hứng, những chức năng hỗ trợ việc luyện tập gi&uacute;p cho việc học đ&agrave;n trở n&ecirc;n thư th&aacute;i v&agrave; hứng th&uacute; hơn v&agrave; khung đ&agrave;n bằng gỗ sẽ trang ho&agrave;ng cho ng&ocirc;i nh&agrave; bạn trong một khoảng thời gian rất d&agrave;i.</span></p>', 0, '14700000', '2176c83ee9.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `sliderId` int(11) NOT NULL,
  `sliderName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_warehouse`
--

CREATE TABLE `tbl_warehouse` (
  `id_warehouse` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `sl_nhap` varchar(50) NOT NULL,
  `sl_ngaynhap` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_warehouse`
--

INSERT INTO `tbl_warehouse` (`id_warehouse`, `id_sanpham`, `sl_nhap`, `sl_ngaynhap`) VALUES
(1, 22, '5', '2019-07-16 18:31:22'),
(2, 21, '10', '2019-07-16 18:32:03'),
(3, 21, '3', '2019-07-16 18:42:59'),
(4, 20, '5', '2019-07-16 18:51:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `customer_id`, `productId`, `productName`, `price`, `image`) VALUES
(3, 3, 6, 'MÃ¡y tÃ­nh Dell A503', '10000000', 'dbb417a309.jpg'),
(4, 3, 18, 'Laptop Dell G7 7588 N7588A Core i7-8750H/Win10 (15.6 inch)', '2589900', '32942e9470.jpg'),
(5, 6, 24, 'Samsung Galaxy A12', '3950000', 'aaa94c8bfc.jpg'),
(6, 6, 25, 'Apple Watch SE 40mm (GPS) Viền Nhôm - Dây Cao Su Chính Hãng', '8000000', '5cca03034d.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandId`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartId`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catId`);

--
-- Chỉ mục cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productId`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`sliderId`);

--
-- Chỉ mục cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  ADD PRIMARY KEY (`id_warehouse`);

--
-- Chỉ mục cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_compare`
--
ALTER TABLE `tbl_compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `sliderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_warehouse`
--
ALTER TABLE `tbl_warehouse`
  MODIFY `id_warehouse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
