USE [student_management]
GO
/****** Object:  Table [dbo].[subject]    Script Date: 11/5/2020 2:45:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subject]') AND type in (N'U'))
DROP TABLE [dbo].[subject]
GO
/****** Object:  Table [dbo].[student]    Script Date: 11/5/2020 2:45:03 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[student]') AND type in (N'U'))
DROP TABLE [dbo].[student]
GO
USE [master]
GO
/****** Object:  Database [student_management]    Script Date: 11/5/2020 2:45:03 PM ******/
DROP DATABASE [student_management]
GO
/****** Object:  Database [student_management]    Script Date: 11/5/2020 2:45:03 PM ******/
CREATE DATABASE [student_management]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'student_management_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\student_management.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'student_management_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\student_management.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [student_management] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [student_management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [student_management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [student_management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [student_management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [student_management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [student_management] SET ARITHABORT OFF 
GO
ALTER DATABASE [student_management] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [student_management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [student_management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [student_management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [student_management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [student_management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [student_management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [student_management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [student_management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [student_management] SET  DISABLE_BROKER 
GO
ALTER DATABASE [student_management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [student_management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [student_management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [student_management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [student_management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [student_management] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [student_management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [student_management] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [student_management] SET  MULTI_USER 
GO
ALTER DATABASE [student_management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [student_management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [student_management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [student_management] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [student_management] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [student_management] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [student_management] SET QUERY_STORE = OFF
GO
USE [student_management]
GO
/****** Object:  Table [dbo].[student]    Script Date: 11/5/2020 2:45:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[id] [varchar](50) NOT NULL,
	[name] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[email] [varchar](50) NULL,
	[major] [nvarchar](50) NULL,
	[average_grade] [float] NULL,
 CONSTRAINT [PK_tblStudents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subject]    Script Date: 11/5/2020 2:45:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[credit] [int] NULL,
	[num_of_lesson] [int] NULL,
 CONSTRAINT [PK_subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCCN101', N'Ngô Bảo Anh', N'Hải Phòng', N'haianh@gmail.com', N'Công nghệ thông tin', 3.44)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCCN102', N'Ngô Bảo An', N'Hà Nội', N'an@gmail.com', N'Công nghệ thông tin', 3.58)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCCN104', N'Lý Văn Thái', N'Hồ Chí Minh', N'thailv@gmail.com', N'Công nghệ thông tin', 3.55)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCCN111', N'Ngô Bảo An', NULL, N'anb@gmail.com', NULL, 3.26)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCPT107', N'Hoàng Như Tâm', N'Bắc Ninh', N'tamnh@gmail.com', N'Công nghệ đa phương tiện', 3.41)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCQT100', N'Lê Hoàng Hiệp', N'Hà Nội', N'hiep@gmail.com', N'Quản trị kinh doanh', 3.33)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCQT103', N'Trần Trung Dũng', N'Đà Nẵng', N'dungtt@gmail.com', N'Quản trị kinh doanh', 2.56)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCVT105', N'Nguyễn Duy Tùng', N'Đồng Nai', N'tungdn@gmail.com', N'Điện tử viễn thông', 3.65)
GO
SET IDENTITY_INSERT [dbo].[subject] ON 

INSERT [dbo].[subject] ([id], [title], [credit], [num_of_lesson]) VALUES (1, N'Lập trình C', 2, 30)
INSERT [dbo].[subject] ([id], [title], [credit], [num_of_lesson]) VALUES (2, N'Lập trình C++', 3, 45)
INSERT [dbo].[subject] ([id], [title], [credit], [num_of_lesson]) VALUES (3, N'Lập trình Java', 3, 45)
INSERT [dbo].[subject] ([id], [title], [credit], [num_of_lesson]) VALUES (4, N'Lập trình Java', 3, 45)
INSERT [dbo].[subject] ([id], [title], [credit], [num_of_lesson]) VALUES (5, N'Lập trình Java', 3, 45)
SET IDENTITY_INSERT [dbo].[subject] OFF
GO
USE [master]
GO
ALTER DATABASE [student_management] SET  READ_WRITE 
GO
