create database QLHocVien

/****** Object:  ForeignKey [FK_Table1_LOPHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Table1_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[HOCVIEN] DROP CONSTRAINT [FK_Table1_LOPHOC]
GO
/****** Object:  ForeignKey [FK_KETQUA_MONHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA] DROP CONSTRAINT [FK_KETQUA_MONHOC]
GO
/****** Object:  ForeignKey [FK_KETQUA_Table1]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_Table1]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA] DROP CONSTRAINT [FK_KETQUA_Table1]
GO
/****** Object:  ForeignKey [FK_PHANCONG_GIAOVIEN]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] DROP CONSTRAINT [FK_PHANCONG_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_PHANCONG_LOPHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] DROP CONSTRAINT [FK_PHANCONG_LOPHOC]
GO
/****** Object:  ForeignKey [FK_PHANCONG_MONHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] DROP CONSTRAINT [FK_PHANCONG_MONHOC]
GO
/****** Object:  ForeignKey [FK_LOPHOC_GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC] DROP CONSTRAINT [FK_LOPHOC_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_LOPHOC_Table1]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_Table1]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC] DROP CONSTRAINT [FK_LOPHOC_Table1]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN] DROP CONSTRAINT [FK_GIAOVIEN_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC] DROP CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_DAY_MONHOC_MONHOC]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC] DROP CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_MONHOC]
GO
/****** Object:  Table [dbo].[GIAOVIEN_DAY_MONHOC]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC] DROP CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC] DROP CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_MONHOC]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[GIAOVIEN_DAY_MONHOC]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[GIAOVIEN_DAY_MONHOC]
GO
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN] DROP CONSTRAINT [FK_GIAOVIEN_GIAOVIEN]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[GIAOVIEN]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[GIAOVIEN]
GO
/****** Object:  Table [dbo].[LOPHOC]    Script Date: 02/20/2012 16:19:46 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC] DROP CONSTRAINT [FK_LOPHOC_GIAOVIEN]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_Table1]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC] DROP CONSTRAINT [FK_LOPHOC_Table1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[LOPHOC]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[LOPHOC]
GO
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] DROP CONSTRAINT [FK_PHANCONG_GIAOVIEN]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] DROP CONSTRAINT [FK_PHANCONG_LOPHOC]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] DROP CONSTRAINT [FK_PHANCONG_MONHOC]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[PHANCONG]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[PHANCONG]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[MONHOC]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[MONHOC]
GO
/****** Object:  Table [dbo].[KETQUA]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA] DROP CONSTRAINT [FK_KETQUA_MONHOC]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_Table1]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA] DROP CONSTRAINT [FK_KETQUA_Table1]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[KETQUA]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[KETQUA]
GO
/****** Object:  Table [dbo].[HOCVIEN]    Script Date: 02/20/2012 16:19:45 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Table1_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[HOCVIEN] DROP CONSTRAINT [FK_Table1_LOPHOC]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[HOCVIEN]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE [dbo].[HOCVIEN]
GO
/****** Object:  Table [dbo].[HOCVIEN]    Script Date: 02/20/2012 16:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[HOCVIEN]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[HOCVIEN](
	[MaHocVien] [nchar](10) NOT NULL,
	[TenHocVien] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MaLop] [nchar](10) NULL,
 CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED 
(
	[MaHocVien] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000001  ', N'Nguyễn Thùy Linh', CAST(0x0000808700000000 AS DateTime), N'buộc thôi học', N'LH000001  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000002  ', N'Nguyễn Thị Kiều Trang', CAST(0x0000861100000000 AS DateTime), N'đang học', N'LH000001  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000003  ', N'Nguyễn Xuân Thu', CAST(0x0000878800000000 AS DateTime), N'đang học', N'LH000002  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000004  ', N'Trần Trung Chính', CAST(0x0000838900000000 AS DateTime), N'đang học', N'LH000003  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000005  ', N'Trần Minh An', CAST(0x0000832500000000 AS DateTime), N'đang học', N'LH000003  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000006  ', N'Trương Mỹ Linh', CAST(0x0000805400000000 AS DateTime), N'đã tốt nghiệp', N'LH000004  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000007  ', N'Trần Hào', CAST(0x00007F1B00000000 AS DateTime), N'đã tốt nghiệp', N'LH000004  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000008  ', N'Nguyễn Huỳnh', CAST(0x0000838000000000 AS DateTime), N'đang học', N'LH000004  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000009  ', N'Nguyễn Xuân Trường', CAST(0x000084F700000000 AS DateTime), N'đang học', N'LH000005  ')
INSERT [dbo].[HOCVIEN] ([MaHocVien], [TenHocVien], [NgaySinh], [TinhTrang], [MaLop]) VALUES (N'HV000010  ', N'Nguyễn Bình Minh', CAST(0x0000838900000000 AS DateTime), N'đang học', N'LH000004  ')
/****** Object:  Table [dbo].[KETQUA]    Script Date: 02/20/2012 16:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[KETQUA]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[KETQUA](
	[MaHV] [nchar](10) NOT NULL,
	[MaMonHoc] [nchar](10) NOT NULL,
	[LanThi] [int] NOT NULL,
	[Diem] [float] NULL,
 CONSTRAINT [PK_KETQUA] PRIMARY KEY CLUSTERED 
(
	[MaHV] ASC,
	[MaMonHoc] ASC,
	[LanThi] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000001  ', N'MH00001   ', 1, 5.5)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000001  ', N'MH00004   ', 1, 6)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000002  ', N'MH00001   ', 1, 7)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000002  ', N'MH00004   ', 1, 8)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000003  ', N'MH00008   ', 1, 8.7)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000003  ', N'MH00009   ', 1, 9)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000003  ', N'MH00010   ', 1, 10)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000004  ', N'MH00008   ', 1, 4)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000004  ', N'MH00008   ', 2, 3)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000004  ', N'MH00009   ', 1, 2)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000004  ', N'MH00009   ', 2, 5)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000004  ', N'MH00010   ', 1, 6)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000005  ', N'MH00008   ', 1, 7.5)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000005  ', N'MH00009   ', 1, 1)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000005  ', N'MH00009   ', 2, 7)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000005  ', N'MH00010   ', 1, 1)
INSERT [dbo].[KETQUA] ([MaHV], [MaMonHoc], [LanThi], [Diem]) VALUES (N'HV000005  ', N'MH00010   ', 2, 3.5)
/****** Object:  Table [dbo].[MONHOC]    Script Date: 02/20/2012 16:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[MONHOC]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[MONHOC](
	[MaMonHoc] [nchar](10) NOT NULL,
	[TenMonHoc] [nvarchar](50) NULL,
	[SoChi] [int] NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[MaMonHoc] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00001   ', N'Cơ sở dữ liệu', 5)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00002   ', N'Cấu trúc dữ liệu', 6)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00003   ', N'Mạng máy tính', 4)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00004   ', N'Toán cao cấp', 6)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00005   ', N'Tin học cơ sở', 3)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00006   ', N'Công nghệ phân mềm', 4)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00007   ', N'Trí tuệ nhân tạo', 4)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00008   ', N'Khai thác dữ liệu', 3)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00009   ', N'Phân tích thiết kế hệ thống thông tin', 3)
INSERT [dbo].[MONHOC] ([MaMonHoc], [TenMonHoc], [SoChi]) VALUES (N'MH00010   ', N'Hệ thống thông minh', 4)
/****** Object:  Table [dbo].[PHANCONG]    Script Date: 02/20/2012 16:19:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[PHANCONG]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[PHANCONG](
	[MaGV] [nchar](10) NOT NULL,
	[MaMH] [nchar](10) NOT NULL,
	[MaLop] [nchar](10) NOT NULL,
 CONSTRAINT [PK_PHANCONG] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaMH] ASC,
	[MaLop] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00001   ', N'MH00001   ', N'LH000001  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00001   ', N'MH00004   ', N'LH000001  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00003   ', N'MH00010   ', N'LH000005  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00004   ', N'MH00009   ', N'LH000004  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00005   ', N'MH00008   ', N'LH000002  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00005   ', N'MH00008   ', N'LH000004  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00006   ', N'MH00008   ', N'LH000003  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00006   ', N'MH00009   ', N'LH000002  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00006   ', N'MH00009   ', N'LH000003  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00006   ', N'MH00010   ', N'LH000004  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00007   ', N'MH00010   ', N'LH000002  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00007   ', N'MH00010   ', N'LH000003  ')
INSERT [dbo].[PHANCONG] ([MaGV], [MaMH], [MaLop]) VALUES (N'GV00008   ', N'MH00002   ', N'LH000004  ')
/****** Object:  Table [dbo].[LOPHOC]    Script Date: 02/20/2012 16:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[LOPHOC]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[LOPHOC](
	[MaLop] [nchar](10) NOT NULL,
	[SiSo] [int] NULL,
	[LopTruong] [nchar](10) NULL,
	[GVQuanLi] [nchar](10) NULL,
	[NamBatDau] [int] NULL,
	[NamKetThuc] [int] NULL,
 CONSTRAINT [PK_LOPHOC] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[LOPHOC] ([MaLop], [SiSo], [LopTruong], [GVQuanLi], [NamBatDau], [NamKetThuc]) VALUES (N'LH000001  ', 1, N'HV000002  ', N'GV00001   ', 2010, 2014)
INSERT [dbo].[LOPHOC] ([MaLop], [SiSo], [LopTruong], [GVQuanLi], [NamBatDau], [NamKetThuc]) VALUES (N'LH000002  ', 1, N'HV000003  ', N'GV00003   ', 2009, 2013)
INSERT [dbo].[LOPHOC] ([MaLop], [SiSo], [LopTruong], [GVQuanLi], [NamBatDau], [NamKetThuc]) VALUES (N'LH000003  ', 2, N'HV000004  ', N'GV00008   ', 2010, 2014)
INSERT [dbo].[LOPHOC] ([MaLop], [SiSo], [LopTruong], [GVQuanLi], [NamBatDau], [NamKetThuc]) VALUES (N'LH000004  ', 4, N'HV000008  ', N'GV00010   ', 2011, 2015)
INSERT [dbo].[LOPHOC] ([MaLop], [SiSo], [LopTruong], [GVQuanLi], [NamBatDau], [NamKetThuc]) VALUES (N'LH000005  ', 1, N'HV000009  ', N'GV00009   ', 2010, 2014)
/****** Object:  Table [dbo].[GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[GIAOVIEN]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[GIAOVIEN](
	[MaGV] [nchar](10) NOT NULL,
	[TenGV] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DienThoai] [nchar](10) NULL,
	[MaGVQuanLi] [nchar](10) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00001   ', N'Nguyễn Văn An', CAST(0x0000739200000000 AS DateTime), N'Nam', NULL, N'GV00002   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00002   ', N'Nguyễn Thị Như Lan', CAST(0x0000792800000000 AS DateTime), N'Nữ', NULL, N'GV00005   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00003   ', N'Trần Minh Anh', CAST(0x00007B0400000000 AS DateTime), N'Nam', N'0909123999', N'GV00002   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00004   ', N'Trương Tường Vi', CAST(0x00007DAC00000000 AS DateTime), N'Nữ', N'0998990909', N'GV00008   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00005   ', N'Hà Anh Tuấn', CAST(0x00007C0300000000 AS DateTime), N'Nam', N'0909909000', N'GV00008   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00006   ', N'Trần Anh Dũng', CAST(0x0000711300000000 AS DateTime), N'Nam', NULL, N'GV00010   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00007   ', N'Trần Duy Tân', CAST(0x00006F4C00000000 AS DateTime), N'Nam', NULL, N'GV00002   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00008   ', N'Nguyễn Thị Linh', CAST(0x0000717200000000 AS DateTime), N'Nữ', N'0938079700', N'GV00009   ')
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00009   ', N'Trần Thị Kiều', CAST(0x00006DDE00000000 AS DateTime), N'Nữ', NULL, NULL)
INSERT [dbo].[GIAOVIEN] ([MaGV], [TenGV], [NgaySinh], [GioiTinh], [DienThoai], [MaGVQuanLi]) VALUES (N'GV00010   ', N'Trần Phương Loan', CAST(0x00006FC000000000 AS DateTime), N'Nữ', NULL, NULL)
/****** Object:  Table [dbo].[GIAOVIEN_DAY_MONHOC]    Script Date: 02/20/2012 16:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[GIAOVIEN_DAY_MONHOC]') AND OBJECTPROPERTY(id, N'IsUserTable') = 1)
BEGIN
CREATE TABLE [dbo].[GIAOVIEN_DAY_MONHOC](
	[MaGV] [nchar](10) NOT NULL,
	[MaMH] [nchar](10) NOT NULL,
	[ThamNien] [int] NULL,
	[SoLopDaDay] [int] NULL,
 CONSTRAINT [PK_GIAOVIEN_DAY_MONHOC] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC,
	[MaMH] ASC
) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00001   ', N'MH00001   ', 3, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00001   ', N'MH00004   ', 2, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00002   ', N'MH00001   ', 1, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00002   ', N'MH00002   ', 1, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00003   ', N'MH00006   ', 2, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00003   ', N'MH00007   ', 3, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00003   ', N'MH00010   ', 4, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00004   ', N'MH00009   ', 6, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00004   ', N'MH00010   ', 1, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00005   ', N'MH00008   ', 4, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00005   ', N'MH00010   ', 2, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00006   ', N'MH00008   ', 4, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00006   ', N'MH00009   ', 2, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00006   ', N'MH00010   ', 4, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00007   ', N'MH00010   ', 7, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00008   ', N'MH00001   ', 2, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00008   ', N'MH00002   ', 1, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00009   ', N'MH00010   ', 2, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00010   ', N'MH00001   ', 3, NULL)
INSERT [dbo].[GIAOVIEN_DAY_MONHOC] ([MaGV], [MaMH], [ThamNien], [SoLopDaDay]) VALUES (N'GV00010   ', N'MH00002   ', 1, NULL)
/****** Object:  ForeignKey [FK_Table1_LOPHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Table1_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[HOCVIEN]  WITH CHECK ADD  CONSTRAINT [FK_Table1_LOPHOC] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOPHOC] ([MaLop])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_Table1_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[HOCVIEN] CHECK CONSTRAINT [FK_Table1_LOPHOC]
GO
/****** Object:  ForeignKey [FK_KETQUA_MONHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_KETQUA_MONHOC] FOREIGN KEY([MaMonHoc])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_KETQUA_MONHOC]
GO
/****** Object:  ForeignKey [FK_KETQUA_Table1]    Script Date: 02/20/2012 16:19:45 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_Table1]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA]  WITH CHECK ADD  CONSTRAINT [FK_KETQUA_Table1] FOREIGN KEY([MaHV])
REFERENCES [dbo].[HOCVIEN] ([MaHocVien])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_KETQUA_Table1]') AND type = 'F')
ALTER TABLE [dbo].[KETQUA] CHECK CONSTRAINT [FK_KETQUA_Table1]
GO
/****** Object:  ForeignKey [FK_PHANCONG_GIAOVIEN]    Script Date: 02/20/2012 16:19:45 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_GIAOVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_PHANCONG_LOPHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_LOPHOC] FOREIGN KEY([MaLop])
REFERENCES [dbo].[LOPHOC] ([MaLop])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_LOPHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_LOPHOC]
GO
/****** Object:  ForeignKey [FK_PHANCONG_MONHOC]    Script Date: 02/20/2012 16:19:45 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG]  WITH CHECK ADD  CONSTRAINT [FK_PHANCONG_MONHOC] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_PHANCONG_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[PHANCONG] CHECK CONSTRAINT [FK_PHANCONG_MONHOC]
GO
/****** Object:  ForeignKey [FK_LOPHOC_GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOC_GIAOVIEN] FOREIGN KEY([GVQuanLi])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LOPHOC_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_LOPHOC_Table1]    Script Date: 02/20/2012 16:19:46 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_Table1]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC]  WITH CHECK ADD  CONSTRAINT [FK_LOPHOC_Table1] FOREIGN KEY([LopTruong])
REFERENCES [dbo].[HOCVIEN] ([MaHocVien])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_LOPHOC_Table1]') AND type = 'F')
ALTER TABLE [dbo].[LOPHOC] CHECK CONSTRAINT [FK_LOPHOC_Table1]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_GIAOVIEN] FOREIGN KEY([MaGVQuanLi])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN] CHECK CONSTRAINT [FK_GIAOVIEN_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]    Script Date: 02/20/2012 16:19:46 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[GIAOVIEN] ([MaGV])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC] CHECK CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_GIAOVIEN_DAY_MONHOC_MONHOC]    Script Date: 02/20/2012 16:19:46 ******/
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_MONHOC] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MONHOC] ([MaMonHoc])
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[FK_GIAOVIEN_DAY_MONHOC_MONHOC]') AND type = 'F')
ALTER TABLE [dbo].[GIAOVIEN_DAY_MONHOC] CHECK CONSTRAINT [FK_GIAOVIEN_DAY_MONHOC_MONHOC]
GO




