USE [KnowledgeStore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 01/12/2018 2:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[ChiTietDonHangID] [int] IDENTITY(1,1) NOT NULL,
	[DonHangID] [int] NOT NULL,
	[SachID] [int] NOT NULL,
	[MerchantID] [int] NOT NULL,
	[NgayXuat] [datetime] NULL,
	[SoLuong] [int] NOT NULL,
	[ThanhTien] [decimal](18, 0) NOT NULL,
	[TrangThaiDanhGia] [bit] NOT NULL,
	[TinhTrangDonHangID] [int] NOT NULL,
	[GhiChu] [nvarchar](100) NULL,
 CONSTRAINT [PK__ChiTietD__45B33F83E672337C] PRIMARY KEY CLUSTERED 
(
	[ChiTietDonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietSachMerchant]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[DanhGiaCuaCustomer]    Script Date: 01/12/2018 2:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhGiaCuaCustomer](
	[DanhGiaCusID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[ChiTIetDonHangID] [int] NOT NULL,
	[NoiDung] [text] NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[SoSao] [float] NOT NULL,
 CONSTRAINT [PK__DanhGiaC__D704C54B1F1FC7EE] PRIMARY KEY CLUSTERED 
(
	[DanhGiaCusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhGiaCuaMerchant]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 01/12/2018 2:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[DonHangID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[TongTien] [decimal](18, 0) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK__DonHang__D159F4DE04971300] PRIMARY KEY CLUSTERED 
(
	[DonHangID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaTien]    Script Date: 01/12/2018 2:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaTien](
	[GiaTienID] [int] IDENTITY(1,1) NOT NULL,
	[TenGiaTien] [nvarchar](150) NOT NULL,
	[TyGia] [decimal](18, 0) NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK_GiaTien] PRIMARY KEY CLUSTERED 
(
	[GiaTienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaTriKIPXu]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[HoaHong]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[LichSuCustomer]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[LichSuGiaoDichXuCuaMerchant]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[LichSuMerchant]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[LichSuNangTin]    Script Date: 01/12/2018 2:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuNangTin](
	[NangTinID] [int] IDENTITY(1,1) NOT NULL,
	[SachID] [int] NOT NULL,
	[NgayNang] [datetime] NOT NULL,
 CONSTRAINT [PK__NangTin__36B5D6E180277628] PRIMARY KEY CLUSTERED 
(
	[NangTinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiBia]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[Merchant]    Script Date: 01/12/2018 2:30:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merchant](
	[MerchantID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[MatKhauMaHoa] [varchar](256) NOT NULL,
	[HoTen] [nvarchar](200) NOT NULL,
	[DiaChi] [nvarchar](300) NOT NULL,
	[GioiTinhID] [int] NOT NULL,
	[TenCuaHang] [nvarchar](200) NOT NULL,
	[SoDienThoai] [varchar](20) NOT NULL,
	[SoLuongKIPXu] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK__Merchant__04416563C82F31AF] PRIMARY KEY CLUSTERED 
(
	[MerchantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[Sach]    Script Date: 01/12/2018 2:30:57 PM ******/
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
	[MoTa] [nvarchar](max) NULL,
	[SoLuong] [int] NULL,
	[TheLoaiID] [int] NOT NULL,
 CONSTRAINT [PK__Sach__F3005E3A42D94796] PRIMARY KEY CLUSTERED 
(
	[SachID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 01/12/2018 2:30:57 PM ******/
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
/****** Object:  Table [dbo].[TinhTrangDonHang]    Script Date: 01/12/2018 2:30:57 PM ******/
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
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([ChiTietDonHangID], [DonHangID], [SachID], [MerchantID], [NgayXuat], [SoLuong], [ThanhTien], [TrangThaiDanhGia], [TinhTrangDonHangID], [GhiChu]) VALUES (2, 2, 1, 1, CAST(N'2018-11-29T16:48:07.353' AS DateTime), 3, CAST(240000 AS Decimal(18, 0)), 0, 2, NULL)
INSERT [dbo].[ChiTietDonHang] ([ChiTietDonHangID], [DonHangID], [SachID], [MerchantID], [NgayXuat], [SoLuong], [ThanhTien], [TrangThaiDanhGia], [TinhTrangDonHangID], [GhiChu]) VALUES (3, 2, 2, 1, CAST(N'2018-11-29T16:48:07.403' AS DateTime), 3, CAST(228900 AS Decimal(18, 0)), 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [Email], [IDGoogle], [IDFacebook], [HoTen], [DiaChi], [SoDienThoai], [MatKhauMaHoa], [GioiTinhID], [NgayTao], [TrangThai]) VALUES (1, N'trungnguyen.1997270710@gmail.com', N'110711004994766166222', NULL, N'nguyen Trung', NULL, NULL, NULL, NULL, CAST(N'2018-11-15T20:37:05.693' AS DateTime), 0)
INSERT [dbo].[Customer] ([CustomerID], [Email], [IDGoogle], [IDFacebook], [HoTen], [DiaChi], [SoDienThoai], [MatKhauMaHoa], [GioiTinhID], [NgayTao], [TrangThai]) VALUES (2, N'trungsendmailnek@gmail.com', N'115736197696172243720', NULL, N'Tester Tester', NULL, NULL, NULL, NULL, CAST(N'2018-11-18T18:02:35.587' AS DateTime), 0)
INSERT [dbo].[Customer] ([CustomerID], [Email], [IDGoogle], [IDFacebook], [HoTen], [DiaChi], [SoDienThoai], [MatKhauMaHoa], [GioiTinhID], [NgayTao], [TrangThai]) VALUES (3, N'trungnguyen.19972707@gmail.com', NULL, NULL, N'Hieu Trung', N'21 Rean P1 Q1', N'03555555', N'44614173b35101485abf257087b6785e6b706e0c03d82ca4a4f00e310690c855', 1, CAST(N'2018-11-24T11:30:15.350' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([DonHangID], [CustomerID], [NgayDat], [TongTien], [DiaChi], [TrangThai]) VALUES (2, 3, CAST(N'2018-11-29T16:48:07.320' AS DateTime), CAST(468900 AS Decimal(18, 0)), N'21 Rean P1 Q1', 1)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
SET IDENTITY_INSERT [dbo].[GioiTinh] ON 

INSERT [dbo].[GioiTinh] ([GioiTinhID], [TenGioiTinh]) VALUES (1, N'Nam')
INSERT [dbo].[GioiTinh] ([GioiTinhID], [TenGioiTinh]) VALUES (2, N'Nữ')
INSERT [dbo].[GioiTinh] ([GioiTinhID], [TenGioiTinh]) VALUES (3, N'Khác')
SET IDENTITY_INSERT [dbo].[GioiTinh] OFF
SET IDENTITY_INSERT [dbo].[LoaiBia] ON 

INSERT [dbo].[LoaiBia] ([LoaiBiaID], [LoaiBia]) VALUES (1, N'Bìa Cứng')
INSERT [dbo].[LoaiBia] ([LoaiBiaID], [LoaiBia]) VALUES (2, N'Bìa Mềm')
SET IDENTITY_INSERT [dbo].[LoaiBia] OFF
SET IDENTITY_INSERT [dbo].[Merchant] ON 

INSERT [dbo].[Merchant] ([MerchantID], [Email], [MatKhauMaHoa], [HoTen], [DiaChi], [GioiTinhID], [TenCuaHang], [SoDienThoai], [SoLuongKIPXu], [TrangThai], [NgayTao]) VALUES (1, N'xuanbach@gmail.com', N'e139e0af0024af125d47d560302021f42b8cf659f63a59da78552966670f732c', N'Xuân Bạch', N'12 Trần Hưng Đạo Phường 5 Quận 5', 1, N'Hoa Vân', N'0908750222', 0, 1, CAST(N'2018-10-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Merchant] ([MerchantID], [Email], [MatKhauMaHoa], [HoTen], [DiaChi], [GioiTinhID], [TenCuaHang], [SoDienThoai], [SoLuongKIPXu], [TrangThai], [NgayTao]) VALUES (3, N'tohuu@gmail.com', N'7f3c18cbb1e96205b68b601a2d6d869f702e240d5c13bc2a1126a0636ec75f32', N'Tố Hữu', N'1 Hùng Vương P1 Q5', 1, N'Cẩm Tuyết', N'0354789655', 0, 1, CAST(N'2018-10-04T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Merchant] OFF
SET IDENTITY_INSERT [dbo].[NhaXuatBan] ON 

INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (2, N'Nhà Xuất Bản Văn Học', N'18 Nguyễn Trường Tộ, P.Trúc Bạch, Ba Đình, Hà Nội.')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (3, N'Nhà Xuất Bản Lao Động', N'175 Giảng Võ, Q. Đống Đa, Hà Nội')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (10, N'Nhà Xuất Bản Hội Nhà Văn', N'Số 65 Nguyễn Du, Quận Hai Bà Trưng, HN')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (11, N'Nhà xuất bản Hồng Đức', N' 173 Xuân Thủy, Cầu Giấy, Hà Nội')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (12, N'Nhà Xuất Bản Dân Trí', N'147 Pasteur, Phường 6, Quận 3, TP.HCM ')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (14, N'Nhà Xuất Bản Thế Giới', N'7 Nguyễn Thị Minh Khai, Bến Nghé, Quận 1, HCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (16, N'Nhà Xuất Bản Trẻ', N'161B Lý Chính Thắng, Phường 7, Quận 3 , TPHCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (17, N'Nhà Xuất Bản Thanh Niên', N'16 Ngọc Tân P2 Q2 HCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (18, N'Nhà Xuất Bản Tổng hợp TP.HCM', N'123 Nguyễn Trãi, P3, Q5, Tp HCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (19, N'Nhà Xuất Bản Đại Học Quốc Gia Hà Nội', N' 183 Xuân Thủy, Cầu Giấy, Hà Nội')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (21, N'Nhà Xuất Bản Phụ Nữ', N'161B Lý Chính Thắng, Phường 7, Quận 3 , TPHCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (22, N'Nhà Xuất Bản Mỹ Thuật', N'161B Lý Chính Thắng, Phường 7, Quận 3 , TPHCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (23, N'Nhà Xuất Bản Thời Đại', N'156A Lý Thường Kiệt, P3,Q3,Tp HCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (24, N'Nhà Xuất Bản Văn Hóa -Văn Nghệ', N' 183 Xuân Thủy, Cầu Giấy, Hà Nội')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (25, N'Nhà Xuất Bản Báo Lao Động', N'156A Lý Thường Kiệt, P3,Q3,Tp HCM')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (29, N'Nhà Xuất Bản Chính Trị Quốc Gia', N' 183 Xuân Thủy, Cầu Giấy, Hà Nội')
INSERT [dbo].[NhaXuatBan] ([NhaXuatBanID], [TenNXB], [DiaChi]) VALUES (30, N'Nhà Xuất Bản Tôn Giáo', N'156A Lý Thường Kiệt, P3,Q3,Tp HCM')
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (1, N'Chào Mừng Đến Với N.H.K!', N'Tatsuhiko Takimoto', 2, CAST(N'2015-08-01T00:00:00.000' AS DateTime), 314, 2, 1, 1, CAST(80000 AS Decimal(18, 0)), NULL, N'Ném bừa một hòn đá ra đường có khi cũng trúng một hikikomori… Dĩ nhiên điều này khó lòng xảy ra, vì hikikomori có ra đường đâu.

Bước sang thế kỷ 21, hiện tượng hikikomori bất ngờ bùng nổ ở Nhật Bản. Hikikomori là những người chỉ sống quanh quẩn trong phòng, không làm việc, không giao tiếp xã hội, cứ mãi mê man với cuộc sống ảo trên mạng, từ đó dẫn đến những mục ruỗng tâm hồn.

Sato là một thanh niên 22 tuổi nhưng hết bốn năm trong cuộc đời cậu đã sống như một kẻ khép kín, không giao tiếp, kỳ thị đời sống cộng đồng. Lối sống đó đáng ra sẽ tù đọng trôi đi mãi như thế trong căn phòng trọ bừa bộn nếu một ngày kia cậu không gặp một cô gái lạ lùng - xuất hiện trong trắng như thiên thần nhưng toàn thốt ra những lời kỳ quặc. Cô tự nhận có thể chữa chứng hikikomori cho cậu, miễn là cậu bằng lòng ký vào một hợp đồng do cô thảo.

Liệu người con gái thiên thần này có thể thay đổi số mệnh của Sato? Một điểm thú vị nữa là ngoài vấn nạn hikikomori, câu chuyện còn lôi tuột ra trước mặt người đọc một loạt vấn đề nổi cộm trong xã hội hiện đại như anime otaku, mọt game online, tự tử qua mạng... Tất cả được khai thác một cách bi kịch nhưng cũng không kém phần hài hước, và điều đó khiến câu chuyện có được một điểm nhìn sâu sắc: bàng quan, giễu cợt mà cũng nhân ái vô cùng.', 2, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (2, N'Khi Hơi Thở Hóa Thinh Không', N'Paul Kalanithi', 3, CAST(N'2017-07-01T00:00:00.000' AS DateTime), 236, 2, 1, 1, CAST(76300 AS Decimal(18, 0)), NULL, N'Khi Hơi Thở Hóa Thinh Không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.

Kalanithi rất yêu thích văn chương nên câu chuyện của anh đã được thuật lại theo một phong cách mượt mà, dung dị và đầy cảm xúc. Độc giả cũng được hiểu thêm về triết lý sống, triết lý nghề y của Kalanithi, thông qua ký ức về những ngày anh còn là sinh viên, rồi thực tập, cho đến khi chính thức hành nghề phẫu thuật thần kinh. “Đối với bệnh nhân và gia đình, phẫu thuật não là sự kiện bi thảm nhất mà họ từng phải đối mặt và nó có tác động như bất kỳ một biến cố lớn lao trong đời. Trong những thời điểm nguy cấp đó, câu hỏi không chỉ đơn thuần là sống hay chết mà còn là cuộc sống nào đáng sống.” – Kalanithi luôn biết cách đưa vào câu chuyện những suy nghĩ sâu sắc và đầy sự đồng cảm như thế.

Bạn bè và gia đình đã dành tặng những lời trìu mến nhất cho con người đáng kính trọng cả về tài năng lẫn nhân cách này. Dù không thể vượt qua cơn bệnh nan y, nhưng thông điệp của tác giả sẽ còn khiến người đọc nhớ mãi.', 7, 25)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (4, N'Tuổi Trẻ Đáng Giá Bao Nhiêu', N'Rosie Nguyễn', 10, CAST(N'2016-10-01T00:00:00.000' AS DateTime), 285, 2, 1, 1, CAST(70000 AS Decimal(18, 0)), NULL, N'"Bạn hối tiếc vì không nắm bắt lấy một cơ hội nào đó, chẳng có ai phải mất ngủ.

Bạn trải qua những ngày tháng nhạt nhẽo với công việc bạn căm ghét, người ta chẳng hề bận lòng.

Bạn có chết mòn nơi xó tường với những ước mơ dang dở, đó không phải là việc của họ.

Suy cho cùng, quyết định là ở bạn. Muốn có điều gì hay không là tùy bạn.

Nên hãy làm những điều bạn thích. Hãy đi theo tiếng nói trái tim. Hãy sống theo cách bạn cho là mình nên sống.

Vì sau tất cả, chẳng ai quan tâm."

Nhận định

"Tôi đã đọc quyển sách này một cách thích thú. Có nhiều kiến thức và kinh nghiệm hữu ích, những điều mới mẻ ngay cả với người gần trung niên như tôi.

Tuổi trẻ đáng giá bao nhiêu? được tác giả chia làm 3 phần: HỌC, LÀM, ĐI.

Nhưng tôi thấy cuốn sách còn thể hiện một phần thứ tư nữa, đó là ĐỌC.

Hãy đọc sách, nếu bạn đọc sách một cách bền bỉ, sẽ đến lúc bạn bị thôi thúc không ngừng bởi ý muốn viết nên cuốn sách của riêng mình.

Nếu tôi còn ở tuổi đôi mươi, hẳn là tôi sẽ đọc Tuổi trẻ đáng giá bao nhiêu? nhiều hơn một lần."

(Đặng Nguyễn Đông Vy, tác giả, nhà báo)', 10, 4)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (7, N'Madam Nhu Trần Lệ Xuân - Quyền Lực Bà Rồng ', N'	Monique Brinson Demery', 11, CAST(N'2017-05-01T00:00:00.000' AS DateTime), 153, 2, 1, 1, CAST(165000 AS Decimal(18, 0)), NULL, N'"Ngay cả những người quen thuộc với lịch sử Việt Nam vẫn sẽ thấy kinh ngạc với truờng hợp lạ kỳ của bà Nhu. Monique Demery đã lần ra dấu vết của Bà Rồng quyền lực, nguời đã thú nhận mình yếu đuối và cõi lòng tan nát nhưng không nhận trách nhiệm về vai trò của mình trong cuộc chiến tranh đã hủy hoại nhiều cuộc đời của đất nước bà và của người Mỹ."

(Elizabeth Becker - Tác giả cuốn When the War Was Over: Cambodia and the Khmer Rouge)

"Một cuốn sách thật sự ấn tượng! Demery đã thâu tóm sống động cuộc đời và thời đại của một trong những nhân vật lạ lùng nhất của Việt Nam. Với lối kể lôi cuốn, sự nghiên cứu tường tận tư liệu từ các nguồn tiếng Pháp, tiếng Việt, và tiếng Mỹ - bao gồm những bài phỏng vấn với bà Nhu - quyển sách của Demery giờ đây là tiêu chuẩn cho việc tìm hiểu về quyền hành văn hóa trong gia đình số một Việt Nam Cộng hòa."

(Robert K. Brigham - Giáo sư Lịch sử và Quan hệ Quốc tế, Đại học Vassar)

"Đây là câu chuyện mới nhất chưa được kể về chiến tranh Việt Nam - cuốn tiểu sử đầy cuốn hút, riêng tư với kết cục bi thảm của bà Ngô Đình Nhu, Đệ nhất Phu nhân không chính thức của Việt Nam Cộng hòa, người mà quyền lực chính trị và bản tính sắt đá đã mang lại cho mình danh hiệu Bà Rồng. Cuộc đời bà đã khép lại trong cảnh lưu đày và cô liêu vào năm 2011. Monique Demery đã dành mười năm tìm hiểu về nhân vật Bà Rồng khó lường này. Kết quả của sự cần mẫn đó là một quyển sách hay vừa đậm chất học thuật vừa có thể đọc say mê như một câu chuyện bí ẩn thú vị."

(David Lam - Tác giả cuốn sách Vietnam Now: A Reporter Returns)

"Để hiểu được một phụ nữ - "bí ẩn lớn nhất của tạo hóa" - đã là điều vô cùng khó. Hiểu và nhận xét, đánh giá đầy đủ, chính xác về một phụ nữ lừng lẫy như bà Ngô Đình Nhu, còn là việc khó hơn bội phần!

Tôi không thể và không nên làm điều đó. Một cách ngắn gọn và chủ quan, tôi cảm thấy bà là một phụ nữ tài năng và mạnh mẽ hiếm có của Việt Nam trong thế kỷ 20. Sự chủ quan, kiêu ngạo, cùng một thể chế độc tài, gia đình trị, đã đưa bà và những người thân vào một số quyết định sai lầm, dẫn đến sự sụp đổ của một chế độ giờ được nhiều người nhìn nhận lại là dù sao cũng tốt nhất ở miền Nam từ 1954 đến 1975.

Nhận xét về cuốn sách này thì dễ hơn: Sách viết công phu, hấp dẫn, đầy ắp thông tin, tư liệu. Tác giả có cố gắng khách quan, dù không giấu đuợc ít nhiều thiện cảm với nhân vật. Bản dịch của Mai Sơn cũng giản dị, dễ đọc, một điều tuởng dễ mà không hề dễ..."

(Nhà văn - Nhà báo Nguyễn Đông Thức).

 

 

 

 

 

 

 

 

 



', 10, 26)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (8, N'Vẫn Còn Kịp', N'Hà Cảnh', 12, CAST(N'2016-07-01T00:00:00.000' AS DateTime), 315, 2, 1, 1, CAST(115000 AS Decimal(18, 0)), NULL, N'Thanh xuân rốt cuộc là gì?

Thanh xuân là cảm giác bất cứ điều gì cũng vẫn kịp. Một khi nắm tuổi thanh xuân trong tay, bạn sẽ cảm thấy còn nhiều thời gian, nhiều tinh lực để “tiêu xài”. Chỉ cần đừng dễ dàng từ bỏ những việc mình muốn làm, người mình muốn gặp, ước mơ mình muốn thực hiện… vậy thì tất cả vẫn còn kịp.…

Thanh xuân là thua thì thua. Thanh xuân chính là quá trình trải nghiệm những điều bạn chưa từng tiếp xúc nhưng vẫn tiến về phía trước.

Thanh xuân chính là, dù đích đến ở nơi rất gần nhưng bạn vẫn phải chạy. Thanh xuân là mỗi khi ngước nhìn bầu trời đêm, bạn vẫn nhớ giấc mơ của mình.

Bạn nhất định có ước mơ. Chỉ cần bạn kiên trì, việc thực hiện ước mơ vĩnh viễn còn kịp.', 15, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (9, N'Phi Lý Trí (Tái Bản 2018)', N'Dan Ariely', 3, CAST(N'2018-04-01T00:00:00.000' AS DateTime), 404, 2, 1, 1, CAST(149000 AS Decimal(18, 0)), NULL, N'Là một trong những cuốn sách của Dan Ariely là một cuốn sách đặc biệt hấp dẫn và đầy cảm hứng. Nó buộc người đọc phải suy nghĩ kỹ hơn về tất cả những hành vi, những sai lầm của mình để sống hợp lý và tốt đẹp hơn.

Tại sao chúng ta luôn tự hứa là sẽ ăn kiêng để rồi ý nghĩ ấy vụt biến ngay khi chiếc xe chở đồ tráng miệng đi qua? Tại sao đôi khi chúng ta hào hứng mua sắm những thứ không thật sự cần đến? Tại sao chúng ta vẫn cảm thấy đau đầu sau khi dùng loại aspirin có giá 1 xu nhưng cơn đau đầu ấy lại biến mất nếu thuốc đó đắt gấp 50 lần? Tại sao những tín đồ được yêu cầu nhớ lại Mười điều răn của Chúa có xu hướng thành thật (ít nhất là ngay sau đó) hơn những người không được yêu cầu làm vậy? Hoặc tại sao các quy tắc danh dự lại làm tăng mức độ gian lận nơi công sở? Khi đọc tới những trang cuối của cuốn sách này, bạn sẽ có câu trả lời cho các câu hỏi trên và nhiều câu hỏi khác ‒ những câu hỏi có ý nghĩa nhất định đối với cuộc sống, công việc kinh doanh và thế giới quan của bạn.', 15, 23)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (13, N'Bạn Đắt Giá Bao Nhiêu?', N'Vãn Tình', 14, CAST(N'2018-03-01T00:00:00.000' AS DateTime), 336, 2, 1, 1, CAST(99000 AS Decimal(18, 0)), NULL, N'Câu trả lời này do chính bạn quyết định, chính bạn “định giá”.

Hơn bốn mươi câu chuyện trong sách xoay quanh các chủ đề tình yêu, hôn nhân, gia đình, sự nghiệp… đến từ chính cuộc sống của tác giả và những người xung quanh, vừa thực tế lại vừa gợi mở, dễ dàng giúp chúng ta liên hệ với tình huống của chính mình. Với những câu chuyện đó, Vãn Tình hi vọng có thể giúp các cô gái thoát khỏi tình cảnh khó khăn, tìm lại bản ngã, sống cuộc đời theo cách mà mình mong muốn.

Đọc cuốn sách này, đôi khi bạn nên dừng lại và thành thực với bản thân, liệu bạn có đang là phiên-bản-mà-bạn-yêu-thích-nhất, phiên-bản-bạn-mong- muốn-trở-thành. Hãy thử trả lời các câu hỏi: Sự thỏa hiệp có làm bạn hạnh phúc hay không? Bạn có đang cố gắng lấy lòng tất cả mọi người? Bạn có dám thay đổi?... Và quan trọng nhất: Bạn đắt giá bao nhiêu?

 “Khi chúng ta đủ xuất sắc và thông tuệ, chúng ta sẽ có được một trái tim thông thái và một đôi mắt trong trẻo, nhìn thấu thực tại và sự khắc nghiệt của thế gian, phân biệt được mọi thị phi sai đúng, nhưng vẫn sống tự tin và nhiệt tình. Hi vọng chúng ta đều sẽ trở thành một cô gái như vậy…”

“Các cô gái thân mến, mong rằng sự trưởng thành của chúng ta không phải đến từ sự thương tổn.

Không cần trở thành một cô gái được tất-cả-mọi-người yêu quý, nhưng nhất định phải trở thành một cô gái mà chính-mình-yêu-thích.”

“Trong chúng ta, có rất nhiều người cố gắng cả đời cũng không thể tìm thấy tình yêu chân thành, bởi vì chúng ta đã thỏa hiệp với cuộc sống trước khi tình yêu ấy xuất hiện.”', 15, 27)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (14, N'Điểm Bùng Phát (Sách Bỏ Túi)', N'Malcolm Gladwell', 2, CAST(N'2012-05-01T00:00:00.000' AS DateTime), 368, 2, 1, 1, CAST(65000 AS Decimal(18, 0)), NULL, N'Là một doanh nhân, chắc hẳn đã có lúc bạn tự hỏi: Làm thế nào để khách hàng mua sản phẩm/dịch vụ của mình?

Là người hoạt động xã hội hay một nhà làm luật, chắc hẳn đã có lúc bạn tự hỏi: làm thế nào để chặn đứng các tệ nạn xã hội đang có chiều hướng ngày càng gia tăng?

Làm bậc làm cha, làm mẹ, chắc hẳn đã có lúc bạn tự hỏi: Làm thế nào để con mình không bị ảnh hưởng bởi thói xấu, đang tiêm nhiễm giới trẻ hiện nay?

Câu trả lời chung cho tất cả những thắc mắc này đều có trong "Điểm Bùng Phát". Trong Điểm Bùng Phát, Gladwell kể lại những câu chuyện tưởng như ngẫu nhiên, lặt vặt, không quan trọng nhưng lại có thể tạo nên những điều phi thường. Theo Gladwell, nhiều vấn đề hiện nay chúng ta đang phải đối mặt không phải là hiện tượng tuyến tính, thay đổi theo chiều hướng ổn định và dự đoán trước. Phương thức vận động của các hiện tượng xã hội rất giống với diễn biến của các đại dịch: những yếu tố nhỏ bé và vụn vặt nhất có thể khiến chúng bùng phát bất cứ lúc nào nếu muốn giải quyết tận gốc, chúng ta phải biết đâu là "điểm bùng phát" của chúng. Trong cuốn sách nghiên cứu đầy sáng tạo này, Malcolm Gladwell đi sâu khám phá những nhánh nhỏ của đại dịch, tập trung chủ yếu vào ba thành tố cơ bản của "Điểm bùng phát": quy luật thiểu số, yếu tố kết dính và sức mạnh của hoàn cảnh. Không chỉ có ý nghĩa đối với các chính trị gia, những nhà làm luật hay nhà hoạt động xã hội, "Điểm bùng phát" còn đem đến cái nhìn mới mẻ về những sự việc hàng ngày và giúp chúng ta xây dựng chiến lược cho tất cả mọi hoạt động từ nuôi dạy con cái cho tới điều hành doanh nghiệp.', 10, 2)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (15, N'Cảm Ơn Người Lớn (Bìa Mềm)', N'Nguyễn Nhật Ánh', 16, CAST(N'2018-10-01T00:00:00.000' AS DateTime), 264, 2, 1, 1, CAST(110000 AS Decimal(18, 0)), NULL, N'Bạn sẽ gặp lại Mùi, Tủn, Tí sún, Hải cò… của Cho tôi xin một vé đi tuổi thơ, cùng chơi những trò chơi quen thuộc, và được đắm mình vào những ước mơ điên rồ, ngốc nghếch nhưng trong veo của tuổi mới lớn hồn nhiên và đầy ắp dự định.

Và cả khi họ đã trưởng thành, bạo chúa thời gian đã vùng vẫy thế nào trong cuộc đời của những nhân vật mà bạn yêu quý…

Hãy bắt đầu đọc từ bất cứ trang nào, có thể đọc bất cứ lúc nào, và cùng với bất cứ ai. Bạn sẽ nhận được món quà “n trong 1” của nhà văn Nguyễn Nhật Ánh: sẽ n lần thổn thức qua 1 cuốn sách 19 chương đầy ắp tình bạn ngây thơ, tình xóm giềng tốt lành nhân ái, tình yêu đắm đuối ngọt ngào…

Cảm ơn người lớn được Nguyễn Nhật Ánh đặt bút viết đúng sau 10 năm ra đời Cho tôi xin một vé đi tuổi thơ – cuốn sách bán chạy tới nay đã 400.000 bản.', 10, 30)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (16, N'Nhà Giả Kim', N'Paulo Coelho', 2, CAST(N'2013-10-01T00:00:00.000' AS DateTime), 228, 2, 1, 1, CAST(69000 AS Decimal(18, 0)), NULL, N'“Nhưng nhà luyện kim đan không quan tâm mấy đến những điều ấy. Ông đã từng thấy nhiều người đến rồi đi, trong khi ốc đảo và sa mạc vẫn là ốc đảo và sa mạc. Ông đã thấy vua chúa và kẻ ăn xin đi qua biển cát này, cái biển cát thường xuyên thay hình đổi dạng vì gió thổi nhưng vẫn mãi mãi là biển cát mà ông đã biết từ thuở nhỏ. Tuy vậy, tự đáy lòng mình, ông không thể không cảm thấy vui trước hạnh phúc của mỗi người lữ khách, sau bao ngày chỉ có cát vàng với trời xanh nay được thấy chà là xanh tươi hiện ra trước mắt. ‘Có thể Thượng đế tạo ra sa mạc chỉ để cho con người biết quý trọng cây chà là,’ ông nghĩ.”', 10, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (17, N'Hành Trình Về Phương Đông', N'Baird T. Spalding', 11, CAST(N'2015-12-01T00:00:00.000' AS DateTime), 256, 2, 1, 1, CAST(78000 AS Decimal(18, 0)), NULL, N'Hành Trình Về Phương Đông mở ra một chân trời mới về Đông Tây gặp nhau, để khoa học Minh triết hội ngộ, để Hiện đại Cổ xưa giao duyên, để Đất Trời là một. Thế giới, vì vậy đã trở nên hài hòa hơn, rộng mở, diệu kỳ hơn và, do đó, nhân văn hơn.

Hành Trình Về Phương Đông kể về những trải nghiệm của một đoàn khoa học gồm các chuyên gia hàng đầu của Hội Khoa Học Hoàng Gia Anh được cử sang Ấn Độ nghiên cứu về huyền học và những khả năng siêu nhiên của con người. Suốt hai năm trời rong ruổi khắp các đền chùa Ấn Độ, chúng kiến nhiều pháp luật, nhiều cảnh mê tín dị đoan, thậm chí lừa đảo...của nhiều pháp sư, đạo sĩ...họ được tiếp xúc với những vị thế, họ được chứng kiến, trải nghiệm, hiểu biết sâu sắc về các khoa học cổ xưa và bí truyền của văn hóa Ấn Độ như Yoga, thiền định, thuật chiêm duyên, nghiệp báo, luật nhân quả, cõi sống và cõi chết....', 15, 4)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (19, N'Đời Ngắn Đừng Ngủ Dài', N'Robin Sharma', 16, CAST(N'2014-05-01T00:00:00.000' AS DateTime), 228, 2, 1, 1, CAST(60000 AS Decimal(18, 0)), NULL, N'“Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo cách của nó, không phải theo cách của ta. Hãy kiên nhẫn. Tin tưởng. Hãy giống như người thợ cắt đá, đều đặn từng nhịp, ngày qua ngày. Cuối cùng, một nhát cắt duy nhất sẽ phá vỡ tảng đá và lộ ra viên kim cương. Người tràn đầy nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ. Sự thật là thế.”', 15, 2)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (20, N'Hài Hước Một Chút Thế Giới Sẽ Khác Đi', N'The Book Worm', 17, CAST(N'2016-09-01T00:00:00.000' AS DateTime), 228, 2, 1, 1, CAST(60000 AS Decimal(18, 0)), NULL, N'Cuộc đời này không thể thiếu sự hài hước, hài hước cũng là một nét đẹp, một gia vị khiến cuộc sống thú vị hơn. Hầu như không ai là không thích hài hước, dí dỏm, hơn nữa hài hước còn gắn bó mật thiết với sự thành bại của cuộc đời mỗi người.

Trong cuộc sống gia đình, hài hước có thể  khiến các thành viên trong gia đình hòa thuận và hạnh phúc hơn. Sự dí dỏm có thể hòa giải được rất nhiều mâu thuẫn và tranh cãi giữa vợ chồng, giải tỏa những hiểu lầm, bất đồng hay xóa nhòa khoảng cách, thắt chặt tình cảm cả gia đình sống trong không khí đầm ấm.

Trong giao tiếp xã hội, hài hước giúp chúng ta thiết lập được mạng lưới quan hệ rộng rãi. Người hài hước thường là những người tràn đầy nhiệt huyết với cuộc sống, với thế giới. Có ai lại nỡ từ chối giao tiếp với những người như vậy cơ chứ?', 20, 4)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (21, N'Nghĩ Đơn Giản, Sống Đơn Thuần', N'Tolly Burkan', 14, CAST(N'2018-04-01T00:00:00.000' AS DateTime), 184, 2, 1, 1, CAST(47000 AS Decimal(18, 0)), NULL, N'Từ xưa đến nay, chúng ta vẫn được định hướng để tin rằng chẳng có điều gì đáng giá mà không cần đấu tranh. Bản thân tôi cũng đã dành hàng thập kỷ để nghiên cứu về nhận định phổ biến này. Tôi chưa bao giờ để cuộc sống trở nên dễ dàng. Tuy nhiên, giờ đây, thay vì cứ cố gắng làm mọi việc đúng theo ý mình, tôi đã tìm ra chiến lược để mọi thứ diễn ra theo cách của nó. Kết quả, tôi thấy mình khoẻ mạnh hơn, hạnh phúc và giàu có hơn tôi tưởng tượng. Nếu cuộc sống của bạn căng thẳng, buồn chán hoặc mãi quẩn quanh, đó là dấu hiệu bạn đang thiếu đi điều gì đó cốt yếu, và bạn đang tự cho phép mình ngừng phát triển. “Nghĩ đơn giản, sống đơn thuần” sẽ mang tới cho bạn bộ khung cơ bản để bạn nhìn nhận lại chính mình và tìm ra những mảnh ghép còn thiếu.', 20, 4)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (24, N'Mình Là Cá, Việc Của Mình Là Bơi', N'Takeshi Furukawa', 14, CAST(N'2017-08-01T00:00:00.000' AS DateTime), 192, 2, 3, 1, CAST(89000 AS Decimal(18, 0)), CAST(67000 AS Decimal(18, 0)), N'Đã bao nhiêu lần bạn tự hỏi về sự tồn tại của bản thân trên thế giới này?

Đã bao nhiêu lần bạn thấy mình chìm trong những ý nghĩ tích cực nhất.

Đã bao nhiêu lần bạn bỏ lỡ cơ hội đáng lẽ thuộc về bạn?

Một cuốn sách hay không chỉ là cuốn sách khiến bạn nhìn thấy chính bản thân mình trong đó mà còn là một cuốn sách giúp bạn trở nên tốt hơn.', 20, 31)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (25, N'Đắc Nhân Tâm (Khổ Lớn)ULL', N'Dale CarnegieL', 18, CAST(N'2016-09-09T00:00:00.000' AS DateTime), 320, 2, 1, 1, CAST(53000 AS Decimal(18, 0)), CAST(50000 AS Decimal(18, 0)), N'Hiện nay có một sự hiểu nhầm đã xảy ra. Tuy Đắc Nhân Tâm là tựa sách hầu hết mọi người đều biết đến, vì những danh tiếng và mức độ phổ biến, nhưng một số người lại “ngại” đọc. Lý do vì họ tưởng đây là cuốn sách “dạy làm người” nên có tâm lý e ngại. Có lẽ là do khi giới thiệu về cuốn sách, người ta luôn gắn với miêu tả đây là “nghệ thuật đối nhân xử thế”, “nghệ thuật thu phục lòng người”… Những cụm từ này đã không còn hợp với hiện nay nữa, gây cảm giác xa lạ và không thực tế.', 25, 32)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (26, N'Công Phá Toán 3', N'Ngọc Huyền LB', 19, CAST(N'2018-02-02T00:00:00.000' AS DateTime), 622, 2, 3, 1, CAST(129000 AS Decimal(18, 0)), CAST(120000 AS Decimal(18, 0)), N'Công Phá Toán 3 giúp các em học sinh nắm chắc tư duy giải nhanh các dạng toán 12 và thâu tóm toàn bộ bài tập chọn lọc bài tập từ 200 đề thi thử mới nhất. Tác giả là sinh viên có những thành tích cao trong học tập và cũng chính nhiệt huyết của tuổi trẻ đã mang đến cho bạn đọc những kinh nghiệm của bản thân, chia sẻ tri thức, phần nào giúp các em học sinh hiện nay tự tin hơn khi luyện thi môn Toán.

Với tâm thái đó, tác giả dễ dàng nắm bắt tâm lí học tập và lối tư duy của các em để biên soạn nên cuốn sách này với những phương pháp và kĩ năng làm bài dễ hiểu và dễ áp dụng, tối ưu hóa được thời gian khi làm bài.

Đi kèm với cuốn sách là 20 đề thi thử mới nhất 2018, đề thi được tặng kèm qua email.', 15, 8)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (27, N'Gửi Thời Đơn Thuần Đẹp Đẽ Của Chúng Ta (2 Tập)', N'Đỗ Thu Thủy', 21, CAST(N'2017-09-09T00:00:00.000' AS DateTime), 627, 2, 3, 1, CAST(150000 AS Decimal(18, 0)), CAST(145000 AS Decimal(18, 0)), N'GỬI THỜI ĐƠN THUẦN ĐẸP ĐẼ CỦA CHÚNG TA – Cho những người dùng cả thanh xuân để THÍCH một người. 

 “Năm tháng đó tôi đã hết lòng vì cậu, nên dù cậu có thích tôi hay không, thì tôi cũng không hối tiếc nữa.”

Người ta thường bảo thanh xuân của chúng ta phần lớn là dành để chờ đợi một người không bao giờ đến. Những ngày ấy, chúng ta cứ ngây dại thích một người mà không toan tính, thậm chí cũng chẳng cần được hồi đáp.

Giống như cô gái nhỏ Tiểu Hy trong "Gửi thời đơn thuần đẹp đẽ của chúng ta" đã từng nói: "Tôi không hiểu vì sao mình lại thích cậu ấy nhiều như vậy. Nhưng tôi luôn tin cậu ấy chính là định mệnh của đời mình. Giang Thần - Thanh mai trúc mã của tôi, người duy nhất tôi thích suốt cả cuộc đời."

Năm tháng đó, chúng ta đều thích một người mà không hiểu lý do. Chúng ta cháy hết mình cho tình yêu, cho những ước vọng, nhiều khi là cho cả những thứ mơ hồ và xa xăm nhất.

Nhưng cũng chính nhờ những khờ dại, ngô nghê đó, mà thanh xuân bỗng nhiên trở thành khoảng thời gian khiến lòng ta chùng lại, tim ta bồi hồi khi nhớ về.

Thanh xuân tuyệt vời nhất chính là có thể vì ai đó mà muốn đến trường hơn, vì ai đó mà gắng sức vùi đầu vào sách vở, vì ai đó mà thoáng chốc đỏ mặt ngượng ngùng, lại cũng vì ai đó mà đôi khi hờn giận vô cớ.

Thanh xuân tuyệt vời nhất có khi chỉ là những giây phút được cùng cậu ấy đạp xe đi học, được trộm ngắm cậu ấy tập trung làm bài, được cậu ấy xách cặp hộ và đỡ lên khi vấp ngã. Hay đơn giản hơn là cái vỗ trán khi trót nói những điều ngốc nghếch cũng đủ khiến trái tim xốn xang cả ngày.

Nhưng...

Thanh xuân ấy đơn thuần mà đẹp đẽ,

Thanh xuân ấy đầy thương mến cũng đầy nuối tiếc.', 20, 30)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (28, N'Mỹ Thuật Căn Bản Và Nâng Cao - Vẽ Nét Chân Dung', N'Hs. Gia Bảo - Ngọc Duyên', 22, CAST(N'2016-08-08T00:00:00.000' AS DateTime), 62, 2, 3, 1, CAST(16000 AS Decimal(18, 0)), NULL, N'Mỹ Thuật Căn Bản Và Nâng Cao - Vẽ Nét Chân Dung

Nội dung cuốn sách Mỹ Thuật Căn Bản Và Nâng Cao - Vẽ Nét Chân Dung được chia thành các phần chính như sau:

Về việc dạy vẽ nét chân dung

Phương pháp vẽ và vận dụng thủ thuật

1. Đầu chân dung nam thanh niên

2. Phụ nữ với tóc dựng

3. Phụ nữ khỏa thân trên giường

4. Hai thiếu nữ nằm trên vải trải giường

Thưởng thức tác phẩm.', 25, 15)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (29, N'Tôi Tài Giỏi - Bạn Cũng Thế', N'Adam Khoo', 21, CAST(N'2015-07-08T00:00:00.000' AS DateTime), 304, 1, 3, 1, CAST(80000 AS Decimal(18, 0)), NULL, N'Khi bạn cầm trên tay quyển sách này, có nghĩa là bạn đã có chiếc chìa khóa đến sự thành công cùng bảng hướng dẫn sử dụng.

Trong chúng ta, bất kỳ ai cũng muốn chính bản thân mình trở thành người tài giỏi, có thể giải quyết mọi vấn đề một cách hiệu quả nhất. Và để có được những điều đó quyển sách này sẽ giúp bạn bằng những hướng dẫn học tập chi tiết nhất.

Tác giả không chỉ đơn thuần giải thích người khác đã thành công như thế nào, mà còn nói làm sao để họ làm được như thế để giúp người đọc khám phá ra tiềm năng của bản thân, và phát huy điều đó. Ngoài ra, sách còn cung cấp những phương pháp học thông minh (như áp dụng các công cụ học bằng cả não bộ như Sơ Đồ Tư Duy, phát triển trí nhớ siêu việt để ghi nhớ các sự kiện, con số một cách dễ dàng, thành thạo việc quản lý thời gian và xác định mục tiêu). Adam Khoo đã cho thấy, tài giỏi mang lại sự tự tin như thế nào và còn hướng dẫn bạn cách thức trở thành người tài giỏi. Qua đó độc giả sẽ lập được kế hoạch cho cuộc đời của chính mình.

Tôi Tài Giỏi - Bạn Cũng Thế sẽ giúp tìm ra giải pháp tốt nhất cho mọi vấn đề, và giúp nhận ra cách thức để thành công. Tuy nhiên để làm một người tài giỏi thì người đọc cần đặt quyển sách xuống và thực thi ngay các kế hoạch. Đương nhiên, không phải chỉ chăm chỉ ngày một, ngày hai mà mỗi người phải thực hiện lâu dài, thậm chí cả đời thì mới đạt được những gì mình muốn.

Thật sự đây là một quyển sách rất tuyệt vời và bổ ích, đem lại cho chúng ta những kinh nghiệm quý báu. Một quyển sách không - thể - thiếu trong tủ sách!', 15, 2)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (30, N'All In Love - Ngập Tràn Yêu Thương', N'Cố Tây Tước', 23, CAST(N'2017-08-08T00:00:00.000' AS DateTime), 400, 2, 1, 1, CAST(90000 AS Decimal(18, 0)), NULL, N'Từ Vi Vũ hơi mắc bệnh sạch sẽ, có chút bỉ ổi, có chút mặt dày, tuy nhiên trước mặt người ngoài anh luôn hào hoa phong nhã, sống tách biệt, độc lập, lạnh lùng mà kiêu ngạo, lạnh lùng mà xa cách, trong sự xa cách ấy lại toát lên sự cao quý. Nhưng cứ về đến nhà, anh liền biến thành quý ông “thích cởi”, luôn miệng kêu: “Tắm, tắm, tắm! Cố Thanh Khê, em có muốn đến chà đạp anh không?”

Cố Thanh Khê luôn nghĩ, con người này còn có thể bỉ ổi hơn được nữa không?

Nếu không sẽ là:

“Vợ ơi, mau nấu cơm cho anh, yêu cầu hợp pháp đấy!”

“Vợ ơi, hôm nay đi xem phim nhé! Yêu cầu hợp pháp đấy!”

“Thanh Khê, hát tặng anh một bài đi, yêu cầu hợp pháp đấy!”

Mỗi lần như thế, bạn Cố Thanh Khê lại phải cố kiềm chế không xử lý anh một cách phi pháp.

Hạnh phúc là gì?

Hạnh phúc là mười ba năm trước, cứ tan học về, có một cậu bé lại đi hình chữ S đến trước mặt bạn.

Mười ba năm sau, vẫn cậu bé đó ôm bạn vào lòng, thủ thỉ: “Cố Thanh Khê, cả tuổi thanh xuân của anh đều dành hết cho em, thế nên em phải có trách nhiệm với anh đấy!”', 20, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (31, N'Thất Tịch Không Mưa', N'Lâu Vũ Tình', 23, CAST(N'2016-09-09T00:00:00.000' AS DateTime), 319, 2, 3, 1, CAST(60000 AS Decimal(18, 0)), NULL, N'Thất tịch: Mùng 7 tháng 7 âm lịch, chính là lễ Valentine của Trung Quốc. Cô sinh ngày Mùng 7 tháng 7 - Ngày Thất tịch.

Từ nhỏ cô đã thầm yêu anh, như số kiếp không thể thay đổi tình yêu trong sáng ấy, như lần đầu được nếm mùi vị của quả khế mới chín. Sau đó cô và anh xa nhau, gặp lại đều cách nhau ba năm. 15 tuổi, anh lên phía bắc học, từ đó mất liên lạc; 18 tuổi, cô nông nổi đi gặp anh, đổi lại là sự đau lòng; 21 tuổi, cuối cùng anh cũng quay về để chịu tang mẹ; 24 tuổi, anh kết hôn, đưa người vợ mới cưới tới tận nơi xa. Anh từng là thần hộ mệnh của cô, dịu dàng, cẩn thận che chở, bao dung. Đã từng ngoắc tay với cô, thề sẽ mãi mãi ở bên nhau. Cô có thể mất đi tất cả, nhưng không thể không có anh - người hiểu cô nhất. Ngày 7-7 là ngày gặp mặt của Ngưu Lang Chức Nữ, mưa ngày 7-7 là nước mắt của nỗi nhớ nhung vậy. Giờ cô 27 tuổi, liệu có thể có một ngày 7-7 không mưa, để cô được gặp lại anh một lần nữa...

Hai con người yêu nhau đến tận xương tủy, yêu đến vụn vỡ con tim nhưng lại không thể nào đến với nhau. Hai con người ấy mang theo con tim khiếm khuyết đi tìm kiếm yêu thương trong thế giới ngoài kia nhưng không thể. Vì với cô, anh là Thẩm Hàn Vũ độc nhất vô nhị không ai có thế thay thế, chỉ có một mình anh. Còn với anh, cô là Thẩm Thiên Tình mà anh yêu quí nhất, là người mà anh thề sẽ bảo vệ suốt đời, không có cô anh chỉ là một cái xác không hồn. Một tình yêu đẹp đến thế, sâu nặng đến thế, thế nhưng họ lại không thể là của nhau. Không thể trách anh, không thể trách cô, có chăng là oán hận cái số phận đã đặt tình yêu nồng đậm của họ vào một tình huống quá éo le, biến nó trở thành bi kịch của cả cuộc đời. Anh yêu cô, yêu đến đau lòng, nhưng chỉ có thể ở bên cô, chăm sóc cô với tư cách là một người anh trai, anh yêu cô, yêu đến mức thà để cô được thanh thản đã không ngần ngại mang một trái tim trống rỗng đi tìm kiếm hình bóng người con gái anh yêu trong những cô gái khác. Còn cô, cô yêu anh từ bé, yêu đến mức đối với cô, chỉ cần anh là đủ, chỉ cần anh tồn tại thì cô hạnh phúc, thế nhưng tình cảm ấy bị thứ bi kịch đau lòng kia ngăn chặn.

Cái chết - có nhiều người sẽ xem nó là một điều tồi tệ nhất, nhưng với cái chết trong câu chuyện này thì nó là cách giải thoát cho họ khỏi số phận đầy bi ai và đau đớn đến xé lòng kia. Và như anh đã nói: “Tình, đợi anh”, cô sẽ đợi, đợi anh thực sự đến bên cô, đợi để được thuộc về nhau trọn vẹn, đợi để chìm đắm trong tình yêu của họ, và đợi, đợi để thực sự được là một người con gái yêu anh.', 25, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (39, N'Tối Ưu Hóa Trí Thông Minh', N'Jame Harrison, Mike Hobbs', 12, CAST(N'2017-09-09T00:00:00.000' AS DateTime), 360, 2, 1, 1, CAST(80000 AS Decimal(18, 0)), NULL, N'Một chương trình toàn diện nhằm tăng cường và phát triển tối đa khả năng trí não.

- Khám phá cấu tạo bộ não và các loại hình tư duy.

- Làm quen với các kỹ thuật và phương pháp rèn luyện trí não nổi tiếng.

- Phát triển trí thông minh, cải thiện trí nhớ.

- Tăng cường sự tập trung, phát huy khả năng sáng tạo.

- Nâng cao các kỹ năng giải quyết vấn đề.

Trong cuốn sách mang tính đột phá này, bạn sẽ được tìm hiểu về bộ não của mình cùng với cấu trúc va khả năng đáng ngạc nhiên của nó. Bạn sẽ khám phá về trí nhớ của mình và bộ nhớ khổng lồ của nó cũng như khả năng sáng tao, thiên hướng bẩm sinh với hình ảnh và con số của mình. Cuốn sách sẽ cung cấp cho bạn những phương pháp "hình ảnh" d8e63 phát triển tư duy ngôn ngữ và khả năng ngôn từ của bạn. Trong này còn có một chương nói về tầm quan trọng của mối liên hệ giữa trí não và cơ thể, ở đó bạn sẽ hiểu được câu châm ngôn của người xưa đúng đắn thế nào:"Cơ thể khoẻ mạnh thì trí tuệ mạnh khoẻ, trí tuệ mạnh khoẻ thì cơ thể khoẻ mạnh". Thông qua việc thực hiện những bài tập trong "Tối Ưu Hoá Trí Thông Minh", bạn sẽ cải thiện khả năng chú ý và sự tập trung, trí nhớ, cách học tập và khả năng sáng tạo. Những khả năng này sẽ tăng cường đáng kể sự tự tin và lạc quan trong cuộc sống của bạn.

Dành thời gian cho chương trình Tối Ưu Hoá Trí Thông Minh chính là đầu tư vào tài sản tri thức cảu bạn và đó chính là tài sản có giá trị nhất trên thế giới này.', 24, 32)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (48, N' Món Bánh Cực Ngon Không Cần Nướng', N'Nhóm tác giả', 14, CAST(N'2018-04-05T00:00:00.000' AS DateTime), 111, 2, 3, 1, CAST(120000 AS Decimal(18, 0)), NULL, N'Ready To Cook: NO BAKED (40 Món Bánh Cực Ngon Không Cần Nướng)

Được biết đến là đơn vị tiên phong trong lĩnh vực xuất bản sách Cookbook cao cấp tại Việt Nam, IloveCookbook đã trở thành cái tên quen thuộc với tất cả những ai đam mê ẩm thực trên toàn quốc. Với hai năm kinh nghiệm hoạt động, IloveCookbook đến nay đã có gần mười lăm cuốn sách về làm bánh và nấu ăn của các tác giả, đầu bếp tên tuổi và chuyên nghiệp. Với tiêu chí đem lại sự khác biệt, đẳng cấp từ nội dung đến hình thức và chất lượng, những cuốn sách của IloveCookbook luôn mang dấu ấn riêng và để lại ấn tượng với độc giả về một sản phẩm giá trị. Trên tất cả, với sự gắn kết thân thiết và thấu đáo từng mong muốn của độc giả, các ấn phẩm của IloveCookbook đề cao tính hữu ích và gần gũi. Đó cũng chính là lý do ra đời của seri Ready - to - cook. Đây là seri sách về những công thức chuyên đề từ đơn giản đến đỉnh cao với giá bìa tiết kiệm và chất lượng cao cấp.', 20, 34)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (50, N'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', N'Nguyễn Nhật Ánh', 16, CAST(N'2015-07-07T00:00:00.000' AS DateTime), 380, 2, 3, 1, CAST(62000 AS Decimal(18, 0)), NULL, N'Ta bắt gặp trong Tôi Thấy Hoa Vàng Trên Cỏ Xanh một thế giới đấy bất ngờ và thi vị non trẻ với những suy ngẫm giản dị thôi nhưng gần gũi đến lạ. Câu chuyện của Tôi Thấy Hoa Vàng Trên Cỏ Xanh có chút này chút kia, để ai soi vào cũng thấy mình trong đó, kiểu như lá thư tình đầu đời của cu Thiều chẳng hạn... ngây ngô và khờ khạo.

Nhưng Tôi Thấy Hoa Vàng Trên Cỏ Xanh hình như không còn trong trẻo, thuần khiết trọn vẹn của một thế giới tuổi thơ nữa. Cuốn sách nhỏ nhắn vẫn hồn hậu, dí dỏm, ngọt ngào nhưng lại phảng phất nỗi buồn, về một người cha bệnh tật trốn nhà vì không muốn làm khổ vợ con, về một người cha khác giả làm vua bởi đứa con tâm thầm của ông luôn nghĩ mình là công chúa,... Những bài học về luân lý, về tình người trở đi trở lại trong day dứt và tiếc nuối.

Tôi Thấy Hoa Vàng Trên Cỏ Xanh lắng đọng nhẹ nhàng trong tâm tưởng để rồi ai đã lỡ đọc rồi mà muốn quên đi thì thật khó.

©

“Tôi thấy hoa vàng trên cỏ xanh” truyện dài mới nhất của nhà văn vừa nhận giải văn chương ASEAN Nguyễn Nhật Ánh - đã được Nhà xuất bản Trẻ mua tác quyền và giới thiệu đến độc giả cả nước.

Cuốn sách viết về tuổi thơ nghèo khó ở một làng quê, bên cạnh đề tài tình yêu quen thuộc, lần đầu tiên Nguyễn Nhật Ánh đưa vào tác phẩm của mình những nhân vật phản diện và đặt ra vấn đề đạo đức như sự vô tâm, cái ác. 81 chương ngắn là 81 câu chuyện nhỏ của những đứa trẻ xảy ra ở một ngôi làng: chuyện về con cóc Cậu trời, chuyện ma, chuyện công chúa và hoàng tử, bên cạnh chuyện đói ăn, cháy nhà, lụt lội,... “Tôi thấy hoa vàng trên cỏ xanh” hứa hẹn đem đến những điều thú vị với cả bạn đọc nhỏ tuổi và người lớn bằng giọng văn trong sáng, hồn nhiên, giản dị của trẻ con cùng nhiều tình tiết thú vị, bất ngờ và cảm động trong suốt hơn 300 trang sách. Cuốn sách, vì thế có sức ám ảnh, thu hút, hấp dẫn không thể bỏ qua.', 25, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (51, N'ừ Điển Anh - Việt (350.000 Mục Từ)', N'Nhóm tác giả', 19, CAST(N'2016-08-08T00:00:00.000' AS DateTime), 1570, 2, 1, 1, CAST(190000 AS Decimal(18, 0)), NULL, N'Cuốn từ điển phù hợp với hầu hết các đối tượng đang theo học anh văn, tuy nhiên hiệu quả học tập còn phụ thuộc vào việc bạn sử dụng cuốn từ điển như thế nào và hiểu được lợi ích mà cuốn từ điển mang đến cho bạn. Có rất nhiều cách để sử dụng từ điển hiệu quả, bạn có thể tham khảo cách sau đây:

- Làm quen với thứ tự sắp xếp các chữ cái trong từ điển

- Lưu ý những từ hướng dẫn

- Xem lướt qua các trang của từ điển để tìm thông tin cần

- Chú trọng vào phần ngữ âm

- Học cụm từ và thành ngữ trong từ điển

- Tìm hiểu những cụm từ

- Nâng cao vốn từ vựng bằng cách kết hợp các từ

- Sử dụng các ví dụ

- Chú ý vào những từ được sử dụng thường xuyên

Cuốn từ điển gồm 350.000 mục từ được chọn lọc dựa trên phiên bản mới nhất của Oxford và Cambridge, đã được lược bỏ một số từ cổ người Anh - Mỹ ít dùng. Ngoài ra, còn có phiên âm quốc tế mới nhất.', 20, 9)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (52, N'Bí Ẩn Mãi Mãi Là Bí Ẩn (Tập 1)', N'Nhiều tác giả', 16, CAST(N'2017-09-18T00:00:00.000' AS DateTime), 158, 1, 3, 1, CAST(35000 AS Decimal(18, 0)), NULL, N'Bí Ẩn Mãi Mãi Là Bí Ẩn (Tập 1) giới thiệu cùng các bạn những điều bí ẩn đã và đang tồn tại xung quanh cuộc sống của chúng ta; những điều mà khoa học còn chưa có lời giải thích.

Cuốn sách gồm một số nội dung chính như sau:

Bí ẩn hiện tượng xác ướp tự nhiên ở colombia

Vì sao chúng ta sợ?

Sự lựa chọn bí ẩn của tự nhiên

Bí ẩn về những ngọn đèn vĩnh cửu

Bí ẩn của những tượng đá trên đảo phục sinh

Bí ẩn của hiện tượng đa phu

Vũ trụ luôn chống lại chúng ta?

Tảng đá biết đi

Dấu chân kỳ quặc
Hóa giải huyền thoại tam giác quỷ Bermuda?

Những vòng tròn bí ẩn trên cánh đồng

Mỗi người chúng ta là một nhà bác học

Lý giải khoa học

Bí ẩn cuốn di cảo Voynich thế kỷ 13

Bí ẩn về người cụt đầu

...

', 25, 10)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (53, N'Tủ Sách Truyện Cổ Tích - Tình Yêu Của Rừng', N'Nhóm tác giả', 24, CAST(N'2016-04-05T00:00:00.000' AS DateTime), 20, 1, 1, 1, CAST(30000 AS Decimal(18, 0)), NULL, N'Tủ sách truyện cổ tích giới thiệu những câu chuyện cổ tích nổi tiếng, ý nghĩa và thú vị. Trong loạt truyện này, nhóm tác giả chọn lọc truyện cổ tích của từng quốc gia, khu vực khác nhau trên thế giới. Những câu chuyện ngoài nội dung mang tính nhân văn còn thể hiện truyền thống và bản sắc văn hóa của mỗi dân tộc.

Phần minh họa màu sinh động tái hiện lại không gian văn hóa và không khí sinh hoạt từ nhiều vùng đất. Vì vậy, bộ truyện còn giúp các em tăng thêm vốn hiểu biết xã hội. Ngoài ra, điểm mới lạ ở đây chính là phần nội dung song ngữ Anh - Việt, góp phần hữu ích cho các em trong việc học thêm từ vựng tiếng Anh qua những nhân vật cổ tích gần gũi.

Truyện cổ tích Brazil - Tình yêu của rừng khuyên ta biết tôn kính và yêu mến mẹ Thiên Nhiên, đồng thời cố gắng bảo vệ những món quà hào phóng mà mẹ ban tặng.', 20, 3)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (54, N'Chữa Trị Căn Bệnh Trì Hoãn', N'Jeffery Combs', 23, CAST(N'2017-12-09T00:00:00.000' AS DateTime), 168, 1, 1, 1, CAST(100000 AS Decimal(18, 0)), NULL, N'Chữa Trị Căn Bệnh Trì Hoãn

Trong đời sống, bạn có gặp những người thường xuyên đưa ra đủ thứ lý do để trì hoãn một công việc, một dự án, một nhiệm vụ… mà họ bắt buộc phải làm, thậm chí muốn làm? Nếu chính bạn có thói quen như vậy thì nhiều khả năng bạn đang mắc chứng trì hoãn, một căn bệnh tâm lý sẽ tác động xấu đến cuộc sống của bạn, tạo ra những hậu quả tiêu cực về lâu dài.

Cuốn sách này sẽ giúp bạn tìm ra nguyên nhân và rèn luyện những kỹ năng chữa trị căn bệnh trì hoãn. Đây là một chương trình từng bước giúp bạn đạt được tự do, sức khỏe và hạnh phúc trong cuộc sống. Thứ có giá trị nhất trong cuộc sống của bạn là thời gian. Hãy để thời gian của bạn trở nên thực sự có giá trị bằng cách loại bỏ căn bệnh trì hoãn.', 25, 4)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (55, N'Bí Mật Của Những Đại Gia Sinh Viên', N'Đào Đức Dũng', 25, CAST(N'2015-10-11T00:00:00.000' AS DateTime), 250, 1, 1, 1, CAST(50000 AS Decimal(18, 0)), NULL, N'Bí Mật Của Những Đại Gia Sinh Viên

Mong muốn khởi nghiệp và sớm thành công là ước mơ, là hoài bão của đa số sinh viên trẻ hiện nay. Họ năng động, nhiệt tình, có khả năng và dám lăn xả hành động để đạt được điều đó. Tuy nhiên, thực tế cho thấy, chỉ có khoảng 5% sinh viên có thể chạm tay tới cái đích của sự thành công, còn 95% những người còn lại phải chịu những thất bại tương đối nặng nề. Vậy 5% sinh viên đó đã làm gì khác những người còn lại? Họ biết những điều gì? Có những bí mật gì? Họ suy nghĩ ra sao? Và có những kỹ năng đặc biệt gì để đạt thành công như vậy?

Bí mật của những đại gia sinh viên là cuốn sách đầu tiên tại Việt Nam tập trung các kinh nghiệm khởi nghiệp ở mỗi ngành nghề khác nhau một cách chân thực và rõ ràng nhất. Những sinh viên không khác chúng ta trên trường lớp, nhưng ngoài giờ học, họ là những người thành công kiếm hàng nghìn USD mỗi tháng. Cuốn sách đi sâu vào những câu chuyện, những bí quyết, những kinh nghiệm và chia sẻ từng bước đi cụ thể mà nhóm 5% sinh viên này đã làm. Nó như cẩm nang khởi nghiệp tin tưởng và thực tế nhất dành cho những sinh viên muốn nhanh chóng chiến thắng trong trò chơi của cuộc đời!

Hãy cùng xem những sinh viên có thu nhập hàng nghìn đô mỗi tháng, họ khởi nghiệp lúc đầu ra sao? Họ đã làm gì đầu tiên, bước thứ hai, thứ ba là gì...? Họ đã trải qua những khó khăn nào? Và những quy tắc cốt lõi nhất để thành công trong ngành nghề đó là gì? Khi biết và hiểu rõ những điều đó, công việc kế thừa những điều hay, tránh những sai lầm sẽ làm sinh viên chúng ta dễ dàng đạt được thành công như họ hoặc hơn thế nữa rất nhiều.

Ông Nguyễn Bá Tưởng - Đồng sáng lập - Giám đốc điều hành Tập đoàn EduViet Corporation:“Tôi cảm thấy rất ngạc nhiên và thú vị khi được đọc bản thảo cuốn sách này của Đào Đức Dũng. Cách dẫn dắt đầy cảm xúc nhưng hết sức mạch lạc của Dũng khiến tôi bị lôi cuốn. Với tuổi đời còn rất trẻ, những thành công mà Dũng đạt được thật đáng khâm phục. Hãy đọc cuốn sách này nếu bạn muốn thử sức khởi nghiệp ngay từ khi còn ngồi trên giảng đường Đại học, bởi những chỉ dẫn từ việc xác định thái độ chuẩn mực tới các kiến thức và kỹ năng cần thiết mà Dũng chỉ ra trong cuốn sách chính là chìa khóa giúp bạn khởi nghiệp thành công.”

PGS.TS. Hà Văn Hội - Phó chủ nhiệm Khoa Kinh tế & Kinh doanh Quốc tế - Đại học Kinh tế - Đại học Quốc gia Hà Nội nhận xét: “Cuốn sách Bí mật của những đại gia sinh viên chính là sự đúc kết hành trình đi đến thành công của những sinh viên thành đạt và của chính tác giả. Cuốn sách không chỉ là cẩm nang khởi nghiệp cho các bạn trẻ mà còn là những lời khuyên rất bổ ích cho các bạn sinh viên, những người có mong muốn làm giàu bằng chính bàn tay và khối óc của mình.”

“Thành công trong kinh doanh đòi hỏi một thái độ tích cực và hết sức nghiêm túc, đòi hỏi niềm đam mê cháy bỏng, một tinh thần lao động hăng say... Đào Đức Dũng đã đạt được những điều đó và anh đã rất thành công trong việc truyền tải lại một cách sinh động và hấp dẫn những kinh nghiệm, những bí quyết học được trên con đường lập nghiệp của mình. Thật sự, đây là cuốn cẩm nang khởi nghiệp rất thực tế không chỉ dành cho các bạn sinh viên đam mê làm giàu ngay từ khi còn ngồi trên ghế nhà trường. Đó còn là những chia sẻ bổ ích cho các bạn trẻ năng động đang nỗ lực xây dựng sự nghiệp, hiện thực hóa những ước mơ của mình”.

Thông tin tác giả:

Tác giả Đào Đức Dũng - Anh khởi đầu bằng việc lập một câu lạc bộ, để rồi cùng với nó triển khai những dự án kinh doanh nhỏ, chia sẻ trong câu lạc bộ, tổ chức sự kiện... Anh cũng từng đi gia sư, cũng tạo ra những sản phẩm đơn giản nhưng đặc biệt để bán cho lớp của mình... Những bước khởi đầu của anh đơn giản, không quá đặc biệt, rất phù hợp để đa số sinh viên chúng ta có thể nắm bắt quy trình và học hỏi. Và rồi nếu bạn nỗ lực thực hiện những điều đó, chúng ta cũng sẽ ngỡ ngàng về thành công của chính mình.

Với khả năng diễn thuyết và gây ảnh hưởng với đám đông, bằng những phương pháp đào tạo mới mẻ và thực tế, cùng những trải nghiệm, những đúc rút thú vị sau các khóa tập huấn đặc biệt tại nước ngoài, diễn giả Đào Đức Dũng đã thay đổi tư duy, truyền động lực và cung cấp phương pháp thành công cho hơn 10.000 học viên, bao gồm học sinh tiểu học, trung học, sinh viên và các doanh nghiệp. Anh đang là một trong những diễn giả trẻ và triển vọng tại Việt Nam.

', 30, 2)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (56, N'Nhập Môn Kierkegaard', N'Nhiều tác giả', 16, CAST(N'2016-11-19T00:00:00.000' AS DateTime), 165, 2, 1, 1, CAST(65000 AS Decimal(18, 0)), NULL, N'Kierkegaard chống lại việc tóm lược ông vào bất kỳ loại phong trào hay triết học hàn lâm nào. Sau khi ông mất, trong nhiều năm các tác phẩm của ông ít được chú ý, cho mãi đến thế kỷ 20 chúng mới được các nhà triết học hiện sinh Karl Jaspers, Martin Heidegger, và Sartre phát hiện lại.', 10, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (57, N'Bộ Luật Hình Sự (Tái Bản 2016)', N'Quốc hội', 29, CAST(N'2016-06-06T00:00:00.000' AS DateTime), 512, 1, 1, 1, CAST(80000 AS Decimal(18, 0)), NULL, N'Luật này được thông qua tại Kỳ họp thứ 10 Quốc hội Khóa XIII và có hiệu lực thi hành từ ngày 01 tháng 7 năm 2016.
', 15, 17)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (58, N'Tranh Treo Tường Em Bé Mặt Trời - Tập 1', N'Nhiều tác giả', 22, CAST(N'2017-11-11T00:00:00.000' AS DateTime), 20, 1, 1, 1, CAST(50000 AS Decimal(18, 0)), NULL, N'Được chia thành các chủ đề khác nhau, mỗi cuốn sách Bộ tranh treo tường Em bé mặt trời hướng dẫn cho các bé từ 1 - 6 tuổi học cách nhận thức những đồ vật, sự việc, thế giới xung quanh mình bằng những hình ảnh sinh động, ngộ nghĩnh. Hơn thế nữa trong mỗi chủ đề đều có phần gợi ý cho cha mẹ phương pháp hướng dẫn trẻ học cách tiếp cận với những sự việc một cách dễ dàng và khoa học.', 20, 3)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (59, N'on Đường Dẫn Đến Phật Quả', N'Ringu Tulku', 30, CAST(N'2016-12-11T00:00:00.000' AS DateTime), 300, 2, 3, 1, CAST(90000 AS Decimal(18, 0)), NULL, N'Con Đường Dẫn Đến Phật Quả là một trong những sự giới thiệu tuyệt hảo cho giáo lý của Phật giáo Tây Tạng được sử dụng ngày nay. Bằng ngôn ngữ đơn giản, thông tuệ và với sự trong sáng trong khi sử dụng vô cùng tinh tế những hình ảnh lôi cuốn kinh nghiệm hàng ngày của ta, Ringu Tulku Rinpoche dẫn dắt ta khám phá những nguyên lý căn bản của con đường suy niệm và triết học của Phật giáo như nó được thực hành ở Tây Tạng.

Ở đây ngài rút ra tinh túy và đưa ra một luận giảng về Pháp Bảo của sự Giải thoát, một bản văn do Đức Gampopa, trưởng tử tâm linh của ẩn sĩ vĩ đại Milarepa, biên soạn.

Trong thể loại được coi là con đường tuần tự, cẩm nang của Gampopa là một tác phẩm kinh điển từng bước dẫn dắt ta tới sự giác ngộ. Những giai đoạn của con đường này tuyệt nhiên không giả tạo: chúng đánh dấu sự đâm chồi của quá trình chuyển hóa sâu xa, của sự phát triển làm cho một đứa trẻ tâm linh trở thành một người trưởng thành về mặt trí tuệ. Việc ráng sức theo đuổi một tiến trình một cách giả tạo có nguy cơ làm khô héo mầm chồi trí tuệ thậm chí trước khi nó có thể nở rộ. Vì thế điều tối quan trọng là hành giả phải trở nên quen thuộc với mỗi giai đoạn này và thực hành chúng cho tới khi đạt được một kinh nghiệm nội tâm đích thực. Hành giả Tây Tạng Shabkar khuyên ta đề phòng sự mất kiên nhẫn, là điều có thể khiến ta xao lãng phương diện trọng yếu này của con đường và ước muốn tới đích mà thậm chí không bước đi.', 25, 10)
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (1, N'Sách văn học')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (2, N'Sách kinh tế')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (3, N'Sách thiếu nhi ')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (4, N'Sách kỹ năng - Sống đẹp')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (5, N'Sách Bà mẹ - Em bé')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (6, N'Sách Giáo Khoa')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (7, N'Sách Học Ngoại Ngữ')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (8, N'Sách Tham Khảo')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (9, N'Từ Điển')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (10, N'Sách Kiến Thức Tổng Hợp')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (11, N'Giáo Trình Đại Học - Cao Đẳng')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (12, N'Truyện Tranh, Manga, Comic')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (13, N'Sách Lịch sử')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (14, N'Sách Khoa Học - Kỹ Thuật')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (15, N'Điện Ảnh - Nhạc - Họa')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (16, N'Sách Tôn Giáo - Tâm Linh')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (17, N'Sách Chính Trị - Pháp Lý')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (18, N'Sách Văn Hoá - Du Lịch')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (19, N'Sách Nông - Lâm - Ngư Nghiệp')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (20, N'Sách Công Nghệ Thông Tin')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (21, N'Sách Y Học')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (22, N'Tạp Chí - Catalogue')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (23, N'Sách Tâm lý - Giới tính')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (24, N'Sách Thường Thức - Đời Sống')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (25, N'Tự Truyện - Hồi Ký')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (26, N'Tiểu sử - Hồi ký')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (27, N'Truyện Ngắn')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (30, N'Tiểu Thuyết')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (31, N'Sách Tư Duy - Kĩ Năng Sống')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (32, N'Sách kỹ nắng - Sống đẹp')
INSERT [dbo].[TheLoai] ([TheLoaiID], [TenTheLoai]) VALUES (34, N'Sách Thường Thức - Đời Sống')
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
SET IDENTITY_INSERT [dbo].[TinhTrangDonHang] ON 

INSERT [dbo].[TinhTrangDonHang] ([TinhTrangDonHangID], [TinhTrangDonHang]) VALUES (1, N'Đang xử lý...')
INSERT [dbo].[TinhTrangDonHang] ([TinhTrangDonHangID], [TinhTrangDonHang]) VALUES (2, N'Chờ lấy hàng...')
INSERT [dbo].[TinhTrangDonHang] ([TinhTrangDonHangID], [TinhTrangDonHang]) VALUES (3, N'Đang giao...')
INSERT [dbo].[TinhTrangDonHang] ([TinhTrangDonHangID], [TinhTrangDonHang]) VALUES (4, N'Giao thành công!!!')
INSERT [dbo].[TinhTrangDonHang] ([TinhTrangDonHangID], [TinhTrangDonHang]) VALUES (5, N'Giao thất bại !')
SET IDENTITY_INSERT [dbo].[TinhTrangDonHang] OFF
ALTER TABLE [dbo].[Admin] ADD  CONSTRAINT [DF_Admin_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_TrangThaiDanhGia]  DEFAULT ((1)) FOR [TrangThaiDanhGia]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_TrangThai]  DEFAULT ((1)) FOR [TinhTrangDonHangID]
GO
ALTER TABLE [dbo].[ChiTietSachMerchant] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF__Customer__TrangT__4CA06362]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[DonHang] ADD  CONSTRAINT [DF_DonHang_TinhTrangDonHangID]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[HoaHong] ADD  CONSTRAINT [DF_HoaHong_TinhTrang]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Merchant] ADD  CONSTRAINT [DF_Merchant_KIPXu]  DEFAULT ((0)) FOR [SoLuongKIPXu]
GO
ALTER TABLE [dbo].[Merchant] ADD  CONSTRAINT [DF_Merchant_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Sach] ADD  CONSTRAINT [DF_Sach_TrangThai]  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK__ChiTietDo__DonHa__5629CD9C] FOREIGN KEY([DonHangID])
REFERENCES [dbo].[DonHang] ([DonHangID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK__ChiTietDo__DonHa__5629CD9C]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_Sach] FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_Sach]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_TinhTrangDonHang] FOREIGN KEY([TinhTrangDonHangID])
REFERENCES [dbo].[TinhTrangDonHang] ([TinhTrangDonHangID])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_TinhTrangDonHang]
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
ALTER TABLE [dbo].[DanhGiaCuaCustomer]  WITH CHECK ADD  CONSTRAINT [FK_DanhGiaCuaCustomer_ChiTietDonHang] FOREIGN KEY([ChiTIetDonHangID])
REFERENCES [dbo].[ChiTietDonHang] ([ChiTietDonHangID])
GO
ALTER TABLE [dbo].[DanhGiaCuaCustomer] CHECK CONSTRAINT [FK_DanhGiaCuaCustomer_ChiTietDonHang]
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
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_Customer]
GO
ALTER TABLE [dbo].[HinhAnh]  WITH CHECK ADD  CONSTRAINT [FK_HinhAnh_Sach] FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[HinhAnh] CHECK CONSTRAINT [FK_HinhAnh_Sach]
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
ALTER TABLE [dbo].[LichSuNangTin]  WITH CHECK ADD  CONSTRAINT [FK_NangTin_Sach] FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[LichSuNangTin] CHECK CONSTRAINT [FK_NangTin_Sach]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK__Merchant__GioiTi__440B1D61] FOREIGN KEY([GioiTinhID])
REFERENCES [dbo].[GioiTinh] ([GioiTinhID])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK__Merchant__GioiTi__440B1D61]
GO
ALTER TABLE [dbo].[Merchant]  WITH CHECK ADD  CONSTRAINT [FK_Merchant_GioiTinh] FOREIGN KEY([GioiTinhID])
REFERENCES [dbo].[GioiTinh] ([GioiTinhID])
GO
ALTER TABLE [dbo].[Merchant] CHECK CONSTRAINT [FK_Merchant_GioiTinh]
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
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_Merchant] FOREIGN KEY([MerchantID])
REFERENCES [dbo].[Merchant] ([MerchantID])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_Merchant]
GO
