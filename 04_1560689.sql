Create database QLHV﻿

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
--Đưa dữ liệu vào cho cột SoLopDaDay (cột này cho biết số lớp mà giáo viên đã từng
--được phân công giảng dạy) của bảng GiaoVien_Day_MonHoc. Lưu ý: Nếu giáo viên
--dạy lớp đó 2 lần thì vẫn xem là một lớp.

If OBJECT_ID('usp_Add', 'p') is not null
		Drop proc usp_Add
Go
Create proc usp_Add
as
Begin
	--Khai báo cursor
	Declare cur_AddData cursor
		For (Select GV.MaGV, PC.MaMH, count (distinct PC.MaLop)
			From GIAOVIEN GV left join PHANCONG PC on PC.MaGV = GV.MaGV
			Group by GV.MaGV, PC.MaMH)

	--Mở cursor
	Open cur_AddData
	Declare @MaGV nchar(10), @MaMH nchar(10), @SoLuongDaDay int
	--Nạp cursor lần 1
	Fetch Next From cur_AddData into @MaGV, @MaMH, @SoLuongDaDay
	--Nạp cursor lần 2
	while @@FETCH_STATUS = 0
	Begin
		Update GIAOVIEN_DAY_MONHOC
		set SoLopDaDay = @SoLuongDaDay
		Where MaGV = @MaGV and MaMH = @MaMH
		Fetch Next From cur_AddData into @MaGV, @MaMH, @SoLuongDaDay
	End
	--Đóng cursor
	Close cur_AddData
	--Hủy cursor
	Deallocate cur_AddData
End
Go
Exec usp_Add

Go
--Câu 2
--Nhập vào một mã lớp, xuất ra thông tin lớp (mã lớp, sĩ số, tên giáo viên quản lý) cùng
--danh sách các học viên của lớp (họ tên học viên và tuổi) theo định dạng của ví dụ sau:
--
--**Lớp : LH000001
--**Sĩ số : 30 học viên
--**Giáo viên quản lý : Trịnh Hoài An
--**Danh sách học viên
--******1. Lê Thanh Tùng : 30 tuổi
--******2. Trịnh Ngọc Thanh : 26 tuổi
If OBJECT_ID('usp_InputInfom', 'p') is not null
		Drop proc usp_InputInfom
Go
Create proc usp_InputInfom @MaLop nchar(10)
as
Begin
	Declare @SiSo int, @TenGV nvarchar(50)
		Select @SiSo = LH.SiSo, @TenGV = GV.TenGV
		From LOPHOC LH inner join GIAOVIEN GV on GV.MaGV = LH.GVQuanLi
		Where LH.MaLop = @MaLop
	print N'**Lớp: ' + @MaLop
	print N'**Sĩ số: ' + convert(nvarchar(10), @SiSo)
	print N'**Giáo viên quản lý: ' + @TenGV
	print N'**Danh sách giáo viên '
	
	Declare @TuoiHV int, @TenHV nvarchar(50)
	--Khai báo cursor
	Declare cur_List cursor for
		(Select HV.TenHocVien, (YEAR(GetDate()) - YEAR(NgaySinh))
		From HOCVIEN HV
		Where MaLop = @MaLop)
	--Open cursor
	Open cur_List
	--Nạp cursor lần 1
	Fetch Next From cur_List into @TenHV, @TuoiHV
	--Nạp cursor lần 2
	while @@FETCH_STATUS = 0
	Begin
		print  N'******Tên: '  + cast(@TenHV as nvarchar(50))
		print  N'******Tuổi: ' + convert(nvarchar(10), @TuoiHV)
		Fetch Next From cur_List into @TenHV, @TuoiHV
	End
	--Đóng cursor
	Close cur_List
	--Hủy cursor
	Deallocate cur_List
End
Go
Exec usp_InputInfom 'LH000001'


Go
--Câu 3
If OBJECT_ID('usp_InputInfom_Cau3', 'p') is not null
		Drop proc usp_InputInfom_Cau3