--Câu 1
IF OBJECT_ID ('usp_DemMonThiDau', 'p') is not null
	Drop proc usp_DemMonThiDau
go
Create proc usp_DemMonThiDau @MaHocVien char(10),
							@SoMon int output
as
begin
set @SoMon = (Select count(KQ.MaMonHoc)
				From KETQUA KQ
				Where KQ.Diem >= 5 and KQ.MaHV = @MaHocVien and KQ.LanThi
				 >= all (Select  KQ1.LanThi
						From KETQUA KQ1
						Where KQ1.MaMonHoc = KQ.MaMonHoc and KQ1.MaHV = KQ.MaHV)
				)
end
go
Declare @tongSoMon int
Exec usp_DemMonThiDau 'HV000001',
					@tongSoMon output
print N'Tổng số môn thi đậu: ' + cast(@tongSoMon as char(3))

go
--Câu 2
IF OBJECT_ID ('usp_DSGiaoVien', 'p') is not null
	Drop proc usp_DSGiaoVien
go
Create  proc usp_DSGiaoVien
as
begin
	Select GV.TenGV, count (distinct PC.MaMH) as N'Số môn được phân công'
	From GIAOVIEN GV left join PHANCONG PC on PC.MaGV = GV.MaGV
	Group by GV.TenGV
