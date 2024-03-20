USE [DuAn1]
GO
/****** Object:  Table [dbo].[ChatLieu]    Script Date: 09/12/2023 11:04:13 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatLieu](
	[idChatLieu] [int] IDENTITY(1,1) NOT NULL,
	[maChatLieu] [nchar](20) NOT NULL,
	[tenChatLieu] [nvarchar](100) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chiTietSanPham]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chiTietSanPham](
	[idCTSP] [int] IDENTITY(1,1) NOT NULL,
	[idSanPham] [int] NOT NULL,
	[idThuongHieu] [int] NOT NULL,
	[idKhoiLuong] [int] NOT NULL,
	[idDonViTinh] [int] NOT NULL,
	[idXuatXu] [int] NOT NULL,
	[idChatLieu] [int] NOT NULL,
	[idLoaiSanPham] [int] NOT NULL,
	[soLuongTon] [int] NOT NULL,
	[donGia] [float] NOT NULL,
	[barcode] [nchar](50) NOT NULL,
	[ghiChu] [nvarchar](500) NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idCTSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[idDonViTinh] [int] IDENTITY(1,1) NOT NULL,
	[maDonViTinh] [nchar](20) NOT NULL,
	[tenDonViTinh] [nvarchar](100) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idDonViTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HinhThucThanhToan]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HinhThucThanhToan](
	[idHTTT] [int] IDENTITY(1,1) NOT NULL,
	[maHTTT] [nchar](20) NULL,
	[tenHTTT] [nvarchar](50) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[idHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[idKhachHang] [int] NULL,
	[idNhanVien] [int] NULL,
	[idHTTT] [int] NULL,
	[idTTHD] [int] NULL,
	[idVoucher] [int] NULL,
	[giamGiaDiemKH] [float] NULL,
	[thueVat] [int] NULL,
	[tongTienHang] [float] NULL,
	[ngayTao] [date] NULL,
	[KhachTraTM] [float] NULL,
	[KhachTraCK] [float] NULL,
	[tienThua] [float] NULL,
	[tenNguoiNhan] [nvarchar](100) NULL,
	[sdtNguoiNhan] [nchar](11) NULL,
	[diaChiNguoiNhan] [nvarchar](500) NULL,
	[ngayShipDuTinh] [date] NULL,
	[ngayDenDuTinh] [date] NULL,
	[phiShip] [float] NULL,
	[ghiChu] [nvarchar](500) NULL,
	[maHoaDon] [nvarchar](500) NULL,
	[maGiaoDich] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoaDonChiTiet]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoaDonChiTiet](
	[idHoaDonChiTiet] [int] IDENTITY(1,1) NOT NULL,
	[idHoaDon] [int] NULL,
	[idSPCT] [int] NULL,
	[soLuong] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoaDonChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[idKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[maKhachHang] [nchar](20) NOT NULL,
	[tenKhachHang] [nvarchar](100) NOT NULL,
	[email] [nchar](100) NOT NULL,
	[diaChi] [nvarchar](500) NOT NULL,
	[sdt] [nchar](11) NOT NULL,
	[ngayHetHan] [date] NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoiLuong]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoiLuong](
	[idKhoiLuong] [int] IDENTITY(1,1) NOT NULL,
	[maKhoiLuong] [nchar](20) NOT NULL,
	[tenKhoiLuong] [nvarchar](100) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idKhoiLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[idLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[maLoaiSanPham] [nchar](20) NOT NULL,
	[tenLoaiSanPham] [nvarchar](100) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[idNhanVien] [int] IDENTITY(1,1) NOT NULL,
	[maNhanVien] [nchar](20) NOT NULL,
	[tenNhanVien] [nvarchar](100) NOT NULL,
	[gioiTinh] [bit] NULL,
	[ngaySinh] [date] NULL,
	[diaChi] [nvarchar](500) NOT NULL,
	[sdt] [nchar](11) NOT NULL,
	[CCCD] [nchar](12) NOT NULL,
	[email] [nchar](100) NOT NULL,
	[trangThai] [bit] NULL,
	[chucVu] [bit] NULL,
	[matKhau] [nchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[idSanPham] [int] IDENTITY(1,1) NOT NULL,
	[maSanPham] [nchar](20) NOT NULL,
	[tenSanPham] [nvarchar](100) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamHoan]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamHoan](
	[idSanPhamHoan] [int] IDENTITY(1,1) NOT NULL,
	[idCTSP] [int] NULL,
	[soLuong] [int] NULL,
	[ngayTra] [date] NULL,
	[maHoaDon] [nchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idSanPhamHoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[idThuongHieu] [int] IDENTITY(1,1) NOT NULL,
	[maThuongHieu] [nchar](20) NOT NULL,
	[tenThuongHieu] [nvarchar](100) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiHoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiHoaDon](
	[idTTHD] [int] IDENTITY(1,1) NOT NULL,
	[maTTHD] [nchar](20) NULL,
	[tenTTHD] [nvarchar](50) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voucher]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voucher](
	[idVoucher] [int] IDENTITY(1,1) NOT NULL,
	[maVoucher] [nvarchar](100) NOT NULL,
	[loaiVoucher] [bit] NULL,
	[giaTri] [float] NULL,
	[ngayBatDau] [date] NULL,
	[ngayKetThuc] [date] NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
	[soLuong] [int] NULL,
	[tenVoucher] [nvarchar](50) NULL,
	[giaTriToiThieu] [float] NULL,
	[giaTriToiDa] [float] NULL,
	[trangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XuatXu]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XuatXu](
	[idXuatXu] [int] IDENTITY(1,1) NOT NULL,
	[maXuatXu] [nchar](20) NOT NULL,
	[tenXuatXu] [nvarchar](100) NOT NULL,
	[createdAt] [date] NULL,
	[createdBy] [int] NOT NULL,
	[updatedAt] [date] NULL,
	[updatedBy] [int] NULL,
	[deleted] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idXuatXu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatLieu] ON 

INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'CL1                 ', N'Nhựa', CAST(N'2023-11-11' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'CL2                 ', N'Kim Loại', CAST(N'2023-09-15' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'CL3                 ', N'Sắt', CAST(N'2023-08-25' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'CL4                 ', N'Gỗ', CAST(N'2023-07-10' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (6, N'CL5                 ', N'Thủy Tinh', CAST(N'2023-11-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (7, N'CL6                 ', N'Đồng', CAST(N'2023-12-04' AS Date), 8, CAST(N'2023-12-04' AS Date), 8, 0)
INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (8, N'CL7                 ', N'Bzone', CAST(N'2023-12-06' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[ChatLieu] ([idChatLieu], [maChatLieu], [tenChatLieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (9, N'CL8                 ', N'Da Cá Sấu', CAST(N'2023-12-07' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ChatLieu] OFF
GO
SET IDENTITY_INSERT [dbo].[chiTietSanPham] ON 

INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, 1, 1, 1, 1, 1, 1, 2, 20, 600000, N'124563257891                                      ', N'đẹp', CAST(N'2023-10-01' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, 2, 1, 1, 1, 1, 1, 1, 65, 600000, N'985697425633                                      ', N'đẹp', CAST(N'2023-10-01' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, 3, 1, 1, 1, 1, 1, 1, 71, 600000, N'985697425255                                      ', N'đẹp', CAST(N'2023-10-01' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, 4, 1, 1, 1, 1, 1, 1, 81, 600000, N'123456789214                                      ', N'đẹp', CAST(N'2023-10-01' AS Date), 8, NULL, NULL, 1)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (6, 1, 1, 1, 1, 1, 1, 1, 84, 100000, N'123524625847                                      ', N'a', CAST(N'2023-11-18' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (7, 11, 1, 1, 1, 1, 1, 1, 75, 24000, N'123456789654                                      ', N'đẹp', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (8, 13, 1, 1, 1, 1, 1, 1, 86, 700000, N'254789642531                                      ', N'đẹp', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (10, 16, 3, 1, 1, 1, 3, 13, 88, 150000, N'114568726957                                      ', N'đẹp', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (11, 22, 1, 1, 1, 1, 1, 1, 20, 125000, N'180346677655                                      ', N'Không', CAST(N'2023-12-04' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (12, 5, 1, 3, 1, 6, 3, 1, 22, 320000, N'511969211936                                      ', N'không', CAST(N'2023-12-04' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (13, 22, 1, 1, 1, 4, 1, 1, 8, 100000, N'765384023179                                      ', N'không', CAST(N'2023-12-05' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (15, 16, 5, 8, 5, 11, 7, 15, 8, 10000, N'650040016117                                      ', N'tốt', CAST(N'2023-12-05' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (23, 12, 7, 9, 1, 6, 8, 5, 18, 200000, N'399136599971                                      ', N'good', CAST(N'2023-12-07' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (24, 12, 7, 9, 6, 11, 8, 5, 13, 100000, N'823640497376                                      ', N'tốt', CAST(N'2023-12-07' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (25, 22, 7, 9, 6, 11, 8, 16, 1, 20000, N'224031840620                                      ', N'tốt', CAST(N'2023-12-07' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (26, 11, 8, 8, 6, 15, 9, 16, 17, 20, N'168927766859                                      ', N'good', CAST(N'2023-12-07' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (27, 16, 9, 6, 7, 15, 9, 15, 20, 200000, N'108363887413                                      ', N'dep', CAST(N'2023-12-08' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (28, 4, 9, 9, 7, 15, 9, 16, 20, 120000, N'259107656824                                      ', N'đẹp', CAST(N'2023-12-08' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[chiTietSanPham] ([idCTSP], [idSanPham], [idThuongHieu], [idKhoiLuong], [idDonViTinh], [idXuatXu], [idChatLieu], [idLoaiSanPham], [soLuongTon], [donGia], [barcode], [ghiChu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (30, 4, 9, 9, 7, 15, 9, 16, 41, 200000, N'229763582859                                      ', N'không', CAST(N'2023-12-08' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[chiTietSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[DonViTinh] ON 

INSERT [dbo].[DonViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'DVT1                ', N'Cái', CAST(N'2023-10-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[DonViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'DVT2                ', N'Mét', CAST(N'2023-09-15' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[DonViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'DVT3                ', N'Kilogram', CAST(N'2023-08-25' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[DonViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'DVT4                ', N'Lít', CAST(N'2023-07-10' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[DonViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'DVT5                ', N'Gram', CAST(N'2023-11-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[DonViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (6, N'DVT6                ', N'Chiếc', CAST(N'2023-12-06' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[DonViTinh] ([idDonViTinh], [maDonViTinh], [tenDonViTinh], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (7, N'DVT7                ', N'Con', CAST(N'2023-12-08' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[DonViTinh] OFF
GO
SET IDENTITY_INSERT [dbo].[HinhThucThanhToan] ON 

INSERT [dbo].[HinhThucThanhToan] ([idHTTT], [maHTTT], [tenHTTT], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'HTTT001             ', N'Tiền Mặt', CAST(N'2023-01-01' AS Date), 1, CAST(N'2023-01-01' AS Date), 1, 0)
INSERT [dbo].[HinhThucThanhToan] ([idHTTT], [maHTTT], [tenHTTT], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'HTTT002             ', N'Chuyển Khoản', CAST(N'2023-01-01' AS Date), 1, CAST(N'2023-01-01' AS Date), 1, 0)
INSERT [dbo].[HinhThucThanhToan] ([idHTTT], [maHTTT], [tenHTTT], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'HTTT003             ', N'Cả Hai', CAST(N'2023-01-01' AS Date), 1, CAST(N'2023-01-01' AS Date), 1, 0)
SET IDENTITY_INSERT [dbo].[HinhThucThanhToan] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (10, 1, 1, 1, 2, NULL, 0, 10, 660000, CAST(N'2023-11-16' AS Date), 700000, 0, 40000, N'John Doe', N'0123456789 ', N'123 Main St, City', CAST(N'2023-11-18' AS Date), CAST(N'2023-11-20' AS Date), 50, N'Sample order 1', N'HÐ10', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (11, 1, 1, 1, 2, NULL, 0, 10, 660000, CAST(N'2022-05-11' AS Date), 700000, 0, 40000, N'John Doe', N'0123456789 ', N'123 Main St, City', CAST(N'2023-11-18' AS Date), CAST(N'2023-11-20' AS Date), 50, N'Sample order 1', N'HÐ11', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (12, 3, 1, 1, 2, NULL, 0, 10, 1320000, CAST(N'2023-11-20' AS Date), 1350000, 0, 30000, N'John Doe', N'0123456789 ', N'123 Main St, City', CAST(N'2023-11-18' AS Date), CAST(N'2023-11-20' AS Date), 50, N'Sample order 1', N'HÐ12', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (14, 2, 1, 1, 2, NULL, 0, 10, 660000, CAST(N'2023-11-22' AS Date), 700000, 0, 40000, N'John Doe', N'0123456789 ', N'123 Main St, City', CAST(N'2023-11-18' AS Date), CAST(N'2023-11-20' AS Date), 50, NULL, N'HÐ14', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (21, 1, 8, 1, 2, NULL, 0, 5, 1710000, CAST(N'2023-11-27' AS Date), 1800000, 0, 90000, N'not', N'not        ', N'not', NULL, NULL, 0, N'not', N'HĐ16', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (24, 1, 8, 1, 2, NULL, 0, 5, 190000, CAST(N'2023-11-27' AS Date), 200000, 0, 10000, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'HĐ19', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (26, 1, 8, 1, 2, NULL, 0, 5, 2280000, CAST(N'2023-11-27' AS Date), 3000000, 0, 720000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ21', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (28, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-11-27' AS Date), 600000, 0, 30000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ22', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (30, 14, 8, 3, 2, NULL, 0, 5, 2755000, CAST(N'2023-11-27' AS Date), 2500000, 300000, 45000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ24', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (31, 1, 8, 1, 2, NULL, 0, 5, 190000, CAST(N'2023-11-27' AS Date), 200000, 0, 10000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ25', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (35, 9, 8, 1, 2, NULL, 10000, 5, 180000, CAST(N'2023-11-27' AS Date), 200000, 0, 20000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ26', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (36, 1, 8, 1, 2, NULL, 0, 5, 3135000, CAST(N'2023-11-27' AS Date), 3200000, 0, 65000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ27', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (37, 1, 8, 3, 2, NULL, 0, 5, 1995000, CAST(N'2023-11-27' AS Date), 1500000, 500000, 5000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ28', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (39, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-11-27' AS Date), 600000, 0, 30000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ29', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (40, 9, 8, 3, 2, NULL, 10000, 5, 370000, CAST(N'2023-11-27' AS Date), 350000, 20000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ30', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (41, 1, 8, 1, 2, NULL, 0, 5, 1805000, CAST(N'2023-11-27' AS Date), 1850000, 0, 45000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ31', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (42, 1, 8, 1, 2, NULL, 0, 5, 1615000, CAST(N'2023-11-27' AS Date), 1700000, 0, 85000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ32', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (43, 9, 8, 3, 2, NULL, 10000, 5, 1225000, CAST(N'2023-11-27' AS Date), 1000000, 250000, 25000, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ33', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (44, 1, 8, 1, 2, NULL, 0, 5, 1235000, CAST(N'2023-11-27' AS Date), 1300000, 0, 65000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ34', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (45, 1, 8, 3, 2, NULL, 0, 5, 3040000, CAST(N'2023-11-27' AS Date), 3000000, 40000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ35', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (46, 1, 8, 1, 2, NULL, 0, 5, 190000, CAST(N'2023-11-27' AS Date), 200000, 0, 10000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ36', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (47, 1, 8, 1, 2, NULL, 0, 5, 95000, CAST(N'2023-11-27' AS Date), 100000, 0, 5000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ37', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (48, 1, 8, 1, 2, NULL, 0, 5, 190000, CAST(N'2023-11-27' AS Date), 200000, 0, 10000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ38', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (49, 9, 8, 3, 2, NULL, 10000, 5, 275000, CAST(N'2023-11-27' AS Date), 250000, 25000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ39', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (50, 1, 8, 3, 2, NULL, 0, 5, 1710000, CAST(N'2023-11-27' AS Date), 1700000, 10000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ40', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (52, 9, 8, 3, 2, NULL, 10000, 5, 1225000, CAST(N'2023-11-27' AS Date), 1000000, 225000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ42', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (53, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-11-27' AS Date), 800000, 0, 230000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ43', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (54, 1, 8, 1, 2, NULL, 0, 5, 1235000, CAST(N'2023-11-27' AS Date), 1500000, 0, 265000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ44', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (58, 9, 8, 3, 2, NULL, 10000, 5, 275000, CAST(N'2023-11-27' AS Date), 250000, 25000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ46', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (59, 1, 8, 1, 2, NULL, 0, 5, 665000, CAST(N'2023-11-27' AS Date), 665000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ47', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (61, 9, 8, 3, 2, NULL, 10000, 5, 275000, CAST(N'2023-11-27' AS Date), 250000, 25000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ49', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (62, 1, 8, 1, 2, NULL, 0, 5, 1140000, CAST(N'2023-11-27' AS Date), 1140000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ50', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (63, 1, 8, 1, 2, NULL, 0, 5, 1710000, CAST(N'2023-11-27' AS Date), 1710000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ51', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (64, 1, 8, 1, 2, NULL, 0, 5, 2280000, CAST(N'2023-11-28' AS Date), 2280000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ52', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (65, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-11-28' AS Date), 600000, 0, 30000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ53', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (66, 1, 8, 1, 2, NULL, 0, 5, 665000, CAST(N'2023-11-28' AS Date), 665000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ54', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (77, 2, 8, 1, 2, NULL, 0, 5, 1140000, CAST(N'2023-11-28' AS Date), 1140000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ57', N'MBHN00124527211                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (78, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-11-28' AS Date), 570000, 0, 0, N'Hoàng Cửu Bảo', N'0343144320 ', N'Hà Nội', NULL, NULL, 20000, N'', N'HĐ58', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (79, 1, 8, 2, 2, NULL, 0, 5, 570000, CAST(N'2023-11-28' AS Date), 0, 570000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ59', N'MBHN001204020108                                  ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (80, 1, 8, 3, 4, NULL, 0, 5, 570000, CAST(N'2023-11-28' AS Date), 285000, 285000, 0, N'Hoàng Thị Nhíp', N'0343144256 ', N'Hà Nội', CAST(N'2023-11-28' AS Date), CAST(N'2023-11-29' AS Date), 15000, N'', N'HĐ60', N'MBHN002145632539                                  ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (81, 1, 8, 1, 4, NULL, 0, 5, 1710000, CAST(N'2023-11-28' AS Date), 1710000, 0, 0, N'Hoàng Văn Thành', N'0262511781 ', N'Hà Nội', CAST(N'2023-11-29' AS Date), CAST(N'2023-11-29' AS Date), 10000, N'', N'HĐ61', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (82, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-11-29' AS Date), 570000, 0, 0, N'Thái Vũ', N'0341256785 ', N'Hà Nội', CAST(N'2023-11-29' AS Date), CAST(N'2023-11-30' AS Date), 50000, N'', N'HĐ62', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (83, 1, 8, 2, 2, NULL, 0, 5, 570000, CAST(N'2023-11-29' AS Date), 0, 570000, 0, N'Thái', N'0341256785 ', N'Hà Nội', CAST(N'2023-11-29' AS Date), CAST(N'2023-11-30' AS Date), 10000, N'', N'HĐ63', N'MBHN001240576895                                  ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (104, 1, 8, 2, 2, NULL, 0, 5, 1235000, CAST(N'2023-11-29' AS Date), 0, 1350000, 115000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ67', N'MBHN001204050697                                  ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (105, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-11-29' AS Date), 570000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ68', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (106, 1, 8, 1, 2, 8, 0, 5, 513000, CAST(N'2023-11-29' AS Date), 513000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ69', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (119, 1, 8, 1, 2, 9, 0, 5, 912000, CAST(N'2023-12-02' AS Date), 912000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ71', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (120, 1, 8, 3, 2, NULL, 0, 5, 570000, CAST(N'2023-12-03' AS Date), 300000, 270000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ72', N'MBHN001020040205                                  ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (122, 1, 8, 2, 2, NULL, 0, 5, 1140000, CAST(N'2023-12-03' AS Date), 0, 1140000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ74', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (123, 1, 8, 2, 2, NULL, 0, 5, 1140000, CAST(N'2023-12-03' AS Date), 0, 1140000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ75', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (124, 1, 8, 1, 2, 9, 0, 5, 1368000, CAST(N'2023-12-03' AS Date), 1368000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'không', N'HĐ76', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (125, 2, 8, 3, 2, NULL, 0, 5, 1140000, CAST(N'2023-12-03' AS Date), 500000, 640000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ77', N'MBHN0012354651                                    ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (126, 2, 8, 3, 2, NULL, 0, 5, 570000, CAST(N'2023-12-03' AS Date), 300000, 270000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ78', N'MBHN02014354312                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (127, 1, 8, 1, 2, NULL, 0, 5, 1257800, CAST(N'2023-12-03' AS Date), 1258000, 0, 200, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ79', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (134, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-12-03' AS Date), 570000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ81', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (137, 1, 8, 1, 2, NULL, 0, 5, 570000, CAST(N'2023-12-03' AS Date), 570000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ82', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (138, 2, 8, 1, 2, NULL, 0, 5, 853100, CAST(N'2023-12-03' AS Date), 853100, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ83', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (147, 1, 8, 1, 2, NULL, 0, 5, 315000, CAST(N'2023-12-04' AS Date), 315000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ89', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (150, 1, 8, 3, 2, NULL, 0, 5, 1805000, CAST(N'2023-12-05' AS Date), 1500000, 310000, 5000, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ92', N'MB10                                              ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (151, 2, 8, 1, 2, NULL, 0, 5, 157500, CAST(N'2023-12-05' AS Date), 157500, 0, 0, N'Nga', N'0999999999 ', N'Hà Nội', CAST(N'2023-12-05' AS Date), CAST(N'2023-12-06' AS Date), 20000, N'', N'HĐ93', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (152, 1, 8, 1, 2, 9, 0, 5, 1323000, CAST(N'2023-12-06' AS Date), 1323000, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ94', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (156, 2, 8, 3, 2, NULL, 0, 5, 40000, CAST(N'2023-12-07' AS Date), 20000, 20000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ98', N'HNMB001023121                                     ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (157, 3, 8, 1, 2, NULL, 0, 5, 210000, CAST(N'2023-12-07' AS Date), 210000, 0, 0, N'Nguyễn Thị Oanh', N'0343144320 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 20000, N'', N'HĐ99', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (158, 1, 8, 2, 2, NULL, 0, 5, 105000, CAST(N'2023-12-07' AS Date), 0, 105000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ100', N'MBHN0001232212                                    ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (159, 1, 8, 3, 2, NULL, 0, 5, 10500, CAST(N'2023-12-07' AS Date), 5000, 5500, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ101', N'MBHN0010232123                                    ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (160, 1, 8, 1, 2, NULL, 0, 5, 315000, CAST(N'2023-12-07' AS Date), 315000, 0, 0, N'Phạm Văn Thái', N'0214262578 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 20000, N'không', N'HĐ102', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (161, 1, 8, 3, 2, NULL, 0, 5, 336000, CAST(N'2023-12-07' AS Date), 200000, 136000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ103', N'HNMB00120301023                                   ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (162, 1, 8, 1, 2, NULL, 0, 5, 735000, CAST(N'2023-12-07' AS Date), 735000, 0, 0, N'Phạm Thị Dung', N'0362489562 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 20000, N'', N'HĐ104', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (163, 1, 8, 2, 2, NULL, 0, 5, 25200, CAST(N'2023-12-07' AS Date), 0, 25200, 0, N'Nguyễn Văn Thành', N'0314265879 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 15000, N'', N'HĐ105', N'HNLDKJDDFFF1                                      ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (164, 1, 8, 1, 2, NULL, 0, 5, 10500, CAST(N'2023-12-07' AS Date), 10500, 0, 0, N'Hương', N'0365896425 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 20000, N'', N'HĐ106', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (165, 1, 8, 1, 2, 15, 0, 5, 10500, CAST(N'2023-12-07' AS Date), 11000, 0, 500, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ107', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (166, 1, 8, 1, 2, NULL, 0, 5, 10500, CAST(N'2023-12-07' AS Date), 10500, 0, 0, N'a', N'0343144320 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 20000, N'', N'HĐ108', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (167, 1, 8, 1, 2, 15, 0, 5, 10500, CAST(N'2023-12-07' AS Date), 10500, 0, 0, N'a', N'0352633362 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 20000, N'', N'HĐ109', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (168, 1, 8, 1, 2, 15, 0, 5, 10500, CAST(N'2023-12-07' AS Date), 10500, 0, 0, N'a', N'0363255632 ', N'Hà Nội', CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), 15000, N'', N'HĐ110', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (169, 1, 8, 2, 2, NULL, 0, 5, 210000, CAST(N'2023-12-08' AS Date), 0, 210000, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ111', N'MBHN001204020102                                  ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (170, 1, 8, 1, 2, 9, 0, 5, 18900, CAST(N'2023-12-08' AS Date), 18900, 0, 0, N'not', N'not        ', N'not', NULL, NULL, 0, N'', N'HĐ112', N'not                                               ')
INSERT [dbo].[HoaDon] ([idHoaDon], [idKhachHang], [idNhanVien], [idHTTT], [idTTHD], [idVoucher], [giamGiaDiemKH], [thueVat], [tongTienHang], [ngayTao], [KhachTraTM], [KhachTraCK], [tienThua], [tenNguoiNhan], [sdtNguoiNhan], [diaChiNguoiNhan], [ngayShipDuTinh], [ngayDenDuTinh], [phiShip], [ghiChu], [maHoaDon], [maGiaoDich]) VALUES (171, 1, 8, 2, 2, 9, 0, 5, 207900, CAST(N'2023-12-08' AS Date), 0, 207900, 0, N'b', N'0343144320 ', N'hn', CAST(N'2023-12-08' AS Date), CAST(N'2023-12-09' AS Date), 20000, N'', N'HĐ113', N'hnmb012327431231                                  ')
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[hoaDonChiTiet] ON 

INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (16, 10, 5, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (17, 11, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (18, 12, 1, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (20, 14, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (28, 21, 1, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (33, 24, 6, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (36, 26, 3, 3)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (37, 26, 4, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (38, 28, 6, 3)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (39, 28, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (40, 30, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (41, 30, 5, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (44, 31, 6, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (45, 35, 6, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (46, 37, 5, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (47, 37, 4, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (48, 36, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (49, 36, 3, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (50, 40, 6, 4)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (51, 42, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (52, 41, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (53, 41, 6, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (54, 39, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (55, 43, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (56, 43, 5, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (57, 45, 3, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (58, 45, 4, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (59, 44, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (60, 44, 3, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (61, 46, 6, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (62, 47, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (63, 47, 5, 3)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (64, 48, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (65, 48, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (66, 49, 6, 3)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (69, 50, 3, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (70, 50, 4, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (71, 52, 3, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (72, 52, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (73, 54, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (74, 54, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (75, 53, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (78, 58, 6, 3)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (81, 59, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (82, 59, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (83, 61, 6, 3)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (84, 63, 5, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (85, 63, 3, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (86, 62, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (87, 62, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (88, 65, 5, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (89, 64, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (90, 64, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (91, 64, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (92, 66, 8, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (97, 77, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (98, 77, 5, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (99, 79, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (100, 78, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (101, 80, 4, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (102, 81, 1, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (103, 81, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (104, 82, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (105, 83, 4, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (107, 104, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (108, 104, 8, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (109, 105, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (110, 106, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (112, 119, 1, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (114, 122, 1, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (115, 123, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (116, 125, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (117, 126, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (118, 124, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (119, 124, 3, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (120, 127, 6, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (121, 127, 4, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (122, 127, 7, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (123, 134, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (124, 137, 1, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (125, 138, 7, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (126, 138, 10, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (127, 138, 8, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (140, 147, 10, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (141, 150, 1, 3)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (142, 150, 13, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (143, 151, 10, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (144, 152, 8, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (148, 156, 25, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (149, 157, 24, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (150, 158, 24, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (151, 159, 15, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (152, 160, 10, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (153, 161, 12, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (154, 162, 8, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (155, 163, 7, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (156, 164, 25, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (157, 165, 25, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (158, 166, 25, 1)
GO
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (159, 167, 25, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (160, 168, 25, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (161, 169, 24, 2)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (162, 170, 25, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (163, 171, 25, 1)
INSERT [dbo].[hoaDonChiTiet] ([idHoaDonChiTiet], [idHoaDon], [idSPCT], [soLuong]) VALUES (164, 171, 23, 1)
SET IDENTITY_INSERT [dbo].[hoaDonChiTiet] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'KH1                 ', N'Khách Lẻ', N'not                                                                                                 ', N'not', N'not        ', NULL, NULL, 1, NULL, 8, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'KH2                 ', N'Trần Văn B12', N'tvb123@email.com                                                                                    ', N'456 Đường XYZ, Quận ABC, Thành Phố HCM2', N'0987654311 ', CAST(N'2023-02-01' AS Date), CAST(N'2023-01-02' AS Date), 2, CAST(N'2023-11-26' AS Date), 8, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'KH3                 ', N'Lê Thị C', N'ltc@email.com                                                                                       ', N'789 Đường LMN, Quận DEF, Thành Phố HCM', N'0369852147 ', CAST(N'2023-03-01' AS Date), CAST(N'2023-01-03' AS Date), 3, CAST(N'2023-12-08' AS Date), 8, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'KH4                 ', N'Phạm Văn D', N'pvd@email.com                                                                                       ', N'101 Đường PQR, Quận LMN, Thành Phố HCM', N'0765432109 ', CAST(N'2023-04-01' AS Date), CAST(N'2023-01-04' AS Date), 4, CAST(N'2023-12-08' AS Date), 8, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'KH5                 ', N'Hoàng Văn E1', N'hve@email.com                                                                                       ', N'202 Đường XYZ, Quận ABC, Thành Phố HCM1', N'0932122222 ', CAST(N'2023-05-01' AS Date), CAST(N'2023-01-05' AS Date), 5, CAST(N'2023-12-08' AS Date), 8, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (6, N'KH6                 ', N'Trần Văn B', N'tvb@email.com                                                                                       ', N'456 Đường XYZ, Quận ABC, Thành Phố HCM', N'0987654321 ', NULL, CAST(N'2023-11-18' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (7, N'KH7                 ', N'Phạm Ngọc Linh', N'ab@gmail.com                                                                                        ', N'123 Đường ABC, QUận XYZ, Thành Phố HCM', N'0123456789 ', NULL, CAST(N'2023-11-19' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (8, N'KH8                 ', N'Nguyễn Vĩ Mạnh', N'manh@gmail.com                                                                                      ', N'Hà Nội', N'0343144320 ', NULL, CAST(N'2023-11-19' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (9, N'KH9                 ', N'Nguyễn Vĩ Mạnh', N'manh@gmail.com                                                                                      ', N'Hà Nội', N'0343144320 ', CAST(N'2024-11-19' AS Date), CAST(N'2023-11-19' AS Date), NULL, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (10, N'KH10                ', N'Nguyễn Vĩ Mạnh', N'aa@gmail.com                                                                                        ', N'Hà Nội', N'0343144320 ', CAST(N'2024-11-19' AS Date), CAST(N'2023-11-19' AS Date), 1, CAST(N'2024-11-19' AS Date), 1, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (11, N'KH11                ', N'Mạnh', N'manh@gmail.com                                                                                      ', N'aaaa', N'0123456789 ', CAST(N'2024-11-20' AS Date), CAST(N'2023-11-20' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (12, N'KH12                ', N'Nguyễn Quang Hảo', N'haonq@gmail.com                                                                                     ', N'Hà Nội', N'0216322547 ', CAST(N'2024-11-23' AS Date), CAST(N'2023-11-23' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (13, N'KH13                ', N'Nguyễn Quang Hảo1', N'haonq@gmail.com                                                                                     ', N'Hà Nội', N'0216322547 ', CAST(N'2024-11-23' AS Date), CAST(N'2023-11-23' AS Date), 8, CAST(N'2023-11-23' AS Date), 8, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (14, N'KH14                ', N'Nguyễn Vĩ Hùng', N'hung@gmail.com                                                                                      ', N'Hà Nội', N'0343144320 ', CAST(N'2024-11-27' AS Date), CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (15, N'KH15                ', N'Nguyễn Văn Ngọc', N'ngoc@gmail.com                                                                                      ', N'Hà Nội', N'0343144320 ', CAST(N'2024-11-27' AS Date), CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (16, N'KH16                ', N'Phạm Văn Đồng', N'dong@gmail.com                                                                                      ', N'hà nội', N'0362145578 ', CAST(N'2024-11-27' AS Date), CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (17, N'KH17                ', N'Trần Thị Bo1', N'bo123@gmai.com                                                                                      ', N'Hà Nội1', N'0268975121 ', CAST(N'2024-11-27' AS Date), CAST(N'2023-11-27' AS Date), 8, CAST(N'2023-11-27' AS Date), 8, 1)
INSERT [dbo].[KhachHang] ([idKhachHang], [maKhachHang], [tenKhachHang], [email], [diaChi], [sdt], [ngayHetHan], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (18, N'KH18                ', N'Phạm Ngọc Lân', N'lan@gmail.com                                                                                       ', N'Hà Nội', N'0258796412 ', CAST(N'2024-11-28' AS Date), CAST(N'2023-11-28' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[KhoiLuong] ON 

INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'KL1                 ', N'200g', CAST(N'2023-10-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'KL2                 ', N'1kg', CAST(N'2023-09-15' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'KL3                 ', N'400g', CAST(N'2023-08-25' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'KL5                 ', N'600g', CAST(N'2023-11-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (6, N'KL6                 ', N'500g', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (7, N'KL7                 ', N'700g', CAST(N'2023-12-05' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (8, N'KL8                 ', N'800g', CAST(N'2023-12-05' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[KhoiLuong] ([idKhoiLuong], [maKhoiLuong], [tenKhoiLuong], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (9, N'KL9                 ', N'100g', CAST(N'2023-12-06' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[KhoiLuong] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 

INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'LSP1                ', N'Đồ Chơi Điều Khiển Từ Xa', CAST(N'2023-10-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'LSP2                ', N'Đồ Chơi Phát Nhạc', CAST(N'2023-09-15' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'LSP3                ', N'Đồ Chơi Gỗ', CAST(N'2023-08-25' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'LSP4                ', N'Đồ Chơi LeGo', CAST(N'2023-07-10' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'LSP5                ', N'Đồ Chơi Nhà Tắm', CAST(N'2023-11-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (13, N'LSP6                ', N'Đồ Chơi Búp Bê', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (15, N'LSP7                ', N'Đồ Chơi Trên Không', CAST(N'2023-12-04' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[LoaiSanPham] ([idLoaiSanPham], [maLoaiSanPham], [tenLoaiSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (16, N'LSP8                ', N'Đồ Chơi Len', CAST(N'2023-12-06' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[NhanVien] ON 

INSERT [dbo].[NhanVien] ([idNhanVien], [maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [diaChi], [sdt], [CCCD], [email], [trangThai], [chucVu], [matKhau]) VALUES (1, N'nv001               ', N'Nguyễn Vĩ Mạnh', 1, CAST(N'2004-04-28' AS Date), N'Hà Nội', N'0343144320 ', N'001204020101', N'nguyenvimanh@gmail.com                                                                              ', 1, 1, N'manh99123                                         ')
INSERT [dbo].[NhanVien] ([idNhanVien], [maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [diaChi], [sdt], [CCCD], [email], [trangThai], [chucVu], [matKhau]) VALUES (8, N'manhnv99            ', N'Nguyễn Vĩ Mạnh', 1, CAST(N'2004-04-28' AS Date), N'Xóm Điếm - Hữu Từ, Hữu Hòa, Thanh Trì, Hà Nội', N'0343144320 ', N'001204020108', N'nguyenvimanhnqt@gmail.com                                                                           ', 1, 1, N'x9fzgip5x8                                        ')
INSERT [dbo].[NhanVien] ([idNhanVien], [maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [diaChi], [sdt], [CCCD], [email], [trangThai], [chucVu], [matKhau]) VALUES (9, N'hieunv22            ', N'Chu Trung Hiếu', 1, CAST(N'2004-11-28' AS Date), N'X. Đầu Cầu Ca, Kha Sơn, Phú Bình, Thái Nguyên', N'0343144320 ', N'019204002291', N'hieu@gmai.com                                                                                       ', 1, 1, N'340trvoswo                                        ')
INSERT [dbo].[NhanVien] ([idNhanVien], [maNhanVien], [tenNhanVien], [gioiTinh], [ngaySinh], [diaChi], [sdt], [CCCD], [email], [trangThai], [chucVu], [matKhau]) VALUES (10, N'hieukk              ', N'Chu Trung Hiếu', 1, CAST(N'2004-11-28' AS Date), N'X. Đầu Cầu Ca, Kha Sơn, Phú Bình, Thái Nguyên', N'0321567895 ', N'019204002299', N'nguyenvimanhnqt@gmail.com                                                                           ', 1, 1, N'avl5vezgao                                        ')
SET IDENTITY_INSERT [dbo].[NhanVien] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'SP1                 ', N'Xe đua F1 điều khiển từ xa Duka DK81017', CAST(N'2023-10-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'SP2                 ', N'Xe ô tô điều khiển LT2012-1-VN', CAST(N'2023-09-15' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'SP3                 ', N'Xe điều khiển Rastar R48900', CAST(N'2023-08-25' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'SP4                 ', N'Đồ Chơi Xe Điều Khiển VBC Remote Cảm Biến 2028D', CAST(N'2023-07-10' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'SP5                 ', N'Xe điều khiển VBCare VBC-3688F1', CAST(N'2023-11-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (6, N'SP6                 ', N'Ô tô điều khiển từ xa siêu xe Bugatti DK81006', CAST(N'2023-11-18' AS Date), 1, NULL, 0, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (11, N'SP7                 ', N'Đồ chơi lật đật có bánh xe Toyshouse 008-1 hình ốc sên', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (12, N'SP8                 ', N'Đồ Chơi vịt', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (13, N'SP9                 ', N'Xe ô tô điều khiển', CAST(N'2023-11-27' AS Date), 8, CAST(N'2023-12-04' AS Date), 1, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (16, N'SP10                ', N'đồ chơi búp bê ma', CAST(N'2023-11-27' AS Date), 8, CAST(N'2023-12-04' AS Date), 8, 0)
INSERT [dbo].[SanPham] ([idSanPham], [maSanPham], [tenSanPham], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (22, N'SP11                ', N'Xe ô tô điều khiển 4 kênh có đèn tỉ lệ 1:22 HWA978669 (không kèm pin)', CAST(N'2023-12-04' AS Date), 8, CAST(N'2023-12-04' AS Date), 8, 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhamHoan] ON 

INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (3, 1, 2, CAST(N'2023-11-29' AS Date), N'HĐ69                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (4, 3, 2, CAST(N'2023-11-29' AS Date), N'HĐ68                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (5, 4, 3, CAST(N'2023-11-29' AS Date), N'HĐ55                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (6, 3, 3, CAST(N'2023-11-29' AS Date), N'HĐ45                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (7, 1, 2, CAST(N'2023-11-29' AS Date), N'HÐ7                                               ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (8, 3, 2, CAST(N'2023-11-29' AS Date), N'HÐ3                                               ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (9, 7, 1, CAST(N'2023-11-29' AS Date), N'HĐ56                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (10, 7, 1, CAST(N'2023-11-29' AS Date), N'HĐ66                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (11, 3, 2, CAST(N'2023-11-29' AS Date), N'HÐ13                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (12, 10, 1, CAST(N'2023-12-01' AS Date), N'HĐ70                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (13, 8, 1, CAST(N'2023-12-03' AS Date), N'HĐ73                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (14, 3, 2, CAST(N'2023-12-04' AS Date), N'HĐ85                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (15, 4, 3, CAST(N'2023-12-04' AS Date), N'HĐ84                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (16, 3, 2, CAST(N'2023-12-04' AS Date), N'HĐ84                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (17, 3, 2, CAST(N'2023-12-04' AS Date), N'HĐ84                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (18, 4, 1, CAST(N'2023-12-04' AS Date), N'HĐ21                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (19, 4, 1, CAST(N'2023-12-04' AS Date), N'HĐ17                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (20, 5, 1, CAST(N'2023-12-04' AS Date), N'HĐ20                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (21, 6, 1, CAST(N'2023-12-04' AS Date), N'HĐ23                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (22, 10, 1, CAST(N'2023-12-04' AS Date), N'HĐ86                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (23, 11, 1, CAST(N'2023-12-04' AS Date), N'HĐ86                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (24, 6, 1, CAST(N'2023-12-04' AS Date), N'HĐ87                                              ')
INSERT [dbo].[SanPhamHoan] ([idSanPhamHoan], [idCTSP], [soLuong], [ngayTra], [maHoaDon]) VALUES (25, 10, 2, CAST(N'2023-12-04' AS Date), N'HĐ88                                              ')
SET IDENTITY_INSERT [dbo].[SanPhamHoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ThuongHieu] ON 

INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'TH1                 ', N'DuKa', CAST(N'2023-10-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'TH2                 ', N'Long Thủy Toys', CAST(N'2023-09-15' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'TH3                 ', N'Rastar', CAST(N'2023-08-25' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'TH4                 ', N'VBCare', CAST(N'2023-07-10' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'TH5                 ', N'Canon', CAST(N'2023-11-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (7, N'TH6                 ', N'Mixer', CAST(N'2023-12-06' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (8, N'TH7                 ', N'KuKa', CAST(N'2023-12-07' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[ThuongHieu] ([idThuongHieu], [maThuongHieu], [tenThuongHieu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (9, N'TH8                 ', N'Shiba', CAST(N'2023-12-08' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[ThuongHieu] OFF
GO
SET IDENTITY_INSERT [dbo].[TrangThaiHoaDon] ON 

INSERT [dbo].[TrangThaiHoaDon] ([idTTHD], [maTTHD], [tenTTHD], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'TTHD001             ', N'Đang Giao Hàng', CAST(N'2023-01-01' AS Date), 1, CAST(N'2023-01-01' AS Date), 1, 0)
INSERT [dbo].[TrangThaiHoaDon] ([idTTHD], [maTTHD], [tenTTHD], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'TTHD002             ', N'Đã Thanh Toán', CAST(N'2023-01-01' AS Date), 1, CAST(N'2023-01-01' AS Date), 1, 0)
INSERT [dbo].[TrangThaiHoaDon] ([idTTHD], [maTTHD], [tenTTHD], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'TTHD004             ', N'Hủy Đơn Hàng', CAST(N'2023-01-01' AS Date), 1, CAST(N'2023-01-01' AS Date), 1, 0)
INSERT [dbo].[TrangThaiHoaDon] ([idTTHD], [maTTHD], [tenTTHD], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'THHD005             ', N'Chờ Thanh Toán', CAST(N'2023-01-01' AS Date), 1, CAST(N'2023-01-01' AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[TrangThaiHoaDon] OFF
GO
SET IDENTITY_INSERT [dbo].[Voucher] ON 

INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (5, N'VC1', 1, 20, CAST(N'2023-12-19' AS Date), CAST(N'2023-12-20' AS Date), CAST(N'2023-11-23' AS Date), 2, CAST(N'2023-12-06' AS Date), 8, 0, 20, N'Black Friday', 50000, 60000000, 3)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (6, N'VC2', 0, 50000, CAST(N'2023-11-01' AS Date), CAST(N'2023-11-26' AS Date), NULL, 8, CAST(N'2023-11-29' AS Date), 8, 0, 100, N'Trung Thu', 3000000, 10000000, 2)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (7, N'VC3', 1, 10, CAST(N'2023-11-24' AS Date), CAST(N'2023-11-26' AS Date), NULL, 8, CAST(N'2023-11-29' AS Date), 8, 0, 10, N'20/11', 0, 10000000, 2)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (8, N'VC4', 1, 10, CAST(N'2023-12-04' AS Date), CAST(N'2023-12-09' AS Date), NULL, 8, CAST(N'2023-12-06' AS Date), 8, 0, 50, N'19/11', 0, 10000000, 1)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (9, N'VC5', 1, 10, CAST(N'2023-12-08' AS Date), CAST(N'2023-12-21' AS Date), CAST(N'2023-11-23' AS Date), 2, CAST(N'2023-12-09' AS Date), 8, 0, 47, N'19/11', 100000, 1000000, 1)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (10, N'VC6', 0, 50000, CAST(N'2023-11-21' AS Date), CAST(N'2023-11-24' AS Date), CAST(N'2023-11-23' AS Date), 8, CAST(N'2023-11-25' AS Date), 8, 1, 11, N'Quốc Tế Nam Giới', 0, 800000, 2)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (14, N'VC7', 1, 50, CAST(N'2023-11-28' AS Date), CAST(N'2023-11-29' AS Date), CAST(N'2023-11-27' AS Date), 8, CAST(N'2023-11-29' AS Date), 8, 0, 30, N'Quốc Tế Đàn Ông', 0, 10000000, 2)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (15, N'VC8', 1, 50, CAST(N'2023-12-07' AS Date), CAST(N'2023-12-08' AS Date), CAST(N'2023-11-27' AS Date), 8, CAST(N'2023-12-07' AS Date), 8, 0, 8, N'Quốc Tế Thiếu Nhi', 0, 100000, 2)
INSERT [dbo].[Voucher] ([idVoucher], [maVoucher], [loaiVoucher], [giaTri], [ngayBatDau], [ngayKetThuc], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted], [soLuong], [tenVoucher], [giaTriToiThieu], [giaTriToiDa], [trangThai]) VALUES (17, N'VC9', 0, 100000, CAST(N'2023-11-29' AS Date), CAST(N'2023-11-30' AS Date), CAST(N'2023-11-29' AS Date), 8, CAST(N'2023-11-29' AS Date), 8, 0, 10, N'Quốc Tế Thiếu Nhi1', 0, 200000, 2)
SET IDENTITY_INSERT [dbo].[Voucher] OFF
GO
SET IDENTITY_INSERT [dbo].[XuatXu] ON 

INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (1, N'XX1                 ', N'Nhật Bản', CAST(N'2023-10-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (2, N'XX2                 ', N'Hàn Quốc', CAST(N'2023-09-15' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (3, N'XX3                 ', N'Trung Quốc', CAST(N'2023-08-25' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (4, N'XX4                 ', N'Mỹ', CAST(N'2023-07-10' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (5, N'XX5                 ', N'Đức', CAST(N'2023-11-01' AS Date), 1, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (6, N'XX6                 ', N'Việt Nam', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (7, N'XX7                 ', N'Lào', CAST(N'2023-11-27' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (10, N'XX8                 ', N'Hà Lan', CAST(N'2023-12-05' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (11, N'XX9                 ', N'Nga', CAST(N'2023-12-05' AS Date), 8, NULL, NULL, 0)
INSERT [dbo].[XuatXu] ([idXuatXu], [maXuatXu], [tenXuatXu], [createdAt], [createdBy], [updatedAt], [updatedBy], [deleted]) VALUES (15, N'XX10                ', N'Colombia', CAST(N'2023-12-07' AS Date), 8, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[XuatXu] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ChatLieu__A4DDF7292B98FB82]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[ChatLieu] ADD UNIQUE NONCLUSTERED 
(
	[maChatLieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__DonViTin__6191F12631A196A0]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[DonViTinh] ADD UNIQUE NONCLUSTERED 
(
	[maDonViTinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HinhThuc__C6B9FF895A2F22FC]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[HinhThucThanhToan] ADD UNIQUE NONCLUSTERED 
(
	[maHTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__HoaDon__026B4D9B29DE1C6C]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[HoaDon] ADD UNIQUE NONCLUSTERED 
(
	[maHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhachHan__0CCB3D4880796F88]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[KhachHang] ADD UNIQUE NONCLUSTERED 
(
	[maKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__KhoiLuon__E7CA4721C3A964EA]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[KhoiLuong] ADD UNIQUE NONCLUSTERED 
(
	[maKhoiLuong] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__LoaiSanP__20860A234686BD9A]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[LoaiSanPham] ADD UNIQUE NONCLUSTERED 
(
	[maLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__NhanVien__BDDEF20CA41E5D6C]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[NhanVien] ADD UNIQUE NONCLUSTERED 
(
	[maNhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__SanPham__5B439C42CEFE7744]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[SanPham] ADD UNIQUE NONCLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__ThuongHi__34E94FD7AD784F55]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[ThuongHieu] ADD UNIQUE NONCLUSTERED 
(
	[maThuongHieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__TrangTha__27FBA2C48118D874]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[TrangThaiHoaDon] ADD UNIQUE NONCLUSTERED 
(
	[maTTHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Voucher__E335C401D0BD7017]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[Voucher] ADD UNIQUE NONCLUSTERED 
(
	[maVoucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__XuatXu__51C86F1ADF4539FA]    Script Date: 09/12/2023 11:04:14 SA ******/
