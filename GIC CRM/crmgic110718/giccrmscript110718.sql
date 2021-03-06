USE [master]
GO
/****** Object:  Database [dbgic]    Script Date: 7/11/2018 3:21:12 PM ******/
CREATE DATABASE [dbgic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbgic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dbgic.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dbgic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\dbgic_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dbgic] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbgic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbgic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbgic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbgic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbgic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbgic] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbgic] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbgic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbgic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbgic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbgic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbgic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbgic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbgic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbgic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbgic] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbgic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbgic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbgic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbgic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbgic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbgic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbgic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbgic] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbgic] SET  MULTI_USER 
GO
ALTER DATABASE [dbgic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbgic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbgic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbgic] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [dbgic] SET DELAYED_DURABILITY = DISABLED 
GO
USE [dbgic]
GO
/****** Object:  Table [dbo].[nasty_admin]    Script Date: 7/11/2018 3:21:12 PM ******/
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
/****** Object:  Table [dbo].[tblfitness]    Script Date: 7/11/2018 3:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblfitness](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vehicle_no] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[address] [nvarchar](max) NULL,
	[expiry_date] [nvarchar](50) NULL,
	[mobile_no] [nvarchar](50) NULL,
	[duration] [nvarchar](50) NULL,
 CONSTRAINT [pkfitness] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblgic]    Script Date: 7/11/2018 3:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblgic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[insurance_company_name] [nvarchar](max) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[vehicle_no] [nvarchar](100) NOT NULL,
	[registration_date] [nvarchar](50) NOT NULL,
	[model] [nvarchar](50) NOT NULL,
	[NCB] [nvarchar](max) NOT NULL,
	[premium] [nvarchar](100) NOT NULL,
	[total] [nvarchar](100) NOT NULL,
	[expiry_date] [nvarchar](50) NULL,
	[policy_no] [nvarchar](100) NULL,
	[mobile_no] [nvarchar](100) NULL,
 CONSTRAINT [pkgic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblgictax]    Script Date: 7/11/2018 3:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblgictax](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vehicle_no] [nvarchar](100) NULL,
	[chassis_no] [nvarchar](100) NULL,
	[name] [nvarchar](50) NULL,
	[expiry_date] [nvarchar](50) NULL,
	[rupees] [nvarchar](max) NULL,
	[mobile_no] [nvarchar](50) NULL,
 CONSTRAINT [pkgictax] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblhealth]    Script Date: 7/11/2018 3:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblhealth](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Expiry_date] [nvarchar](50) NULL,
	[Premium] [nvarchar](100) NULL,
	[Premium_type] [nvarchar](50) NULL,
 CONSTRAINT [pkhealth] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbllic]    Script Date: 7/11/2018 3:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbllic](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[Policy_no] [nvarchar](max) NULL,
	[Premium] [nvarchar](100) NULL,
	[_Plan] [nvarchar](100) NULL,
	[Term] [nvarchar](100) NULL,
	[PPT] [nvarchar](100) NULL,
	[Maturity] [nvarchar](100) NULL,
	[S_B_Payment] [nvarchar](100) NULL,
	[Mobile_no] [nvarchar](100) NULL,
	[premium_type] [varchar](50) NULL,
 CONSTRAINT [pklic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblpermit]    Script Date: 7/11/2018 3:21:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblpermit](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vehicle_no] [nvarchar](100) NULL,
	[name] [nvarchar](100) NULL,
	[address] [nvarchar](max) NULL,
	[expiry_date] [nvarchar](50) NULL,
	[mobile_no] [nvarchar](50) NULL,
	[duration] [nvarchar](50) NULL,
 CONSTRAINT [pkpermit] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[nasty_admin] ON 

INSERT [dbo].[nasty_admin] ([id], [userid], [password], [name], [father], [mobile], [email], [dob], [gender], [address], [city], [state], [country], [pin], [doj], [status], [designation], [landstd], [landlineno]) VALUES (1, N'gic', N'12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2018-06-26 14:33:54.513' AS DateTime), N'active', NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[nasty_admin] OFF
SET IDENTITY_INSERT [dbo].[tblfitness] ON 

INSERT [dbo].[tblfitness] ([id], [vehicle_no], [name], [address], [expiry_date], [mobile_no], [duration]) VALUES (1, N'4536444', N'Shambhu Kumar', N'gfdsgdhfjkgykgkl', N'12-02-2012', N'9639754606', N'1 Year')
SET IDENTITY_INSERT [dbo].[tblfitness] OFF
SET IDENTITY_INSERT [dbo].[tblgic] ON 

INSERT [dbo].[tblgic] ([id], [insurance_company_name], [name], [address], [vehicle_no], [registration_date], [model], [NCB], [premium], [total], [expiry_date], [policy_no], [mobile_no]) VALUES (1, N'LIC', N'Mukesh Kumar', N'Xsadgdrthftutitruuynyurytjutu5', N'4536', N'12-02-2012', N'2015', N'sdhdjd', N'50200/-', N'10,000/-', N'05/31/2018', N'stcb451235689555', N'9639817356')
INSERT [dbo].[tblgic] ([id], [insurance_company_name], [name], [address], [vehicle_no], [registration_date], [model], [NCB], [premium], [total], [expiry_date], [policy_no], [mobile_no]) VALUES (4, N'LIC', N'Shambhu Kumar', N'sdfsdehrdhrujkfu', N'7895', N'12-02-2012', N'2018', N'dtgregrghrhr', N'8000/-', N'10,000/-', N'12-02-2012', N'wrfwsfsf ssfsfsrfswrefswef', N'9639754606')
INSERT [dbo].[tblgic] ([id], [insurance_company_name], [name], [address], [vehicle_no], [registration_date], [model], [NCB], [premium], [total], [expiry_date], [policy_no], [mobile_no]) VALUES (5, N'LIC', N'Anurag Sindhu', N'sfdsegrgdrtyeyhrtfyht', N'5523', N'07/11/2018', N'2010', N'rgdsrgdrgdg', N'9000/-', N'20000/-', N'11/14/2018', N'ksakldsdmslfjslfsfel', N'9639754606')
SET IDENTITY_INSERT [dbo].[tblgic] OFF
SET IDENTITY_INSERT [dbo].[tblgictax] ON 

INSERT [dbo].[tblgictax] ([id], [vehicle_no], [chassis_no], [name], [expiry_date], [rupees], [mobile_no]) VALUES (2, N'7895', N'12456358', N'Mukesh Kumar', N'06/15/2018', N'20000/-', N'9639754606')
INSERT [dbo].[tblgictax] ([id], [vehicle_no], [chassis_no], [name], [expiry_date], [rupees], [mobile_no]) VALUES (3, N'4536', N'54213265', N'Pankaj Kumar', N'10/20/2010', N'40000/-', N'8852632124')
INSERT [dbo].[tblgictax] ([id], [vehicle_no], [chassis_no], [name], [expiry_date], [rupees], [mobile_no]) VALUES (4, N'8956', N'452365', N'Pankaj Kumar', N'11/26/2009', N'20000/-', N'8896532653')
SET IDENTITY_INSERT [dbo].[tblgictax] OFF
SET IDENTITY_INSERT [dbo].[tblhealth] ON 

INSERT [dbo].[tblhealth] ([id], [name], [Address], [Expiry_date], [Premium], [Premium_type]) VALUES (2, N'Shambhu Kumar', N'vffgfdfgfgdffgdgrtrttrg', N'07/13/2010', N'50200/-', N'1 Year')
INSERT [dbo].[tblhealth] ([id], [name], [Address], [Expiry_date], [Premium], [Premium_type]) VALUES (1002, N'Anurag Sindhu', N'sdtr5yr5utu', N'12-02-2012', N'50200/-', N'1 Year')
SET IDENTITY_INSERT [dbo].[tblhealth] OFF
SET IDENTITY_INSERT [dbo].[tbllic] ON 

INSERT [dbo].[tbllic] ([id], [name], [Policy_no], [Premium], [_Plan], [Term], [PPT], [Maturity], [S_B_Payment], [Mobile_no], [premium_type]) VALUES (1, N'Mukesh Kumar', N'stcb451235689555', N'50200/-', N'fsdfdg', N'esegherg', N'dgdgdrgdrg', N'fsfg sgde', N'srfserfefe', N'9639754606', N'Half-Yearly')
INSERT [dbo].[tbllic] ([id], [name], [Policy_no], [Premium], [_Plan], [Term], [PPT], [Maturity], [S_B_Payment], [Mobile_no], [premium_type]) VALUES (3, N'Akash Sharma', N'123456789', N'8000/-', N'sefdsgdsgsd', N'asedsfsdfs', N'asadasfasf', N'dsdasdawdad', N'sasasdadasd', N'9639754606', N'Quarterly')
INSERT [dbo].[tbllic] ([id], [name], [Policy_no], [Premium], [_Plan], [Term], [PPT], [Maturity], [S_B_Payment], [Mobile_no], [premium_type]) VALUES (4, N'Anurag Sindhu', N'789456123', N'10000/-', N'sfdsdfsd dfs', N'sfsdfsdfvdsfsdf', N'sefedfrdrfsrdf', N'dwesdrsdhe', N'fe4trhytjuyjyiyiy', N'8845235689', N'Half-Yearly')
SET IDENTITY_INSERT [dbo].[tbllic] OFF
SET IDENTITY_INSERT [dbo].[tblpermit] ON 

INSERT [dbo].[tblpermit] ([id], [vehicle_no], [name], [address], [expiry_date], [mobile_no], [duration]) VALUES (1, N'7895', N'Anurag Sindhu', N'grjkgrkjgejkorglkrekmlreklmrelk', N'02/17/2010', N'8256838356', N'2 year')
INSERT [dbo].[tblpermit] ([id], [vehicle_no], [name], [address], [expiry_date], [mobile_no], [duration]) VALUES (2, N'4536hhh', N'Shambhu Kumar', N'dda sfsfsdfdgdgdgfdggh', N'06/14/2018', N'9639817356', N'4 Month')
SET IDENTITY_INSERT [dbo].[tblpermit] OFF
/****** Object:  StoredProcedure [dbo].[proc_login]    Script Date: 7/11/2018 3:21:13 PM ******/
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
/****** Object:  StoredProcedure [dbo].[proc_tblfitness]    Script Date: 7/11/2018 3:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE proc [dbo].[proc_tblfitness]
@id int=null,
@vehicle_no nvarchar(max)=null,
@name nvarchar(max)=null,
@address nvarchar(max)=null,
@expiry_date nvarchar(max)=null,
@mobile_no nvarchar(max)=null,
@duration nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tblfitness(vehicle_no,name,address,expiry_date,mobile_no,duration)values(@vehicle_no,@name,@address,@expiry_date,@mobile_no,@duration)
end
if(@var='upda')
begin
update tblfitness set vehicle_no=@vehicle_no,name=@name,address=@address,expiry_date=@expiry_date,mobile_no=@mobile_no,duration=@duration where id=@id
end
if(@var='sel')
begin
select *from tblfitness
end
if(@var='selid')
begin
select *from tblfitness where id=@id
end
if(@var='del')
begin
delete from tblfitness where id=@id
end
end







GO
/****** Object:  StoredProcedure [dbo].[proc_tblgic]    Script Date: 7/11/2018 3:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE proc [dbo].[proc_tblgic]
@id int=null,
@insurance_company_name nvarchar(max)=null,
@name nvarchar(max)=null,
@address nvarchar(max)=null,
@vehicle_no nvarchar(max)=null,
@registration_date nvarchar(max)=null,
@model nvarchar(max)=null,
@NCB  nvarchar(max)=null,
@premium nvarchar(max)=null,
@total nvarchar(max)=null,
@expiry_date nvarchar(max)=null,
@policy_no nvarchar(max)=null,
@mobile_no nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tblgic(insurance_company_name,name,address,vehicle_no,registration_date,model,NCB,premium,total,expiry_date,policy_no,mobile_no)values(@insurance_company_name,@name,@address,@vehicle_no,@registration_date,@model,@NCB,@premium,@total,@expiry_date,@policy_no,@mobile_no)
end
if(@var='upda')
begin
update tblgic set insurance_company_name=@insurance_company_name,name=@name,address=@address,vehicle_no=@vehicle_no,registration_date=@registration_date,model=@model,NCB=@NCB,premium=@premium,total=@total,expiry_date=@expiry_date,policy_no=@policy_no,mobile_no=@mobile_no where id=@id
end
if(@var='sel')
begin
select *from tblgic
end
if(@var='selid')
begin
select *from tblgic where id=@id
end
if(@var='del')
begin
delete from tblgic where id=@id
end
end





GO
/****** Object:  StoredProcedure [dbo].[proc_tblgictax]    Script Date: 7/11/2018 3:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE proc [dbo].[proc_tblgictax]
@id int=null,
@vehicle_no nvarchar(max)=null,
@chassis_no nvarchar(max)=null,
@name nvarchar(max)=null,
@expiry_date nvarchar(max)=null,
@rupees nvarchar(max)=null,
@mobile_no nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tblgictax(vehicle_no,chassis_no,name,expiry_date,rupees,mobile_no)values(@vehicle_no,@chassis_no,@name,@expiry_date,@rupees,@mobile_no)
end
if(@var='upda')
begin
update tblgictax set vehicle_no=@vehicle_no,chassis_no=@chassis_no,name=@name,expiry_date=@expiry_date,rupees=@rupees,mobile_no=@mobile_no where id=@id
end
if(@var='sel')
begin
select *from tblgictax
end
if(@var='selid')
begin
select *from tblgictax where id=@id
end
if(@var='del')
begin
delete from tblgictax where id=@id
end
end







GO
/****** Object:  StoredProcedure [dbo].[proc_tblhealth]    Script Date: 7/11/2018 3:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE proc [dbo].[proc_tblhealth]
@id int=null,
@name nvarchar(max)=null,
@Address nvarchar(max)=null,
@Expiry_date nvarchar(max)=null,
@Premium nvarchar(max)=null,
@Premium_type nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tblhealth(name,Address,Expiry_date,Premium,Premium_type)values(@name,@Address,@Expiry_date,@Premium,@Premium_type)
end
if(@var='upda')
begin
update tblhealth set name=@name,Address=@Address,Expiry_date=@Expiry_date,Premium=@Premium,Premium_type=@Premium_type where id=@id
end
if(@var='sel')
begin
select *from tblhealth
end
if(@var='selid')
begin
select *from tblhealth where id=@id
end
if(@var='del')
begin
delete from tblhealth where id=@id
end
end






GO
/****** Object:  StoredProcedure [dbo].[proc_tbllic]    Script Date: 7/11/2018 3:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE proc [dbo].[proc_tbllic]
@id int=null,
@premium_type nvarchar(max)=null,
@name nvarchar(max)=null,
@Policy_no nvarchar(max)=null,
@Premium nvarchar(max)=null,
@_Plan nvarchar(max)=null,
@Term nvarchar(max)=null,
@PPT nvarchar(max)=null,
@Maturity nvarchar(max)=null,
@S_B_Payment nvarchar(max)=null,
@Mobile_no nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tbllic(premium_type,name,Policy_no,Premium,_Plan,Term,PPT,Maturity,S_B_Payment,Mobile_no)values(@premium_type,@name,@Policy_no,@Premium,@_Plan,@Term,@PPT,@Maturity,@S_B_Payment,@Mobile_no)
end
if(@var='upda')
begin
update tbllic set premium_type=@premium_type, name=@name,Policy_no=@Policy_no,Premium=@Premium,_Plan=@_Plan,Term=@Term,PPT=@PPT,Maturity=@Maturity,S_B_Payment=@S_B_Payment,Mobile_no=@Mobile_no where id=@id
end
if(@var='sel')
begin
select *from tbllic
end
if(@var='selid')
begin
select *from tbllic where id=@id
end
if(@var='del')
begin
delete from tbllic where id=@id
end
end








GO
/****** Object:  StoredProcedure [dbo].[proc_tblpermit]    Script Date: 7/11/2018 3:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE proc [dbo].[proc_tblpermit]
@id int=null,
@vehicle_no nvarchar(max)=null,
@name nvarchar(max)=null,
@address nvarchar(max)=null,
@expiry_date nvarchar(max)=null,
@mobile_no nvarchar(max)=null,
@duration nvarchar(max)=null,
@var varchar(50)
as
begin
if(@var='ins')
begin
insert into tblpermit(vehicle_no,name,address,expiry_date,mobile_no,duration)values(@vehicle_no,@name,@address,@expiry_date,@mobile_no,@duration)
end
if(@var='upda')
begin
update tblpermit set vehicle_no=@vehicle_no,name=@name,address=@address,expiry_date=@expiry_date,mobile_no=@mobile_no,duration=@duration where id=@id
end
if(@var='sel')
begin
select *from tblpermit
end
if(@var='selid')
begin
select *from tblpermit where id=@id
end
if(@var='del')
begin
delete from tblpermit where id=@id
end
end







GO
USE [master]
GO
ALTER DATABASE [dbgic] SET  READ_WRITE 
GO
