USE [master]
GO
/****** Object:  Database [onlineyoklama]    Script Date: 22.12.2021 14:05:02 ******/
CREATE DATABASE [onlineyoklama]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'onlineyoklama', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\onlineyoklama.mdf' , SIZE = 12288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'onlineyoklama_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\onlineyoklama_log.ldf' , SIZE = 12288KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [onlineyoklama] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [onlineyoklama].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [onlineyoklama] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [onlineyoklama] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [onlineyoklama] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [onlineyoklama] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [onlineyoklama] SET ARITHABORT OFF 
GO
ALTER DATABASE [onlineyoklama] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [onlineyoklama] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [onlineyoklama] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [onlineyoklama] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [onlineyoklama] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [onlineyoklama] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [onlineyoklama] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [onlineyoklama] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [onlineyoklama] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [onlineyoklama] SET  DISABLE_BROKER 
GO
ALTER DATABASE [onlineyoklama] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [onlineyoklama] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [onlineyoklama] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [onlineyoklama] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [onlineyoklama] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [onlineyoklama] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [onlineyoklama] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [onlineyoklama] SET RECOVERY FULL 
GO
ALTER DATABASE [onlineyoklama] SET  MULTI_USER 
GO
ALTER DATABASE [onlineyoklama] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [onlineyoklama] SET DB_CHAINING OFF 
GO
ALTER DATABASE [onlineyoklama] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [onlineyoklama] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [onlineyoklama] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [onlineyoklama] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'onlineyoklama', N'ON'
GO
ALTER DATABASE [onlineyoklama] SET QUERY_STORE = OFF
GO
USE [onlineyoklama]
GO
/****** Object:  Table [dbo].[fakulte]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fakulte](
	[fakulteID] [int] IDENTITY(1,1) NOT NULL,
	[fakulte_adi] [nvarchar](50) NULL,
 CONSTRAINT [PK_fakulte] PRIMARY KEY CLUSTERED 
(
	[fakulteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ilceler]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ilceler](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ilceadi] [nvarchar](255) NOT NULL,
	[sehirid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[iller]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[iller](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sehiradi] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kisi]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kisi](
	[kisiID] [int] IDENTITY(1,1) NOT NULL,
	[adı] [nvarchar](50) NULL,
	[ikinciadi] [nvarchar](50) NULL,
	[soyadi] [nvarchar](50) NULL,
	[dogumtarihi] [date] NULL,
	[cinsiyet] [char](1) NULL,
	[dogumyeri] [nvarchar](50) NULL,
 CONSTRAINT [PK_kişi] PRIMARY KEY CLUSTERED 
(
	[kisiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kisi_adres]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kisi_adres](
	[adresID] [int] IDENTITY(1,1) NOT NULL,
	[kisiID] [int] NOT NULL,
	[il] [int] NOT NULL,
	[ilçe] [int] NOT NULL,
	[mahalle] [int] NOT NULL,
	[adresdetay] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Kişiadres] PRIMARY KEY CLUSTERED 
(
	[adresID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kisi_rol]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kisi_rol](
	[kisi_rol_ID] [int] IDENTITY(1,1) NOT NULL,
	[rol] [int] NULL,
	[kisiID] [int] NULL,
 CONSTRAINT [PK_kişi_rol] PRIMARY KEY CLUSTERED 
(
	[kisi_rol_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kutuphane_kitap]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kutuphane_kitap](
	[kutuphane_kitapID] [int] IDENTITY(1,1) NOT NULL,
	[kitap] [nvarchar](50) NOT NULL,
	[yazar] [nvarchar](50) NOT NULL,
	[yayinevi] [nvarchar](50) NOT NULL,
	[basımevi] [nvarchar](50) NULL,
	[adet] [int] NOT NULL,
	[demirbas] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_kutuphane_kitap] PRIMARY KEY CLUSTERED 
(
	[kutuphane_kitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ogrenci_universite_bilgisi]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ogrenci_universite_bilgisi](
	[UniversiteBilgiID] [int] IDENTITY(1,1) NOT NULL,
	[Universite_adi] [int] NOT NULL,
	[Universite_fakulte] [int] NOT NULL,
	[Universite_bolum] [int] NOT NULL,
	[kisiId] [int] NULL,
 CONSTRAINT [PK_ogrenci_universite_bilgisi] PRIMARY KEY CLUSTERED 
(
	[UniversiteBilgiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ortak_kisi_kitap]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ortak_kisi_kitap](
	[ORTAK_kisi_kitapID] [int] IDENTITY(1,1) NOT NULL,
	[kisiID] [int] NULL,
	[kutuphane_kitapID] [int] NULL,
 CONSTRAINT [PK_ortak_kisi_kitap] PRIMARY KEY CLUSTERED 
(
	[ORTAK_kisi_kitapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablo_adres_il]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablo_adres_il](
	[PlakaID] [int] IDENTITY(1,1) NOT NULL,
	[il] [char](30) NULL,
 CONSTRAINT [PK_tablo_adres_il] PRIMARY KEY CLUSTERED 
(
	[PlakaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablo_adres_ilce]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablo_adres_ilce](
	[İlceID] [int] IDENTITY(1,1) NOT NULL,
	[plakaID] [int] NOT NULL,
	[ilceadi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tablo_adres_ilçe] PRIMARY KEY CLUSTERED 
(
	[İlceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablo_adres_mahalle]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablo_adres_mahalle](
	[mahalleID] [int] IDENTITY(1,1) NOT NULL,
	[plakaID] [int] NOT NULL,
	[ilceID] [int] NOT NULL,
	[mahalleadi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tablo_adres_mahalle_1] PRIMARY KEY CLUSTERED 
(
	[mahalleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablo_bolum]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablo_bolum](
	[bolumID] [int] IDENTITY(1,1) NOT NULL,
	[bolumadi] [nvarchar](50) NULL,
 CONSTRAINT [PK_tablo_bolum] PRIMARY KEY CLUSTERED 
(
	[bolumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablo_rol]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablo_rol](
	[kisi_rol_ID] [int] IDENTITY(1,1) NOT NULL,
	[rol] [nchar](20) NULL,
 CONSTRAINT [PK_tablo_rol] PRIMARY KEY CLUSTERED 
(
	[kisi_rol_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tablo_universite_adi]    Script Date: 22.12.2021 14:05:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tablo_universite_adi](
	[UniversiteadiID] [int] IDENTITY(1,1) NOT NULL,
	[Universiteadi] [nvarchar](50) NULL,
	[Universiteili] [nvarchar](50) NULL,
 CONSTRAINT [PK_tablo_universite_adi] PRIMARY KEY CLUSTERED 
(
	[UniversiteadiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[fakulte] ON 

INSERT [dbo].[fakulte] ([fakulteID], [fakulte_adi]) VALUES (1, N'tıp')
INSERT [dbo].[fakulte] ([fakulteID], [fakulte_adi]) VALUES (2, N'edebiyat')
INSERT [dbo].[fakulte] ([fakulteID], [fakulte_adi]) VALUES (3, N'dis')
INSERT [dbo].[fakulte] ([fakulteID], [fakulte_adi]) VALUES (4, N'ilahiyat')
INSERT [dbo].[fakulte] ([fakulteID], [fakulte_adi]) VALUES (5, N'ziraat')
INSERT [dbo].[fakulte] ([fakulteID], [fakulte_adi]) VALUES (6, N'iletişim')
INSERT [dbo].[fakulte] ([fakulteID], [fakulte_adi]) VALUES (7, N'mühendislik')
SET IDENTITY_INSERT [dbo].[fakulte] OFF
GO
SET IDENTITY_INSERT [dbo].[ilceler] ON 

INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (1, N'ALADAĞ', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (2, N'CEYHAN', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (3, N'ÇUKUROVA', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (4, N'FEKE', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (5, N'İMAMOĞLU', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (6, N'KARAİSALI', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (7, N'KARATAŞ', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (8, N'KOZAN', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (9, N'POZANTI', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (10, N'SAİMBEYLİ', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (11, N'SARIÇAM', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (12, N'SEYHAN', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (13, N'TUFANBEYLİ', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (14, N'YUMURTALIK', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (15, N'YÜREĞİR', 1)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (16, N'BESNİ', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (17, N'ÇELİKHAN', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (18, N'GERGER', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (19, N'GÖLBAŞI', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (20, N'KAHTA', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (21, N'MERKEZ', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (22, N'SAMSAT', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (23, N'SİNCİK', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (24, N'TUT', 2)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (25, N'BAŞMAKÇI', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (26, N'BAYAT', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (27, N'BOLVADİN', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (28, N'ÇAY', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (29, N'ÇOBANLAR', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (30, N'DAZKIRI', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (31, N'DİNAR', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (32, N'EMİRDAĞ', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (33, N'EVCİLER', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (34, N'HOCALAR', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (35, N'İHSANİYE', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (36, N'İSCEHİSAR', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (37, N'KIZILÖREN', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (38, N'MERKEZ', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (39, N'SANDIKLI', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (40, N'SİNANPAŞA', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (41, N'SULTANDAĞI', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (42, N'ŞUHUT', 3)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (43, N'DİYADİN', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (44, N'DOĞUBAYAZIT', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (45, N'ELEŞKİRT', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (46, N'HAMUR', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (47, N'MERKEZ', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (48, N'PATNOS', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (49, N'TAŞLIÇAY', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (50, N'TUTAK', 4)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (51, N'AĞAÇÖREN', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (52, N'ESKİL', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (53, N'GÜLAĞAÇ', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (54, N'GÜZELYURT', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (55, N'MERKEZ', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (56, N'ORTAKÖY', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (57, N'SARIYAHŞİ', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (58, N'SULTANHANI', 68)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (59, N'GÖYNÜCEK', 5)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (60, N'GÜMÜŞHACIKÖY', 5)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (61, N'HAMAMÖZÜ', 5)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (62, N'MERKEZ', 5)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (63, N'MERZİFON', 5)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (64, N'SULUOVA', 5)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (65, N'TAŞOVA', 5)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (66, N'AKYURT', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (67, N'ALTINDAĞ', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (68, N'AYAŞ', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (69, N'BALA', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (70, N'BEYPAZARI', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (71, N'ÇAMLIDERE', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (72, N'ÇANKAYA', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (73, N'ÇUBUK', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (74, N'ELMADAĞ', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (75, N'ETİMESGUT', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (76, N'EVREN', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (77, N'GÖLBAŞI', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (78, N'GÜDÜL', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (79, N'HAYMANA', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (80, N'KAHRAMANKAZAN', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (81, N'KALECİK', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (82, N'KEÇİÖREN', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (83, N'KIZILCAHAMAM', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (84, N'MAMAK', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (85, N'NALLIHAN', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (86, N'POLATLI', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (87, N'PURSAKLAR', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (88, N'SİNCAN', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (89, N'ŞEREFLİKOÇHİSAR', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (90, N'YENİMAHALLE', 6)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (91, N'AKSEKİ', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (92, N'AKSU', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (93, N'ALANYA', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (94, N'DEMRE', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (95, N'DÖŞEMEALTI', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (96, N'ELMALI', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (97, N'FİNİKE', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (98, N'GAZİPAŞA', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (99, N'GÜNDOĞMUŞ', 7)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (100, N'İBRADI', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (101, N'KAŞ', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (102, N'KEMER', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (103, N'KEPEZ', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (104, N'KONYAALTI', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (105, N'KORKUTELİ', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (106, N'KUMLUCA', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (107, N'MANAVGAT', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (108, N'MURATPAŞA', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (109, N'SERİK', 7)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (110, N'ÇILDIR', 75)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (111, N'DAMAL', 75)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (112, N'GÖLE', 75)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (113, N'HANAK', 75)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (114, N'MERKEZ', 75)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (115, N'POSOF', 75)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (116, N'ARDANUÇ', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (117, N'ARHAVİ', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (118, N'BORÇKA', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (119, N'HOPA', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (120, N'KEMALPAŞA', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (121, N'MERKEZ', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (122, N'MURGUL', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (123, N'ŞAVŞAT', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (124, N'YUSUFELİ', 8)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (125, N'BOZDOĞAN', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (126, N'BUHARKENT', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (127, N'ÇİNE', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (128, N'DİDİM', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (129, N'EFELER', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (130, N'GERMENCİK', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (131, N'İNCİRLİOVA', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (132, N'KARACASU', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (133, N'KARPUZLU', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (134, N'KOÇARLI', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (135, N'KÖŞK', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (136, N'KUŞADASI', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (137, N'KUYUCAK', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (138, N'NAZİLLİ', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (139, N'SÖKE', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (140, N'SULTANHİSAR', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (141, N'YENİPAZAR', 9)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (142, N'ALTIEYLÜL', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (143, N'AYVALIK', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (144, N'BALYA', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (145, N'BANDIRMA', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (146, N'BİGADİÇ', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (147, N'BURHANİYE', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (148, N'DURSUNBEY', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (149, N'EDREMİT', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (150, N'ERDEK', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (151, N'GÖMEÇ', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (152, N'GÖNEN', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (153, N'HAVRAN', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (154, N'İVRİNDİ', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (155, N'KARESİ', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (156, N'KEPSUT', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (157, N'MANYAS', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (158, N'MARMARA', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (159, N'SAVAŞTEPE', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (160, N'SINDIRGI', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (161, N'SUSURLUK', 10)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (162, N'AMASRA', 74)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (163, N'KURUCAŞİLE', 74)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (164, N'MERKEZ', 74)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (165, N'ULUS', 74)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (166, N'BEŞİRİ', 72)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (167, N'GERCÜŞ', 72)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (168, N'HASANKEYF', 72)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (169, N'KOZLUK', 72)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (170, N'MERKEZ', 72)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (171, N'SASON', 72)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (172, N'AYDINTEPE', 69)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (173, N'DEMİRÖZÜ', 69)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (174, N'MERKEZ', 69)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (175, N'BOZÜYÜK', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (176, N'GÖLPAZARI', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (177, N'İNHİSAR', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (178, N'MERKEZ', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (179, N'OSMANELİ', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (180, N'PAZARYERİ', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (181, N'SÖĞÜT', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (182, N'YENİPAZAR', 11)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (183, N'ADAKLI', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (184, N'GENÇ', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (185, N'KARLIOVA', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (186, N'KİĞI', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (187, N'MERKEZ', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (188, N'SOLHAN', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (189, N'YAYLADERE', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (190, N'YEDİSU', 12)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (191, N'ADİLCEVAZ', 13)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (192, N'AHLAT', 13)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (193, N'GÜROYMAK', 13)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (194, N'HİZAN', 13)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (195, N'MERKEZ', 13)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (196, N'MUTKİ', 13)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (197, N'TATVAN', 13)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (198, N'DÖRTDİVAN', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (199, N'GEREDE', 14)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (200, N'GÖYNÜK', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (201, N'KIBRISCIK', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (202, N'MENGEN', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (203, N'MERKEZ', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (204, N'MUDURNU', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (205, N'SEBEN', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (206, N'YENİÇAĞA', 14)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (207, N'AĞLASUN', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (208, N'ALTINYAYLA', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (209, N'BUCAK', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (210, N'ÇAVDIR', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (211, N'ÇELTİKÇİ', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (212, N'GÖLHİSAR', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (213, N'KARAMANLI', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (214, N'KEMER', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (215, N'MERKEZ', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (216, N'TEFENNİ', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (217, N'YEŞİLOVA', 15)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (218, N'BÜYÜKORHAN', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (219, N'GEMLİK', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (220, N'GÜRSU', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (221, N'HARMANCIK', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (222, N'İNEGÖL', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (223, N'İZNİK', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (224, N'KARACABEY', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (225, N'KELES', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (226, N'KESTEL', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (227, N'MUDANYA', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (228, N'MUSTAFAKEMALPAŞA', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (229, N'NİLÜFER', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (230, N'ORHANELİ', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (231, N'ORHANGAZİ', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (232, N'OSMANGAZİ', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (233, N'YENİŞEHİR', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (234, N'YILDIRIM', 16)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (235, N'AYVACIK', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (236, N'BAYRAMİÇ', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (237, N'BİGA', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (238, N'BOZCAADA', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (239, N'ÇAN', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (240, N'ECEABAT', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (241, N'EZİNE', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (242, N'GELİBOLU', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (243, N'GÖKÇEADA', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (244, N'LAPSEKİ', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (245, N'MERKEZ', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (246, N'YENİCE', 17)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (247, N'ATKARACALAR', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (248, N'BAYRAMÖREN', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (249, N'ÇERKEŞ', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (250, N'ELDİVAN', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (251, N'ILGAZ', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (252, N'KIZILIRMAK', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (253, N'KORGUN', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (254, N'KURŞUNLU', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (255, N'MERKEZ', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (256, N'ORTA', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (257, N'ŞABANÖZÜ', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (258, N'YAPRAKLI', 18)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (259, N'ALACA', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (260, N'BAYAT', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (261, N'BOĞAZKALE', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (262, N'DODURGA', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (263, N'İSKİLİP', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (264, N'KARGI', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (265, N'LAÇİN', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (266, N'MECİTÖZÜ', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (267, N'MERKEZ', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (268, N'OĞUZLAR', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (269, N'ORTAKÖY', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (270, N'OSMANCIK', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (271, N'SUNGURLU', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (272, N'UĞURLUDAĞ', 19)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (273, N'ACIPAYAM', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (274, N'BABADAĞ', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (275, N'BAKLAN', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (276, N'BEKİLLİ', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (277, N'BEYAĞAÇ', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (278, N'BOZKURT', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (279, N'BULDAN', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (280, N'ÇAL', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (281, N'ÇAMELİ', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (282, N'ÇARDAK', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (283, N'ÇİVRİL', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (284, N'GÜNEY', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (285, N'HONAZ', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (286, N'KALE', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (287, N'MERKEZEFENDİ', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (288, N'PAMUKKALE', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (289, N'SARAYKÖY', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (290, N'SERİNHİSAR', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (291, N'TAVAS', 20)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (292, N'BAĞLAR', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (293, N'BİSMİL', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (294, N'ÇERMİK', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (295, N'ÇINAR', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (296, N'ÇÜNGÜŞ', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (297, N'DİCLE', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (298, N'EĞİL', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (299, N'ERGANİ', 21)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (300, N'HANİ', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (301, N'HAZRO', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (302, N'KAYAPINAR', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (303, N'KOCAKÖY', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (304, N'KULP', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (305, N'LİCE', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (306, N'SİLVAN', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (307, N'SUR', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (308, N'YENİŞEHİR', 21)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (309, N'AKÇAKOCA', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (310, N'CUMAYERİ', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (311, N'ÇİLİMLİ', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (312, N'GÖLYAKA', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (313, N'GÜMÜŞOVA', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (314, N'KAYNAŞLI', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (315, N'MERKEZ', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (316, N'YIĞILCA', 81)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (317, N'ENEZ', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (318, N'HAVSA', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (319, N'İPSALA', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (320, N'KEŞAN', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (321, N'LALAPAŞA', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (322, N'MERİÇ', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (323, N'MERKEZ', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (324, N'SÜLOĞLU', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (325, N'UZUNKÖPRÜ', 22)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (326, N'AĞIN', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (327, N'ALACAKAYA', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (328, N'ARICAK', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (329, N'BASKİL', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (330, N'KARAKOÇAN', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (331, N'KEBAN', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (332, N'KOVANCILAR', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (333, N'MADEN', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (334, N'MERKEZ', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (335, N'PALU', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (336, N'SİVRİCE', 23)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (337, N'ÇAYIRLI', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (338, N'İLİÇ', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (339, N'KEMAH', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (340, N'KEMALİYE', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (341, N'MERKEZ', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (342, N'OTLUKBELİ', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (343, N'REFAHİYE', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (344, N'TERCAN', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (345, N'ÜZÜMLÜ', 24)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (346, N'AŞKALE', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (347, N'AZİZİYE', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (348, N'ÇAT', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (349, N'HINIS', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (350, N'HORASAN', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (351, N'İSPİR', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (352, N'KARAÇOBAN', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (353, N'KARAYAZI', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (354, N'KÖPRÜKÖY', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (355, N'NARMAN', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (356, N'OLTU', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (357, N'OLUR', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (358, N'PALANDÖKEN', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (359, N'PASİNLER', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (360, N'PAZARYOLU', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (361, N'ŞENKAYA', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (362, N'TEKMAN', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (363, N'TORTUM', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (364, N'UZUNDERE', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (365, N'YAKUTİYE', 25)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (366, N'ALPU', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (367, N'BEYLİKOVA', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (368, N'ÇİFTELER', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (369, N'GÜNYÜZÜ', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (370, N'HAN', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (371, N'İNÖNÜ', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (372, N'MAHMUDİYE', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (373, N'MİHALGAZİ', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (374, N'MİHALIÇÇIK', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (375, N'ODUNPAZARI', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (376, N'SARICAKAYA', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (377, N'SEYİTGAZİ', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (378, N'SİVRİHİSAR', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (379, N'TEPEBAŞI', 26)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (380, N'ARABAN', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (381, N'İSLAHİYE', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (382, N'KARKAMIŞ', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (383, N'NİZİP', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (384, N'NURDAĞI', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (385, N'OĞUZELİ', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (386, N'ŞAHİNBEY', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (387, N'ŞEHİTKAMİL', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (388, N'YAVUZELİ', 27)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (389, N'ALUCRA', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (390, N'BULANCAK', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (391, N'ÇAMOLUK', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (392, N'ÇANAKÇI', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (393, N'DERELİ', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (394, N'DOĞANKENT', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (395, N'ESPİYE', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (396, N'EYNESİL', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (397, N'GÖRELE', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (398, N'GÜCE', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (399, N'KEŞAP', 28)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (400, N'MERKEZ', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (401, N'PİRAZİZ', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (402, N'ŞEBİNKARAHİSAR', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (403, N'TİREBOLU', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (404, N'YAĞLIDERE', 28)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (405, N'KELKİT', 29)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (406, N'KÖSE', 29)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (407, N'KÜRTÜN', 29)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (408, N'MERKEZ', 29)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (409, N'ŞİRAN', 29)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (410, N'TORUL', 29)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (411, N'ÇUKURCA', 30)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (412, N'DERECİK', 30)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (413, N'MERKEZ', 30)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (414, N'ŞEMDİNLİ', 30)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (415, N'YÜKSEKOVA', 30)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (416, N'ALTINÖZÜ', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (417, N'ANTAKYA', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (418, N'ARSUZ', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (419, N'BELEN', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (420, N'DEFNE', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (421, N'DÖRTYOL', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (422, N'ERZİN', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (423, N'HASSA', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (424, N'İSKENDERUN', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (425, N'KIRIKHAN', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (426, N'KUMLU', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (427, N'PAYAS', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (428, N'REYHANLI', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (429, N'SAMANDAĞ', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (430, N'YAYLADAĞI', 31)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (431, N'ARALIK', 76)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (432, N'KARAKOYUNLU', 76)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (433, N'MERKEZ', 76)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (434, N'TUZLUCA', 76)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (435, N'AKSU', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (436, N'ATABEY', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (437, N'EĞİRDİR', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (438, N'GELENDOST', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (439, N'GÖNEN', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (440, N'KEÇİBORLU', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (441, N'MERKEZ', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (442, N'SENİRKENT', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (443, N'SÜTÇÜLER', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (444, N'ŞARKİKARAAĞAÇ', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (445, N'ULUBORLU', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (446, N'YALVAÇ', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (447, N'YENİŞARBADEMLİ', 32)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (448, N'ADALAR', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (449, N'ARNAVUTKÖY', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (450, N'ATAŞEHİR', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (451, N'AVCILAR', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (452, N'BAĞCILAR', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (453, N'BAHÇELİEVLER', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (454, N'BAKIRKÖY', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (455, N'BAŞAKŞEHİR', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (456, N'BAYRAMPAŞA', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (457, N'BEŞİKTAŞ', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (458, N'BEYKOZ', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (459, N'BEYLİKDÜZÜ', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (460, N'BEYOĞLU', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (461, N'BÜYÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (462, N'ÇATALCA', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (463, N'ÇEKMEKÖY', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (464, N'ESENLER', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (465, N'ESENYURT', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (466, N'EYÜPSULTAN', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (467, N'FATİH', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (468, N'GAZİOSMANPAŞA', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (469, N'GÜNGÖREN', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (470, N'KADIKÖY', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (471, N'KAĞITHANE', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (472, N'KARTAL', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (473, N'KÜÇÜKÇEKMECE', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (474, N'MALTEPE', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (475, N'PENDİK', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (476, N'SANCAKTEPE', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (477, N'SARIYER', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (478, N'SİLİVRİ', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (479, N'SULTANBEYLİ', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (480, N'SULTANGAZİ', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (481, N'ŞİLE', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (482, N'ŞİŞLİ', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (483, N'TUZLA', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (484, N'ÜMRANİYE', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (485, N'ÜSKÜDAR', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (486, N'ZEYTİNBURNU', 34)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (487, N'ALİAĞA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (488, N'BALÇOVA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (489, N'BAYINDIR', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (490, N'BAYRAKLI', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (491, N'BERGAMA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (492, N'BEYDAĞ', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (493, N'BORNOVA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (494, N'BUCA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (495, N'ÇEŞME', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (496, N'ÇİĞLİ', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (497, N'DİKİLİ', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (498, N'FOÇA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (499, N'GAZİEMİR', 35)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (500, N'GÜZELBAHÇE', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (501, N'KARABAĞLAR', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (502, N'KARABURUN', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (503, N'KARŞIYAKA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (504, N'KEMALPAŞA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (505, N'KINIK', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (506, N'KİRAZ', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (507, N'KONAK', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (508, N'MENDERES', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (509, N'MENEMEN', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (510, N'NARLIDERE', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (511, N'ÖDEMİŞ', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (512, N'SEFERİHİSAR', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (513, N'SELÇUK', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (514, N'TİRE', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (515, N'TORBALI', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (516, N'URLA', 35)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (517, N'AFŞİN', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (518, N'ANDIRIN', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (519, N'ÇAĞLAYANCERİT', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (520, N'DULKADİROĞLU', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (521, N'EKİNÖZÜ', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (522, N'ELBİSTAN', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (523, N'GÖKSUN', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (524, N'NURHAK', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (525, N'ONİKİŞUBAT', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (526, N'PAZARCIK', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (527, N'TÜRKOĞLU', 46)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (528, N'EFLANİ', 78)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (529, N'ESKİPAZAR', 78)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (530, N'MERKEZ', 78)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (531, N'OVACIK', 78)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (532, N'SAFRANBOLU', 78)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (533, N'YENİCE', 78)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (534, N'AYRANCI', 70)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (535, N'BAŞYAYLA', 70)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (536, N'ERMENEK', 70)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (537, N'KAZIMKARABEKİR', 70)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (538, N'MERKEZ', 70)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (539, N'SARIVELİLER', 70)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (540, N'AKYAKA', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (541, N'ARPAÇAY', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (542, N'DİGOR', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (543, N'KAĞIZMAN', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (544, N'MERKEZ', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (545, N'SARIKAMIŞ', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (546, N'SELİM', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (547, N'SUSUZ', 36)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (548, N'ABANA', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (549, N'AĞLI', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (550, N'ARAÇ', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (551, N'AZDAVAY', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (552, N'BOZKURT', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (553, N'CİDE', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (554, N'ÇATALZEYTİN', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (555, N'DADAY', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (556, N'DEVREKANİ', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (557, N'DOĞANYURT', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (558, N'HANÖNÜ', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (559, N'İHSANGAZİ', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (560, N'İNEBOLU', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (561, N'KÜRE', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (562, N'MERKEZ', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (563, N'PINARBAŞI', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (564, N'SEYDİLER', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (565, N'ŞENPAZAR', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (566, N'TAŞKÖPRÜ', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (567, N'TOSYA', 37)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (568, N'AKKIŞLA', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (569, N'BÜNYAN', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (570, N'DEVELİ', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (571, N'FELAHİYE', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (572, N'HACILAR', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (573, N'İNCESU', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (574, N'KOCASİNAN', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (575, N'MELİKGAZİ', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (576, N'ÖZVATAN', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (577, N'PINARBAŞI', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (578, N'SARIOĞLAN', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (579, N'SARIZ', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (580, N'TALAS', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (581, N'TOMARZA', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (582, N'YAHYALI', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (583, N'YEŞİLHİSAR', 38)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (584, N'BAHŞILI', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (585, N'BALIŞEYH', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (586, N'ÇELEBİ', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (587, N'DELİCE', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (588, N'KARAKEÇİLİ', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (589, N'KESKİN', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (590, N'MERKEZ', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (591, N'SULAKYURT', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (592, N'YAHŞİHAN', 71)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (593, N'BABAESKİ', 39)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (594, N'DEMİRKÖY', 39)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (595, N'KOFÇAZ', 39)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (596, N'LÜLEBURGAZ', 39)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (597, N'MERKEZ', 39)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (598, N'PEHLİVANKÖY', 39)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (599, N'PINARHİSAR', 39)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (600, N'VİZE', 39)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (601, N'AKÇAKENT', 40)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (602, N'AKPINAR', 40)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (603, N'BOZTEPE', 40)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (604, N'ÇİÇEKDAĞI', 40)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (605, N'KAMAN', 40)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (606, N'MERKEZ', 40)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (607, N'MUCUR', 40)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (608, N'ELBEYLİ', 79)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (609, N'MERKEZ', 79)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (610, N'MUSABEYLİ', 79)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (611, N'POLATELİ', 79)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (612, N'BAŞİSKELE', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (613, N'ÇAYIROVA', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (614, N'DARICA', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (615, N'DERİNCE', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (616, N'DİLOVASI', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (617, N'GEBZE', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (618, N'GÖLCÜK', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (619, N'İZMİT', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (620, N'KANDIRA', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (621, N'KARAMÜRSEL', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (622, N'KARTEPE', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (623, N'KÖRFEZ', 41)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (624, N'AHIRLI', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (625, N'AKÖREN', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (626, N'AKŞEHİR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (627, N'ALTINEKİN', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (628, N'BEYŞEHİR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (629, N'BOZKIR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (630, N'CİHANBEYLİ', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (631, N'ÇELTİK', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (632, N'ÇUMRA', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (633, N'DERBENT', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (634, N'DEREBUCAK', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (635, N'DOĞANHİSAR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (636, N'EMİRGAZİ', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (637, N'EREĞLİ', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (638, N'GÜNEYSINIR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (639, N'HADİM', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (640, N'HALKAPINAR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (641, N'HÜYÜK', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (642, N'ILGIN', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (643, N'KADINHANI', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (644, N'KARAPINAR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (645, N'KARATAY', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (646, N'KULU', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (647, N'MERAM', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (648, N'SARAYÖNÜ', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (649, N'SELÇUKLU', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (650, N'SEYDİŞEHİR', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (651, N'TAŞKENT', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (652, N'TUZLUKÇU', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (653, N'YALIHÜYÜK', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (654, N'YUNAK', 42)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (655, N'ALTINTAŞ', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (656, N'ASLANAPA', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (657, N'ÇAVDARHİSAR', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (658, N'DOMANİÇ', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (659, N'DUMLUPINAR', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (660, N'EMET', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (661, N'GEDİZ', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (662, N'HİSARCIK', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (663, N'MERKEZ', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (664, N'PAZARLAR', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (665, N'SİMAV', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (666, N'ŞAPHANE', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (667, N'TAVŞANLI', 43)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (668, N'AKÇADAĞ', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (669, N'ARAPGİR', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (670, N'ARGUVAN', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (671, N'BATTALGAZİ', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (672, N'DARENDE', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (673, N'DOĞANŞEHİR', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (674, N'DOĞANYOL', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (675, N'HEKİMHAN', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (676, N'KALE', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (677, N'KULUNCAK', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (678, N'PÜTÜRGE', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (679, N'YAZIHAN', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (680, N'YEŞİLYURT', 44)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (681, N'AHMETLİ', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (682, N'AKHİSAR', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (683, N'ALAŞEHİR', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (684, N'DEMİRCİ', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (685, N'GÖLMARMARA', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (686, N'GÖRDES', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (687, N'KIRKAĞAÇ', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (688, N'KÖPRÜBAŞI', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (689, N'KULA', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (690, N'SALİHLİ', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (691, N'SARIGÖL', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (692, N'SARUHANLI', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (693, N'SELENDİ', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (694, N'SOMA', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (695, N'ŞEHZADELER', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (696, N'TURGUTLU', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (697, N'YUNUSEMRE', 45)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (698, N'ARTUKLU', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (699, N'DARGEÇİT', 47)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (700, N'DERİK', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (701, N'KIZILTEPE', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (702, N'MAZIDAĞI', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (703, N'MİDYAT', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (704, N'NUSAYBİN', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (705, N'ÖMERLİ', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (706, N'SAVUR', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (707, N'YEŞİLLİ', 47)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (708, N'AKDENİZ', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (709, N'ANAMUR', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (710, N'AYDINCIK', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (711, N'BOZYAZI', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (712, N'ÇAMLIYAYLA', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (713, N'ERDEMLİ', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (714, N'GÜLNAR', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (715, N'MEZİTLİ', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (716, N'MUT', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (717, N'SİLİFKE', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (718, N'TARSUS', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (719, N'TOROSLAR', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (720, N'YENİŞEHİR', 33)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (721, N'BODRUM', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (722, N'DALAMAN', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (723, N'DATÇA', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (724, N'FETHİYE', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (725, N'KAVAKLIDERE', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (726, N'KÖYCEĞİZ', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (727, N'MARMARİS', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (728, N'MENTEŞE', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (729, N'MİLAS', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (730, N'ORTACA', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (731, N'SEYDİKEMER', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (732, N'ULA', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (733, N'YATAĞAN', 48)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (734, N'BULANIK', 49)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (735, N'HASKÖY', 49)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (736, N'KORKUT', 49)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (737, N'MALAZGİRT', 49)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (738, N'MERKEZ', 49)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (739, N'VARTO', 49)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (740, N'ACIGÖL', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (741, N'AVANOS', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (742, N'DERİNKUYU', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (743, N'GÜLŞEHİR', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (744, N'HACIBEKTAŞ', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (745, N'KOZAKLI', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (746, N'MERKEZ', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (747, N'ÜRGÜP', 50)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (748, N'ALTUNHİSAR', 51)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (749, N'BOR', 51)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (750, N'ÇAMARDI', 51)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (751, N'ÇİFTLİK', 51)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (752, N'MERKEZ', 51)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (753, N'ULUKIŞLA', 51)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (754, N'AKKUŞ', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (755, N'ALTINORDU', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (756, N'AYBASTI', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (757, N'ÇAMAŞ', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (758, N'ÇATALPINAR', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (759, N'ÇAYBAŞI', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (760, N'FATSA', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (761, N'GÖLKÖY', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (762, N'GÜLYALI', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (763, N'GÜRGENTEPE', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (764, N'İKİZCE', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (765, N'KABADÜZ', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (766, N'KABATAŞ', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (767, N'KORGAN', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (768, N'KUMRU', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (769, N'MESUDİYE', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (770, N'PERŞEMBE', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (771, N'ULUBEY', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (772, N'ÜNYE', 52)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (773, N'BAHÇE', 80)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (774, N'DÜZİÇİ', 80)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (775, N'HASANBEYLİ', 80)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (776, N'KADİRLİ', 80)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (777, N'MERKEZ', 80)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (778, N'SUMBAS', 80)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (779, N'TOPRAKKALE', 80)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (780, N'ARDEŞEN', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (781, N'ÇAMLIHEMŞİN', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (782, N'ÇAYELİ', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (783, N'DEREPAZARI', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (784, N'FINDIKLI', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (785, N'GÜNEYSU', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (786, N'HEMŞİN', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (787, N'İKİZDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (788, N'İYİDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (789, N'KALKANDERE', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (790, N'MERKEZ', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (791, N'PAZAR', 53)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (792, N'ADAPAZARI', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (793, N'AKYAZI', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (794, N'ARİFİYE', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (795, N'ERENLER', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (796, N'FERİZLİ', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (797, N'GEYVE', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (798, N'HENDEK', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (799, N'KARAPÜRÇEK', 54)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (800, N'KARASU', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (801, N'KAYNARCA', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (802, N'KOCAALİ', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (803, N'PAMUKOVA', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (804, N'SAPANCA', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (805, N'SERDİVAN', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (806, N'SÖĞÜTLÜ', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (807, N'TARAKLI', 54)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (808, N'19 MAYIS', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (809, N'ALAÇAM', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (810, N'ASARCIK', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (811, N'ATAKUM', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (812, N'AYVACIK', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (813, N'BAFRA', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (814, N'CANİK', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (815, N'ÇARŞAMBA', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (816, N'HAVZA', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (817, N'İLKADIM', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (818, N'KAVAK', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (819, N'LADİK', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (820, N'SALIPAZARI', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (821, N'TEKKEKÖY', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (822, N'TERME', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (823, N'VEZİRKÖPRÜ', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (824, N'YAKAKENT', 55)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (825, N'BAYKAN', 56)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (826, N'ERUH', 56)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (827, N'KURTALAN', 56)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (828, N'MERKEZ', 56)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (829, N'PERVARİ', 56)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (830, N'ŞİRVAN', 56)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (831, N'TİLLO', 56)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (832, N'AYANCIK', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (833, N'BOYABAT', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (834, N'DİKMEN', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (835, N'DURAĞAN', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (836, N'ERFELEK', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (837, N'GERZE', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (838, N'MERKEZ', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (839, N'SARAYDÜZÜ', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (840, N'TÜRKELİ', 57)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (841, N'AKINCILAR', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (842, N'ALTINYAYLA', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (843, N'DİVRİĞİ', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (844, N'DOĞANŞAR', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (845, N'GEMEREK', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (846, N'GÖLOVA', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (847, N'GÜRÜN', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (848, N'HAFİK', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (849, N'İMRANLI', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (850, N'KANGAL', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (851, N'KOYULHİSAR', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (852, N'MERKEZ', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (853, N'SUŞEHRİ', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (854, N'ŞARKIŞLA', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (855, N'ULAŞ', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (856, N'YILDIZELİ', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (857, N'ZARA', 58)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (858, N'AKÇAKALE', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (859, N'BİRECİK', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (860, N'BOZOVA', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (861, N'CEYLANPINAR', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (862, N'EYYÜBİYE', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (863, N'HALFETİ', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (864, N'HALİLİYE', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (865, N'HARRAN', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (866, N'HİLVAN', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (867, N'KARAKÖPRÜ', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (868, N'SİVEREK', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (869, N'SURUÇ', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (870, N'VİRANŞEHİR', 63)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (871, N'BEYTÜŞŞEBAP', 73)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (872, N'CİZRE', 73)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (873, N'GÜÇLÜKONAK', 73)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (874, N'İDİL', 73)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (875, N'MERKEZ', 73)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (876, N'SİLOPİ', 73)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (877, N'ULUDERE', 73)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (878, N'ÇERKEZKÖY', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (879, N'ÇORLU', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (880, N'ERGENE', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (881, N'HAYRABOLU', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (882, N'KAPAKLI', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (883, N'MALKARA', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (884, N'MARMARAEREĞLİSİ', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (885, N'MURATLI', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (886, N'SARAY', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (887, N'SÜLEYMANPAŞA', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (888, N'ŞARKÖY', 59)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (889, N'ALMUS', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (890, N'ARTOVA', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (891, N'BAŞÇİFTLİK', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (892, N'ERBAA', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (893, N'MERKEZ', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (894, N'NİKSAR', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (895, N'PAZAR', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (896, N'REŞADİYE', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (897, N'SULUSARAY', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (898, N'TURHAL', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (899, N'YEŞİLYURT', 60)
GO
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (900, N'ZİLE', 60)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (901, N'AKÇAABAT', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (902, N'ARAKLI', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (903, N'ARSİN', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (904, N'BEŞİKDÜZÜ', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (905, N'ÇARŞIBAŞI', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (906, N'ÇAYKARA', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (907, N'DERNEKPAZARI', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (908, N'DÜZKÖY', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (909, N'HAYRAT', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (910, N'KÖPRÜBAŞI', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (911, N'MAÇKA', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (912, N'OF', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (913, N'ORTAHİSAR', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (914, N'SÜRMENE', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (915, N'ŞALPAZARI', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (916, N'TONYA', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (917, N'VAKFIKEBİR', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (918, N'YOMRA', 61)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (919, N'ÇEMİŞGEZEK', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (920, N'HOZAT', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (921, N'MAZGİRT', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (922, N'MERKEZ', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (923, N'NAZIMİYE', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (924, N'OVACIK', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (925, N'PERTEK', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (926, N'PÜLÜMÜR', 62)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (927, N'BANAZ', 64)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (928, N'EŞME', 64)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (929, N'KARAHALLI', 64)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (930, N'MERKEZ', 64)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (931, N'SİVASLI', 64)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (932, N'ULUBEY', 64)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (933, N'BAHÇESARAY', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (934, N'BAŞKALE', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (935, N'ÇALDIRAN', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (936, N'ÇATAK', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (937, N'EDREMİT', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (938, N'ERCİŞ', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (939, N'GEVAŞ', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (940, N'GÜRPINAR', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (941, N'İPEKYOLU', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (942, N'MURADİYE', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (943, N'ÖZALP', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (944, N'SARAY', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (945, N'TUŞBA', 65)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (946, N'ALTINOVA', 77)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (947, N'ARMUTLU', 77)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (948, N'ÇINARCIK', 77)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (949, N'ÇİFTLİKKÖY', 77)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (950, N'MERKEZ', 77)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (951, N'TERMAL', 77)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (952, N'AKDAĞMADENİ', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (953, N'AYDINCIK', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (954, N'BOĞAZLIYAN', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (955, N'ÇANDIR', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (956, N'ÇAYIRALAN', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (957, N'ÇEKEREK', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (958, N'KADIŞEHRİ', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (959, N'MERKEZ', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (960, N'SARAYKENT', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (961, N'SARIKAYA', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (962, N'SORGUN', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (963, N'ŞEFAATLİ', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (964, N'YENİFAKILI', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (965, N'YERKÖY', 66)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (966, N'ALAPLI', 67)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (967, N'ÇAYCUMA', 67)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (968, N'DEVREK', 67)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (969, N'EREĞLİ', 67)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (970, N'GÖKÇEBEY', 67)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (971, N'KİLİMLİ', 67)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (972, N'KOZLU', 67)
INSERT [dbo].[ilceler] ([id], [ilceadi], [sehirid]) VALUES (973, N'MERKEZ', 67)
SET IDENTITY_INSERT [dbo].[ilceler] OFF
GO
SET IDENTITY_INSERT [dbo].[iller] ON 

INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (1, N'ADANA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (2, N'ADIYAMAN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (3, N'AFYON')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (4, N'AĞRI')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (5, N'AMASYA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (6, N'ANKARA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (7, N'ANTALYA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (8, N'ARTVİN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (9, N'AYDIN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (10, N'BALIKESİR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (11, N'BİLECİK')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (12, N'BİNGÖL')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (13, N'BİTLİS')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (14, N'BOLU')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (15, N'BURDUR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (16, N'BURSA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (17, N'ÇANAKKALE')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (18, N'ÇANKIRI')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (19, N'ÇORUM')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (20, N'DENİZLİ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (21, N'DİYARBAKIR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (22, N'EDİRNE')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (23, N'ELAZIĞ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (24, N'ERZİNCAN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (25, N'ERZURUM')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (26, N'ESKİŞEHİR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (27, N'GAZİANTEP')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (28, N'GİRESUN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (29, N'GÜMÜŞHANE')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (30, N'HAKKARİ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (31, N'HATAY')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (32, N'ISPARTA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (33, N'İÇEL')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (34, N'İSTANBUL')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (35, N'İZMİR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (36, N'KARS')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (37, N'KASTAMONU')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (38, N'KAYSERİ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (39, N'KIRKLARELİ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (40, N'KIRŞEHİR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (41, N'KOCAELİ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (42, N'KONYA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (43, N'KÜTAHYA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (44, N'MALATYA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (45, N'MANİSA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (46, N'KAHRAMANMARAŞ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (47, N'MARDİN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (48, N'MUĞLA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (49, N'MUŞ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (50, N'NEVŞEHİR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (51, N'NİĞDE')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (52, N'ORDU')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (53, N'RİZE')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (54, N'SAKARYA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (55, N'SAMSUN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (56, N'SİİRT')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (57, N'SİNOP')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (58, N'SİVAS')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (59, N'TEKİRDAĞ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (60, N'TOKAT')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (61, N'TRABZON')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (62, N'TUNCELİ')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (63, N'ŞANLIURFA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (64, N'UŞAK')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (65, N'VAN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (66, N'YOZGAT')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (67, N'ZONGULDAK')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (68, N'AKSARAY')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (69, N'BAYBURT')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (70, N'KARAMAN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (71, N'KIRIKKALE')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (72, N'BATMAN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (73, N'ŞIRNAK')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (74, N'BARTIN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (75, N'ARDAHAN')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (76, N'IĞDIR')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (77, N'YALOVA')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (78, N'KARABÜK')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (79, N'KİLİS')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (80, N'OSMANİYE')
INSERT [dbo].[iller] ([id], [sehiradi]) VALUES (81, N'DÜZCE')
SET IDENTITY_INSERT [dbo].[iller] OFF
GO
SET IDENTITY_INSERT [dbo].[kisi] ON 

INSERT [dbo].[kisi] ([kisiID], [adı], [ikinciadi], [soyadi], [dogumtarihi], [cinsiyet], [dogumyeri]) VALUES (1, N'ŞUAYİP', NULL, N'KÜÇÜKBAŞOL', CAST(N'1977-09-18' AS Date), N'E', N'ANKARA')
INSERT [dbo].[kisi] ([kisiID], [adı], [ikinciadi], [soyadi], [dogumtarihi], [cinsiyet], [dogumyeri]) VALUES (2, N'osman', N'', N'sarı', CAST(N'1975-01-01' AS Date), N'E', N'ankara')
SET IDENTITY_INSERT [dbo].[kisi] OFF
GO
SET IDENTITY_INSERT [dbo].[kisi_adres] ON 

INSERT [dbo].[kisi_adres] ([adresID], [kisiID], [il], [ilçe], [mahalle], [adresdetay]) VALUES (3, 1, 6, 2, 3, N'ÇAMLI')
SET IDENTITY_INSERT [dbo].[kisi_adres] OFF
GO
SET IDENTITY_INSERT [dbo].[kisi_rol] ON 

INSERT [dbo].[kisi_rol] ([kisi_rol_ID], [rol], [kisiID]) VALUES (1, 2, 1)
SET IDENTITY_INSERT [dbo].[kisi_rol] OFF
GO
SET IDENTITY_INSERT [dbo].[kutuphane_kitap] ON 

INSERT [dbo].[kutuphane_kitap] ([kutuphane_kitapID], [kitap], [yazar], [yayinevi], [basımevi], [adet], [demirbas]) VALUES (1, N'suc ve ceza ', N'dostoyevski ', N'yapı kredi ', N'yapı kredi ', 10, N'dos2011')
INSERT [dbo].[kutuphane_kitap] ([kutuphane_kitapID], [kitap], [yazar], [yayinevi], [basımevi], [adet], [demirbas]) VALUES (2, N'ser', N'zülfü livaneli', N'dogan kitap', N'dogan kitap', 15, N'zul2019')
INSERT [dbo].[kutuphane_kitap] ([kutuphane_kitapID], [kitap], [yazar], [yayinevi], [basımevi], [adet], [demirbas]) VALUES (4, N'safahat', N'm.akif Ersoy', N'Timas yayınları', N'timas', 15, N'saf206')
SET IDENTITY_INSERT [dbo].[kutuphane_kitap] OFF
GO
SET IDENTITY_INSERT [dbo].[ogrenci_universite_bilgisi] ON 

INSERT [dbo].[ogrenci_universite_bilgisi] ([UniversiteBilgiID], [Universite_adi], [Universite_fakulte], [Universite_bolum], [kisiId]) VALUES (2, 1, 2, 3, 1)
SET IDENTITY_INSERT [dbo].[ogrenci_universite_bilgisi] OFF
GO
SET IDENTITY_INSERT [dbo].[ortak_kisi_kitap] ON 

INSERT [dbo].[ortak_kisi_kitap] ([ORTAK_kisi_kitapID], [kisiID], [kutuphane_kitapID]) VALUES (1, 1, 1)
INSERT [dbo].[ortak_kisi_kitap] ([ORTAK_kisi_kitapID], [kisiID], [kutuphane_kitapID]) VALUES (2, 1, 2)
INSERT [dbo].[ortak_kisi_kitap] ([ORTAK_kisi_kitapID], [kisiID], [kutuphane_kitapID]) VALUES (3, 1, 4)
INSERT [dbo].[ortak_kisi_kitap] ([ORTAK_kisi_kitapID], [kisiID], [kutuphane_kitapID]) VALUES (4, 2, 2)
SET IDENTITY_INSERT [dbo].[ortak_kisi_kitap] OFF
GO
SET IDENTITY_INSERT [dbo].[tablo_adres_il] ON 

INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (1, N'ADANA                         ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (2, N'ADIYAMAN                      ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (3, N'AFYONKARAHİSAR                ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (4, N'AĞRI                          ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (5, N'AMASYA                        ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (6, N'ANKARA                        ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (7, N'ANTALYA                       ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (8, N'ARTVİN                        ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (9, N'AYDIN                         ')
INSERT [dbo].[tablo_adres_il] ([PlakaID], [il]) VALUES (10, N'BALIKESİR                     ')
SET IDENTITY_INSERT [dbo].[tablo_adres_il] OFF
GO
SET IDENTITY_INSERT [dbo].[tablo_adres_ilce] ON 

INSERT [dbo].[tablo_adres_ilce] ([İlceID], [plakaID], [ilceadi]) VALUES (1, 6, N'ÇANKAYA')
INSERT [dbo].[tablo_adres_ilce] ([İlceID], [plakaID], [ilceadi]) VALUES (2, 6, N'GÖLBAŞI')
INSERT [dbo].[tablo_adres_ilce] ([İlceID], [plakaID], [ilceadi]) VALUES (3, 6, N'KEÇİÖREN')
INSERT [dbo].[tablo_adres_ilce] ([İlceID], [plakaID], [ilceadi]) VALUES (4, 6, N'SİNCAN')
SET IDENTITY_INSERT [dbo].[tablo_adres_ilce] OFF
GO
SET IDENTITY_INSERT [dbo].[tablo_adres_mahalle] ON 

INSERT [dbo].[tablo_adres_mahalle] ([mahalleID], [plakaID], [ilceID], [mahalleadi]) VALUES (3, 6, 2, N'KARŞIYAKA')
INSERT [dbo].[tablo_adres_mahalle] ([mahalleID], [plakaID], [ilceID], [mahalleadi]) VALUES (4, 6, 2, N'MERSİN')
INSERT [dbo].[tablo_adres_mahalle] ([mahalleID], [plakaID], [ilceID], [mahalleadi]) VALUES (5, 3, 1, N'VERİ')
SET IDENTITY_INSERT [dbo].[tablo_adres_mahalle] OFF
GO
SET IDENTITY_INSERT [dbo].[tablo_bolum] ON 

INSERT [dbo].[tablo_bolum] ([bolumID], [bolumadi]) VALUES (1, N'kamu')
INSERT [dbo].[tablo_bolum] ([bolumID], [bolumadi]) VALUES (2, N'endüstri')
INSERT [dbo].[tablo_bolum] ([bolumID], [bolumadi]) VALUES (3, N'makina')
INSERT [dbo].[tablo_bolum] ([bolumID], [bolumadi]) VALUES (4, N'elektrik')
INSERT [dbo].[tablo_bolum] ([bolumID], [bolumadi]) VALUES (5, N'işletme')
SET IDENTITY_INSERT [dbo].[tablo_bolum] OFF
GO
SET IDENTITY_INSERT [dbo].[tablo_rol] ON 

INSERT [dbo].[tablo_rol] ([kisi_rol_ID], [rol]) VALUES (1, N'ÖĞRENCİ             ')
INSERT [dbo].[tablo_rol] ([kisi_rol_ID], [rol]) VALUES (2, N'İDARİ PERSONEL      ')
INSERT [dbo].[tablo_rol] ([kisi_rol_ID], [rol]) VALUES (3, N'ŞİRKET PERSONELİ    ')
INSERT [dbo].[tablo_rol] ([kisi_rol_ID], [rol]) VALUES (4, N'ÖĞRETMEN            ')
SET IDENTITY_INSERT [dbo].[tablo_rol] OFF
GO
SET IDENTITY_INSERT [dbo].[tablo_universite_adi] ON 

INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (1, N'odtü', N'ankara')
INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (2, N'bilkent', N'ankara')
INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (3, N'itü', N'istanbu')
INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (4, N'ktü', N'trabzon')
INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (5, N'selçuk', N'konya')
INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (6, N'bogaziçi', N'istanbul')
INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (7, N'erciyes', N'kayseri')
INSERT [dbo].[tablo_universite_adi] ([UniversiteadiID], [Universiteadi], [Universiteili]) VALUES (8, N'cu', N'sivas')
SET IDENTITY_INSERT [dbo].[tablo_universite_adi] OFF
GO
ALTER TABLE [dbo].[ilceler]  WITH CHECK ADD  CONSTRAINT [FK_ilceler_iller] FOREIGN KEY([sehirid])
REFERENCES [dbo].[iller] ([id])
GO
ALTER TABLE [dbo].[ilceler] CHECK CONSTRAINT [FK_ilceler_iller]
GO
ALTER TABLE [dbo].[kisi_adres]  WITH CHECK ADD  CONSTRAINT [FK_kisi_adres_kisi] FOREIGN KEY([kisiID])
REFERENCES [dbo].[kisi] ([kisiID])
GO
ALTER TABLE [dbo].[kisi_adres] CHECK CONSTRAINT [FK_kisi_adres_kisi]
GO
ALTER TABLE [dbo].[kisi_adres]  WITH CHECK ADD  CONSTRAINT [FK_kisi_adres_tablo_adres_il] FOREIGN KEY([il])
REFERENCES [dbo].[tablo_adres_il] ([PlakaID])
GO
ALTER TABLE [dbo].[kisi_adres] CHECK CONSTRAINT [FK_kisi_adres_tablo_adres_il]
GO
ALTER TABLE [dbo].[kisi_adres]  WITH CHECK ADD  CONSTRAINT [FK_kisi_adres_tablo_adres_ilce] FOREIGN KEY([ilçe])
REFERENCES [dbo].[tablo_adres_ilce] ([İlceID])
GO
ALTER TABLE [dbo].[kisi_adres] CHECK CONSTRAINT [FK_kisi_adres_tablo_adres_ilce]
GO
ALTER TABLE [dbo].[kisi_adres]  WITH CHECK ADD  CONSTRAINT [FK_kisi_adres_tablo_adres_mahalle] FOREIGN KEY([mahalle])
REFERENCES [dbo].[tablo_adres_mahalle] ([mahalleID])
GO
ALTER TABLE [dbo].[kisi_adres] CHECK CONSTRAINT [FK_kisi_adres_tablo_adres_mahalle]
GO
ALTER TABLE [dbo].[kisi_rol]  WITH CHECK ADD  CONSTRAINT [FK_kisi_rol_kisi] FOREIGN KEY([kisiID])
REFERENCES [dbo].[kisi] ([kisiID])
GO
ALTER TABLE [dbo].[kisi_rol] CHECK CONSTRAINT [FK_kisi_rol_kisi]
GO
ALTER TABLE [dbo].[kisi_rol]  WITH CHECK ADD  CONSTRAINT [FK_kisi_rol_tablo_rol] FOREIGN KEY([rol])
REFERENCES [dbo].[tablo_rol] ([kisi_rol_ID])
GO
ALTER TABLE [dbo].[kisi_rol] CHECK CONSTRAINT [FK_kisi_rol_tablo_rol]
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi]  WITH CHECK ADD  CONSTRAINT [FK_ogrenci_universite_bilgisi_fakulte] FOREIGN KEY([Universite_fakulte])
REFERENCES [dbo].[fakulte] ([fakulteID])
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi] CHECK CONSTRAINT [FK_ogrenci_universite_bilgisi_fakulte]
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi]  WITH CHECK ADD  CONSTRAINT [FK_ogrenci_universite_bilgisi_kisi] FOREIGN KEY([kisiId])
REFERENCES [dbo].[kisi] ([kisiID])
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi] CHECK CONSTRAINT [FK_ogrenci_universite_bilgisi_kisi]
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi]  WITH CHECK ADD  CONSTRAINT [FK_ogrenci_universite_bilgisi_tablo_bolum] FOREIGN KEY([Universite_bolum])
REFERENCES [dbo].[tablo_bolum] ([bolumID])
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi] CHECK CONSTRAINT [FK_ogrenci_universite_bilgisi_tablo_bolum]
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi]  WITH CHECK ADD  CONSTRAINT [FK_ogrenci_universite_bilgisi_tablo_universite_adi] FOREIGN KEY([Universite_adi])
REFERENCES [dbo].[tablo_universite_adi] ([UniversiteadiID])
GO
ALTER TABLE [dbo].[ogrenci_universite_bilgisi] CHECK CONSTRAINT [FK_ogrenci_universite_bilgisi_tablo_universite_adi]
GO
ALTER TABLE [dbo].[ortak_kisi_kitap]  WITH CHECK ADD  CONSTRAINT [FK_ortak_kisi_kitap_kisi] FOREIGN KEY([kisiID])
REFERENCES [dbo].[kisi] ([kisiID])
GO
ALTER TABLE [dbo].[ortak_kisi_kitap] CHECK CONSTRAINT [FK_ortak_kisi_kitap_kisi]
GO
ALTER TABLE [dbo].[ortak_kisi_kitap]  WITH CHECK ADD  CONSTRAINT [FK_ortak_kisi_kitap_kutuphane_kitap] FOREIGN KEY([kutuphane_kitapID])
REFERENCES [dbo].[kutuphane_kitap] ([kutuphane_kitapID])
GO
ALTER TABLE [dbo].[ortak_kisi_kitap] CHECK CONSTRAINT [FK_ortak_kisi_kitap_kutuphane_kitap]
GO
USE [master]
GO
ALTER DATABASE [onlineyoklama] SET  READ_WRITE 
GO
