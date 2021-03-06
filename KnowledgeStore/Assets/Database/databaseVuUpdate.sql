USE [master]
GO
/****** Object:  Database [KnowledgeStore]    Script Date: 14/11/2018 8:08:30 PM ******/
CREATE DATABASE [KnowledgeStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KnowledgeStore', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\KnowledgeStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KnowledgeStore_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\KnowledgeStore_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KnowledgeStore] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KnowledgeStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KnowledgeStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KnowledgeStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KnowledgeStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KnowledgeStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KnowledgeStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [KnowledgeStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KnowledgeStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KnowledgeStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KnowledgeStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KnowledgeStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KnowledgeStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KnowledgeStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KnowledgeStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KnowledgeStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KnowledgeStore] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KnowledgeStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KnowledgeStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KnowledgeStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KnowledgeStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KnowledgeStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KnowledgeStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KnowledgeStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KnowledgeStore] SET RECOVERY FULL 
GO
ALTER DATABASE [KnowledgeStore] SET  MULTI_USER 
GO
ALTER DATABASE [KnowledgeStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KnowledgeStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KnowledgeStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KnowledgeStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KnowledgeStore] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KnowledgeStore', N'ON'
GO
ALTER DATABASE [KnowledgeStore] SET QUERY_STORE = OFF
GO
USE [KnowledgeStore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhauMaHoa] [varchar](50) NOT NULL,
	[TenHienThi] [nvarchar](50) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK__Admin__AD7C6529EC95DFD4] PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ChiTietDonHangID] [int] IDENTITY(1,1) NOT NULL,
	[DonHangID] [int] NOT NULL,
	[SachID] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK__ChiTietD__45B33F83E672337C] PRIMARY KEY CLUSTERED 
