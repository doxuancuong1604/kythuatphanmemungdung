USE [master]
GO
/****** Object:  Database [qlquanan]    Script Date: 15/03/2024 02:25:03 ******/
CREATE DATABASE [qlquanan]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'qlquanan', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\qlquanan.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'qlquanan_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\qlquanan_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [qlquanan] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlquanan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlquanan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlquanan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlquanan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlquanan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlquanan] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlquanan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [qlquanan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlquanan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlquanan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlquanan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlquanan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlquanan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlquanan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlquanan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlquanan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [qlquanan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlquanan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlquanan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlquanan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlquanan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlquanan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlquanan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlquanan] SET RECOVERY FULL 
GO
ALTER DATABASE [qlquanan] SET  MULTI_USER 
GO
ALTER DATABASE [qlquanan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlquanan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlquanan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlquanan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlquanan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlquanan] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'qlquanan', N'ON'
GO
ALTER DATABASE [qlquanan] SET QUERY_STORE = OFF
GO
USE [qlquanan]
GO
/****** Object:  Table [dbo].[BAN]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAN](
	[MaBan] [nvarchar](10) NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[MaKhuVuc] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CA]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CA](
	[MaCa] [nvarchar](10) NOT NULL,
	[TenCa] [nvarchar](50) NULL,
	[MaKhuVuc] [nvarchar](10) NULL,
	[MaNhanVien] [nvarchar](50) NULL,
	[SoTien] [int] NULL,
	[Ngay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUC]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUC](
	[MaCongThuc] [nvarchar](10) NOT NULL,
	[TenCongThuc] [nvarchar](50) NULL,
	[MaThucDon] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONGTHUCCHITIET]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONGTHUCCHITIET](
	[MaCongThucCT] [nvarchar](10) NOT NULL,
	[MaCongThuc] [nvarchar](10) NULL,
	[MaHangHoa] [nvarchar](10) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCongThucCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DONVI]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONVI](
	[MaDonVi] [nvarchar](10) NOT NULL,
	[TenDonVi] [nvarchar](50) NULL,
 CONSTRAINT [PK_DonVi] PRIMARY KEY CLUSTERED 
(
	[MaDonVi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MaHangHoa] [nvarchar](10) NOT NULL,
	[TenHangHoa] [nvarchar](50) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[Gia] [decimal](18, 0) NULL,
	[MaDonVi] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHangHoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHD] [uniqueidentifier] NOT NULL,
	[NgayVao] [datetime] NOT NULL,
	[MaKH] [nvarchar](10) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[PhuThu] [decimal](18, 0) NULL,
	[PhuThuTheoPhanTram] [bit] NULL,
	[GiamGia] [decimal](18, 0) NULL,
	[GiamGiaTheoPhanTram] [bit] NULL,
	[NgayThanhToan] [datetime] NULL,
	[ThanhTien] [decimal](18, 0) NULL,
	[DaThanhToan] [bit] NOT NULL,
	[MaBan] [nvarchar](10) NULL,
 CONSTRAINT [PK_HOADON] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONBANHANG]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONBANHANG](
	[MaHDBH] [nvarchar](10) NOT NULL,
	[NgayBan] [datetime] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [decimal](18, 0) NULL,
	[MaNCC] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHDBH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADONCHITIET]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADONCHITIET](
	[MaHDCT] [uniqueidentifier] NOT NULL,
	[MaHD] [uniqueidentifier] NOT NULL,
	[MaThucDon] [nvarchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GhiChu] [nvarchar](200) NULL,
 CONSTRAINT [PK_HoaDonChiTiet] PRIMARY KEY CLUSTERED 
(
	[MaHDCT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [nvarchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[MaLKH] [nvarchar](10) NULL,
	[MaQuyen] [int] NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[MaKho] [nvarchar](10) NOT NULL,
	[TenKho] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUVUC]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUVUC](
	[MaKhuVuc] [nvarchar](10) NOT NULL,
	[TenKhuVuc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuVuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKM] [nvarchar](10) NOT NULL,
	[TenKM] [nvarchar](50) NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
	[NoiDung] [nvarchar](50) NULL,
	[GiaTri] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIKHAHANG]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIKHAHANG](
	[MaLKH] [nvarchar](10) NOT NULL,
	[TenLKH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LUONG]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LUONG](
	[MaNhanVien] [nvarchar](10) NULL,
	[SoCa] [int] NULL,
	[TongTien] [float] NULL,
	[NgayNhan] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [nvarchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[LoaiHang_NCC] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[MaQuyen] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [nvarchar](10) NOT NULL,
	[NgayNhap] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaNCC] [nvarchar](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPX] [nvarchar](10) NOT NULL,
	[NgayXuat] [date] NULL,
	[MaNV] [nvarchar](10) NULL,
	[MaKH] [nvarchar](10) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THUCDON]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THUCDON](
	[MaThucDon] [nvarchar](10) NOT NULL,
	[TenThucDon] [nvarchar](50) NULL,
	[Gia] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaThucDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TONKHO]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TONKHO](
	[MaTonKho] [nvarchar](10) NOT NULL,
	[MaHH] [nvarchar](10) NULL,
	[SoLuong] [decimal](18, 2) NULL,
	[MaDonVi] [nvarchar](10) NULL,
	[MaKho] [nvarchar](10) NULL,
 CONSTRAINT [PK_TONKHO] PRIMARY KEY CLUSTERED 
(
	[MaTonKho] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_MaHD]  DEFAULT (newid()) FOR [MaHD]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_NgayVao]  DEFAULT (getdate()) FOR [NgayVao]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_PhuThuTheoPhanTram]  DEFAULT ((1)) FOR [PhuThuTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_GiamGiaTheoPhanTram]  DEFAULT ((1)) FOR [GiamGiaTheoPhanTram]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_ThanhTien]  DEFAULT ((0)) FOR [ThanhTien]
GO
ALTER TABLE [dbo].[HOADON] ADD  CONSTRAINT [DF_HOADON_DaThanhToan]  DEFAULT ((0)) FOR [DaThanhToan]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HOADONCHITIET_MaHDCT]  DEFAULT (newid()) FOR [MaHDCT]
GO
ALTER TABLE [dbo].[HOADONCHITIET] ADD  CONSTRAINT [DF_HoaDonChiTiet_SoLuong]  DEFAULT ((1)) FOR [SoLuong]
GO
/****** Object:  StoredProcedure [dbo].[BaoCaoDoanhThu]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BaoCaoDoanhThu]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT NgayVao = FORMAT(HOADON.NgayVao, 'dd/MM/yyyy HH:mm:ss')
	, Ban.TenBan
	, dbo.KHUVUC.TenKhuVuc
	, dbo.KHACHHANG.TenKH
	, dbo.NHANVIEN.TenNV
	, dbo.THUCDON.TenThucDon
	, dbo.THUCDON.Gia
	, dbo.HOADONCHITIET.SoLuong
	, ThanhTien = (dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong)
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.BAN, dbo.KHUVUC, dbo.KHACHHANG, dbo.NHANVIEN, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADON.MaBan = dbo.BAN.MaBan
	AND dbo.KHUVUC.MaKhuVuc = dbo.BAN.MaKhuVuc
	AND dbo.HOADON.MaKH = dbo.KHACHHANG.MaKH
	AND dbo.HOADON.MaNV = dbo.NHANVIEN.MaNV
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[GetAllHoaDonChiTiet]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetAllHoaDonChiTiet]
@MaHD UNIQUEIDENTIFIER
AS
BEGIN
SELECT
	MaHDCT
	,MaHD
	,MaThucDon
	,TenThucDon = (SELECT TenThucDon FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,Gia = (SELECT Gia FROM dbo.THUCDON WHERE MaThucDon = HOADONCHITIET.MaThucDon)
	,SoLuong
	,GhiChu
FROM HOADONCHITIET
WHERE MaHD = (SELECT MaHD FROM dbo.HOADON WHERE MaHD = @MaHD AND DaThanhToan = 0)
END
GO
/****** Object:  StoredProcedure [dbo].[LayChiTietHoaDon]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 4. Get chi tiết hóa đơn theo mã hóa đơn
CREATE PROC [dbo].[LayChiTietHoaDon]
@MaHD nvarchar(10)
AS
Begin
SELECT MaHD, MaThucDon, SoLuong, GhiChu FROM dbo.HoaDonChiTiet WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[LayDanhSachBan]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[LayDanhSachBan] 
@MaKhuVuc nvarchar(10)
AS
Begin
SELECT MaBan, TenBan, MaKhuVuc, DaThanhToan = ISNULL((SELECT TOP 1 ISNULL(DaThanhToan, 1) FROM dbo.HOADON WHERE MaBan = Ban.MaBan ORDER BY NgayVao DESC), 1) FROM BAN 
WHERE 

MaKhuVuc = (CASE WHEN @MaKhuVuc = '' THEN MaKhuVuc ELSE @MaKhuVuc END) ORDER BY TenBan
END
GO
/****** Object:  StoredProcedure [dbo].[LayHoaDonMoiNhat]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LayHoaDonMoiNhat]
@MaBan nvarchar(10)
AS
Begin
SELECT TOP 1 MaHD, NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, NgayThanhToan, ThanhTien, DaThanhToan, MaBan  FROM dbo.HOADON WHERE MaBan = @MaBan ORDER BY NgayVao DESC
END

GO
/****** Object:  StoredProcedure [dbo].[LayTatCaKhuVuc]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 1. Get tất cả khu vực
CREATE PROCEDURE [dbo].[LayTatCaKhuVuc]
AS
SELECT MaKhuVuc = '', TenKhuVuc = N'Tất cả' UNION SELECT MaKhuVuc, TenKhuVuc FROM KHUVUC ORDER BY MaKhuVuc
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDon]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDon]
	@NgayVao datetime
	,@MaKH nvarchar(10)
	,@MaNV nvarchar(10)
	,@PhuThu decimal(18,0)
	,@PhuThuTheoPhanTram bit
	,@GiamGia decimal(18,0)
	,@GiamGiaTheoPhanTram bit
	,@MaBan nvarchar(10)
AS
BEGIN
INSERT INTO HOADON
(
	NgayVao
	,MaKH
	,MaNV
	,PhuThu
	,PhuThuTheoPhanTram
	,GiamGia
	,GiamGiaTheoPhanTram
	,MaBan
)
OUTPUT Inserted.MaHD
VALUES
(
	@NgayVao
	,@MaKH
	,@MaNV
	,@PhuThu
	,@PhuThuTheoPhanTram
	,@GiamGia
	,@GiamGiaTheoPhanTram
	,@MaBan
)
END
GO
/****** Object:  StoredProcedure [dbo].[LuuHoaDonChiTiet]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[LuuHoaDonChiTiet]
	@Loai NVARCHAR(10)
	,@MaHDCT uniqueidentifier
	,@MaHD uniqueidentifier
	,@MaThucDon nvarchar(10)
	,@SoLuong int
	,@GhiChu nvarchar(200)
AS
BEGIN
IF(@Loai='them')
BEGIN
INSERT INTO HOADONCHITIET
(
	MaHD
	,MaThucDon
	,SoLuong
	,GhiChu
)
OUTPUT Inserted.MaHDCT
VALUES
(
	@MaHD
	,@MaThucDon
	,@SoLuong
	,@GhiChu
)
END
ELSE
BEGIN
UPDATE HOADONCHITIET
SET 
	MaHD = @MaHD
	,MaThucDon = @MaThucDon
	,SoLuong = @SoLuong
	,GhiChu = @GhiChu
OUTPUT Inserted.MaHDCT
WHERE MaHDCT = @MaHDCT
END
END
GO
/****** Object:  StoredProcedure [dbo].[PhanQuyen]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[PhanQuyen]
@Username nvarchar(20),
@Password nvarchar(20),
@NhanVien bit
as
BEGIN
IF @NhanVien = 1
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV, MaKH = '', TenNV, TenKH = '' FROM dbo.NHANVIEN WHERE TenDangNhap = @Username AND MatKhau = @Password
ELSE
	SELECT MaQuyen = ISNULL(MaQuyen, 0), TenDangNhap, MaNV = '', MaKH, TenNV = '', TenKH FROM dbo.KHACHHANG WHERE TenDangNhap = @Username AND MatKhau = @Password

END
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDon]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDon]
@MaHD UNIQUEIDENTIFIER, @NgayVao datetime, @MaKH nvarchar(10), @MaNV nvarchar(10), @PhuThu DECIMAL(18,0), @PhuThuTheoPhanTram bit, @GiamGia DECIMAL(18,0), @GiamGiaTheoPhanTram bit, @NgayThanhToan datetime, @ThanhTien DECIMAL(18,0), @DaThanhToan bit, @MaBan nvarchar(10)
AS
Begin
UPDATE dbo.HOADON SET NgayVao = @NgayVao, MaKH = @MaKH, MaNV = @MaNV, PhuThu = @PhuThu, PhuThuTheoPhanTram = @PhuThuTheoPhanTram, GiamGia = @GiamGia, GiamGiaTheoPhanTram = @GiamGiaTheoPhanTram, NgayThanhToan = @NgayThanhToan, ThanhTien = @ThanhTien, DaThanhToan = @DaThanhToan, MaBan = @MaBan WHERE MaHD = @MaHD
END
-- 10. Xóa hóa đơn
GO
/****** Object:  StoredProcedure [dbo].[SuaHoaDonChiTiet]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SuaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER, @SoLuong int, @GhiChu nvarchar(200)
AS
Begin
UPDATE dbo.HoaDonChiTiet SET SoLuong = @SoLuong, GhiChu = @GhiChu WHERE MaHDCT = @MaHDCT
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDon]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[ThemHoaDon]
@NgayVao DATETIME
, @MaKH nvarchar(10)
, @MaNV nvarchar(10)
, @PhuThu DECIMAL(18,0)
, @PhuThuTheoPhanTram BIT
, @GiamGia DECIMAL(18,0)
, @GiamGiaTheoPhanTram BIT
, @MaBan nvarchar(10)
AS
Begin
INSERT INTO dbo.HOADON 
(NgayVao, MaKH, MaNV, PhuThu, PhuThuTheoPhanTram, GiamGia, GiamGiaTheoPhanTram, MaBan, DaThanhToan)
OUTPUT Inserted.MaHD
VALUES (@NgayVao, @MaKH, @MaNV, @PhuThu, @PhuThuTheoPhanTram, @GiamGia, @GiamGiaTheoPhanTram, @MaBan, 0)
END
GO
/****** Object:  StoredProcedure [dbo].[ThemHoaDonChiTiet]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- 5.  thêm hóa đơn chi tiết
CREATE PROC [dbo].[ThemHoaDonChiTiet]
@MaHD nvarchar(10), @MaThucDid nvarchar(10), @SoLuong int, @GhiChu nvarchar(50)
AS
Begin
INSERT INTO dbo.HoaDonChiTiet (MaHD, MaThucDon, SoLuong, GhiChu) VALUES (@MaHD, @MaThucDid, @SoLuong, @GhiChu)
END
-- 6. sửa hóa đơn chi tiết
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTien]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTien]
@TuNgay DATETIME
,@DenNgay DATETIME
AS
BEGIN
	SELECT SUM(dbo.THUCDON.Gia * dbo.HOADONCHITIET.SoLuong) AS Tong
	FROM dbo.HOADONCHITIET, dbo.HOADON, dbo.THUCDON
	WHERE dbo.HOADONCHITIET.MaHD = dbo.HOADON.MaHD
	AND dbo.HOADONCHITIET.MaThucDon = dbo.THUCDON.MaThucDon
	AND dbo.HOADON.NgayVao BETWEEN @TuNgay AND DATEADD(DAY, 1, @DenNgay)
END
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNam]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNam]
@Nam datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE YEAR(NgayVao) = YEAR(@Nam)
END
-- 14. tính tổng thành tiền theo tuần
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoNgay]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoNgay]
@Ngay datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE Day(NgayVao) = @Ngay
END
-- 12. tính tổng thành tiền theo tháng
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoThang]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoThang]
@Thang datetime
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE MONTH(NgayVao) = MONTH(@Thang)
END
-- 13. tính tổng thành tiền theo năm
GO
/****** Object:  StoredProcedure [dbo].[TinhTongThanhTienTheoTuan]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TinhTongThanhTienTheoTuan]
@Tuan int
AS
Begin
SELECT SUM(ThanhTien) FROM dbo.HOADON WHERE DATEPART(WEEK, NgayVao) = @Tuan
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDon]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDon]
@MaHD UNIQUEIDENTIFIER
AS
Begin
	DELETE FROM dbo.HOADON WHERE MaHD = @MaHD
	DELETE FROM dbo.HOADONCHITIET WHERE MaHD = @MaHD
END
GO
/****** Object:  StoredProcedure [dbo].[XoaHoaDonChiTiet]    Script Date: 15/03/2024 02:25:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[XoaHoaDonChiTiet]
@MaHDCT UNIQUEIDENTIFIER
AS
Begin
DELETE FROM dbo.HoaDonChiTiet WHERE MaHDCT = @MaHDCT
END
-- 8. Thêm hóa đơn
GO
USE [master]
GO
ALTER DATABASE [qlquanan] SET  READ_WRITE 
GO
