USE [KnowledgeStore]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[ChiTietSachMerchant]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[CTBaiDang]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[DanhGiaCuaCustomer]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[DanhGiaCuaMerchant]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[DonHang]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[GiaTriKIPXu]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[GioiTinh]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[HinhAnh]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[HoaHong]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[LichSuCustomer]    Script Date: 15/11/2018 10:18:48 PM ******/
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
/****** Object:  Table [dbo].[LichSuGiaoDichXuCuaMerchant]    Script Date: 15/11/2018 10:18:49 PM ******/
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
/****** Object:  Table [dbo].[LichSuMerchant]    Script Date: 15/11/2018 10:18:49 PM ******/
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
/****** Object:  Table [dbo].[LoaiBia]    Script Date: 15/11/2018 10:18:49 PM ******/
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
/****** Object:  Table [dbo].[Merchant]    Script Date: 15/11/2018 10:18:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Merchant](
	[MerchantID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[HoTen] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[GioiTinhID] [int] NOT NULL,
	[SoLuongKIPXu] [int] NOT NULL,
	[NgayTao] [datetime] NOT NULL,
 CONSTRAINT [PK__Merchant__04416563C82F31AF] PRIMARY KEY CLUSTERED 
(
	[MerchantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NangTin]    Script Date: 15/11/2018 10:18:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NangTin](
	[NangTinID] [int] IDENTITY(1,1) NOT NULL,
	[SachID] [int] NOT NULL,
	[NgayNang] [datetime] NOT NULL,
 CONSTRAINT [PK__NangTin__36B5D6E180277628] PRIMARY KEY CLUSTERED 
(
	[NangTinID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaXuatBan]    Script Date: 15/11/2018 10:18:49 PM ******/
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
/****** Object:  Table [dbo].[Sach]    Script Date: 15/11/2018 10:18:49 PM ******/
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
/****** Object:  Table [dbo].[TheLoai]    Script Date: 15/11/2018 10:18:49 PM ******/
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
/****** Object:  Table [dbo].[TinhTrangDonHang]    Script Date: 15/11/2018 10:18:49 PM ******/
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
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [Email], [IDGoogle], [IDFacebook], [HoTen], [DiaChi], [SoDienThoai], [MatKhauMaHoa], [GioiTinhID], [NgayTao], [TrangThai]) VALUES (1, N'trungnguyen.1997270710@gmail.com', N'110711004994766166222', NULL, N'nguyen Trung', NULL, NULL, NULL, NULL, CAST(N'2018-11-15T20:37:05.693' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
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

INSERT [dbo].[Merchant] ([MerchantID], [Email], [HoTen], [DiaChi], [GioiTinhID], [SoLuongKIPXu], [NgayTao]) VALUES (1, N'xuanbach@gmail.com', N'Xuân Bạch', N'12 Trần Hưng Đạo Phường 5 Quận 5', 1, 0, CAST(N'2018-10-05T00:00:00.000' AS DateTime))
INSERT [dbo].[Merchant] ([MerchantID], [Email], [HoTen], [DiaChi], [GioiTinhID], [SoLuongKIPXu], [NgayTao]) VALUES (3, N'tohuu@gmail.com', N'Tố Hữu', N'1 Hùng Vương P1 Q5', 1, 0, CAST(N'2018-10-04T00:00:00.000' AS DateTime))
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
SET IDENTITY_INSERT [dbo].[NhaXuatBan] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (1, N'Chào Mừng Đến Với N.H.K!', N'Tatsuhiko Takimoto', 2, CAST(N'2015-08-01T00:00:00.000' AS DateTime), 314, 2, 1, 1, CAST(80000 AS Decimal(18, 0)), NULL, N'Ném bừa một hòn đá ra đường có khi cũng trúng một hikikomori… Dĩ nhiên điều này khó lòng xảy ra, vì hikikomori có ra đường đâu.

Bước sang thế kỷ 21, hiện tượng hikikomori bất ngờ bùng nổ ở Nhật Bản. Hikikomori là những người chỉ sống quanh quẩn trong phòng, không làm việc, không giao tiếp xã hội, cứ mãi mê man với cuộc sống ảo trên mạng, từ đó dẫn đến những mục ruỗng tâm hồn.

Sato là một thanh niên 22 tuổi nhưng hết bốn năm trong cuộc đời cậu đã sống như một kẻ khép kín, không giao tiếp, kỳ thị đời sống cộng đồng. Lối sống đó đáng ra sẽ tù đọng trôi đi mãi như thế trong căn phòng trọ bừa bộn nếu một ngày kia cậu không gặp một cô gái lạ lùng - xuất hiện trong trắng như thiên thần nhưng toàn thốt ra những lời kỳ quặc. Cô tự nhận có thể chữa chứng hikikomori cho cậu, miễn là cậu bằng lòng ký vào một hợp đồng do cô thảo.

Liệu người con gái thiên thần này có thể thay đổi số mệnh của Sato? Một điểm thú vị nữa là ngoài vấn nạn hikikomori, câu chuyện còn lôi tuột ra trước mặt người đọc một loạt vấn đề nổi cộm trong xã hội hiện đại như anime otaku, mọt game online, tự tử qua mạng... Tất cả được khai thác một cách bi kịch nhưng cũng không kém phần hài hước, và điều đó khiến câu chuyện có được một điểm nhìn sâu sắc: bàng quan, giễu cợt mà cũng nhân ái vô cùng.', 8, 1)
INSERT [dbo].[Sach] ([SachID], [TenSach], [TacGia], [NhaXuatBanID], [NgayXuatBan], [SoTrang], [LoaiBiaID], [MerchantID], [TrangThai], [GiaTien], [GiaKhuyenMai], [MoTa], [SoLuong], [TheLoaiID]) VALUES (2, N'Khi Hơi Thở Hóa Thinh Không', N'Paul Kalanithi', 3, CAST(N'2017-07-01T00:00:00.000' AS DateTime), 236, 2, 1, 1, CAST(76300 AS Decimal(18, 0)), NULL, N'Khi Hơi Thở Hóa Thinh Không là tự truyện của một bác sĩ bị mắc bệnh ung thư phổi. Trong cuốn sách này, tác giả đã chia sẻ những trải nghiệm từ khi mới bắt đầu học ngành y, tiếp xúc với bệnh nhân cho tới khi phát hiện ra mình bị ung thư và phải điều trị lâu dài.

Kalanithi rất yêu thích văn chương nên câu chuyện của anh đã được thuật lại theo một phong cách mượt mà, dung dị và đầy cảm xúc. Độc giả cũng được hiểu thêm về triết lý sống, triết lý nghề y của Kalanithi, thông qua ký ức về những ngày anh còn là sinh viên, rồi thực tập, cho đến khi chính thức hành nghề phẫu thuật thần kinh. “Đối với bệnh nhân và gia đình, phẫu thuật não là sự kiện bi thảm nhất mà họ từng phải đối mặt và nó có tác động như bất kỳ một biến cố lớn lao trong đời. Trong những thời điểm nguy cấp đó, câu hỏi không chỉ đơn thuần là sống hay chết mà còn là cuộc sống nào đáng sống.” – Kalanithi luôn biết cách đưa vào câu chuyện những suy nghĩ sâu sắc và đầy sự đồng cảm như thế.

Bạn bè và gia đình đã dành tặng những lời trìu mến nhất cho con người đáng kính trọng cả về tài năng lẫn nhân cách này. Dù không thể vượt qua cơn bệnh nan y, nhưng thông điệp của tác giả sẽ còn khiến người đọc nhớ mãi.', 10, 25)
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
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
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
ALTER TABLE [dbo].[NangTin]  WITH CHECK ADD  CONSTRAINT [FK_NangTin_Sach] FOREIGN KEY([SachID])
REFERENCES [dbo].[Sach] ([SachID])
GO
ALTER TABLE [dbo].[NangTin] CHECK CONSTRAINT [FK_NangTin_Sach]
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
