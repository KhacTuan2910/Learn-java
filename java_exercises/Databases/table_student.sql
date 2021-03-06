USE [student_management]
GO
/****** Object:  Table [dbo].[student]    Script Date: 11/1/2020 2:49:09 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[student]') AND type in (N'U'))
DROP TABLE [dbo].[student]
GO
/****** Object:  Table [dbo].[student]    Script Date: 11/1/2020 2:49:09 PM ******/
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
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCCN100', N'Lê Hoài Hà', N'Hà Nội', N'ha@gmail.com', N'Công nghệ thông tin', 3.21)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCCN101', N'Ngô Bảo Anh', N'Hải Phòng', N'haianh@gmail.com', N'Công nghệ thông tin', 3.44)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCCN104', N'Lý Văn Thái', N'Hồ Chí Minh', N'thailv@gmail.com', N'Công nghệ thông tin', 3.55)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCPT107', N'Hoàng Như Tâm', N'Bắc Ninh', N'tamnh@gmail.com', N'Công nghệ đa phương tiện', 3.41)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCQT103', N'Trần Trung Dũng', N'Đà Nẵng', N'dungtt@gmail.com', N'Quản trị kinh doanh', 2.56)
INSERT [dbo].[student] ([id], [name], [address], [email], [major], [average_grade]) VALUES (N'B25DCVT105', N'Nguyễn Duy Tùng', N'Đồng Nai', N'tungdn@gmail.com', N'Điện tử viễn thông', 3.65)
GO