end
go
Exec usp_DSGiaoVien

--Câu 3
IF OBJECT_ID ('usp_DiemTrungBinh', 'p') is not null
	Drop proc usp_DiemTrungBinh
go
Alter proc cau3 @MaHV char(10),
							@DTB float output
as
begin
	select @DTB = (Select round(AVG((KQ.Diem*MH.SoChi)/(MH.SoChi)), 2)
				From HOCVIEN HV, KETQUA KQ, MONHOC MH
				Where KQ.MaHV = HV.MaHocVien and KQ.MaMonHoc = MH.MaMonHoc and
				HV.MaHocVien = @MaHV and KQ.LanThi 
				>= all (Select max(KQ1.LanThi)
						From KETQUA KQ1
						Where KQ1.MaMonHoc = KQ.MaMonHoc and KQ1.MaHV = KQ.MaHV)
				)
end
go
Declare @DTB float
Exec câu3 '156000000000',
						@DTB output
print N'Điểm trung bình: ' + cast(@DTB as char(3))

go

--Câu 4
IF OBJECT_ID ('usp_XepLoaiHocVien', 'p') is not null
	Drop proc usp_XepLoaiHocVien
go
Create proc usp_XepLoaiHocVien @MaHV char(10),
								@XepLoai nvarchar(30) output
