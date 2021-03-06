USE [master]
GO
/****** Object:  Database [dblic]    Script Date: 7/9/2018 6:51:51 PM ******/
CREATE DATABASE [dblic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dblic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dblic.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dblic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dblic_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dblic] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dblic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dblic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dblic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dblic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dblic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dblic] SET ARITHABORT OFF 
GO
ALTER DATABASE [dblic] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dblic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dblic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dblic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dblic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dblic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dblic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dblic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dblic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dblic] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dblic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dblic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dblic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dblic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dblic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dblic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dblic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dblic] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dblic] SET  MULTI_USER 
GO
ALTER DATABASE [dblic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dblic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dblic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dblic] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dblic] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dblic]
GO
/****** Object:  Table [dbo].[nasty_admin]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[nasty_admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [varchar](100) NULL,
	[password] [nvarchar](100) NULL,
	[name] [varchar](100) NULL,
	[father] [varchar](100) NULL,
	[mobile] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[dob] [varchar](100) NULL,
	[gender] [varchar](100) NULL,
	[address] [varchar](100) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](100) NULL,
	[country] [varchar](100) NULL,
	[pin] [varchar](50) NULL,
	[doj] [datetime] NOT NULL DEFAULT (getdate()),
	[status] [varchar](100) NOT NULL DEFAULT ('active'),
	[designation] [varchar](100) NULL,
	[landstd] [varchar](50) NULL,
	[landlineno] [varchar](50) NULL,
 CONSTRAINT [pkadmin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblaboutheading]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblaboutheading](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [nvarchar](max) NULL,
	[heading_content] [nvarchar](max) NULL,
 CONSTRAINT [pkaboutheading] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblaboutus]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblaboutus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [nvarchar](max) NULL,
	[para_1] [nvarchar](max) NULL,
	[para_2] [nvarchar](max) NULL,
 CONSTRAINT [pkaboutus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblAddress]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAddress](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](max) NULL,
	[phone_no] [nvarchar](max) NULL,
	[whatsapp_no] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
 CONSTRAINT [pkadd] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblallpages]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblallpages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[typee] [nvarchar](400) NULL,
	[content] [nvarchar](max) NULL,
	[heading1] [nvarchar](max) NULL,
	[heading2] [nvarchar](max) NULL,
 CONSTRAINT [pkallpage] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblawards]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblawards](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[award_name] [nvarchar](100) NULL,
	[award_desc] [nvarchar](max) NULL,
	[award_image] [nvarchar](max) NULL,
 CONSTRAINT [pkawards] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblbanner]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblbanner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading1] [nvarchar](max) NULL,
	[heading2] [nvarchar](max) NULL,
	[heading3] [nvarchar](max) NULL,
	[banner_1] [nvarchar](max) NULL,
	[banner_2] [nvarchar](max) NULL,
	[banner_3] [nvarchar](max) NULL,
 CONSTRAINT [pkban] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblclientlogos]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblclientlogos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading1] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
 CONSTRAINT [pkclog] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblcontact]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblcontact](
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[mobile_no] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[query] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblftrabout]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblftrabout](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[content] [nvarchar](max) NOT NULL,
 CONSTRAINT [pkftrabt] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblourpromise]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblourpromise](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [nvarchar](max) NULL,
	[para_1] [nvarchar](max) NULL,
	[para_2] [nvarchar](max) NULL,
	[name] [nvarchar](50) NULL,
	[desig] [nvarchar](50) NULL,
	[company_name] [nvarchar](50) NULL,
 CONSTRAINT [pkpromise] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblplan]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblplan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](100) NULL,
	[plan_name] [nvarchar](100) NULL,
	[plan_content] [nvarchar](max) NULL,
	[plan_image] [nvarchar](max) NULL,
 CONSTRAINT [pkplan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblplan_details]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblplan_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](100) NULL,
	[banner_heading1] [nvarchar](100) NULL,
	[banner_heading2] [nvarchar](100) NULL,
	[banner_image] [nvarchar](max) NULL,
	[plan_name] [nvarchar](max) NULL,
	[plan_content] [nvarchar](max) NULL,
	[plan_image] [nvarchar](max) NULL,
	[short_content] [nvarchar](max) NULL,
	[short_image] [nvarchar](max) NULL,
 CONSTRAINT [pkplandetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblquery]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblquery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[query] [nvarchar](max) NOT NULL,
 CONSTRAINT [pkquery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblservice_details]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblservice_details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service_banner] [nvarchar](max) NULL,
	[banner_heading1] [nvarchar](100) NULL,
	[banner_heading2] [nvarchar](100) NULL,
	[service_name] [nvarchar](50) NULL,
	[service_content] [nvarchar](max) NULL,
	[service_image] [nvarchar](max) NULL,
 CONSTRAINT [pkservicedetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblserviceheading]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblserviceheading](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[heading] [nvarchar](max) NULL,
	[heading_content] [nvarchar](max) NULL,
 CONSTRAINT [pkserviceheading] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblservices]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblservices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](100) NULL,
	[service_desc] [nvarchar](max) NULL,
	[service_image] [nvarchar](max) NULL,
 CONSTRAINT [pkservice] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblteam]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblteam](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[desig] [nvarchar](100) NULL,
	[phone_no] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[photo] [nvarchar](max) NULL,
 CONSTRAINT [pkteam] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbltesti]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltesti](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[degisnation] [nvarchar](max) NULL,
	[desc_] [nvarchar](max) NULL,
	[img] [nvarchar](max) NULL,
 CONSTRAINT [pktest] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[nasty_admin] ON 

INSERT [dbo].[nasty_admin] ([id], [userid], [password], [name], [father], [mobile], [email], [dob], [gender], [address], [city], [state], [country], [pin], [doj], [status], [designation], [landstd], [landlineno]) VALUES (1, N'mukesh@gic.com', N'12', N'Mukesh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-07-04 13:23:07.507' AS DateTime), N'active', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[nasty_admin] OFF
SET IDENTITY_INSERT [dbo].[tblaboutheading] ON 

INSERT [dbo].[tblaboutheading] ([id], [heading], [heading_content]) VALUES (1, N'About Insurance GIC: Life, Auto, Home, Health Insurance and more in Delhi NCR.', N'When an insurance agent represents one company, on the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound.')
SET IDENTITY_INSERT [dbo].[tblaboutheading] OFF
SET IDENTITY_INSERT [dbo].[tblaboutus] ON 

INSERT [dbo].[tblaboutus] ([id], [heading], [para_1], [para_2]) VALUES (1, N'About Us', N'In 1999, Our Owner &amp; CEO named Joseph Williams came to the U.S to work, where he and his wife were looking for a better future for their family. He vividly Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Today, Insurance Pro has enrolled over meque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.', N'At vero eos et accu samus et iusto odio dignissimos ducimus qui blanditiis praes entium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occa ecati cupiditate non provident praes. Our Promise We are committed to excellent customer service ciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam. You can depend up ipsa quae ab illo inventore veritatis et quasi architecto beatae. We are committed to excellent customer service ciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.')
SET IDENTITY_INSERT [dbo].[tblaboutus] OFF
SET IDENTITY_INSERT [dbo].[tblAddress] ON 

INSERT [dbo].[tblAddress] ([id], [address], [phone_no], [whatsapp_no], [email]) VALUES (1, N'846-B/35,Gali No.20, Gurgaon Haryana-122021', N'+91 - 8822358956', N'+91 - 8822358956', N'info@gicinsurance.com')
SET IDENTITY_INSERT [dbo].[tblAddress] OFF
SET IDENTITY_INSERT [dbo].[tblallpages] ON 

INSERT [dbo].[tblallpages] ([id], [typee], [content], [heading1], [heading2]) VALUES (1, N'logo', N'~/productimg/75201871206MUKU.png', NULL, NULL)
INSERT [dbo].[tblallpages] ([id], [typee], [content], [heading1], [heading2]) VALUES (2, N'homeabout', N'Throughout our history of serving nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit. Ut enim ad minim veniam, quis nostrud exercation ullamco. Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore sed do eiusmod tempor incididunt ut labore et dolore.', N'Know About Us?', N'We''re one of India’s largest Insurance Agency.')
SET IDENTITY_INSERT [dbo].[tblallpages] OFF
SET IDENTITY_INSERT [dbo].[tblawards] ON 

INSERT [dbo].[tblawards] ([id], [award_name], [award_desc], [award_image]) VALUES (2, N'EXCELLENCE PERFORMANCE', N'Lorem ipsum dolor sit amet, conse ctetur adip isicing elit, sed do eius mod tempor incididunt fuga platea ut labore et.', N'~/productimg/762018115952awards-1.jpg')
INSERT [dbo].[tblawards] ([id], [award_name], [award_desc], [award_image]) VALUES (4, N'GOLD MEDAL', N'Lorem ipsum dolor sit amet, conse ctetur adip isicing elit, sed do eius mod tempor incididunt fuga platea ut labore et.', N'~/productimg/762018121402award-2.png')
INSERT [dbo].[tblawards] ([id], [award_name], [award_desc], [award_image]) VALUES (5, N'EXCELLENCE PERFORMANCE', N'Lorem ipsum dolor sit amet, conse ctetur adip isicing elit, sed do eius mod tempor incididunt fuga platea ut labore et.', N'~/productimg/762018122048awards-1.jpg')
INSERT [dbo].[tblawards] ([id], [award_name], [award_desc], [award_image]) VALUES (6, N'GOLD MEDAL', N'Lorem ipsum dolor sit amet, conse ctetur adip isicing elit, sed do eius mod tempor incididunt fuga platea ut labore et.', N'~/productimg/762018122202award-2.png')
INSERT [dbo].[tblawards] ([id], [award_name], [award_desc], [award_image]) VALUES (7, N'EXCELLENCE PERFORMANCE', N'Lorem ipsum dolor sit amet, conse ctetur adip isicing elit, sed do eius mod tempor incididunt fuga platea ut labore et.', N'~/productimg/762018122227awards-1.jpg')
INSERT [dbo].[tblawards] ([id], [award_name], [award_desc], [award_image]) VALUES (8, N'GOLD MEDAL', N'Lorem ipsum dolor sit amet, conse ctetur adip isicing elit, sed do eius mod tempor incididunt fuga platea ut labore et.', N'~/productimg/762018122300award-2.png')
SET IDENTITY_INSERT [dbo].[tblawards] OFF
SET IDENTITY_INSERT [dbo].[tblbanner] ON 

INSERT [dbo].[tblbanner] ([id], [heading1], [heading2], [heading3], [banner_1], [banner_2], [banner_3]) VALUES (1, N'Insurance', NULL, NULL, N'', N'', N'')
SET IDENTITY_INSERT [dbo].[tblbanner] OFF
SET IDENTITY_INSERT [dbo].[tblclientlogos] ON 

INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (2, NULL, N'~/productimg/74201840400partner-logo-c1.jpg')
INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (3, NULL, N'~/productimg/74201840423partner-logo-c2.jpg')
INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (4, NULL, N'~/productimg/74201840428partner-logo-c3.jpg')
INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (5, NULL, N'~/productimg/74201840435partner-logo-c4.jpg')
INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (6, NULL, N'~/productimg/74201840441partner-logo-c5.jpg')
INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (7, NULL, N'~/productimg/74201840447partner-logo-c6.jpg')
INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (8, NULL, N'~/productimg/74201840455partner-logo-c7.jpg')
INSERT [dbo].[tblclientlogos] ([id], [heading1], [image]) VALUES (11, NULL, N'~/productimg/75201862351partner-logo-c8.jpg')
SET IDENTITY_INSERT [dbo].[tblclientlogos] OFF
INSERT [dbo].[tblcontact] ([name], [email], [mobile_no], [address], [query]) VALUES (N'mukesh', N'mukeshkumar5276@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[tblcontact] ([name], [email], [mobile_no], [address], [query]) VALUES (N'Anurag', N'anurag6@gmail.com', NULL, NULL, NULL)
INSERT [dbo].[tblcontact] ([name], [email], [mobile_no], [address], [query]) VALUES (N'Shambhu', N'shambhug@gmail.com', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[tblftrabout] ON 

INSERT [dbo].[tblftrabout] ([id], [content]) VALUES (1, N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nemo enim ipsam.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque.')
SET IDENTITY_INSERT [dbo].[tblftrabout] OFF
SET IDENTITY_INSERT [dbo].[tblourpromise] ON 

INSERT [dbo].[tblourpromise] ([id], [heading], [para_1], [para_2], [name], [desig], [company_name]) VALUES (1, N'Our Promise', N'We are committed to excellent customer service ciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam. You can depend up ipsa quae ab illo inventore veritatis et quasi architecto beatae.', N'<span style="color: #778793; font-family: roboto, sans-serif; font-size: 16px;">At vero eos et accu samus et iusto odio dignissimos ducimus qui blanditiis praes entium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occa ecati cupiditate non provident praes.</span>', N'Rajiv Arora', N'Owner & CEO', N'Insurance GIC Inc.')
SET IDENTITY_INSERT [dbo].[tblourpromise] OFF
SET IDENTITY_INSERT [dbo].[tblplan] ON 

INSERT [dbo].[tblplan] ([id], [service_name], [plan_name], [plan_content], [plan_image]) VALUES (14, N'Life Insurance', N'Plan-1', N'Working with a professional is an consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo.', N'~/productimg/79201831335photo-sm-a.jpg')
INSERT [dbo].[tblplan] ([id], [service_name], [plan_name], [plan_content], [plan_image]) VALUES (18, N'Life Insurance', N'Plan-2', N'Working with a professional is an consectetur adipiscing&nbsp;', N'~/productimg/79201821136photo-md-g.jpg')
SET IDENTITY_INSERT [dbo].[tblplan] OFF
SET IDENTITY_INSERT [dbo].[tblplan_details] ON 

INSERT [dbo].[tblplan_details] ([id], [service_name], [banner_heading1], [banner_heading2], [banner_image], [plan_name], [plan_content], [plan_image], [short_content], [short_image]) VALUES (2, N'Homeowners Insurance', N'Life Insurance', N'Life  insurance plans that fit you and your family.', N'~/productimg/79201850913banner-life.jpg', N'Plan-1', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.', N'~/productimg/79201850913photo-md-a.jpg', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.', N'~/productimg/79201850913photo-sm-a.jpg')
INSERT [dbo].[tblplan_details] ([id], [service_name], [banner_heading1], [banner_heading2], [banner_image], [plan_name], [plan_content], [plan_image], [short_content], [short_image]) VALUES (3, N'Life Insurance', N'Life Insurance', N'Life  insurance plans that fit you and your family.', N'~/productimg/79201851110banner-renter.jpg', N'Plan-2', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.', N'~/productimg/79201851110photo-md-c.jpg', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, ', N'~/productimg/79201851110photo-sm-b.jpg')
INSERT [dbo].[tblplan_details] ([id], [service_name], [banner_heading1], [banner_heading2], [banner_image], [plan_name], [plan_content], [plan_image], [short_content], [short_image]) VALUES (4, N'Life Insurance', N'Life Insurance', N'Life insurance plans that fit you and your family.', N'~/productimg/79201852216banner-contact.jpg', N'Plan-3', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.', N'~/productimg/79201852216photo-md-h.jpg', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit,', N'~/productimg/79201852216photo-sm-c.jpg')
INSERT [dbo].[tblplan_details] ([id], [service_name], [banner_heading1], [banner_heading2], [banner_image], [plan_name], [plan_content], [plan_image], [short_content], [short_image]) VALUES (5, N'Homeowners Insurance', N'Health Insurance', N'Health insurance plans that fit you and your family.', N'~/productimg/79201863734banner-personal.jpg', N'Plan-1', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.', N'~/productimg/79201850913photo-md-a.jpg', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et.', N'~/productimg/79201850913photo-sm-a.jpg')
SET IDENTITY_INSERT [dbo].[tblplan_details] OFF
SET IDENTITY_INSERT [dbo].[tblquery] ON 

INSERT [dbo].[tblquery] ([id], [name], [email], [phone], [address], [query]) VALUES (2, N'Mukesh Kumar', N'mukeshkumar5276@gmail.com', N'8218287032', N'Mathura', N'gdfgfkmlfkmldkmglkmglmlkgfmnglkmgmgmfd')
INSERT [dbo].[tblquery] ([id], [name], [email], [phone], [address], [query]) VALUES (5, N'Anurag Sindhu', N'info@dexignzone.com', N'8218287032', N'Mayur Vihar', N'bfdgfhgjhjk')
SET IDENTITY_INSERT [dbo].[tblquery] OFF
SET IDENTITY_INSERT [dbo].[tblservice_details] ON 

INSERT [dbo].[tblservice_details] ([id], [service_banner], [banner_heading1], [banner_heading2], [service_name], [service_content], [service_image]) VALUES (3, N'~/productimg/77201863013banner-life.jpg', N'Life Insurance', N'Life insurance plans that fit you and your family.', N'Life Insurance', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.<br />
<br />
<br />
<span style="box-sizing: border-box; font-weight: 600; color: #778793; font-family: roboto, sans-serif; font-size: 16px;">We helps you with all your insurance, such as</span><span style="color: #778793; font-family: roboto, sans-serif; font-size: 16px;">:<br />
</span>
<ul>
<li>
<p style="box-sizing: border-box; list-style: none; position: relative; padding-left: 18px; margin: 0px;">What the t perspiciatis unde omnis</p></li>
<li>
<p style="box-sizing: border-box; list-style: none; position: relative; padding-left: 18px; margin: 0px;">How to iste natus erwor sit voluptatem</p></li>
<li>
<p style="box-sizing: border-box; list-style: none; position: relative; padding-left: 18px; margin: 0px;">How much accus antium dolore mque laudantium</p></li>
<li>
<p style="box-sizing: border-box; list-style: none; position: relative; padding-left: 18px; margin: 0px;">How to totam rem aperiam inventore</p></li></ul><span style="color: #778793; font-family: roboto, sans-serif; font-size: 16px;">Our Health Insurance provides health plan Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet, consecte ipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat.</span><br />
<br />
<br />', N'~/productimg/77201870740photo-md-g.jpg')
INSERT [dbo].[tblservice_details] ([id], [service_banner], [banner_heading1], [banner_heading2], [service_name], [service_content], [service_image]) VALUES (4, N'~/productimg/77201864440banner-commercial.jpg', N'Homeowners Insurance', N'Health insurance plans that fit you and your family.', N'Homeowners Insurance', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet. Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.', N'~/productimg/77201864912photo-md-j.jpg')
INSERT [dbo].[tblservice_details] ([id], [service_banner], [banner_heading1], [banner_heading2], [service_name], [service_content], [service_image]) VALUES (5, N'~/productimg/77201870500banner-blog.jpg', N'Commercial Insurance', N'Commercial insurance plans that fit you and your family.', N'Commercial Insurance', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet. Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.', N'~/productimg/77201870500photo-md-i.jpg')
INSERT [dbo].[tblservice_details] ([id], [service_banner], [banner_heading1], [banner_heading2], [service_name], [service_content], [service_image]) VALUES (8, N'~/productimg/792018103857banner-contact.jpg', N'Health Insurance', N'Health insurance plans that fit you and your family.', N'Health Insurance', N'Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet. Cover medical, dental and vision care for everyone in ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip. Aut odit aut fugit, sed quia conseq uuntur magni dolores eos qui ratione volu ptatem sequi nesciunt. Neque porro quiuam est, qui dolorem ipsum quia dolor sit non amet.', N'~/productimg/792018103857photo-md-e.jpg')
SET IDENTITY_INSERT [dbo].[tblservice_details] OFF
SET IDENTITY_INSERT [dbo].[tblserviceheading] ON 

INSERT [dbo].[tblserviceheading] ([id], [heading], [heading_content]) VALUES (1, N'Our Insurance Services', N'We stands behind you when the unexpected happens. Protecting you & what you want. It''s always a primary concern for us. Ut enim ad minim veniam, quis nostrud exercation ullamco laboris nisi ltion aliquip exon commod.')
SET IDENTITY_INSERT [dbo].[tblserviceheading] OFF
SET IDENTITY_INSERT [dbo].[tblservices] ON 

INSERT [dbo].[tblservices] ([id], [service_name], [service_desc], [service_image]) VALUES (7, N'Homeowners Insurance', N'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim.', N'~/productimg/77201823724photo-md-c.jpg')
INSERT [dbo].[tblservices] ([id], [service_name], [service_desc], [service_image]) VALUES (8, N'Commercial Insurance', N'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim.', N'~/productimg/77201841957photo-md-i.jpg')
INSERT [dbo].[tblservices] ([id], [service_name], [service_desc], [service_image]) VALUES (9, N'Auto Insurance', N'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim.', N'~/productimg/77201842037photo-md-d.jpg')
INSERT [dbo].[tblservices] ([id], [service_name], [service_desc], [service_image]) VALUES (10, N'Life Insurance', N'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim.', N'~/productimg/77201842055photo-md-g.jpg')
INSERT [dbo].[tblservices] ([id], [service_name], [service_desc], [service_image]) VALUES (11, N'Renters Insurance', N'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim.', N'~/productimg/77201842127photo-md-f.jpg')
INSERT [dbo].[tblservices] ([id], [service_name], [service_desc], [service_image]) VALUES (12, N'Personal Insurance', N'Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim.', N'~/productimg/77201842140photo-md-e.jpg')
SET IDENTITY_INSERT [dbo].[tblservices] OFF
SET IDENTITY_INSERT [dbo].[tblteam] ON 

INSERT [dbo].[tblteam] ([id], [name], [desig], [phone_no], [email], [photo]) VALUES (4, N'Rahul Jain', N'CEO', N'+91-8856212354', N'rahuljain@insurancegic.com', N'~/productimg/75201832053team-2.jpg')
INSERT [dbo].[tblteam] ([id], [name], [desig], [phone_no], [email], [photo]) VALUES (5, N'Mannu Kumar', N'Policy Head', N'+91-9638817356', N'mukeshkumar@insurancegic.com ', N'~/productimg/75201832151team-1.jpg')
INSERT [dbo].[tblteam] ([id], [name], [desig], [phone_no], [email], [photo]) VALUES (8, N'Harshita Chaudhary', N'Customer Affairs', N'+91-9563214523', N'harshita@insurancegic.com', N'~/productimg/75201861016team-4.jpg')
INSERT [dbo].[tblteam] ([id], [name], [desig], [phone_no], [email], [photo]) VALUES (9, N'Anurag Sindhu', N'Account Manager', N'+91-9639754606', N'anuragsindhu@insurancegic.com', N'~/productimg/75201861036team-3.jpg')
SET IDENTITY_INSERT [dbo].[tblteam] OFF
SET IDENTITY_INSERT [dbo].[tbltesti] ON 

INSERT [dbo].[tbltesti] ([id], [name], [degisnation], [desc_], [img]) VALUES (1, N'Vikash Kumar', N'Businessman', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nemo enim ipsam.', N'~/productimg/74201835449625201860521testi-1.png')
INSERT [dbo].[tbltesti] ([id], [name], [degisnation], [desc_], [img]) VALUES (3, N'Manas Mishra', N'Teacher', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nemo enim ipsam.', N'~/productimg/74201835655testi-3.jpg')
INSERT [dbo].[tbltesti] ([id], [name], [degisnation], [desc_], [img]) VALUES (5, N'Shambhu Nath Thakur', N'Developer', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nemo enim ipsam.', N'~/productimg/75201861823625201860521testi-1.png')
INSERT [dbo].[tbltesti] ([id], [name], [degisnation], [desc_], [img]) VALUES (6, N'Preeti Ravat', N'Counseller', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo nemo enim ipsam.', N'~/productimg/75201861903testi-3.jpg')
INSERT [dbo].[tbltesti] ([id], [name], [degisnation], [desc_], [img]) VALUES (7, N'Sonu', N'Contractor', N' was looking for an auto insurance iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritati.', N'~/productimg/76201853207625201860521testi-1.png')
INSERT [dbo].[tbltesti] ([id], [name], [degisnation], [desc_], [img]) VALUES (8, N'Pankaj Kumar', N'Contractor', N'was looking for an auto insurance iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritati.', N'~/productimg/76201853426testi-3.jpg')
SET IDENTITY_INSERT [dbo].[tbltesti] OFF
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[proc_login]
@userid varchar(100),
@pass nvarchar(100),
@var int
as
begin
if(@var =1)
begin
select *from nasty_admin where userid=@userid and password=@pass
end
end





GO
/****** Object:  StoredProcedure [dbo].[proc_tblAddress]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_tblAddress]
@id int=null,
@address nvarchar(max)=null,
@phone_no nvarchar(max)=null,
@whatsapp_no nvarchar(max)=null,
@email nvarchar(max)=null,
@var int
as 
begin
if(@var=1)
begin
update tblAddress set address=@address,phone_no=@phone_no,whatsapp_no=@whatsapp_no,email=@email where id=@id
end
if(@var=2)
begin
select address,phone_no,whatsapp_no,email from tblAddress where id=@id
end 
end
GO
/****** Object:  StoredProcedure [dbo].[proc_tblallpages]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



create proc [dbo].[proc_tblallpages]
@typee nvarchar(400),
@content nvarchar(max),
@heading1 nvarchar(max)=null,
@heading2 nvarchar(max)=null
as
begin
update tblallpages set content=@content,heading1=@heading1,heading2=@heading2 where typee=@typee
end





GO
/****** Object:  StoredProcedure [dbo].[proc_tblclientlogos]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[proc_tblclientlogos]
@id int=null,
@img nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tblclientlogos(image)values(@img)
end
if(@var='upda')
begin
update tblclientlogos set image=@img where id=@id
end
if(@var='sel')
begin
select *from tblclientlogos
end
if(@var='selid')
begin
select *from tblclientlogos where id=@id
end
if(@var='del')
begin
delete from tblclientlogos where id=@id
end
end

GO
/****** Object:  StoredProcedure [dbo].[proc_tblftrabout]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[proc_tblftrabout]
@id int=null,
@content nvarchar(max)=null,
@var int
as 
begin
if(@var=1)
begin
update tblftrabout set content=@content where id=@id
end
if(@var=2)
begin
select content from tblftrabout where id=@id
end 
end
GO
/****** Object:  StoredProcedure [dbo].[proc_tblquery]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[proc_tblquery]
@id int=null,
@name nvarchar(max)=null,
@email nvarchar(max)=null,
@phone nvarchar(max)=null,
@address nvarchar(max)=null,
@query nvarchar(max)=null,
@var int
as 
begin
if(@var=1)
begin
insert into tblquery(name,email,phone,address,query)values(@name,@email,@phone,@address,@query)
end
if(@var=2)
begin
select name,email,phone,email,address,query from tblquery where id=@id
end 
if(@var=3)
begin
delete from tblquery where id=@id
end 
if(@var=4)
begin
select * from tblquery order by id desc
end 
end
GO
/****** Object:  StoredProcedure [dbo].[proc_tblteam]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[proc_tblteam]
@id int=null,
@name nvarchar(max),
@desig nvarchar(max),
@phone_no nvarchar(max),
@email varchar(max),
@photo varchar(max),
@var int
as
begin
if(@var='1')
begin
insert into tblteam(name,desig,phone_no,email,photo)values(@name,@desig,@phone_no,@email,@photo)
end
if(@var='2')
begin
update tblteam set name=@name,desig=@desig,phone_no=@phone_no,email=@email,photo=@photo where id=@id
end
if(@var='3')
begin
select *from tblteam
end
if(@var='4')
begin
select *from tblteam where id=@id
end
if(@var='5')
begin
delete from tblteam where id=@id
end
end
GO
/****** Object:  StoredProcedure [dbo].[proc_tbltesti]    Script Date: 7/9/2018 6:51:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create proc [dbo].[proc_tbltesti]
@id int=null,
@name nvarchar(max)=null,
@degisnation nvarchar(max)=null,
@desc_ nvarchar(max)=null,
@img nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tbltesti(name,degisnation,desc_,img)values(@name,@degisnation,@desc_,@img)
end
if(@var='upda')
begin
update tbltesti set name=@name,degisnation=@degisnation,desc_=@desc_,img=@img where id=@id
end
if(@var='sel')
begin
select *from tbltesti
end
if(@var='selid')
begin
select *from tbltesti where id=@id
end
if(@var='del')
begin
delete from tbltesti where id=@id
end
end



GO
USE [master]
GO
ALTER DATABASE [dblic] SET  READ_WRITE 
GO
