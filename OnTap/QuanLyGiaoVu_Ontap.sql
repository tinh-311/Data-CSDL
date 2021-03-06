USE [master]
GO
/****** Object:  Database [QuanLyGiaoVu]    Script Date: 26/05/2021 10:35:04 AM ******/
CREATE DATABASE [QuanLyGiaoVu]
 CONTAINMENT = NONE

ALTER DATABASE [QuanLyGiaoVu] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyGiaoVu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyGiaoVu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyGiaoVu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyGiaoVu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLyGiaoVu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyGiaoVu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET RECOVERY FULL 
GO
ALTER DATABASE [QuanLyGiaoVu] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyGiaoVu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyGiaoVu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyGiaoVu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyGiaoVu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLyGiaoVu] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QuanLyGiaoVu', N'ON'
GO
ALTER DATABASE [QuanLyGiaoVu] SET QUERY_STORE = OFF
GO
USE [QuanLyGiaoVu]
GO
/****** Object:  Table [dbo].[DANGKY]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANGKY](
	[masv] [char](5) NOT NULL,
	[namhoc] [char](9) NOT NULL,
	[hocky] [int] NOT NULL,
	[mamh] [varchar](4) NOT NULL,
 CONSTRAINT [PK_DANGKY] PRIMARY KEY CLUSTERED 
(
	[masv] ASC,
	[namhoc] ASC,
	[hocky] ASC,
	[mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGDAY]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGDAY](
	[namhoc] [char](9) NOT NULL,
	[hocky] [int] NOT NULL,
	[mamh] [varchar](4) NOT NULL,
	[phutrach] [char](2) NOT NULL,
	[magv] [char](4) NULL,
 CONSTRAINT [PK_GIANGDAY] PRIMARY KEY CLUSTERED 
(
	[namhoc] ASC,
	[hocky] ASC,
	[mamh] ASC,
	[phutrach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIANGVIEN]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIANGVIEN](
	[magv] [char](4) NOT NULL,
	[hogv] [nvarchar](20) NULL,
	[tengv] [nvarchar](10) NULL,
	[hocvi] [char](2) NULL,
	[hocham] [varchar](3) NULL,
	[makhoa] [varchar](4) NULL,
 CONSTRAINT [PK_GIANGVIEN] PRIMARY KEY CLUSTERED 
(
	[magv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHOA]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHOA](
	[makhoa] [varchar](4) NOT NULL,
	[tenkhoa] [nvarchar](30) NULL,
	[tongsocb] [int] NULL,
 CONSTRAINT [PK_KHOA] PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MONHOC]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MONHOC](
	[mamh] [varchar](4) NOT NULL,
	[tenmh] [nvarchar](50) NULL,
	[sotinchi] [int] NULL,
	[sotietLT] [int] NULL,
	[sotietTH] [int] NULL,
	[makhoa] [varchar](4) NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY CLUSTERED 
(
	[mamh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QLYKHOA]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QLYKHOA](
	[makhoa] [varchar](4) NOT NULL,
	[chucvu] [char](2) NOT NULL,
	[tungay] [date] NOT NULL,
	[magv] [char](4) NULL,
	[denngay] [date] NULL,
 CONSTRAINT [PK_QLYKHOA] PRIMARY KEY CLUSTERED 
(
	[makhoa] ASC,
	[chucvu] ASC,
	[tungay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SINHVIEN]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SINHVIEN](
	[masv] [char](5) NOT NULL,
	[hosv] [nvarchar](20) NULL,
	[tensv] [nvarchar](10) NULL,
	[nu] [bit] NULL,
	[ngaysinh] [date] NULL,
	[matinhtp] [char](2) NULL,
	[tinhtranggd] [nvarchar](2) NULL,
	[makhoa] [varchar](4) NULL,
	[nhaphoc] [char](9) NULL,
	[hocbong] [real] NULL,
 CONSTRAINT [PK_SINHVIEN] PRIMARY KEY CLUSTERED 
(
	[masv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANNHAN]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANNHAN](
	[magv] [char](4) NOT NULL,
	[hotentn] [char](50) NOT NULL,
	[ngaysinhtn] [date] NULL,
	[moiquanhe] [nvarchar](20) NULL,
 CONSTRAINT [PK_THANNHAN] PRIMARY KEY CLUSTERED 
(
	[magv] ASC,
	[hotentn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THI]    Script Date: 26/05/2021 10:35:04 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THI](
	[namhoc] [char](9) NOT NULL,
	[hocky] [int] NOT NULL,
	[mamh] [varchar](4) NOT NULL,
	[giamthi] [char](4) NOT NULL,
	[ngaythi] [date] NULL,
	[giothi] [time](7) NULL,
	[phgthi] [varchar](10) NULL,
 CONSTRAINT [PK_THI] PRIMARY KEY CLUSTERED 
(
	[namhoc] ASC,
	[hocky] ASC,
	[mamh] ASC,
	[giamthi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91002', N'2014-1025', 2, N'CSDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91007', N'2014-2015', 1, N'CTDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91007', N'2014-2015', 2, N'CSDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91023', N'2014-2015', 2, N'CSDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91024', N'2014-2015', 1, N'CTDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91024', N'2014-2015', 2, N'CSDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91045', N'2014-2015', 2, N'TKMC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91088', N'2014-2015', 2, N'TKMC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91102', N'2014-2015', 2, N'TKMC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91109', N'2014-2015', 2, N'CNGE')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91120', N'2014-2015', 1, N'SHDC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91120', N'2014-2015', 2, N'CNGE')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'91133', N'2014-2015', 2, N'CNGE')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92001', N'2014-2015', 1, N'CTDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92013', N'2014-2015', 1, N'CTDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92024', N'2014-2015', 1, N'CTDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92025', N'2014-2015', 1, N'CTDL')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92027', N'2014-2015', 1, N'VLDC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92031', N'2014-2015', 1, N'VLDC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92048', N'2014-2015', 1, N'VLDC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92173', N'2014-2015', 1, N'SHDC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92188', N'2014-2015', 1, N'SHDC')
INSERT [dbo].[DANGKY] ([masv], [namhoc], [hocky], [mamh]) VALUES (N'92242', N'2014-2015', 1, N'SHDC')
GO
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2013-2014', 1, N'CSDL', N'LT', N'G001')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2013-2014', 2, N'CSDL', N'LT', N'G002')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'CSDL', N'LT', N'G001')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'CSDL', N'TH', N'G002')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'CTDL', N'LT', N'G001')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'CTDL', N'TH', N'G002')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'SHDC', N'LT', N'G007')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'TKMC', N'LT', N'G004')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'TKMC', N'TH', N'G005')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 1, N'VLDC', N'LT', N'G004')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'CNGE', N'LT', N'G007')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'CNGE', N'TH', N'G008')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'CSDL', N'LT', N'G002')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'CSDL', N'TH', N'G002')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'LTWB', N'LT', NULL)
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'LTWB', N'TH', NULL)
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'TKMC', N'LT', N'G005')
INSERT [dbo].[GIANGDAY] ([namhoc], [hocky], [mamh], [phutrach], [magv]) VALUES (N'2014-2015', 2, N'TKMC', N'TH', N'G006')
GO
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G001', N'Nguyễn Văn', N'Sư', N'TS', N'', N'CNTT')
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G002', N'Nguyễn Ngọc', N'Thúy', N'TH', N'', N'CNTT')
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G003', N'Trần Văn', N'Năm', N'TH', N'', N'CNTT')
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G004', N'Trần Đồng', N'Nai', N'TS', N'PGS', N'VL')
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G005', N'Nguyễn Kim', N'Oanh', N'TH', N'', N'VL')
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G006', N'Bùi Mạnh', N'Từ', N'TH', N'', N'VL')
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G007', N'Nguyễn Văn', N'Chín', N'TS', N'PGS', N'CNSH')
INSERT [dbo].[GIANGVIEN] ([magv], [hogv], [tengv], [hocvi], [hocham], [makhoa]) VALUES (N'G008', N'Lê Thị Mai', N'Vàng', N'TH', N'', N'CNSH')
GO
INSERT [dbo].[KHOA] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'CNSH', N'Công nghệ sinh học', 14)
INSERT [dbo].[KHOA] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'CNTT', N'Công nghệ thông tin', 26)
INSERT [dbo].[KHOA] ([makhoa], [tenkhoa], [tongsocb]) VALUES (N'VL', N'Vật lý', 17)
GO
INSERT [dbo].[MONHOC] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'CNGE', N'Công nghệ gien', 4, 45, 15, N'CNSH')
INSERT [dbo].[MONHOC] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'CSDL', N'Cơ sở dữ liệu', 3, 30, 15, N'CNTT')
INSERT [dbo].[MONHOC] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'CTDL', N'Cấu trúc dữ liệu', 4, 45, 15, N'CNTT')
INSERT [dbo].[MONHOC] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'LTWB', N'Lập trình web', 3, 30, 15, N'CNTT')
INSERT [dbo].[MONHOC] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'SHDC', N'Sinh học đại cương', 3, 30, 15, N'CNSH')
INSERT [dbo].[MONHOC] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'TKMC', N'Thiết kế mạch', 4, 45, 15, N'VL')
INSERT [dbo].[MONHOC] ([mamh], [tenmh], [sotinchi], [sotietLT], [sotietTH], [makhoa]) VALUES (N'VLDC', N'Vật lý đại cương', 3, 45, NULL, N'VL')
GO
INSERT [dbo].[QLYKHOA] ([makhoa], [chucvu], [tungay], [magv], [denngay]) VALUES (N'CNSH', N'PK', CAST(N'2007-04-29' AS Date), N'G008', NULL)
INSERT [dbo].[QLYKHOA] ([makhoa], [chucvu], [tungay], [magv], [denngay]) VALUES (N'CNSH', N'TK', CAST(N'2007-04-29' AS Date), N'G007', NULL)
INSERT [dbo].[QLYKHOA] ([makhoa], [chucvu], [tungay], [magv], [denngay]) VALUES (N'CNTT', N'PK', CAST(N'2007-04-29' AS Date), N'G002', NULL)
INSERT [dbo].[QLYKHOA] ([makhoa], [chucvu], [tungay], [magv], [denngay]) VALUES (N'CNTT', N'TK', CAST(N'2007-04-29' AS Date), N'G001', NULL)
INSERT [dbo].[QLYKHOA] ([makhoa], [chucvu], [tungay], [magv], [denngay]) VALUES (N'VL', N'PK', CAST(N'2007-04-29' AS Date), N'G005', NULL)
INSERT [dbo].[QLYKHOA] ([makhoa], [chucvu], [tungay], [magv], [denngay]) VALUES (N'VL', N'TK', CAST(N'2007-04-29' AS Date), N'G004', NULL)
GO
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91002', N'Nguyễn Ngọc', N'An', 1, CAST(N'1995-03-07' AS Date), N'02', N'ĐT', N'CNTT', N'2013-2014', 80000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91007', N'Nguyễn Đồng', N'Nai', 1, CAST(N'1995-05-12' AS Date), N'41', N'ĐT', N'CNTT', N'2013-2014', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91023', N'Nguyễn Hùng', N'Sư', 0, CAST(N'1994-10-12' AS Date), N'56', N'ĐT', N'CNTT', N'2013-2014', 120000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91024', N'Võ Văn', N'Năm', 0, CAST(N'1995-07-11' AS Date), N'02', N'ĐT', N'CNTT', N'2013-2014', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91045', N'Phạm Sĩ', N'Tử', 0, CAST(N'1994-07-16' AS Date), N'34', N'ĐT', N'VL', N'2013-2014', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91088', N'Lưu Thu', N'Vàng', 1, CAST(N'1995-07-05' AS Date), N'02', N'ĐT', N'VL', N'2013-2014', 120000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91102', N'Lê Thị', N'Chín', 1, CAST(N'1994-08-23' AS Date), N'46', N'ĐT', N'VL', N'2013-2014', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91109', N'Nguyễn Văn', N'Bốn', 0, CAST(N'1992-11-24' AS Date), N'02', N'ĐT', N'CNSH', N'2013-2014', 80000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91120', N'Tôn Thất', N'Quyền', 0, CAST(N'1991-12-18' AS Date), N'02', N'ĐT', N'CNSH', N'2013-2014', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'91133', N'Hà Thị Giang', N'Long', 1, CAST(N'1995-12-25' AS Date), N'02', N'ĐT', N'CNSH', N'2013-2014', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92001', N'Bùi Mạnh', N'An', 0, CAST(N'1996-06-09' AS Date), N'02', N'ĐT', N'CNTT', N'2014-2015', 120000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92013', N'Lê Hữu', N'Chí', 0, CAST(N'1996-06-10' AS Date), N'02', N'ĐT', N'CNTT', N'2014-2015', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92024', N'Võ Thành', N'Công', 0, CAST(N'1996-07-09' AS Date), N'02', N'ĐT', N'CNTT', N'2014-2015', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92025', N'Trần Quang', N'Cường', 0, CAST(N'1996-07-18' AS Date), N'02', N'ĐT', N'CNTT', N'2014-2015', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92027', N'Phan Văn', N'Hải', 0, CAST(N'1996-07-31' AS Date), N'02', N'ĐT', N'VL', N'2014-2015', 80000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92031', N'Phan Văn', N'Hoàng', 0, CAST(N'1996-09-25' AS Date), N'51', N'ĐT', N'VL', N'2014-2-15', 120000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92048', N'Huỳnh Thanh', N'Lâm', 0, CAST(N'1996-10-15' AS Date), N'50', N'ĐT', N'VL', N'2014-2015', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92173', N'Trần Minh', N'Sang', 0, CAST(N'1996-12-17' AS Date), N'02', N'ĐT', N'CNSH', N'2014-2015', NULL)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92188', N'Phạm Văn', N'Hiển', 0, CAST(N'1996-12-24' AS Date), N'56', N'ĐT', N'CNSH', N'2014-2015', 80000)
INSERT [dbo].[SINHVIEN] ([masv], [hosv], [tensv], [nu], [ngaysinh], [matinhtp], [tinhtranggd], [makhoa], [nhaphoc], [hocbong]) VALUES (N'92242', N'Phan Thị Anh', N'Thu', 1, CAST(N'1996-11-30' AS Date), N'02', N'ĐT', N'CNSH', N'2014-2-15', NULL)
GO
INSERT [dbo].[THANNHAN] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G001', N'Nguy?n Thi Chín                                   ', CAST(N'1988-12-25' AS Date), N'Vợ')
INSERT [dbo].[THANNHAN] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G005', N'Tr?n H?u Bình                                     ', CAST(N'1999-11-04' AS Date), N'Con trai')
INSERT [dbo].[THANNHAN] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G005', N'Tr?n H?u Th?ng                                    ', CAST(N'1970-09-24' AS Date), N'Chồng')
INSERT [dbo].[THANNHAN] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G005', N'Tr?n Ki?u Oanh                                    ', CAST(N'2002-01-07' AS Date), N'Con gái')
INSERT [dbo].[THANNHAN] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G006', N'Bùi M?nh Ng?c                                     ', CAST(N'1965-06-02' AS Date), N'Bố')
INSERT [dbo].[THANNHAN] ([magv], [hotentn], [ngaysinhtn], [moiquanhe]) VALUES (N'G007', N'Nguy?n Th? An                                     ', CAST(N'1998-07-14' AS Date), N'Con gái')
GO
INSERT [dbo].[THI] ([namhoc], [hocky], [mamh], [giamthi], [ngaythi], [giothi], [phgthi]) VALUES (N'2014-2014', 1, N'VLDC', N'G004', CAST(N'2014-12-31' AS Date), CAST(N'07:00:00' AS Time), N'205')
INSERT [dbo].[THI] ([namhoc], [hocky], [mamh], [giamthi], [ngaythi], [giothi], [phgthi]) VALUES (N'2014-2015', 1, N'CTDL', N'G001', CAST(N'2014-12-31' AS Date), CAST(N'08:00:00' AS Time), N'103')
INSERT [dbo].[THI] ([namhoc], [hocky], [mamh], [giamthi], [ngaythi], [giothi], [phgthi]) VALUES (N'2014-2015', 1, N'SHDC', N'G007', CAST(N'2014-12-31' AS Date), CAST(N'08:00:00' AS Time), N'307')
INSERT [dbo].[THI] ([namhoc], [hocky], [mamh], [giamthi], [ngaythi], [giothi], [phgthi]) VALUES (N'2014-2015', 2, N'CNGE', N'G007', CAST(N'2015-05-28' AS Date), CAST(N'08:00:00' AS Time), N'309')
INSERT [dbo].[THI] ([namhoc], [hocky], [mamh], [giamthi], [ngaythi], [giothi], [phgthi]) VALUES (N'2014-2015', 2, N'CSDL', N'G002', CAST(N'2015-05-28' AS Date), CAST(N'08:00:00' AS Time), N'105')
INSERT [dbo].[THI] ([namhoc], [hocky], [mamh], [giamthi], [ngaythi], [giothi], [phgthi]) VALUES (N'2014-2015', 2, N'TKMC', N'G005', CAST(N'2015-05-28' AS Date), CAST(N'08:00:00' AS Time), NULL)
GO
ALTER TABLE [dbo].[DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_DANGKY_MONHOC] FOREIGN KEY([mamh])
REFERENCES [dbo].[MONHOC] ([mamh])
GO
ALTER TABLE [dbo].[DANGKY] CHECK CONSTRAINT [FK_DANGKY_MONHOC]
GO
ALTER TABLE [dbo].[DANGKY]  WITH CHECK ADD  CONSTRAINT [FK_DANGKY_SINHVIEN] FOREIGN KEY([masv])
REFERENCES [dbo].[SINHVIEN] ([masv])
GO
ALTER TABLE [dbo].[DANGKY] CHECK CONSTRAINT [FK_DANGKY_SINHVIEN]
GO
ALTER TABLE [dbo].[GIANGDAY]  WITH CHECK ADD  CONSTRAINT [FK_GIANGDAY_GIANGVIEN] FOREIGN KEY([magv])
REFERENCES [dbo].[GIANGVIEN] ([magv])
GO
ALTER TABLE [dbo].[GIANGDAY] CHECK CONSTRAINT [FK_GIANGDAY_GIANGVIEN]
GO
ALTER TABLE [dbo].[GIANGDAY]  WITH CHECK ADD  CONSTRAINT [FK_GIANGDAY_MONHOC] FOREIGN KEY([mamh])
REFERENCES [dbo].[MONHOC] ([mamh])
GO
ALTER TABLE [dbo].[GIANGDAY] CHECK CONSTRAINT [FK_GIANGDAY_MONHOC]
GO
ALTER TABLE [dbo].[GIANGVIEN]  WITH CHECK ADD  CONSTRAINT [FK_GIANGVIEN_KHOA] FOREIGN KEY([makhoa])
REFERENCES [dbo].[KHOA] ([makhoa])
GO
ALTER TABLE [dbo].[GIANGVIEN] CHECK CONSTRAINT [FK_GIANGVIEN_KHOA]
GO
ALTER TABLE [dbo].[MONHOC]  WITH CHECK ADD  CONSTRAINT [FK_MONHOC_KHOA] FOREIGN KEY([makhoa])
REFERENCES [dbo].[KHOA] ([makhoa])
GO
ALTER TABLE [dbo].[MONHOC] CHECK CONSTRAINT [FK_MONHOC_KHOA]
GO
ALTER TABLE [dbo].[QLYKHOA]  WITH CHECK ADD  CONSTRAINT [FK_QLYKHOA_GIANGVIEN] FOREIGN KEY([magv])
REFERENCES [dbo].[GIANGVIEN] ([magv])
GO
ALTER TABLE [dbo].[QLYKHOA] CHECK CONSTRAINT [FK_QLYKHOA_GIANGVIEN]
GO
ALTER TABLE [dbo].[QLYKHOA]  WITH CHECK ADD  CONSTRAINT [FK_QLYKHOA_KHOA] FOREIGN KEY([makhoa])
REFERENCES [dbo].[KHOA] ([makhoa])
GO
ALTER TABLE [dbo].[QLYKHOA] CHECK CONSTRAINT [FK_QLYKHOA_KHOA]
GO
ALTER TABLE [dbo].[SINHVIEN]  WITH CHECK ADD  CONSTRAINT [FK_SINHVIEN_KHOA] FOREIGN KEY([makhoa])
REFERENCES [dbo].[KHOA] ([makhoa])
GO
ALTER TABLE [dbo].[SINHVIEN] CHECK CONSTRAINT [FK_SINHVIEN_KHOA]
GO
ALTER TABLE [dbo].[THANNHAN]  WITH CHECK ADD  CONSTRAINT [FK_THANNHAN_GIANGVIEN] FOREIGN KEY([magv])
REFERENCES [dbo].[GIANGVIEN] ([magv])
GO
ALTER TABLE [dbo].[THANNHAN] CHECK CONSTRAINT [FK_THANNHAN_GIANGVIEN]
GO
ALTER TABLE [dbo].[THI]  WITH CHECK ADD  CONSTRAINT [FK_THI_MONHOC] FOREIGN KEY([mamh])
REFERENCES [dbo].[MONHOC] ([mamh])
GO
ALTER TABLE [dbo].[THI] CHECK CONSTRAINT [FK_THI_MONHOC]
GO
USE [master]
GO
ALTER DATABASE [QuanLyGiaoVu] SET  READ_WRITE 
GO
