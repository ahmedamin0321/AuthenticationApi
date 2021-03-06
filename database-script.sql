USE [master]
GO
/****** Object:  Database [AuthenticationApiDb]    Script Date: 8/15/2017 2:08:26 AM ******/
CREATE DATABASE [AuthenticationApiDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AuthenticationApiDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AuthenticationApiDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AuthenticationApiDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\AuthenticationApiDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AuthenticationApiDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AuthenticationApiDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AuthenticationApiDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [AuthenticationApiDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AuthenticationApiDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AuthenticationApiDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AuthenticationApiDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AuthenticationApiDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET RECOVERY FULL 
GO
ALTER DATABASE [AuthenticationApiDb] SET  MULTI_USER 
GO
ALTER DATABASE [AuthenticationApiDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AuthenticationApiDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AuthenticationApiDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AuthenticationApiDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AuthenticationApiDb', N'ON'
GO
USE [AuthenticationApiDb]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 8/15/2017 2:08:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](500) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Name], [Email], [Password]) VALUES (1, N'Muhammad Ahmed', N'ahmed@gmail.com', N'0E100A0DC0390490BA0590AB0BE0560E00570F200F08803E')
SET IDENTITY_INSERT [dbo].[Users] OFF
USE [master]
GO
ALTER DATABASE [AuthenticationApiDb] SET  READ_WRITE 
GO
