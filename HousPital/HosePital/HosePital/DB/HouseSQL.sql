USE [master]
GO
/****** Object:  Database [HoseDB]    Script Date: 2019/11/26 11:24:36 ******/
CREATE DATABASE [HoseDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HoseDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS03\MSSQL\DATA\HoseDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HoseDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS03\MSSQL\DATA\HoseDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HoseDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HoseDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HoseDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HoseDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HoseDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HoseDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HoseDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [HoseDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HoseDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HoseDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HoseDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HoseDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HoseDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HoseDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HoseDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HoseDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HoseDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HoseDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HoseDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HoseDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HoseDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HoseDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HoseDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HoseDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HoseDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HoseDB] SET  MULTI_USER 
GO
ALTER DATABASE [HoseDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HoseDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HoseDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HoseDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HoseDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HoseDB] SET QUERY_STORE = OFF
GO
USE [HoseDB]
GO
/****** Object:  Table [dbo].[db_CType]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_CType](
	[CTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CTypeName] [nvarchar](50) NOT NULL,
	[CDiscount] [decimal](18, 2) NOT NULL,
	[Fine] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_db_CType] PRIMARY KEY CLUSTERED 
(
	[CTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_INPUT]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_INPUT](
	[InID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](10) NOT NULL,
	[CTypeID] [int] NOT NULL,
	[CustomerInDate] [date] NOT NULL,
	[CustomerOutDate] [date] NOT NULL,
	[RoomNID] [int] NOT NULL,
	[WorkerID] [int] NOT NULL,
	[CustomerIDNumber] [nvarchar](19) NULL,
	[CustomerPeoper] [int] NOT NULL,
	[CustomerSex] [nvarchar](2) NOT NULL,
	[CustomerPrice] [decimal](18, 2) NULL,
	[CustomerAddress] [nvarchar](30) NULL,
	[CustomerPhone] [nvarchar](13) NULL,
 CONSTRAINT [PK_db_INPUT] PRIMARY KEY CLUSTERED 
(
	[InID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_MANAGER]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_MANAGER](
	[ManagerID] [int] IDENTITY(1,1) NOT NULL,
	[ManagerName] [nvarchar](10) NOT NULL,
	[ManagerPassword] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_db_MANAGER] PRIMARY KEY CLUSTERED 
(
	[ManagerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_PRODUCTTYPE]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_PRODUCTTYPE](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](10) NOT NULL,
	[ProductPrice] [decimal](18, 2) NOT NULL,
	[ProductImg] [nvarchar](50) NULL,
	[PTypeID] [int] NOT NULL,
	[ProductCount] [int] NOT NULL,
	[ProductPut] [int] NULL,
 CONSTRAINT [PK_db_PRODUCTTYPE] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_PTYPE]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_PTYPE](
	[PTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PTypeName] [nvarchar](10) NULL,
 CONSTRAINT [PK_db_PTYPE] PRIMARY KEY CLUSTERED 
(
	[PTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_ROOM]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ROOM](
	[RoomNID] [int] IDENTITY(1000,1) NOT NULL,
	[RoomID] [int] NOT NULL,
	[RoomNume] [nvarchar](50) NULL,
	[RoomImage] [nvarchar](50) NULL,
	[RoomPrice] [decimal](18, 2) NULL,
	[RoomStat] [nchar](2) NULL,
 CONSTRAINT [PK_db_ROOM] PRIMARY KEY CLUSTERED 
(
	[RoomNID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_ROOMTYPE]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_ROOMTYPE](
	[RoomID] [int] IDENTITY(1,1) NOT NULL,
	[RoomType] [nvarchar](10) NOT NULL,
	[RoomPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_db_ROOMTYPE] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[db_WORKER]    Script Date: 2019/11/26 11:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[db_WORKER](
	[WorkerID] [int] IDENTITY(1,1) NOT NULL,
	[WorkerName] [nvarchar](10) NOT NULL,
	[WorkerSex] [nvarchar](2) NOT NULL,
	[WorkerIDNumber] [nvarchar](18) NOT NULL,
	[WorkerPosition] [nvarchar](50) NOT NULL,
	[WorkerWage] [decimal](18, 2) NOT NULL,
	[WorkerPassword] [nvarchar](20) NOT NULL,
	[WorkerImage] [nvarchar](50) NULL,
	[WorkerPhone] [nvarchar](13) NULL,
 CONSTRAINT [PK_db_WORKER] PRIMARY KEY CLUSTERED 
(
	[WorkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[db_CType] ON 

INSERT [dbo].[db_CType] ([CTypeID], [CTypeName], [CDiscount], [Fine]) VALUES (2, N'VIP', CAST(0.80 AS Decimal(18, 2)), CAST(0.50 AS Decimal(18, 2)))
INSERT [dbo].[db_CType] ([CTypeID], [CTypeName], [CDiscount], [Fine]) VALUES (3, N'普通用户', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[db_CType] ([CTypeID], [CTypeName], [CDiscount], [Fine]) VALUES (4, N'超级VIP', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[db_CType] OFF
SET IDENTITY_INSERT [dbo].[db_INPUT] ON 

INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (4, N'张琦', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1002, 1, N'610528198606057215', 1, N'男', NULL, NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (5, N'张琦', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1002, 1, N'610528198606057215', 1, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (6, N'张琦', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1002, 1, N'610528198606057215', 1, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (7, N'王莽', 2, CAST(N'2019-09-20' AS Date), CAST(N'2019-09-23' AS Date), 1003, 1, N'610528198606057215', 4, N'男', CAST(600.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (8, N'徐华', 2, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1004, 1, N'610528198606057215', 4, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (9, N'李连', 2, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1009, 1, N'610528198606057215', 6, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (11, N'柯梦达', 2, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1008, 1, N'610528198606057215', 6, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (12, N'王树', 4, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1005, 1, N'610528198606057215', 5, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (13, N'懒汉请', 4, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1002, 1, N'610528198606057215', 6, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (14, N'李四人', 2, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1007, 1, N'610528198606057215', 6, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (15, N'张盟主', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1008, 1, N'610528198606057215', 1, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (16, N'李艳辉', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1002, 1, N'610528198606057215', 4, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (17, N'似水长青', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1002, 1, N'610528198606057215', 5, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (18, N'白夜行', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1002, 1, N'610528198606057215', 5, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (19, N'徐连忙', 3, CAST(N'2019-08-09' AS Date), CAST(N'2019-08-10' AS Date), 1006, 1, N'610528198606057215', 5, N'男', CAST(200.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[db_INPUT] ([InID], [CustomerName], [CTypeID], [CustomerInDate], [CustomerOutDate], [RoomNID], [WorkerID], [CustomerIDNumber], [CustomerPeoper], [CustomerSex], [CustomerPrice], [CustomerAddress], [CustomerPhone]) VALUES (23, N'小河', 3, CAST(N'2019-11-26' AS Date), CAST(N'2019-11-27' AS Date), 1003, 5, N'610528199909167215', 3, N'男', CAST(3000.00 AS Decimal(18, 2)), N'浙江', NULL)
SET IDENTITY_INSERT [dbo].[db_INPUT] OFF
SET IDENTITY_INSERT [dbo].[db_MANAGER] ON 

INSERT [dbo].[db_MANAGER] ([ManagerID], [ManagerName], [ManagerPassword]) VALUES (1, N'admin', N'123456')
INSERT [dbo].[db_MANAGER] ([ManagerID], [ManagerName], [ManagerPassword]) VALUES (2, N'User', N'123456')
INSERT [dbo].[db_MANAGER] ([ManagerID], [ManagerName], [ManagerPassword]) VALUES (4, N'admining', N'321654')
SET IDENTITY_INSERT [dbo].[db_MANAGER] OFF
SET IDENTITY_INSERT [dbo].[db_PRODUCTTYPE] ON 

INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (1, N'锅巴', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (2, N'锅巴', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (3, N'床上三件套', CAST(50.00 AS Decimal(18, 2)), N'', 1, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (4, N'拖鞋', CAST(10.00 AS Decimal(18, 2)), N'', 1, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (5, N'康师傅矿泉水', CAST(5.00 AS Decimal(18, 2)), N'', 3, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (6, N'哇哈哈', CAST(7.50 AS Decimal(18, 2)), N'', 3, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (7, N'香蕉na', CAST(6.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (8, N'薯片', CAST(6.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (9, N'辣条', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (10, N'威龙', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (11, N'膨化比骨干', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (12, N'锅巴', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (13, N'床上三件套', CAST(50.00 AS Decimal(18, 2)), N'', 1, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (14, N'拖鞋', CAST(10.00 AS Decimal(18, 2)), N'', 1, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (15, N'康师傅矿泉水', CAST(5.00 AS Decimal(18, 2)), N'', 3, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (16, N'哇哈哈', CAST(7.50 AS Decimal(18, 2)), N'', 3, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (17, N'香蕉na', CAST(6.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (18, N'薯片', CAST(6.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (19, N'辣条', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (20, N'威龙', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
INSERT [dbo].[db_PRODUCTTYPE] ([ProductID], [ProductName], [ProductPrice], [ProductImg], [PTypeID], [ProductCount], [ProductPut]) VALUES (21, N'膨化比骨干', CAST(5.00 AS Decimal(18, 2)), N'', 2, 100, 0)
SET IDENTITY_INSERT [dbo].[db_PRODUCTTYPE] OFF
SET IDENTITY_INSERT [dbo].[db_PTYPE] ON 

INSERT [dbo].[db_PTYPE] ([PTypeID], [PTypeName]) VALUES (1, N'床上用品')
INSERT [dbo].[db_PTYPE] ([PTypeID], [PTypeName]) VALUES (2, N'食品')
INSERT [dbo].[db_PTYPE] ([PTypeID], [PTypeName]) VALUES (3, N'水')
SET IDENTITY_INSERT [dbo].[db_PTYPE] OFF
SET IDENTITY_INSERT [dbo].[db_ROOM] ON 

INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1000, 1, N'1001', NULL, CAST(180.50 AS Decimal(18, 2)), N'1 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1001, 1, N'1002', NULL, CAST(180.50 AS Decimal(18, 2)), N'1 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1002, 1, N'1005', NULL, CAST(190.50 AS Decimal(18, 2)), N'0 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1003, 2, N'1004', NULL, CAST(200.00 AS Decimal(18, 2)), N'1 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1004, 2, N'1009', NULL, CAST(200.00 AS Decimal(18, 2)), N'0 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1005, 1, N'1010', NULL, CAST(180.00 AS Decimal(18, 2)), N'1 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1006, 2, N'1008', NULL, CAST(190.00 AS Decimal(18, 2)), N'1 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1007, 3, N'10250', NULL, CAST(500.00 AS Decimal(18, 2)), N'0 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1008, 4, N'1314', NULL, CAST(1650.00 AS Decimal(18, 2)), N'0 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1009, 4, N'5201', NULL, CAST(1650.00 AS Decimal(18, 2)), N'1 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1013, 4, N'5201314', NULL, CAST(2000.00 AS Decimal(18, 2)), N'0 ')
INSERT [dbo].[db_ROOM] ([RoomNID], [RoomID], [RoomNume], [RoomImage], [RoomPrice], [RoomStat]) VALUES (1014, 3, N'1101', NULL, CAST(900.00 AS Decimal(18, 2)), N'1 ')
SET IDENTITY_INSERT [dbo].[db_ROOM] OFF
SET IDENTITY_INSERT [dbo].[db_ROOMTYPE] ON 

INSERT [dbo].[db_ROOMTYPE] ([RoomID], [RoomType], [RoomPrice]) VALUES (1, N'标间', CAST(180.50 AS Decimal(18, 2)))
INSERT [dbo].[db_ROOMTYPE] ([RoomID], [RoomType], [RoomPrice]) VALUES (2, N'单人间', CAST(190.00 AS Decimal(18, 2)))
INSERT [dbo].[db_ROOMTYPE] ([RoomID], [RoomType], [RoomPrice]) VALUES (3, N'套房', CAST(500.00 AS Decimal(18, 2)))
INSERT [dbo].[db_ROOMTYPE] ([RoomID], [RoomType], [RoomPrice]) VALUES (4, N'总统套房', CAST(1569.65 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[db_ROOMTYPE] OFF
SET IDENTITY_INSERT [dbo].[db_WORKER] ON 

INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (1, N'张小河', N'男', N'612599197503127856', N'普通员工', CAST(400.00 AS Decimal(18, 2)), N'365412', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (4, N'李月月', N'女', N'615126198503057895', N'普通员工', CAST(3300.00 AS Decimal(18, 2)), N'123456', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (5, N'王仁丰', N'男', N'685956199006252578', N'普通员工', CAST(3350.00 AS Decimal(18, 2)), N'123456', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (6, N'钟山道', N'男', N'658956199906032536', N'食品经理', CAST(3300.00 AS Decimal(18, 2)), N'123456', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (8, N'金河', N'男', N'685236198602036548', N'经理', CAST(3300.00 AS Decimal(18, 2)), N'123456', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (9, N'水生', N'男', N'689523198732625892', N'员工', CAST(3400.00 AS Decimal(18, 2)), N'123456', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (10, N'金斯', N'女', N'526398198605069874', N'员工', CAST(3500.00 AS Decimal(18, 2)), N'123456', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (11, N'奈何', N'女', N'548963199602135687', N'员工', CAST(2500.00 AS Decimal(18, 2)), N'123456', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (47, N'小小', N'男', N'610528199909167215', N'食品经理', CAST(555555.00 AS Decimal(18, 2)), N'55555', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (54, N'徐春磊', N'男', N'600528199909167215', N'普通员工', CAST(50000.00 AS Decimal(18, 2)), N'5689741', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (57, N'蒙扎', N'男', N'610528199909167215', N'普通员工', CAST(500000.00 AS Decimal(18, 2)), N'5555', NULL, NULL)
INSERT [dbo].[db_WORKER] ([WorkerID], [WorkerName], [WorkerSex], [WorkerIDNumber], [WorkerPosition], [WorkerWage], [WorkerPassword], [WorkerImage], [WorkerPhone]) VALUES (58, N'孟sir', N'男', N'610528198736051241', N'普通员工', CAST(5000.00 AS Decimal(18, 2)), N'558211', NULL, NULL)
SET IDENTITY_INSERT [dbo].[db_WORKER] OFF
ALTER TABLE [dbo].[db_INPUT]  WITH CHECK ADD  CONSTRAINT [FK_db_INPUT_db_CType] FOREIGN KEY([CTypeID])
REFERENCES [dbo].[db_CType] ([CTypeID])
GO
ALTER TABLE [dbo].[db_INPUT] CHECK CONSTRAINT [FK_db_INPUT_db_CType]
GO
ALTER TABLE [dbo].[db_INPUT]  WITH CHECK ADD  CONSTRAINT [FK_db_INPUT_db_ROOM] FOREIGN KEY([RoomNID])
REFERENCES [dbo].[db_ROOM] ([RoomNID])
GO
ALTER TABLE [dbo].[db_INPUT] CHECK CONSTRAINT [FK_db_INPUT_db_ROOM]
GO
ALTER TABLE [dbo].[db_INPUT]  WITH CHECK ADD  CONSTRAINT [FK_db_INPUT_db_WORKER] FOREIGN KEY([WorkerID])
REFERENCES [dbo].[db_WORKER] ([WorkerID])
GO
ALTER TABLE [dbo].[db_INPUT] CHECK CONSTRAINT [FK_db_INPUT_db_WORKER]
GO
ALTER TABLE [dbo].[db_PRODUCTTYPE]  WITH CHECK ADD  CONSTRAINT [FK_db_PRODUCTTYPE_db_PTYPE] FOREIGN KEY([PTypeID])
REFERENCES [dbo].[db_PTYPE] ([PTypeID])
GO
ALTER TABLE [dbo].[db_PRODUCTTYPE] CHECK CONSTRAINT [FK_db_PRODUCTTYPE_db_PTYPE]
GO
ALTER TABLE [dbo].[db_ROOM]  WITH CHECK ADD  CONSTRAINT [FK_db_ROOM_db_ROOMTYPE] FOREIGN KEY([RoomID])
REFERENCES [dbo].[db_ROOMTYPE] ([RoomID])
GO
ALTER TABLE [dbo].[db_ROOM] CHECK CONSTRAINT [FK_db_ROOM_db_ROOMTYPE]
GO
USE [master]
GO
ALTER DATABASE [HoseDB] SET  READ_WRITE 
GO
