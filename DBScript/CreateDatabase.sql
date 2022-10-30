USE [master]
GO

/****** Object:  Database [DevTestDB]    Script Date: 30-10-2022 23:10:55 ******/
CREATE DATABASE [DevTestDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DevTestDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DevTestDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DevTestDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DevTestDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DevTestDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [DevTestDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [DevTestDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [DevTestDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [DevTestDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [DevTestDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [DevTestDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [DevTestDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [DevTestDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [DevTestDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [DevTestDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [DevTestDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [DevTestDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [DevTestDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [DevTestDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [DevTestDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [DevTestDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [DevTestDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [DevTestDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [DevTestDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [DevTestDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [DevTestDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [DevTestDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [DevTestDB] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [DevTestDB] SET  MULTI_USER 
GO

ALTER DATABASE [DevTestDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [DevTestDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [DevTestDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [DevTestDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [DevTestDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [DevTestDB] SET QUERY_STORE = OFF
GO

ALTER DATABASE [DevTestDB] SET  READ_WRITE 
GO
