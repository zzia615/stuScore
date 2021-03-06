CREATE DATABASE [MANAGE]
GO
USE [MANAGE]
GO
/****** Object:  Table [dbo].[users]    Script Date: 05/04/2020 23:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[user_name] [varchar](20) NOT NULL,
	[user_password] [varchar](20) NOT NULL,
	[user_lever] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0为学生，1为管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'users', @level2type=N'COLUMN',@level2name=N'user_lever'
GO
INSERT [dbo].[users] ([user_name], [user_password], [user_lever]) VALUES (N'admin', N'admin', 1)
INSERT [dbo].[users] ([user_name], [user_password], [user_lever]) VALUES (N'student', N'student', 0)
INSERT [dbo].[users] ([user_name], [user_password], [user_lever]) VALUES (N'邹少华', N'102234', 0)
/****** Object:  Table [dbo].[stuscore]    Script Date: 05/04/2020 23:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stuscore](
	[id] int identity(1,1) not null,
	[stud_id] [int] NOT NULL,
	[stud_name] [nchar](10) NULL,
	[class_id] [nchar](10) NOT NULL,
	[stuscore] [nchar](10) NOT NULL,
 CONSTRAINT [PK_stuscore] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[stuscore] ([stud_id], [stud_name], [class_id], [stuscore]) VALUES (171124048, N'邹少华       ', N'1022      ', N'95        ')
/****** Object:  Table [dbo].[student]    Script Date: 05/04/2020 23:07:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student](
	[stud_id] [int] NOT NULL,
	[stud_name] [nchar](10) NULL,
	[sex] [nchar](2) NULL,
	[birthday] [datetime] NULL,
	[address] [nvarchar](50) NOT NULL,
	[class_id] [nchar](10) NULL,
 CONSTRAINT [PK_student] PRIMARY KEY CLUSTERED 
(
	[stud_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[student] ([stud_id], [stud_name], [sex], [birthday], [address], [class_id]) VALUES (171124048, N'邹少华       ', N'男 ', CAST(0x00007D9100000000 AS DateTime), N'河南', N'1022      ')
INSERT [dbo].[student] ([stud_id], [stud_name], [sex], [birthday], [address], [class_id]) VALUES (171124049, N'AA        ', N'男 ', CAST(0x00007E0E00000000 AS DateTime), N'河南', N'1021      ')
/****** Object:  Table [dbo].[class]    Script Date: 05/04/2020 23:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[class_id] [int] NOT NULL,
	[class_name] [nchar](10) NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
	[class_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[class] ([class_id], [class_name]) VALUES (1022, N'07网络      ')
INSERT [dbo].[class] ([class_id], [class_name]) VALUES (1023, N'07电商      ')