as
begin
	Declare @DTB float
	exec usp_DiemTrungBinh @MaHV, @DTB output
	Select @XepLoai = case when @DTB < 5 then N'Yếu'
							when @DTB = 5 then N'Trung bình'
							when @DTB > 5 and @DTB < 6.5 then N'Trung bình Khá'
							when @DTB >= 6.5 and @DTB < 8 then N'Khá'
							when @DTB > 8 and @DTB < 9 then N'Giỏi'
							when @DTB >= 9 then N'Xuất sắc'
							else N'Không hợp lệ'

						end
end
go
Declare @MaHV char(10), @XepLoai nvarchar(30)
Exec usp_XepLoaiHocVien 'HV000002', @XepLoai output
print N'Xếp loại: ' + cast(@XepLoai as nvarchar(30))

go
--Bai 5
IF OBJECT_ID ('usp_DTBCaoNhat', 'p') is not null
	Drop proc usp_DTBCaoNhat
go
Create proc usp_DTBCaoNhat @MaLop char(10)
as
begin
	Select HV.TenHocVien
	From HOCVIEN HV, KETQUA KQ, MONHOC MH
	Where KQ.MaHV = HV.MaHocVien and KQ.MaMonHoc = MH.MaMonHoc
	and HV.MaLop = @MaLop
	Group by HV.TenHocVien
	Having MAX(KQ.Diem) >= ALL (Select AVG((KQ1.Diem*MH1.SoChi)/(MH1.SoChi))
							From MONHOC MH1, KETQUA KQ1, HOCVIEN HV1
							Where KQ1.MaMonHoc = MH1.MaMonHoc
							and KQ1.MaHV = HV1.MaHocVien
							and HV1.MaLop = @MaLop)
