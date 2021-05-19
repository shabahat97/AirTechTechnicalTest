USE [master]
GO
/****** Object:  Database [AirTechTechnicalTest]    Script Date: 5/19/2021 7:10:05 PM ******/
CREATE DATABASE [AirTechTechnicalTest]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AirTechTechnicalTest', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AirTechTechnicalTest.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AirTechTechnicalTest_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AirTechTechnicalTest_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AirTechTechnicalTest] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AirTechTechnicalTest].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AirTechTechnicalTest] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET ARITHABORT OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AirTechTechnicalTest] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AirTechTechnicalTest] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AirTechTechnicalTest] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AirTechTechnicalTest] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AirTechTechnicalTest] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET RECOVERY FULL 
GO
ALTER DATABASE [AirTechTechnicalTest] SET  MULTI_USER 
GO
ALTER DATABASE [AirTechTechnicalTest] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AirTechTechnicalTest] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AirTechTechnicalTest] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AirTechTechnicalTest] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AirTechTechnicalTest', N'ON'
GO
USE [AirTechTechnicalTest]
GO
/****** Object:  Table [dbo].[HomeSearching]    Script Date: 5/19/2021 7:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSearching](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NOT NULL,
	[Office] [nvarchar](255) NULL,
	[Area] [float] NULL,
	[Bed] [int] NULL,
	[Baths] [int] NULL,
 CONSTRAINT [PK_HomeSearching] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location]    Script Date: 5/19/2021 7:10:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[HomeSearching] ON 

INSERT [dbo].[HomeSearching] ([Id], [LocationId], [Office], [Area], [Bed], [Baths]) VALUES (1, 1, N'dummy', 120, 2, 2)
INSERT [dbo].[HomeSearching] ([Id], [LocationId], [Office], [Area], [Bed], [Baths]) VALUES (2, 1, N'dummy', 240, 2, 2)
SET IDENTITY_INSERT [dbo].[HomeSearching] OFF
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([LocationId], [LocationName]) VALUES (1, N'Australia')
INSERT [dbo].[Location] ([LocationId], [LocationName]) VALUES (2, N'Japan')
INSERT [dbo].[Location] ([LocationId], [LocationName]) VALUES (3, N'Italy')
SET IDENTITY_INSERT [dbo].[Location] OFF
ALTER TABLE [dbo].[HomeSearching]  WITH CHECK ADD  CONSTRAINT [FK_HomeSearching_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([LocationId])
GO
ALTER TABLE [dbo].[HomeSearching] CHECK CONSTRAINT [FK_HomeSearching_Location]
GO
USE [master]
GO
ALTER DATABASE [AirTechTechnicalTest] SET  READ_WRITE 
GO
