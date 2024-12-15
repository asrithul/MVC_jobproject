USE [mvc_prodb]
GO
/****** Object:  Table [dbo].[appli_tab]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appli_tab](
	[app_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[job_id] [int] NOT NULL,
	[resume] [varchar](250) NOT NULL,
	[app_status] [varchar](50) NOT NULL,
	[app_date] [date] NOT NULL,
 CONSTRAINT [PK_appli_tab] PRIMARY KEY CLUSTERED 
(
	[app_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comp_reg]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comp_reg](
	[comp_id] [int] NOT NULL,
	[comp_name] [varchar](50) NOT NULL,
	[comp_email] [varchar](50) NOT NULL,
	[comp_number] [varchar](20) NOT NULL,
	[comp_address] [varchar](200) NOT NULL,
	[comp_website] [varchar](200) NOT NULL,
 CONSTRAINT [PK_comp_reg] PRIMARY KEY CLUSTERED 
(
	[comp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job_tab]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job_tab](
	[job_id] [int] IDENTITY(1,1) NOT NULL,
	[job_tittle] [varchar](100) NOT NULL,
	[job_desc] [varchar](200) NOT NULL,
	[job_skills] [varchar](150) NOT NULL,
	[comp_id] [int] NOT NULL,
	[closing_date] [date] NOT NULL,
	[status] [varchar](50) NOT NULL,
	[job_exp] [int] NULL,
 CONSTRAINT [PK_job_tab] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[login_tab]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[login_tab](
	[log_id] [int] IDENTITY(1,1) NOT NULL,
	[reg_id] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[log_type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_login_tab] PRIMARY KEY CLUSTERED 
(
	[log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_reg]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_reg](
	[id] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[address] [varchar](150) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[photo] [varchar](200) NOT NULL,
	[phone] [varchar](20) NOT NULL,
	[skills] [varchar](200) NOT NULL,
	[exp] [varchar](20) NOT NULL,
	[qualification] [varchar](100) NOT NULL,
 CONSTRAINT [PK_user_reg] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[appli_tab] ON 
GO
INSERT [dbo].[appli_tab] ([app_id], [user_id], [job_id], [resume], [app_status], [app_date]) VALUES (1, 1, 2, N'//res\itachi-uchiha-naruto-amoled-black-background-5k-3840x2160-4962.png', N'Applied', CAST(N'0001-01-01' AS Date))
GO
SET IDENTITY_INSERT [dbo].[appli_tab] OFF
GO
INSERT [dbo].[comp_reg] ([comp_id], [comp_name], [comp_email], [comp_number], [comp_address], [comp_website]) VALUES (1, N'Tech Innovators', N'contact@techinnovators.com', N'9876543210', N'123 Tech Street, Kochi', N'www.techinnovators.com')
GO
SET IDENTITY_INSERT [dbo].[job_tab] ON 
GO
INSERT [dbo].[job_tab] ([job_id], [job_tittle], [job_desc], [job_skills], [comp_id], [closing_date], [status], [job_exp]) VALUES (1, N'Software Engineer', N'dhfdbbsdf', N'C#, ASP.NET, SQL', 1, CAST(N'2024-12-04' AS Date), N'Open', 0)
GO
INSERT [dbo].[job_tab] ([job_id], [job_tittle], [job_desc], [job_skills], [comp_id], [closing_date], [status], [job_exp]) VALUES (2, N'QA analyst', N'tdtugvgbhn', N'Python,selenium', 1, CAST(N'2024-11-02' AS Date), N'Open', 1)
GO
SET IDENTITY_INSERT [dbo].[job_tab] OFF
GO
SET IDENTITY_INSERT [dbo].[login_tab] ON 
GO
INSERT [dbo].[login_tab] ([log_id], [reg_id], [username], [password], [log_type]) VALUES (1, 1, N'Techin210', N'Techin@210', N'company')
GO
INSERT [dbo].[login_tab] ([log_id], [reg_id], [username], [password], [log_type]) VALUES (2, 2, N'Abhi123', N'Abhi@123', N'user')
GO
SET IDENTITY_INSERT [dbo].[login_tab] OFF
GO
INSERT [dbo].[user_reg] ([id], [name], [age], [address], [email], [photo], [phone], [skills], [exp], [qualification]) VALUES (2, N'Abhishek B Kumar', 21, N'Mini Bhavan, Cheruva Thekke, Kodumon', N'abhishekbkumar321@gmail.com', N'//uimg\WhatsApp Image 2024-07-29 at 23.15.44_5c5c21a2.jpg', N'9633583170', N'C#,Asp.Net,SQL', N'1', N'SSLC,PLUS TWO,BCA')
GO
/****** Object:  StoredProcedure [dbo].[sp_applycv]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_applycv]
@uid int,
@jid int,
@resume varchar(250),
@apst varchar(50),
@apdt date
as
begin
insert into appli_tab values(@uid,@jid,@resume,@apst,@apdt)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_compreg]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_compreg]
@cid int,
@cname varchar(50),
@cemail varchar(50),
@cnumber varchar(20),
@caddr varchar(200),
@cweb varchar(200)
as
begin
insert into comp_reg values(@cid,@cname,@cemail,@cnumber,@caddr,@cweb)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_jobinsert]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_jobinsert]
@jtitle varchar(100),
@jdesc varchar(200),
@jskills varchar(150),
@compid int,
@cdate date,
@status varchar(50),
@jexp int
as
begin
insert into job_tab values(@jtitle,@jdesc,@jskills,@compid,@cdate,@status,@jexp)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_jobsearch]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_jobsearch]
@qry nvarchar(max)=null

as
begin
DECLARE @SQL NVARCHAR(MAX)
SET @SQL=N'SELECT * FROM job_tab WHERE 1=1'+@qry
EXEC sp_executesql @SQL
end
GO
/****** Object:  StoredProcedure [dbo].[sp_loginCount]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_loginCount]
@una varchar(50),
@pwd varchar(50)
as
begin
select count(log_id) from login_tab where username=@una and [password]=@pwd
end
GO
/****** Object:  StoredProcedure [dbo].[sp_loginId]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_loginId]
@una varchar(50),
@pwd varchar(50)
as
begin
select reg_id from login_tab
end
GO
/****** Object:  StoredProcedure [dbo].[sp_loginsert]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_loginsert]
@rid int,
@uname varchar(50),
@pwd varchar(50),
@ltype varchar(50)
as 
begin
insert into login_tab values(@rid,@uname,@pwd,@ltype)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_loginType]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_loginType]
@una varchar(50),
@pwd varchar(50)
as
begin
select log_type from login_tab where username=@una and [password]=@pwd
end
GO
/****** Object:  StoredProcedure [dbo].[sp_maxid]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_maxid]

as 
begin
select max(reg_id) from login_tab
end
GO
/****** Object:  StoredProcedure [dbo].[sp_userreg]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_userreg]
@uid int,
@uname varchar(50),
@uage int,
@uaddress varchar(150),
@uemail varchar(50),
@photo varchar(200),
@phone varchar(20),
@skills varchar(200),
@exp varchar(20),
@uqual varchar(100)
as
begin
insert into user_reg values(@uid,@uname,@uage,@uaddress,@uemail,@photo,@phone,@skills,@exp,@uqual)
end
GO
/****** Object:  StoredProcedure [dbo].[sp_viewjobs]    Script Date: 13-12-2024 18:41:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_viewjobs]
as
begin
select * from job_tab
end
GO