end
go
Declare @TenHocVien nvarchar(50)
Exec @TenHocVien = usp_DTBCaoNhat 'LH000001'
Select @TenHocVien

go
--Cau 6
IF OBJECT_ID ('usp_ThemHocVien', 'p') is not null
	Drop proc usp_ThemHocVien
go
Create proc usp_ThemHocVien @MaHocVien char(10),
							@TenHocVien nvarchar(50),
							@NgaySinh datetime,
							@TinhTrang nvarchar(50),
							@MaLop char(10)
as
begin
	if exists (Select * From HOCVIEN Where MaHocVien = @MaHocVien)
	begin
		print N'Mã Học Viên đã tồn tại.'
		return
	end
	if not exists (Select * From LOPHOC Where MaLop = @MaLop)
	begin
		print N'Lớp Học không hợp lệ'
		return
	end
	if (Select SiSo From LOPHOC Where MaLop = @MaLop) > 20
	begin
		print N'Lớp quá đông. Không thể nhận thêm học viên'
		return
	end
	if @TinhTrang != 'đang học' or @TinhTrang != 'đã tốt nghiệp' or @TinhTrang != 'bị thôi học'
	begin
		print N'Tình trạng không hợp lệ'
		return
	end
	Insert into HocVien
	values (@MaHocVien, @TenHocVien, @NgaySinh, @TinhTrang, @MaLop)
	
	update LOPHOC
	set SiSo = SiSo + 1
	Where MaLop = @MaLop
	print N'Thêm học viên thành công'
