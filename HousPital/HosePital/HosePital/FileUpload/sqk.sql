USE [master]
GO
/****** Object:  Database [ProdDB]    Script Date: 2019/9/30 13:16:25 ******/
CREATE DATABASE [ProdDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProdDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProdDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProdDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ProdDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ProdDB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProdDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProdDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProdDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProdDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProdDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProdDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProdDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProdDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProdDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProdDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProdDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProdDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProdDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProdDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProdDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProdDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProdDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProdDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProdDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProdDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProdDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProdDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProdDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProdDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProdDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProdDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProdDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProdDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProdDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProdDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ProdDB] SET QUERY_STORE = OFF
GO
USE [ProdDB]
GO
/****** Object:  Table [dbo].[AdminD]    Script Date: 2019/9/30 13:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[sata] [int] NULL,
 CONSTRAINT [PK_AdminD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThingD]    Script Date: 2019/9/30 13:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThingD](
	[ThingID] [int] IDENTITY(1,1) NOT NULL,
	[ThingName] [nvarchar](50) NULL,
	[ThingState] [nvarchar](50) NULL,
	[TimeID] [int] NULL,
 CONSTRAINT [PK_ThingD] PRIMARY KEY CLUSTERED 
(
	[ThingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeD]    Script Date: 2019/9/30 13:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeD](
	[TimeID] [int] IDENTITY(1,1) NOT NULL,
	[TimeName] [date] NULL,
 CONSTRAINT [PK_TimeD] PRIMARY KEY CLUSTERED 
(
	[TimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminD] ON 

INSERT [dbo].[AdminD] ([ID], [Name], [Password], [sata]) VALUES (1, N'admin', N'123456', 0)
SET IDENTITY_INSERT [dbo].[AdminD] OFF
ALTER TABLE [dbo].[ThingD]  WITH CHECK ADD  CONSTRAINT [FK_ThingD_ThingD] FOREIGN KEY([ThingID])
REFERENCES [dbo].[ThingD] ([ThingID])
GO
ALTER TABLE [dbo].[ThingD] CHECK CONSTRAINT [FK_ThingD_ThingD]
GO
USE [master]
GO
ALTER DATABASE [ProdDB] SET  READ_WRITE 
GO
