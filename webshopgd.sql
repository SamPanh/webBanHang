-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 07, 2021 lúc 04:51 PM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshopgd`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Phương Anh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`) VALUES
(1, 'Gundam Bandai Pg Astray Red Frame Kai', 'Mô hình gundam (gunpla) là một loại mô hình nhựa được gọi là Model kit, bao gồm nhiều mảnh nhựa rời được gọi là part (bộ phận), khi lắp ráp các part lại với nhau sẽ được mô hình hoàn chỉnh. Các mảnh nhựa rời này được gắn trên khung nhựa gọi là runner. Mỗi một hộp sản phẩm Gunpla bao gồm nhiều runner và các phụ kiện liên quan, một tập sách nhỏ (manual) bên trong giới thiệu sơ lược về mẫu Gundam trong hộp và phần hướng dẫn cách lắp ráp.\r\nDòng gundam với các chi tiết hoàn hảo.', '', 1, 'am5.jpg'),
(2, 'Gundam HG Akatsuki Oowashi Shiranui Full Set', 'Mô Hình Gundam (Gunpla) Là Một Loại Mô Hình Nhựa Được Gọi Là Model Kit, Bao Gồm Nhiều Mảnh Nhựa Rời Được Gọi Là Part (Bộ Phận), Khi Lắp Ráp Các Part Lại Với Nhau Sẽ Được Mô Hình Hoàn Chỉnh. Các Mảnh Nhựa Rời Này Được Gắn Trên Khung Nhựa Gọi Là Runner. Mỗi Một Hộp Sản Phẩm Gunpla Bao Gồm Nhiều Runner Và Các Phụ Kiện Liên Quan, Một Tập Sách Nhỏ (Manual) Bên Trong Giới Thiệu Sơ Lược Về Mẫu Gundam Trong Hộp Và Phần Hướng Dẫn Cách Lắp Ráp.', '', 2, 'am4.jpg'),
(3, 'Metalbuild Gundam Astray Gold Frame Amatsu Mina Princess Of The Sky Ver', 'Sản Phẩm Được Sơn Sẵn Với Độ Chi Tiết Và Tỉ Mỉ Tạo Nên Hiệu Ứng Như Thật. Sản Phẩm Đã Được Ráp Sẵn. Sản Phẩm Có Kèm 1 Số Chi Tiết Kim Loại Bên Trong Đảm Bảo Độ Nặng Và Độ Bền Gần Như Tuyệt Đối Theo Thời Gian. Chất Lượng Sản Phẩm Hoàn Thiện Ở Mức : Cao Cấp', '', 3, 'am3.jpg'),
(4, 'Gundam 00 HG GN-Arms Type', 'Tôi trang bị thêm 1 vài dụng cụ cho Gundam.\r\nCó nhiều sự kết hợp nhưng tôi chọn màu xám  để tô bộ phận và những chỗ còn lại phù hợp với màu sắc tạo nên một Gundam đẹp mắt.', '', 4, 'am2.jpg'),
(5, 'Gundam 00  HG GN-Arms Type E + Exia', 'Đây sự kết hợp giữa Gundam 00 và động cơ giúp tăng khả năng khả năng chiến đấu nhưng lại bị hạn chế di chuyển nhưng được thay vào phụ kiện phản lực giúp theo đuổi hạ gục mục tiêu nhanh hơn', '', 4, 'am1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Màu Sơn'),
(2, 'Dụng Cụ'),
(3, 'Phụ Kiện'),
(4, 'Hàng Mới'),
(5, 'Gundam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Kiến thức Gundam Astray Red'),
(2, 'Kiến thức Gundam Akatsuki'),
(3, 'Kiến thức Gundam Metalbuild'),
(4, 'Kiến thức Gundam 00 ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(11, 21, 5, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(12, 26, 6, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(13, 20, 3, '4236', 15, '2019-10-04 02:33:55', 0, 0),
(14, 21, 4, '4236', 15, '2019-10-04 02:33:56', 0, 0),
(15, 20, 3, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(16, 21, 4, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(17, 21, 1, '2508', 17, '2019-10-04 02:35:19', 0, 0),
(23, 20, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(26, 21, 2, '5737', 23, '2019-10-04 02:57:00', 0, 0),
(31, 21, 1, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(32, 20, 3, '5396', 26, '2019-10-04 03:49:08', 0, 0),
(35, 25, 2, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(36, 26, 3, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(37, 27, 1, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(38, 22, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(39, 24, 1, '1125', 27, '2019-10-09 09:47:17', 1, 2),
(40, 20, 1, '555', 27, '2019-10-09 09:50:07', 0, 2),
(41, 31, 1, '3842', 29, '2021-06-07 14:30:31', 0, 0),
(42, 18, 1, '3842', 29, '2021-06-07 14:30:31', 0, 0),
(43, 19, 4, '3842', 29, '2021-06-07 14:30:31', 0, 0),
(44, 28, 1, '3842', 29, '2021-06-07 14:30:31', 0, 0),
(45, 19, 1, '5998', 30, '2021-06-07 14:33:16', 0, 0),
(46, 19, 1, '402', 31, '2021-06-07 14:35:12', 0, 0),
(47, 19, 1, '7795', 31, '2021-06-07 14:39:26', 0, 0),
(48, 19, 2, '6082', 31, '2021-06-07 14:42:38', 0, 0),
(49, 19, 2, '4542', 31, '2021-06-07 14:46:35', 0, 0),
(50, 19, 3, '9774', 31, '2021-06-07 14:48:55', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2019-10-09 09:50:08', 27, 0, 2),
(18, 31, 1, '3842', '2021-06-07 14:30:31', 29, 0, 0),
(19, 18, 1, '3842', '2021-06-07 14:30:31', 29, 0, 0),
(20, 19, 4, '3842', '2021-06-07 14:30:31', 29, 0, 0),
(21, 28, 1, '3842', '2021-06-07 14:30:31', 29, 0, 0),
(22, 19, 1, '5998', '2021-06-07 14:33:16', 30, 0, 0),
(23, 19, 1, '402', '2021-06-07 14:35:12', 31, 0, 0),
(24, 19, 1, '7795', '2021-06-07 14:39:26', 31, 0, 0),
(25, 19, 2, '6082', '2021-06-07 14:42:38', 31, 0, 0),
(26, 19, 2, '4542', '2021-06-07 14:46:35', 31, 0, 0),
(27, 19, 3, '9774', '2021-06-07 14:48:55', 31, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(13, 'Mô Hình Gundam Reborns High Grade CB-0000G/C ', 19, '500000', 'hg00-00-gundam-02.jpg', 2),
(14, 'Phụ Kiện DL King Sword Dragon ', 27, '450000', 'pk1.jpg', 3),
(15, 'Mô Hình Gundam Bandai HG Seravee Gundam 00 HG00', 18, '450000', 'hg00-00-gundam-03.jpg', 1),
(16, 'Gundam RG Astray Gold Frame Amatsu Mina', 31, '1200000', 'gdnew3.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(13, 'Long Hoàng', '01694494813', '123/123', 'dasdasdas', 'long@gmail.com', '0192023a7bbd73250516f069df18b500', 0),
(22, 'Nam', '0932023992', '123/123', 'dasdas', 'name123@gmail.com', '', 1),
(25, 'Hoàng Kha', '0932023992', '123/123', 'dasdasdas', 'hoangkha@gmail.com', '', 1),
(26, 'Trương Lưu', '0932023992', '123/123', 'dasdasdas', 'truongluu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(27, 'Trương Huệ Mẫn', '0932023992', '123', 'dasdasdasd', 'hueman@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(28, 'Hoa', '0932023992', '123/123', 'dasdasdads', 'hoa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 0),
(29, 'trung', '0984377698', 'Tp.hcm', 'asdada', 'nduan123@gmail.com', '1bc43dc9c0ccf501bb125bee86c0762d', 0),
(30, 'trung', '0984377698', 'Tp.hcm', '1132', 'nduan123@gmail.com', 'f5bb0c8de146c67b44babbf4e6584cc0', 0),
(31, 'trung', '0984377698', 'Tp.hcm', 'adadada', 'nduan123@gmail.com', '67117df1e2ca460c52084ca261aa85e8', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(17, 2, 'Dụng Cụ Làm Gundam Lưỡi Dao', 'KÍCH THƯỚC HỘP : 5x5x2cm  ', 'THƯƠNG HIỆU :9SEA', '200000', '120000', 0, 0, 10, 'dungcu1.jpg'),
(18, 5, 'Mô Hình Gundam Bandai HG Seravee Gundam 00 HG00', 'TỶ LỆ : 1:144 | KÍCH THƯỚC HỘP : 33x23x13cm/400gr       ', 'Sản phậm nhựa cao cấp với độ bền cao .\r\nSản xuất bởi Bandai – Nhật Bản\r\nAn toàn với trẻ em\r\nLắp ráp dễ dàng với nhiều mảng màu sinh động\r\nPhát triển trí não cho trẻ hiệu quả đi đôi với niềm vui thích bất tận\r\nRèn luyện tính kiên nhẫn cho người chơi', '450000', '400000', 0, 0, 7, 'hg00-00-gundam-03.jpg'),
(19, 5, 'Mô Hình Gundam Reborns High Grade CB-0000G/C ', 'Tỉ lệ: HG – 1/144 | Chiều Cao: 13-14cm\r\n', 'Mô Hình Gundam (Gunpla) Là Một Loại Mô Hình Nhựa Được Gọi Là Model Kit, Bao Gồm Nhiều Mảnh Nhựa Rời Được Gọi Là Part (Bộ Phận), Khi Lắp Ráp Các Part Lại Với Nhau Sẽ Được Mô Hình Hoàn Chỉnh. Các Mảnh Nhựa Rời Này Được Gắn Trên Khung Nhựa Gọi Là Runner. Mỗi Một Hộp Sản Phẩm Gunpla Bao Gồm Nhiều Runner Và Các Phụ Kiện Liên Quan, Một Tập Sách Nhỏ (Manual) Bên Trong Giới Thiệu Sơ Lược Về Mẫu Gundam Trong Hộp Và Phần Hướng Dẫn Cách Lắp Ráp.', '500000', '450000', 0, 0, 1, 'hg00-00-gundam-02.jpg'),
(20, 4, 'Gundam RG Strike Freedom Zgmf-X20', 'TỶ LỆ : 1:144 | KÍCH THƯỚC HỘP : 31.1 x 19.2 x 8.3 cm / 452g', 'Sản phẩm nhựa cao cấp với độ sắc nét cao\r\nSản xuất bởi Bandai Namco – Nhật Bản\r\nAn toàn với trẻ em\r\nPhát triển trí não cho trẻ hiệu quả đi đôi với niềm vui thích bất tận\r\nRèn luyện tính kiên nhẫn cho người chơi', '4500000', '4000000', 0, 0, 10, 'gdnew2.jpg'),
(21, 4, 'Gundam HIRM Red Frame Astray Hi', 'Phiên bản mới nhất | Kích Thước Hộp : 42x35x15cm  ', 'Sản Phẩm Được Sơn Sẵn Với Độ Chi Tiết Và Tỉ Mỉ Tạo Nên Hiệu Ứng Như Thật\r\nSản Phẫm Đã Được Ráp Sẵn\r\nSản Phẩm Có Kèm 1 Số Chi Tiết Kim Loại Bên Trong Đảm Bảo Độ Nặng Và Độ Bền Gần Như Tuyệt Đối', '3500000', '3000000', 0, 0, 10, 'gdnew1.jpg'),
(22, 2, 'Dụng Cụ Mô Hình Gundam Kềm NANYE', 'KÍCH THƯỚC HỘP : 5x5x2cm | PHÂN LOẠI SP : DỤNG CỤ                                 ', 'KDụng Cụ Mô Hình Gundam Kềm NANYE Đồ Chơi Lắp Ráp Anime [ Tặng Bao Da Cao Cấp + Bảo Vệ Mũi Kềm ]', '140000', '100000', 0, 0, 5, 'dungcu2.jpg'),
(23, 2, 'BÚT KẺ CHẢY LẰN CHÌM GUNDAM', 'KÍCH THƯỚC HỘP :12x1x1cm/50gr | PHÂN LOẠI SP : DỤNG CỤ     ', 'DỤNG CỤ BÚT KẺ CHẢY LẰN CHÌM GUNDAM MARKER GM301 GM302 GM303 ĐEN XÁM NÂU', '120000', '99000', 0, 0, 10, 'dungcu3.jpg'),
(24, 1, 'BÌNH SƠN TOPCOAT B501 B502 B503 ', 'Kích thước: 15x5x5cm\r\n\r\n', 'Sản Phẩm Bình Sơn Xịt Cao Cấp Sản Xuất Bởi Mrhobby – Nhật Bản An Toàn Với Người Dùng Tạo Hiệu Ứng Bề Mặt , Tăng Tính Thẩm Mỹ Cho Mô Hình', '200000', '150000', 0, 0, 10, 's3.jpg'),
(25, 1, 'BÌNH SƠN XỊT SUPER CLEAR B522 B523', 'Kích thước: 15x5x5cm\r\n', 'Sản Phẩm Bình Sơn Xịt Cao Cấp Sản Xuất Bởi Mrhobby – Nhật Bản An Toàn Với Người Dùng Tạo Hiệu Ứng Bề Mặt , Tăng Tính Thẩm Mỹ Cho Mô Hình', '25000', '199000', 0, 0, 10, 's2.jpg'),
(26, 3, 'Phụ Kiện  HWS Pack Susan Model', 'Kích Thước Hộp :25x20x10cm/300gr', 'Sản Phẩm Nhựa Cao Cấp Với Độ Bền Cao . An Toàn Với Trẻ Em Lắp Ráp Dễ Dàng Với Nhiều Mảng Màu Sinh Động Phát Triển Trí Não Cho Trẻ Hiệu Quả Đi Đôi Với Niềm Vui Thích Bất Tận Rèn Luyện Tính Kiên Nhẫn Cho Người Chơi', '105000', '99000', 0, 0, 10, 'pk3.jpg'),
(27, 3, 'Phụ Kiện DL King Sword Dragon ', 'Kích Thước Hộp :25x20x10cm/300gr    ', 'Sản Phẩm Nhựa Cao Cấp Với Độ Bền Cao .\r\nAn Toàn Với Trẻ Em\r\nLắp Ráp Dễ Dàng Với Nhiều Mảng Màu Sinh Động\r\nPhát Triển Trí Não Cho Trẻ Hiệu Quả Đi Đôi Với Niềm Vui Thích Bất Tận\r\nRèn Luyện Tính Kiên Nhẫn Cho Người Chơi', '450000', '300000', 0, 0, 10, 'pk1.jpg'),
(28, 5, 'Mô Hình Gundam Bandai Hg 00 GN-0000', 'Tỷ Lệ : 1:144 | Kích Thước Hộp : 33x23x13cm/400gr   ', 'Sản Phẩm Nhựa Cao Cấp Với Độ Bền Cao\r\nSản Xuất Bởi Nhật Bản\r\nAn Toàn Với Trẻ Em\r\nLắp Ráp Dễ Dàng Với Nhiều Mảng Màu Sinh Động\r\nPhát Triển Trí Não Cho Trẻ Hiệu Quả Đi Đôi Với Niềm Vui Thích Bất Tận\r\nRèn Luyện Tính Kiên Nhẫn Cho Người Chơi  ', '350000', '300000', 0, 0, 1, 'hg00-00-gundam-01.jpg'),
(30, 3, 'BỘ PHỤ KIỆN FLYING BACKPAC', 'TỶ LỆ : 1:100 | KÍCH THƯỚC HỘP : 20x15x3cm/200gr         ', 'Sản Phẩm Nhựa Cao Cấp Với Độ Bền Cao .\r\nAn Toàn Với Trẻ Em\r\nLắp Ráp Dễ Dàng Với Nhiều Mảng Màu Sinh Động\r\nPhát Triển Trí Não Cho Trẻ Hiệu Quả Đi Đôi Với Niềm Vui Thích Bất Tận\r\nRèn Luyện Tính Kiên Nhẫn Cho Người Chơi', '450000', '300000', 0, 0, 10, 'pk2.jpg'),
(31, 4, 'Gundam RG Astray Gold Frame Amatsu Mina', 'Phiên bản mới nhất | Kích Thước Hộp : 42x35x15cm  ', 'Sản Phẩm Được Sơn Sẵn Với Độ Chi Tiết Và Tỉ Mỉ Tạo Nên Hiệu Ứng Như Thật\r\nSản Phẫm Đã Được Ráp Sẵn\r\nSản Phẩm Có Kèm 1 Số Chi Tiết Kim Loại Bên Trong Đảm Bảo Độ Nặng Và Độ Bền Gần Như Tuyệt Đối', '1200000', '1000000', 0, 0, 10, 'gdnew3.jpg'),
(32, 1, 'BÌNH SƠN XỊT SUPER CLEAR B513 B514 B516', 'Kích thước: 15x5x5cm \r\n', 'Sản Phẩm Bình Sơn Xịt Cao Cấp Sản Xuất Bởi Mrhobby – Nhật Bản An Toàn Với Người Dùng Tạo Hiệu Ứng Bề Mặt , Tăng Tính Thẩm Mỹ Cho Mô Hình', '220000', '200000', 0, 0, 10, 's1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'anhbia1.jpg', 'Gundam', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