Go
Create proc usp_InputInfom_Cau3 @MaLop nchar(10)
as
Begin
	Declare @MaLopHoc nchar(10), @TenLopTruong nvarchar(50)
	Select @MaLopHoc = LH.MaLop, @TenLopTruong = HV.TenHocVien
	From LOPHOC LH inner join HOCVIEN HV on LH.LopTruong = HV.MaHocVien
	Where LH.MaLop = @MaLop

	print N'**Lớp: ' + @MaLopHoc
	print N'**Lớp trưởng: ' + @TenLopTruong
	print N'**Danh sách học viên'

	Declare @TenHV nvarchar(50), @DTB float
	--Khai báo cursor
	Declare cur_List cursor for
	(Select HV.TenHocVien, round(sum(KQ.Diem * MH.SoChi) / sum(MH.SoChi), 2)
	From HOCVIEN HV, KETQUA KQ, MONHOC MH
	Where KQ.MaHV = HV.MaHocVien and KQ.MaMonHoc = MH.MaMonHoc and HV.MaLop = @MaLopHoc
	and Kq.LanThi >= ALL (Select KQ1.LanThi
							From KETQUA KQ1
							Where KQ1.MaMonHoc = Kq.MaMonHoc and KQ1.MaHV = KQ.MaHV)
	Group by HV.TenHocVien)

	--Open cursor
	Open cur_List
	--Nạp cursor lần 1
	Fetch Next From cur_List into @TenHV, @DTB
	--Nạp cursor lần 2
	while @@FETCH_STATUS = 0
	Begin
		print  N'******Tên: '  + cast(@TenHV as nvarchar(50))
		print  N'******ĐTB: ' + convert(nvarchar(10), @DTB)
		Fetch Next From cur_List into @TenHV, @DTB
	End
	--Đóng cursor
	Close cur_List
	--Hủy cursor
	Deallocate cur_List	
End
Go
Exec usp_InputInfom_Cau3 'LH000001'

go
--Câu 4
If OBJECT_ID('usp_InputTable_Format_Cau4', 'p') is not null
		Drop proc usp_InputTable_Format_Cau4
Go
Create proc usp_InputTable_Format_Cau4 @MaHocVien nchar(10)
as
Begin
	Declare @TenHV nvarchar(50), @DTB float
	--Lấy họ tên
	Select @TenHV = HV.TenHocVien
	From HOCVIEN HV
	Where HV.MaHocVien = @MaHocVien
	
	print N'**Họ tên: ' + cast(@TenHV as nvarchar(50))
	
	--Lấy DTB
	set @DTB = (Select round(sum(KQ.Diem * MH.SoChi) / sum(MH.SoChi), 2)
	From HOCVIEN HV, KETQUA KQ, MONHOC MH
	Where KQ.MaHV = HV.MaHocVien and KQ.MaMonHoc = MH.MaMonHoc and HV.MaHocVien = @MaHocVien
	and Kq.LanThi >= ALL (Select KQ1.LanThi
							From KETQUA KQ1
							Where KQ1.MaMonHoc = Kq.MaMonHoc and KQ1.MaHV = KQ.MaHV))
	
	
	print  N'**Điểm trung bình: : ' + convert(nvarchar(10), @DTB)
	
	--Xếp loại
	if @DTB < 5
	Begin
		print N'** Xếp loại: Yếu'
	End
	if @DTB = 5
	Begin
		print N'**Xếp loại: Trung bình'
	End
	if @DTB > 5 and @DTB < 6.5
	Begin
		print N'**Xếp loại: Trung bình khá'
	End
	if @DTB >= 6.5 and @DTB < 8
	Begin
		print N'**Xếp loại: Khá'
	End
	if @DTB > 8 and @DTB < 9
	Begin
		print N'**Xếp loại: Giỏi'
	End
	if @DTB > 9
	Begin
		print N'**Xếp loại: Xuất sắc'
	End
						
	print N'**Kết quả học tập'
						
	Declare @TenMonHoc nvarchar(50), @SoChi int, @Diem float, @i nvarchar(50)
	--Khai báo cursor
	Declare cur_XuatTheoDinhDang cursor for
		(Select MH.TenMonHoc, MH.SoChi, KQ.Diem
		From MONHOC MH, KETQUA KQ
		Where KQ.MaMonHoc = MH.MaMonHoc and KQ.MaHV = @MaHocVien)	
	--Mở cursor
	Open cur_XuatTheoDinhDang
	--Nạp cursor lần 1
	Fetch Next From cur_XuatTheoDinhDang into @TenMonHoc, @SoChi, @Diem
	--Nạp cursor lần 2
	print N'STT' + space(8) + N'Môn học' + space(20) + N'Số tín chỉ' + space(8) + N'Điểm'
	While @@FETCH_STATUS = 0
	Begin
		set @i = 1
		print @i + space(5) +  cast(@TenMonHoc as nvarchar(50)) + space(22) +  convert(nchar(10), @SoChi) + space(8) +  convert(nchar(10), @Diem)
		set @i = @i + 1
		Fetch Next From cur_XuatTheoDinhDang into @TenMonHoc, @SoChi, @Diem
	End
	--Đóng cursor
	Close cur_XuatTheoDinhDang
	--Hủy cursor
	Deallocate cur_XuatTheoDinhDang
End
Go
Exec usp_InputTable_Format_Cau4 'HV000001'