end
go
Exec usp_ThemHocVien 'HV000011', N'Choi Yong Hun', '08/04/1997', N'đang học', 'LH000002'

go
--Cau 7
IF OBJECT_ID ('usp_XoaHocVien', 'p') is not null
	Drop proc usp_XoaHocVien
go
Create proc usp_XoaHocVien @MaHocVien char(10),							
							@TinhTrang nvarchar(50)
							
as
begin
	if not exists (Select * From HOCVIEN Where MaHocVien = @MaHocVien)
	begin
		print N'Error! Mã học viên không tồn tại'
		return
	end
	
	if @TinhTrang = 'đang học'
	begin
		print N'Error! Không được xóa học viên đang học'
	end
	
	Delete dbo.HOCVIEN Where MaHocVien = @MaHocVien
	
	update LOPHOC
	set SiSo = SiSo - 1
	
	print N'Xóa học viên thành công'
end

go
Exec usp_XoaHocVien 'HV000001', 'buộc thôi học'

go
--Cau 8
If OBJECT_ID('sp_ChuyenHocVienVaoLop', 'p') is not null
	Drop proc sp_ChuyenHocVienVaoLop
go
Create proc sp_ChuyenHocVienVaoLop @MaHocVien char(10),
								@MaLop char(10)
As
Begin
	Declare @SiSo int
	--Kiểm tra mã học viên
	if not exists (Select * From HOCVIEN Where MaHocVien = @MaHocVien)
	begin
		print N'Error! Mã học viên không tồn tại. End'
		return
	end
	
	--kiểm tra mã lớp
	if not exists (Select * From LOPHOC Where MaLop = @MaLop)
	begin
		print N'Lớp không hợp lê. End'
		return
	end
	
	--cập nhật mã lớp mới cho học viên
	update HOCVIEN
	set MaLop = @MaLop
	Where MaLop = @MaLop
	
	--cập nhật sĩ số trong bảng lớp học(tăng 1)
	update LOPHOC
	set SiSo = SiSo + 1
	
	Set @SiSo = (Select COUNT(SiSo) From LOPHOC)
	
	--cập nhật lại sĩ số trong bảng lớp hoc (giảm 1)
	update LOPHOC
	set SiSo = SiSo - 1
	if @SiSo = 0
	begin
		print N'Mã học viên < 0. Hủy'
	end
	
	print N'Chuyển lớp thành công'	
End
Go
Exec sp_ChuyenHocVienVaoLop 'HV000003', 'LH000002'

go
--Cau 9
If OBJECT_ID('sp_ThemMH', 'p') is not null
	Drop proc sp_ThemMH
go
Create proc sp_ThemMH @TenMonHoc nvarchar(50),
						@SoChi int
as
Begin
	Declare @MaMonHocCuoi nchar(10), @MaMonHocMoi nchar(10), @TenMonHocMoi nchar(10), @STT int
	Select @MaMonHocCuoi = (Select MAX(MaMonHoc)
							From MONHOC)
							
End
go
Exec sp_ThemMH 'Hệ điều hành', 5