ALTER TABLE [dbo].[XuatXu] ADD UNIQUE NONCLUSTERED 
(
	[maXuatXu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[ChatLieu] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[chiTietSanPham] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[chiTietSanPham] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[chiTietSanPham] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[HinhThucThanhToan] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_idKhachHang]  DEFAULT (NULL) FOR [idKhachHang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_idNhanVien]  DEFAULT (NULL) FOR [idNhanVien]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_idHTTT]  DEFAULT (NULL) FOR [idHTTT]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_idTTHD]  DEFAULT (NULL) FOR [idTTHD]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_idVoucher]  DEFAULT (NULL) FOR [idVoucher]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_giamGiaDiemKH]  DEFAULT (NULL) FOR [giamGiaDiemKH]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_thueVat]  DEFAULT (NULL) FOR [thueVat]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_tongTienHang]  DEFAULT (NULL) FOR [tongTienHang]
GO
ALTER TABLE [dbo].[HoaDon] ADD  DEFAULT (getdate()) FOR [ngayTao]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_KhachTraTM]  DEFAULT (NULL) FOR [KhachTraTM]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_KhachTraCK]  DEFAULT (NULL) FOR [KhachTraCK]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_tienThua]  DEFAULT (NULL) FOR [tienThua]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_tenNguoiNhan]  DEFAULT (NULL) FOR [tenNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_sdtNguoiNhan]  DEFAULT (NULL) FOR [sdtNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_diaChiNguoiNhan]  DEFAULT (NULL) FOR [diaChiNguoiNhan]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_ngayShipDuTinh]  DEFAULT (NULL) FOR [ngayShipDuTinh]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_ngayDenDuTinh]  DEFAULT (NULL) FOR [ngayDenDuTinh]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_phiShip]  DEFAULT (NULL) FOR [phiShip]
GO
ALTER TABLE [dbo].[HoaDon] ADD  CONSTRAINT [DF_HoaDon_ghiChu]  DEFAULT (NULL) FOR [ghiChu]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[KhachHang] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[KhoiLuong] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[KhoiLuong] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[KhoiLuong] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[LoaiSanPham] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[SanPham] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[SanPhamHoan] ADD  DEFAULT (getdate()) FOR [ngayTra]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[ThuongHieu] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[TrangThaiHoaDon] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[TrangThaiHoaDon] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[TrangThaiHoaDon] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT ((1)) FOR [loaiVoucher]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[Voucher] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[XuatXu] ADD  DEFAULT (getdate()) FOR [createdAt]
GO
ALTER TABLE [dbo].[XuatXu] ADD  DEFAULT (NULL) FOR [updatedAt]
GO
ALTER TABLE [dbo].[XuatXu] ADD  DEFAULT (NULL) FOR [updatedBy]
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idChatLieu])
REFERENCES [dbo].[ChatLieu] ([idChatLieu])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idDonViTinh])
REFERENCES [dbo].[DonViTinh] ([idDonViTinh])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idKhoiLuong])
REFERENCES [dbo].[KhoiLuong] ([idKhoiLuong])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([idLoaiSanPham])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idSanPham])
REFERENCES [dbo].[SanPham] ([idSanPham])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([idThuongHieu])
GO
ALTER TABLE [dbo].[chiTietSanPham]  WITH CHECK ADD FOREIGN KEY([idXuatXu])
REFERENCES [dbo].[XuatXu] ([idXuatXu])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idHTTT])
REFERENCES [dbo].[HinhThucThanhToan] ([idHTTT])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idKhachHang])
REFERENCES [dbo].[KhachHang] ([idKhachHang])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idNhanVien])
REFERENCES [dbo].[NhanVien] ([idNhanVien])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idTTHD])
REFERENCES [dbo].[TrangThaiHoaDon] ([idTTHD])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([idVoucher])
REFERENCES [dbo].[Voucher] ([idVoucher])
GO
ALTER TABLE [dbo].[hoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([idHoaDon])
REFERENCES [dbo].[HoaDon] ([idHoaDon])
GO
ALTER TABLE [dbo].[hoaDonChiTiet]  WITH CHECK ADD FOREIGN KEY([idSPCT])
REFERENCES [dbo].[chiTietSanPham] ([idCTSP])
GO
ALTER TABLE [dbo].[SanPhamHoan]  WITH CHECK ADD FOREIGN KEY([idCTSP])
REFERENCES [dbo].[chiTietSanPham] ([idCTSP])
GO
/****** Object:  StoredProcedure [dbo].[pr_ChiTietLSHoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_ChiTietLSHoaDon](@maHoaDon nvarchar(500))
as begin
select	HoaDon.maHoaDon maHoaDon,
		NhanVien.tenNhanVien tenNhanVien,
		KhachHang.tenKhachHang tenKhachHang,
		KhachHang.sdt sdtKhachHang,
		hoaDon.giamGiaDiemKH giamGiaDiem,
		HoaDon.tenNguoiNhan tenNguoiNhan,
		HoaDon.sdtNguoiNhan sdtNguoiNhan,
		HoaDon.diaChiNguoiNhan diaChiNguoiNhan,
		HoaDon.ngayTao ngayTao,
		HoaDon.ghiChu ghiChu,
		HinhThucThanhToan.tenHTTT hinhThucThanhToan,
		TrangThaiHoaDon.tenTTHD trangThaiHoaDon,
		HoaDon.tongTienHang tongTienHang,
		HoaDon.KhachTraTM khachTraTM,
		HoaDon.KhachTraCK khachTraCK,
		HoaDon.tienThua tienThua,
		HoaDon.ngayShipDuTinh shipDuTinh,
		HoaDon.ngayDenDuTinh denDuTinh,
		HoaDon.phiShip phiShip,
		HoaDon.maGiaoDich maGiaoDich
from HoaDon 
	join NhanVien on HoaDon.idNhanVien=NhanVien.idNhanVien
	join KhachHang on HoaDon.idKhachHang=KhachHang.idKhachHang
	join HinhThucThanhToan on HoaDon.idHTTT=HinhThucThanhToan.idHTTT
	join TrangThaiHoaDon on HoaDon.idTTHD=TrangThaiHoaDon.idTTHD where HoaDon.maHoaDon=@maHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DanhSachHoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DanhSachHoaDon]
as begin
select	HoaDon.maHoaDon maHoaDon,
		NhanVien.maNhanVien maNhanVien,
		TrangThaiHoaDon.tenTTHD trangThaiHoaDon,
		HoaDon.ngayTao ngayTao
from HoaDon 
join NhanVien on HoaDon.idNhanVien=NhanVien.idNhanVien
join TrangThaiHoaDon on hoaDon.idTTHD=TrangThaiHoaDon.idTTHD
where TrangThaiHoaDon.tenTTHD=N'Chờ Thanh Toán' or TrangThaiHoaDon.tenTTHD=N'Đang Giao Hàng'
order by idHoaDon desc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPham]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPham]
as begin
select distinct	SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		chiTietSanPham.soLuongTon soLuongTon,
		chiTietSanPham.donGia donGia,
		SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
		SUM(hoaDonChiTiet.soLuong*chiTietSanPham.donGia) doanhThuTuSanPham
from chiTietSanPham join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
					join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
					join HoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					where HoaDon.idTTHD=2 or HoaDon.idTTHD=3
					group by SanPham.maSanPham,SanPham.tenSanPham,LoaiSanPham.tenLoaiSanPham,chiTietSanPham.soLuongTon,chiTietSanPham.donGia
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamItNhat]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamItNhat]
as begin
select distinct top 1 SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		chiTietSanPham.soLuongTon soLuongTon,
		chiTietSanPham.donGia donGia,
		SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
		SUM(hoaDonChiTiet.soLuong*chiTietSanPham.donGia) doanhThuTuSanPham
from chiTietSanPham join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
					join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
					join HoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					where HoaDon.idTTHD=2 or HoaDon.idTTHD=3
					group by SanPham.maSanPham,SanPham.tenSanPham,LoaiSanPham.tenLoaiSanPham,chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by doanhThuTuSanPham asc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamNhieuNhat]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamNhieuNhat]
as begin
select distinct top 1 SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		chiTietSanPham.soLuongTon soLuongTon,
		chiTietSanPham.donGia donGia,
		SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
		SUM(hoaDonChiTiet.soLuong*chiTietSanPham.donGia) doanhThuTuSanPham
from chiTietSanPham join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
					join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
					join HoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					where HoaDon.idTTHD=2 or HoaDon.idTTHD=3
					group by SanPham.maSanPham,SanPham.tenSanPham,LoaiSanPham.tenLoaiSanPham,chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by doanhThuTuSanPham desc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_DoanhThuSanPhamTheoLoaiSanPham]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_DoanhThuSanPhamTheoLoaiSanPham](@loaiSanPham nvarchar(100))
as begin
select distinct	SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		chiTietSanPham.soLuongTon soLuongTon,
		chiTietSanPham.donGia donGia,
		SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
		SUM(hoaDonChiTiet.soLuong*chiTietSanPham.donGia) doanhThuTuSanPham
from chiTietSanPham join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
					join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
					join HoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					where tenLoaiSanPham=@loaiSanPham and HoaDon.idTTHD=2 or tenLoaiSanPham=@loaiSanPham and HoaDon.idTTHD=3
					group by SanPham.maSanPham,SanPham.tenSanPham,LoaiSanPham.tenLoaiSanPham,chiTietSanPham.soLuongTon,chiTietSanPham.donGia
end
GO
/****** Object:  StoredProcedure [dbo].[pr_findCTSP]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_findCTSP](@input nvarchar(500))
as begin
select
		SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		ThuongHieu.tenThuongHieu tenThuongHieu,
		XuatXu.tenXuatXu tenXuatXu,
		ChatLieu.tenChatLieu tenChatLieu,
		DonViTinh.tenDonViTinh tenDonViTinh,
		KhoiLuong.tenKhoiLuong tenKhoiLuong,
		chiTietSanPham.donGia donGia,
		chiTietSanPham.soLuongTon soLuongTon
from chiTietSanPham
	join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
	join ThuongHieu on chiTietSanPham.idThuongHieu=ThuongHieu.idThuongHieu
	join XuatXu on chiTietSanPham.idXuatXu=XuatXu.idXuatXu
	join KhoiLuong on chiTietSanPham.idKhoiLuong=KhoiLuong.idKhoiLuong
	join DonViTinh on chiTietSanPham.idDonViTinh=DonViTinh.idDonViTinh
	join ChatLieu on chiTietSanPham.idChatLieu=ChatLieu.idChatLieu
	join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham
	where maSanPham like @input or tenSanPham like @input or tenLoaiSanPham like @input
	or tenThuongHieu like @input or tenXuatXu like @input or tenChatLieu like @input
	or tenDonViTinh like @input or tenKhoiLuong like @input
end
GO
/****** Object:  StoredProcedure [dbo].[pr_HoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_HoaDon](@index int)
as begin
select	HoaDon.maHoaDon maHoaDon,
		NhanVien.maNhanVien maNhanVien,
		NhanVien.tenNhanVien tenNhanVien,
		KhachHang.tenKhachHang tenKhachHang,
		KhachHang.sdt sdt,
		HoaDon.tongTienHang tongTienHang,
		HoaDon.ngayTao ngayTao,
		TrangThaiHoaDon.tenTTHD tenTTHD
from HoaDon
		join NhanVien on hoaDon.idNhanVien=NhanVien.idNhanVien
		join KhachHang on HoaDon.idKhachHang=KhachHang.idKhachHang
		join TrangThaiHoaDon on HoaDon.idTTHD=TrangThaiHoaDon.idTTHD
		order by HoaDon.idHoaDon desc offset @index rows fetch next 4 rows only
end
GO
/****** Object:  StoredProcedure [dbo].[pr_HoaDonChiTiet]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_HoaDonChiTiet](@maHoaDon nvarchar(500))
as begin
select	HoaDon.maHoaDon maHoaDon,
		SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		chiTietSanPham.donGia donGia,
		hoaDonChiTiet.soLuong soLuong,
		(chiTietSanPham.donGia*hoaDonChiTiet.soLuong) tongTien
from HoaDon 
		join hoaDonChiTiet on HoaDon.idHoaDon=hoaDonChiTiet.idHoaDon
		join chiTietSanPham on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
		join SanPham on SanPham.idSanPham=chiTietSanPham.idSanPham where HoaDon.maHoaDon=@maHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[pr_hoanHang]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_hoanHang](@maHoaDon nvarchar(500))
as begin
	select chiTietSanPham.idCTSP idCTSP,
		   hoaDonChiTiet.soLuong soLuong 
    from HoaDon 
		   join hoaDonChiTiet on HoaDon.idHoaDon=hoaDonChiTiet.idHoaDon
		   join chiTietSanPham on chiTietSanPham.idCTSP=hoaDonChiTiet.idSPCT where hoaDon.maHoaDon=@maHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[pr_KhachHangBought]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_KhachHangBought](@maKhachHang nchar(20))
as begin
select	SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		chiTietSanPham.donGia donGia,
		hoaDonChiTiet.soLuong soLuong,
		(chiTietSanPham.donGia*hoaDonChiTiet.soLuong) tongTien
from hoaDon 
	join hoaDonChiTiet on hoaDon.idHoaDon=hoaDonChiTiet.idHoaDon
	join chiTietSanPham on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
	join KhachHang on HoaDon.idKhachHang=KhachHang.idKhachHang
	join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
	where KhachHang.maKhachHang=@maKhachHang
end
GO
/****** Object:  StoredProcedure [dbo].[pr_LichSuHoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_LichSuHoaDon]
as begin
select	HoaDon.maHoaDon maHoaDon,
		NhanVien.maNhanVien maNhanVien,
		NhanVien.tenNhanVien tenNhanVien,
		KhachHang.tenKhachHang tenKhachHang,
		KhachHang.sdt sdt,
		HoaDon.tongTienHang tongTienHang,
		HoaDon.ngayTao ngayTao,
		TrangThaiHoaDon.tenTTHD tenTTHD
from HoaDon
		join NhanVien on hoaDon.idNhanVien=NhanVien.idNhanVien
		join KhachHang on HoaDon.idKhachHang=KhachHang.idKhachHang
		join TrangThaiHoaDon on HoaDon.idTTHD=TrangThaiHoaDon.idTTHD
		order by hoaDon.idHoaDon desc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_LichSuSanPhamHoan]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_LichSuSanPhamHoan](@maHoaDon nvarchar(500))
as begin
select	SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		chiTietSanPham.donGia donGia,
		SanPhamHoan.soLuong soLuong,
		SanPhamHoan.ngayTra ngayTra
from SanPhamHoan
		join chiTietSanPham on SanPhamHoan.idCTSP=chiTietSanPham.idCTSP
		join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
		where SanPhamHoan.maHoaDon=@maHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[pr_LocDoanhThuTheoNgay]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_LocDoanhThuTheoNgay](@from date,@to date)
as begin
	select hoaDon.ngayTao ngayTao,
	SUM(tongTienHang) doanhThu
	from HoaDon where HoaDon.ngayTao between @from and @to and hoaDon.idTTHD=2 or HoaDon.ngayTao between @from and @to and hoaDon.idTTHD=3 group by HoaDon.ngayTao
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SanPhamBanItNhat]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_SanPhamBanItNhat]
as begin
select distinct top 1 SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		chiTietSanPham.soLuongTon soLuongTon,
		chiTietSanPham.donGia donGia,
		SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
		SUM(hoaDonChiTiet.soLuong*chiTietSanPham.donGia) doanhThuTuSanPham
from chiTietSanPham join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
					join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
					join HoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					where HoaDon.idTTHD=2 or HoaDon.idTTHD=3
					group by SanPham.maSanPham,SanPham.tenSanPham,LoaiSanPham.tenLoaiSanPham,chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by soLuongBanDuoc asc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SanPhamBanNhieuNhat]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_SanPhamBanNhieuNhat]
as begin
select distinct top 1 SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		chiTietSanPham.soLuongTon soLuongTon,
		chiTietSanPham.donGia donGia,
		SUM(hoaDonChiTiet.soLuong) soLuongBanDuoc,
		SUM(hoaDonChiTiet.soLuong*chiTietSanPham.donGia) doanhThuTuSanPham
from chiTietSanPham join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
					join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham
					join hoaDonChiTiet on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
					join HoaDon on hoaDonChiTiet.idHoaDon=hoaDon.idHoaDon
					where HoaDon.idTTHD=2 or HoaDon.idTTHD=3
					group by SanPham.maSanPham,SanPham.tenSanPham,LoaiSanPham.tenLoaiSanPham,chiTietSanPham.soLuongTon,chiTietSanPham.donGia
					order by soLuongBanDuoc desc
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SanPhamHoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_SanPhamHoaDon](@maHoaDon nvarchar(500))
as begin
select	HoaDon.maHoaDon maHoaDon,
		SanPham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		ThuongHieu.tenThuongHieu tenThuongHieu,
		XuatXu.tenXuatXu tenXuatXu,
		KhoiLuong.tenKhoiLuong tenKhoiLuong,
		DonViTinh.tenDonViTinh tenDonViTinh,
		ChatLieu.tenChatLieu tenChatLieu,
		LoaiSanPham.tenLoaiSanPham tenLoaiSanPham,
		hoaDonChiTiet.soLuong soLuong,
		chiTietSanPham.donGia donGia,
		(hoaDonChiTiet.soLuong*chiTietSanPham.donGia) tongTien
from HoaDon
	join HoaDonChiTiet on HoaDon.idHoaDon=hoaDonChiTiet.idHoaDon
	join chiTietSanPham on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
	join SanPham on chiTietSanPham.idSanPham=SanPham.idSanPham
	join ThuongHieu on chiTietSanPham.idThuongHieu=ThuongHieu.idThuongHieu
	join XuatXu on chiTietSanPham.idXuatXu=XuatXu.idXuatXu
	join KhoiLuong on chiTietSanPham.idKhoiLuong=KhoiLuong.idKhoiLuong
	join DonViTinh on chiTietSanPham.idDonViTinh=DonViTinh.idDonViTinh
	join ChatLieu on chiTietSanPham.idChatLieu=ChatLieu.idChatLieu
	join LoaiSanPham on chiTietSanPham.idLoaiSanPham=LoaiSanPham.idLoaiSanPham 
	where HoaDon.maHoaDon=@maHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[pr_SanPhamLichSuHoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_SanPhamLichSuHoaDon](@maHoaDon nvarchar(500))
as begin
select	
		Sanpham.maSanPham maSanPham,
		SanPham.tenSanPham tenSanPham,
		chiTietSanPham.donGia donGia,
		hoaDonChiTiet.soLuong soLuong,
		(chiTietSanPham.donGia*hoaDonChiTiet.soLuong) tongTien
from HoaDon 
		join hoaDonChiTiet on HoaDon.idHoaDon=hoaDonChiTiet.idHoaDon
		join chiTietSanPham on hoaDonChiTiet.idSPCT=chiTietSanPham.idCTSP
		join SanPham on SanPham.idSanPham=chiTietSanPham.idSanPham
		where hoaDon.maHoaDon=@maHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[pr_TimKiemHoaDon]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_TimKiemHoaDon](@input nvarchar(max))
as begin
select
		HoaDon.maHoaDon maHoaDon,
		NhanVien.maNhanVien maNhanVien,
		NhanVien.tenNhanVien tenNhanVien,
		KhachHang.tenKhachHang tenKhachHang,
		KhachHang.sdt sdt,
		HoaDon.tongTienHang tongTienHang,
		HoaDon.ngayTao ngayTao,
		TrangThaiHoaDon.tenTTHD tenTTHD
from HoaDon
		join NhanVien on hoaDon.idNhanVien=NhanVien.idNhanVien
		join KhachHang on HoaDon.idKhachHang=KhachHang.idKhachHang
		join TrangThaiHoaDon on HoaDon.idTTHD=TrangThaiHoaDon.idTTHD
		where HoaDon.maHoaDon like @input or NhanVien.maNhanVien like @input
		or NhanVien.tenNhanVien like @input or KhachHang.tenKhachHang like @input
		or KhachHang.sdt like @input or HoaDon.tongTienHang like @input
		or TrangThaiHoaDon.tenTTHD like @input
end
GO
/****** Object:  StoredProcedure [dbo].[pr_TimKiemHoaDonTheoGia]    Script Date: 09/12/2023 11:04:14 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[pr_TimKiemHoaDonTheoGia](@from float,@to float)
as begin
select
		HoaDon.maHoaDon maHoaDon,
		NhanVien.maNhanVien maNhanVien,
		NhanVien.tenNhanVien tenNhanVien,
		KhachHang.tenKhachHang tenKhachHang,
		KhachHang.sdt sdt,
		HoaDon.tongTienHang tongTienHang,
		HoaDon.ngayTao ngayTao,
		TrangThaiHoaDon.tenTTHD tenTTHD
from HoaDon
		join NhanVien on hoaDon.idNhanVien=NhanVien.idNhanVien
		join KhachHang on HoaDon.idKhachHang=KhachHang.idKhachHang
		join TrangThaiHoaDon on HoaDon.idTTHD=TrangThaiHoaDon.idTTHD
		where HoaDon.tongTienHang>=@from and hoaDon.tongTienHang<=@to
end
GO