(
	[ChiTietDonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSachMerchant]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietSachMerchant](
	[KhoSachMerchantID] [int] IDENTITY(1,1) NOT NULL,
	[SachID] [int] NULL,
	[MerchantID] [int] NULL,
	[DonGia] [money] NOT NULL,
	[GiaKhuyenMai] [money] NULL,
	[SoLuong] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[TrangThai] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[KhoSachMerchantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTBaiDang]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTBaiDang](
	[MaBaiDang] [int] NULL,
	[TieuDe] [nvarchar](50) NULL,
	[HinhAnh] [varchar](100) NULL,
	[NoiDung] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NULL,
	[IDGoogle] [varchar](100) NULL,
	[IDFacebook] [varchar](100) NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](20) NULL,
	[MatKhauMaHoa] [varchar](256) NULL,
	[GioiTinhID] [int] NULL,
	[NgayTao] [datetime] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK__Customer__A4AE64B8E4A49771] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGiaCuaCustomer]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaCuaCustomer](
	[DanhGiaCusID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DonHangID] [int] NOT NULL,
	[NoiDung] [text] NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[SoSao] [float] NOT NULL,
 CONSTRAINT [PK__DanhGiaC__D704C54B1F1FC7EE] PRIMARY KEY CLUSTERED 
(
	[DanhGiaCusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGiaCuaMerchant]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaCuaMerchant](
	[DanhGiaMerID] [int] IDENTITY(1,1) NOT NULL,
	[MerchantID] [int] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[NgayDanhGia] [nchar](10) NULL,
	[SoSao] [float] NOT NULL,
 CONSTRAINT [PK__DanhGiaC__AD7FFC7DDD1D3662] PRIMARY KEY CLUSTERED 
(
	[DanhGiaMerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[DoanhThuID] [int] IDENTITY(1,1) NOT NULL,
	[DonHangID] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
	[SoTien] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_DoanhThu] PRIMARY KEY CLUSTERED 
(
	[DoanhThuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[DonHangID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[MerchantID] [int] NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[NgayXuat] [datetime] NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[TinhTrangDonHangID] [int] NOT NULL,
 CONSTRAINT [PK__DonHang__D159F4DE04971300] PRIMARY KEY CLUSTERED 
(
	[DonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaTriKIPXu]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaTriKIPXu](
	[XuID] [int] IDENTITY(1,1) NOT NULL,
	[GiaTriXu] [decimal](18, 0) NULL,
 CONSTRAINT [PK_GiaTriKIPXu] PRIMARY KEY CLUSTERED 
(
	[XuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioiTinh](
	[GioiTinhID] [int] IDENTITY(1,1) NOT NULL,
	[TenGioiTinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GioiTinhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhAnh](
	[HinhAnhID] [int] IDENTITY(1,1) NOT NULL,
	[SachID] [int] NOT NULL,
	[DuongDan] [varchar](500) NOT NULL,
 CONSTRAINT [PK_HinhAnh] PRIMARY KEY CLUSTERED 
(
	[HinhAnhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaHong]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaHong](
	[HoaHongID] [int] IDENTITY(1,1) NOT NULL,
	[PhanTranHoaHong] [int] NOT NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_HoaHong] PRIMARY KEY CLUSTERED 
(
	[HoaHongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuCustomer]    Script Date: 14/11/2018 8:08:30 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuCustomer](
	[LichSuCustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[DonHangID] [int] NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK__LichSuCu__2757A2334E1C4E15] PRIMARY KEY CLUSTERED 
(
	[LichSuCustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuGiaoDichXuCuaMerchant]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuGiaoDichXuCuaMerchant](
	[MerchantID] [int] NOT NULL,
	[LichSuGiaoDichXuID] [int] IDENTITY(1,1) NOT NULL,
	[PhuongThucSuDung] [bit] NOT NULL,
	[NgayGiaoDich] [datetime] NOT NULL,
	[SoXu] [int] NOT NULL,
 CONSTRAINT [PK_LichSuGiaoDichXuCuaMerchant] PRIMARY KEY CLUSTERED 
(
	[LichSuGiaoDichXuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuMerchant]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuMerchant](
	[LichSuMerchantID] [int] NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
	[MerchantID] [int] NOT NULL,
	[DonHangID] [int] NOT NULL,
 CONSTRAINT [PK_LichSuMerchant] PRIMARY KEY CLUSTERED 
(
	[LichSuMerchantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiBia]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiBia](
	[LoaiBiaID] [int] IDENTITY(1,1) NOT NULL,
	[LoaiBia] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LoaiBiaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Merchant]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merchant](
	[MerchantID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[GioiTinh] [int] NOT NULL,
	[SoLuongKIPXu] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK__Merchant__04416563C82F31AF] PRIMARY KEY CLUSTERED 
(
	[MerchantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NangTin]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NangTin](
	[MaLuotNang] [int] IDENTITY(1,1) NOT NULL,
	[MaBaiDang] [int] NOT NULL,
	[MaMer] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLuotNang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaXuatBan](
	[NhaXuatBanID] [int] IDENTITY(1,1) NOT NULL,
	[TenNXB] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NhaXuatBanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[SachID] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](50) NOT NULL,
	[TacGia] [nvarchar](50) NOT NULL,
	[NhaXuatBanID] [int] NOT NULL,
	[NgayXuatBan] [datetime] NOT NULL,
	[SoTrang] [int] NOT NULL,
	[LoaiBiaID] [int] NULL,
	[MerchantID] [int] NULL,
	[TrangThai] [bit] NULL,
	[GiaTien] [decimal](18, 0) NOT NULL,
	[GiaKhuyenMai] [decimal](18, 0) NULL,
	[HinhAnhID] [int] NULL,
	[MoTa] [text] NULL,
	[SoLuong] [int] NULL,
	[TheLoaiID] [int] NOT NULL,
 CONSTRAINT [PK__Sach__F3005E3A42D94796] PRIMARY KEY CLUSTERED 
(
	[SachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[TheLoaiID] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TheLoaiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TinhTrangDonHang]    Script Date: 14/11/2018 8:08:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinhTrangDonHang](
	[TinhTrangDonHangID] [int] IDENTITY(1,1) NOT NULL,
	[TinhTrangDonHang] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK__TinhTran__A76258C56A9471E8] PRIMARY KEY CLUSTERED 
(
	[TinhTrangDonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[GioiTinh] ON 

INSERT [dbo].[GioiTinh] ([GioiTinhID], [TenGioiTinh]) VALUES (1, N'Nam')
INSERT [dbo].[GioiTinh] ([GioiTinhID], [TenGioiTinh]) VALUES (2, N'Nữ')
INSERT [dbo].[GioiTinh] ([GioiTinhID], [TenGioiTinh]) VALUES (3, N'Khác')
SET IDENTITY_INSERT [dbo].[GioiTinh] OFF
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietSachMerchant] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__TrangT__4CA06362]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_TinhTrangDonHangID]  DEFAULT ((1)) FOR [TinhTrangDonHangID]
GO
ALTER TABLE [dbo].[HoaHong] ADD  CONSTRAINT [DF_HoaHong_TinhTrang]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Merchant] ADD  CONSTRAINT [DF_Merchant_KIPXu]  DEFAULT ((0)) FOR [SoLuongKIPXu]
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF_Sach_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__DonHa__5629CD9C] FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__DonHa__5629CD9C]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__SachI__571DF1D5] FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__SachI__571DF1D5]
GO
ALTER TABLE [dbo].[ChiTietSachMerchant]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietSa__Merch__47DBAE45] FOREIGN KEY([MerchantID])
REFERENCES [dbo].[Merchant] ([MerchantID])
GO
ALTER TABLE [dbo].[ChiTietSachMerchant] CHECK CONSTRAINT [FK__ChiTietSa__Merch__47DBAE45]
GO
ALTER TABLE [dbo].[ChiTietSachMerchant]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietSa__SachI__46E78A0C] FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[ChiTietSachMerchant] CHECK CONSTRAINT [FK__ChiTietSa__SachI__46E78A0C]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK__Customer__GioiTi__4BAC3F29] FOREIGN KEY([GioiTinhID])
REFERENCES [dbo].[GioiTinh] ([GioiTinhID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK__Customer__GioiTi__4BAC3F29]
GO
ALTER TABLE [dbo].[DanhGiaCuaCustomer]  WITH CHECK ADD  CONSTRAINT [FK__DanhGiaCu__Custo__59FA5E80] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[DanhGiaCuaCustomer] CHECK CONSTRAINT [FK__DanhGiaCu__Custo__59FA5E80]
GO
ALTER TABLE [dbo].[DanhGiaCuaCustomer]  WITH CHECK ADD  CONSTRAINT [FK__DanhGiaCu__DonHa__5AEE82B9] FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[DanhGiaCuaCustomer] CHECK CONSTRAINT [FK__DanhGiaCu__DonHa__5AEE82B9]
GO
ALTER TABLE [dbo].[DanhGiaCuaMerchant]  WITH CHECK ADD  CONSTRAINT [FK__DanhGiaCu__Custo__5EBF139D] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[DanhGiaCuaMerchant] CHECK CONSTRAINT [FK__DanhGiaCu__Custo__5EBF139D]
GO
ALTER TABLE [dbo].[DanhGiaCuaMerchant]  WITH CHECK ADD  CONSTRAINT [FK__DanhGiaCu__Merch__5DCAEF64] FOREIGN KEY([MerchantID])
REFERENCES [dbo].[Merchant] ([MerchantID])
GO
ALTER TABLE [dbo].[DanhGiaCuaMerchant] CHECK CONSTRAINT [FK__DanhGiaCu__Merch__5DCAEF64]
GO
ALTER TABLE [dbo].[DoanhThu]  WITH CHECK ADD  CONSTRAINT [FK_DoanhThu_DonHang] FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[DoanhThu] CHECK CONSTRAINT [FK_DoanhThu_DonHang]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__Custome__5165187F] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__Custome__5165187F]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__Merchan__52593CB8] FOREIGN KEY([MerchantID])
REFERENCES [dbo].[Merchant] ([MerchantID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__Merchan__52593CB8]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK__DonHang__TinhTra__534D60F1] FOREIGN KEY([TinhTrangDonHangID])
REFERENCES [dbo].[TinhTrangDonHang] ([TinhTrangDonHangID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK__DonHang__TinhTra__534D60F1]
GO
ALTER TABLE [dbo].[LichSuCustomer]  WITH CHECK ADD  CONSTRAINT [FK__LichSuCus__Custo__619B8048] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[LichSuCustomer] CHECK CONSTRAINT [FK__LichSuCus__Custo__619B8048]
GO
ALTER TABLE [dbo].[LichSuCustomer]  WITH CHECK ADD  CONSTRAINT [FK__LichSuCus__DonHa__628FA481] FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[LichSuCustomer] CHECK CONSTRAINT [FK__LichSuCus__DonHa__628FA481]
GO
ALTER TABLE [dbo].[LichSuGiaoDichXuCuaMerchant]  WITH CHECK ADD  CONSTRAINT [FK_LichSuGiaoDichXuCuaMerchant_Merchant] FOREIGN KEY([MerchantID])
REFERENCES [dbo].[Merchant] ([MerchantID])
GO
ALTER TABLE [dbo].[LichSuGiaoDichXuCuaMerchant] CHECK CONSTRAINT [FK_LichSuGiaoDichXuCuaMerchant_Merchant]
GO
ALTER TABLE [dbo].[LichSuMerchant]  WITH CHECK ADD  CONSTRAINT [FK_LichSuMerchant_DonHang] FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[LichSuMerchant] CHECK CONSTRAINT [FK_LichSuMerchant_DonHang]
GO
ALTER TABLE [dbo].[LichSuMerchant]  WITH CHECK ADD  CONSTRAINT [FK_LichSuMerchant_Merchant] FOREIGN KEY([MerchantID])
REFERENCES [dbo].[Merchant] ([MerchantID])
GO
ALTER TABLE [dbo].[LichSuMerchant] CHECK CONSTRAINT [FK_LichSuMerchant_Merchant]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK__Merchant__GioiTi__440B1D61] FOREIGN KEY([GioiTinh])
REFERENCES [dbo].[GioiTinh] ([GioiTinhID])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK__Merchant__GioiTi__440B1D61]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__LoaiBiaID__3E52440B] FOREIGN KEY([LoaiBiaID])
REFERENCES [dbo].[LoaiBia] ([LoaiBiaID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__LoaiBiaID__3E52440B]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__NhaXuatBan__3D5E1FD2] FOREIGN KEY([NhaXuatBanID])
REFERENCES [dbo].[NhaXuatBan] ([NhaXuatBanID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__NhaXuatBan__3D5E1FD2]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK__Sach__TheLoaiID__3F466844] FOREIGN KEY([TheLoaiID])
REFERENCES [dbo].[TheLoai] ([TheLoaiID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK__Sach__TheLoaiID__3F466844]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_HinhAnh] FOREIGN KEY([HinhAnhID])
REFERENCES [dbo].[HinhAnh] ([HinhAnhID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_HinhAnh]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Merchant] FOREIGN KEY([MerchantID])
REFERENCES [dbo].[Merchant] ([MerchantID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Merchant]
GO
USE [master]
GO
ALTER DATABASE [KnowledgeStore] SET  READ_WRITE 
GO
