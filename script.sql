USE [master]
GO
/****** Object:  Database [Career]    Script Date: 31-07-2019 19:00:21 ******/
CREATE DATABASE [Career]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Career', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Career.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Career_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Career_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Career] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Career].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Career] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Career] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Career] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Career] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Career] SET ARITHABORT OFF 
GO
ALTER DATABASE [Career] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Career] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Career] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Career] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Career] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Career] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Career] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Career] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Career] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Career] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Career] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Career] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Career] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Career] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Career] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Career] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Career] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Career] SET RECOVERY FULL 
GO
ALTER DATABASE [Career] SET  MULTI_USER 
GO
ALTER DATABASE [Career] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Career] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Career] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Career] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Career] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Career]
GO
/****** Object:  Table [dbo].[Applied_Job_Seekers]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applied_Job_Seekers](
	[applied_job_id] [numeric](5, 0) NOT NULL,
	[user_id] [numeric](5, 0) NULL,
	[job_id] [numeric](5, 0) NULL,
	[cover_letter] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[applied_job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Basic_Profile_Details_Job_Seeker]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Basic_Profile_Details_Job_Seeker](
	[date_of_birth] [varchar](10) NOT NULL,
	[address] [varchar](100) NOT NULL,
	[city] [varchar](15) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[pincode] [numeric](6, 0) NOT NULL,
	[mobile_number] [numeric](10, 0) NOT NULL,
	[gender] [varchar](10) NOT NULL,
	[user_id] [numeric](5, 0) NOT NULL,
	[profile_id] [numeric](5, 0) NOT NULL,
	[created_on] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Basic_Profile_Details_Job_Seeker] PRIMARY KEY CLUSTERED 
(
	[profile_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[City]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[City](
	[city_id] [numeric](2, 0) NOT NULL,
	[city_name] [varchar](25) NULL,
	[company_id] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[company_id] [numeric](2, 0) NOT NULL,
	[company_name] [varchar](25) NULL,
	[city_id] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Contact_Person]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact_Person](
	[contact_id] [numeric](5, 0) NOT NULL,
	[contact_person_name] [varchar](20) NULL,
	[employer_id] [numeric](5, 0) NULL,
	[contact_email] [varchar](50) NULL,
	[contact_phone] [varchar](10) NULL,
 CONSTRAINT [PK__Contact___024E7A8631E7C992] PRIMARY KEY CLUSTERED 
(
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Educational_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Educational_Details](
	[education_id] [numeric](7, 0) NOT NULL,
	[education_name] [varchar](25) NOT NULL,
	[education_board] [varchar](20) NOT NULL,
	[year_of_passing] [numeric](5, 0) NOT NULL,
	[percentage] [numeric](5, 0) NOT NULL,
	[institution_name] [varchar](25) NOT NULL,
	[user_id] [numeric](5, 0) NOT NULL,
	[stream] [nchar](10) NOT NULL,
 CONSTRAINT [PK__Educatio__9C8C7BE9AA792B90] PRIMARY KEY CLUSTERED 
(
	[education_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employer_Login]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employer_Login](
	[e_email_id] [varchar](50) NOT NULL,
	[password] [nchar](10) NULL,
	[employer_id] [numeric](5, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[e_email_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employer_Sign_Up_Detail]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employer_Sign_Up_Detail](
	[employer_id] [numeric](5, 0) NOT NULL,
	[employer_name] [varchar](20) NULL,
	[city] [varchar](15) NULL,
	[address] [varchar](100) NULL,
	[e_email_id] [varchar](50) NULL,
	[headquarter] [varchar](20) NULL,
	[employer_type] [numeric](6, 0) NULL,
	[branches] [varchar](20) NULL,
	[contact_id] [numeric](5, 0) NULL,
 CONSTRAINT [PK__Employer__365FA4E7D8CDE981] PRIMARY KEY CLUSTERED 
(
	[employer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employer_Type]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employer_Type](
	[it] [nvarchar](max) NULL,
	[business] [nvarchar](max) NULL,
	[marketing] [nvarchar](max) NULL,
	[finance] [nvarchar](max) NULL,
	[government] [nvarchar](max) NULL,
	[employer_type] [numeric](6, 0) NOT NULL,
	[employer_id] [numeric](5, 0) NOT NULL,
 CONSTRAINT [PK_Employer_Type] PRIMARY KEY CLUSTERED 
(
	[employer_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Job_Post_Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job_Post_Table](
	[job_id] [numeric](5, 0) NOT NULL,
	[company_name] [varchar](25) NOT NULL,
	[job_title] [varchar](20) NOT NULL,
	[industry] [varchar](20) NOT NULL,
	[skill_id] [numeric](10, 0) NOT NULL,
	[user_id] [numeric](5, 0) NOT NULL,
	[annual_salary] [varchar](10) NOT NULL,
	[experience_year] [varchar](10) NOT NULL,
 CONSTRAINT [PK__Job_Post__6E32B6A57383AEEC] PRIMARY KEY CLUSTERED 
(
	[job_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job_Seeker_Resume]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job_Seeker_Resume](
	[resume_id] [numeric](5, 0) NOT NULL,
	[user_id] [numeric](5, 0) NULL,
	[file_name] [varchar](20) NULL,
	[file_data] [varbinary](max) NULL,
	[file_extension] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[resume_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Job_Seeker_Sign_Up]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Job_Seeker_Sign_Up](
	[user_id] [numeric](5, 0) IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](15) NULL,
	[last_name] [varchar](15) NULL,
	[user_type] [varchar](25) NULL,
	[j_email_id] [varchar](30) NOT NULL,
	[password] [varchar](15) NULL,
 CONSTRAINT [PK__User_Log__206D919098A3CA9E] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PATANAHI]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PATANAHI](
	[YEBHINAHIPATA] [numeric](3, 0) NOT NULL,
	[city_id] [numeric](2, 0) NULL,
	[company_id] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[YEBHINAHIPATA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Skill_Details](
	[skill_id] [numeric](10, 0) NOT NULL,
	[user_id] [numeric](5, 0) NULL,
	[skills] [varchar](15) NULL,
	[experience_months] [numeric](3, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[skill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table](
	[user_id] [int] NOT NULL,
	[email_id] [varchar](50) NULL,
	[password] [varchar](50) NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Applied_Job_Seekers]  WITH CHECK ADD  CONSTRAINT [FK_Applied_Job_Seekers_Job_Post_Table] FOREIGN KEY([job_id])
REFERENCES [dbo].[Job_Post_Table] ([job_id])
GO
ALTER TABLE [dbo].[Applied_Job_Seekers] CHECK CONSTRAINT [FK_Applied_Job_Seekers_Job_Post_Table]
GO
ALTER TABLE [dbo].[Applied_Job_Seekers]  WITH CHECK ADD  CONSTRAINT [FK_Applied_Job_Seekers_User_Sign_Up] FOREIGN KEY([user_id])
REFERENCES [dbo].[Job_Seeker_Sign_Up] ([user_id])
GO
ALTER TABLE [dbo].[Applied_Job_Seekers] CHECK CONSTRAINT [FK_Applied_Job_Seekers_User_Sign_Up]
GO
ALTER TABLE [dbo].[Basic_Profile_Details_Job_Seeker]  WITH CHECK ADD  CONSTRAINT [FK_Basic_Profile_Details_Job_Seeker_User_Sign_Up] FOREIGN KEY([user_id])
REFERENCES [dbo].[Job_Seeker_Sign_Up] ([user_id])
GO
ALTER TABLE [dbo].[Basic_Profile_Details_Job_Seeker] CHECK CONSTRAINT [FK_Basic_Profile_Details_Job_Seeker_User_Sign_Up]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([company_id])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Company]
GO
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_Company_City] FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([city_id])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_Company_City]
GO
ALTER TABLE [dbo].[Contact_Person]  WITH CHECK ADD  CONSTRAINT [FK_Contact_Person_Employer_Detail] FOREIGN KEY([employer_id])
REFERENCES [dbo].[Employer_Sign_Up_Detail] ([employer_id])
GO
ALTER TABLE [dbo].[Contact_Person] CHECK CONSTRAINT [FK_Contact_Person_Employer_Detail]
GO
ALTER TABLE [dbo].[Educational_Details]  WITH CHECK ADD  CONSTRAINT [FK_Educational_Details_User_Sign_Up] FOREIGN KEY([user_id])
REFERENCES [dbo].[Job_Seeker_Sign_Up] ([user_id])
GO
ALTER TABLE [dbo].[Educational_Details] CHECK CONSTRAINT [FK_Educational_Details_User_Sign_Up]
GO
ALTER TABLE [dbo].[Employer_Login]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Login_Employer_Detail] FOREIGN KEY([employer_id])
REFERENCES [dbo].[Employer_Sign_Up_Detail] ([employer_id])
GO
ALTER TABLE [dbo].[Employer_Login] CHECK CONSTRAINT [FK_Employer_Login_Employer_Detail]
GO
ALTER TABLE [dbo].[Employer_Sign_Up_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Detail_Contact_Person] FOREIGN KEY([contact_id])
REFERENCES [dbo].[Contact_Person] ([contact_id])
GO
ALTER TABLE [dbo].[Employer_Sign_Up_Detail] CHECK CONSTRAINT [FK_Employer_Detail_Contact_Person]
GO
ALTER TABLE [dbo].[Employer_Sign_Up_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Detail_Employer_Login] FOREIGN KEY([e_email_id])
REFERENCES [dbo].[Employer_Login] ([e_email_id])
GO
ALTER TABLE [dbo].[Employer_Sign_Up_Detail] CHECK CONSTRAINT [FK_Employer_Detail_Employer_Login]
GO
ALTER TABLE [dbo].[Employer_Sign_Up_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Detail_Employer_Type] FOREIGN KEY([employer_type])
REFERENCES [dbo].[Employer_Type] ([employer_type])
GO
ALTER TABLE [dbo].[Employer_Sign_Up_Detail] CHECK CONSTRAINT [FK_Employer_Detail_Employer_Type]
GO
ALTER TABLE [dbo].[Employer_Type]  WITH CHECK ADD  CONSTRAINT [FK_Employer_Type_Employer_Detail] FOREIGN KEY([employer_id])
REFERENCES [dbo].[Employer_Sign_Up_Detail] ([employer_id])
GO
ALTER TABLE [dbo].[Employer_Type] CHECK CONSTRAINT [FK_Employer_Type_Employer_Detail]
GO
ALTER TABLE [dbo].[Job_Post_Table]  WITH CHECK ADD  CONSTRAINT [FK_Job_Post_Table_Job_Seeker_Sign_Up] FOREIGN KEY([user_id])
REFERENCES [dbo].[Job_Seeker_Sign_Up] ([user_id])
GO
ALTER TABLE [dbo].[Job_Post_Table] CHECK CONSTRAINT [FK_Job_Post_Table_Job_Seeker_Sign_Up]
GO
ALTER TABLE [dbo].[Job_Seeker_Resume]  WITH CHECK ADD  CONSTRAINT [FK_Job_Seeker_Resume_User_Sign_Up] FOREIGN KEY([user_id])
REFERENCES [dbo].[Job_Seeker_Sign_Up] ([user_id])
GO
ALTER TABLE [dbo].[Job_Seeker_Resume] CHECK CONSTRAINT [FK_Job_Seeker_Resume_User_Sign_Up]
GO
ALTER TABLE [dbo].[PATANAHI]  WITH CHECK ADD  CONSTRAINT [FK_PATANAHI_City] FOREIGN KEY([city_id])
REFERENCES [dbo].[City] ([city_id])
GO
ALTER TABLE [dbo].[PATANAHI] CHECK CONSTRAINT [FK_PATANAHI_City]
GO
ALTER TABLE [dbo].[PATANAHI]  WITH CHECK ADD  CONSTRAINT [FK_PATANAHI_Company] FOREIGN KEY([company_id])
REFERENCES [dbo].[Company] ([company_id])
GO
ALTER TABLE [dbo].[PATANAHI] CHECK CONSTRAINT [FK_PATANAHI_Company]
GO
ALTER TABLE [dbo].[Skill_Details]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Details_User_Sign_Up] FOREIGN KEY([user_id])
REFERENCES [dbo].[Job_Seeker_Sign_Up] ([user_id])
GO
ALTER TABLE [dbo].[Skill_Details] CHECK CONSTRAINT [FK_Skill_Details_User_Sign_Up]
GO
/****** Object:  StoredProcedure [dbo].[delete_Applied_Job_Seekers]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Applied_Job_Seekers] 
	-- Add the parameters for the stored procedure here
	@applied_job_id numeric (5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Applied_Job_Seekers where applied_job_id = @applied_job_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Basic_Profile_Details_Job_Seeker]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Basic_Profile_Details_Job_Seeker]
	-- Add the parameters for the stored procedure here
	@profile_id nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Basic_Profile_Details_Job_Seeker where profile_id=@profile_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Contact_Person]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Contact_Person]
	-- Add the parameters for the stored procedure here
	@contact_id numeric (5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Contact_Person where contact_id = @contact_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Educational_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Educational_Details] 
	-- Add the parameters for the stored procedure here
@education_id numeric (7)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Educational_Details where education_id = @education_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Employer_Detail]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Employer_Detail] 
	-- Add the parameters for the stored procedure here
	@employer_id numeric (5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Employer_Detail where employer_id = @employer_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Employer_Login]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Employer_Login] 
	-- Add the parameters for the stored procedure here
	@username varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Employer_Login where username = @username
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Employer_Type]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Employer_Type] 
	-- Add the parameters for the stored procedure here
	@employer_type numeric (6)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Employer_Type where employer_type = @employer_type
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Job_Post_Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Job_Post_Table] 
	-- Add the parameters for the stored procedure here
	@job_id numeric (5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Job_Post_Table where job_id= @job_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Job_Seeker_Resume]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Job_Seeker_Resume]
	-- Add the parameters for the stored procedure here
	@resume_id numeric (5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Job_Seeker_Resume where resume_id = @resume_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_Skill_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_Skill_Details]
	-- Add the parameters for the stored procedure here
	@skill_id numeric (5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Skill_Details where skill_id = @skill_id
END

GO
/****** Object:  StoredProcedure [dbo].[delete_User_Login_Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[delete_User_Login_Table]
	-- Add the parameters for the stored procedure here
	@user_id numeric (5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from User_Login_Table where user_id = @user_id
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Applied_Job_Seeker]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Applied_Job_Seeker]
	-- Add the parameters for the stored procedure here
	@appliedjobid numeric(5),
	@userid numeric(5),
	@jobid numeric(5),
	@coverletter ntext
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into Applied_Job_Seekers(applied_job_id, user_id,job_id,cover_letter)
	values (@appliedjobid,
	@userid,
	@jobid,
	@coverletter)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Basic_Profile_Details_Job_Seeker]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Basic_Profile_Details_Job_Seeker]
	-- Add the parameters for the stored procedure here
	@profileid numeric(5),
	@dob varchar(10),
	@address varchar(100),
	@city varchar(15),
	@state varchar(20),
	@pincode numeric(6),
	@mobileno numeric(10),
	@gender varchar(10),
	@userid numeric(5),
	@createdon nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   insert into Basic_Profile_Details(date_of_birth,address,city,state,pincode,mobile_number,gender,user_id,profile_id,created_on)
   values(@profileid,@dob,@address,@city ,@state,@pincode,@mobileno,@gender,@userid,@createdon)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Contact_Person]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Contact_Person]
-- Add the parameters for the stored procedure here
	@contactid numeric(5),
	@contactpersonname varchar(20),
	@employerid numeric (5),
	@contactemail varchar(50),
	@contactphone varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into Contact_Person(contact_id, contact_person_name, employer_id, contact_email,contact_phone)
	values(@contactid,
	@contactpersonname,
	@employerid,
	@contactemail,
	@contactphone)

	
	
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Educational_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Educational_Details]
	-- Add the parameters for the stored procedure here
	@educationid numeric(7),
	@educationname varchar(25),
	@educationboard varchar(20),
	@yearofpassing numeric(5),
	@percentage numeric(5),
	@institutionname varchar(25),
	@userid numeric(5),
	@stream nchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into Educational_Details(education_id, education_name, education_board, year_of_passing,percentage,
    institution_name, user_id,stream)
	values(@educationid,
	@educationname,
	@educationboard,
	@yearofpassing,
	@percentage,
	@institutionname,
	@userid,
	@stream)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Employer_Detail]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Employer_Detail]
	-- Add the parameters for the stored procedure here
	@employerid numeric(5),
	@employername varchar(20),
	@city varchar(15),
	@address varchar(100),
	@emailid varchar(50),
	@headquater varchar(20),
	@employertype varchar(20),
	@branches varchar(20),
	@contacid numeric(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into Employer_Detail(employer_id,employer_name,city,address, email_id, 
	headquater, employer_type, branches, contact_id)
values(@employerid,@employername,@city,@address, @emailid,@headquater,@employertype,
@branches,@contacid)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Employer_Login]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Employer_Login]
	-- Add the parameters for the stored procedure here
	@username varchar(50),
	@password nchar(10),
	@employer_id numeric(5)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into Employer_Login(username, password, employer_id)
	values(@username,
	@password,
	@employer_id)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Employer_Type]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Employer_Type]
	-- Add the parameters for the stored procedure here
	@it nvarchar(max),
	@bussiness nvarchar(max),
	@marketing nvarchar(max),
	@finance nvarchar(max),
	@government nvarchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	Insert into Employer_Type(it, business, marketing, finance, government)
	values(@it, @bussiness, @marketing,@finance,@government)

    
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Job_Post_Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Job_Post_Table]

	-- Add the parameters for the stored procedure here
	@jobid numeric(5),
	@companyname varchar(25),
	@jobtitle varchar(20),
	@salary decimal(8),
	@industry varchar(20),
	@specializtion varchar(25),
	@userid numeric(5),
	@annualsalary varchar(10),
	@experienceyear varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into Job_Post_Table(job_id, company_name, job_title, salary, industry,specialization,
	user_id, annual_salary,experience_year)
values(@jobid,
	@companyname,
	@jobtitle ,
	@salary ,
	@industry ,
	@specializtion ,
	@userid ,
	@annualsalary ,
	@experienceyear )

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Job_Seeker_Resume]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Job_Seeker_Resume]
	-- Add the parameters for the stored procedure here
	@resume_id numeric(5),
	@user_id numeric(5),
	@file_name varchar(20),
	@file_data varbinary(max),
	@file_extension varchar(50)
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   insert into Job_Seeker_Resume (resume_id,user_id,file_name,file_data,file_extension)
   values(@resume_id,@user_id,@file_name,@file_data ,@file_extension)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_Skill_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_Skill_Details]
	-- Add the parameters for the stored procedure here
	@skill_id numeric(10),
	@user_id numeric(5),
	@skills varchar(15),
	@experience_months numeric(3)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into Skill_Details(skill_id, user_id, skills, experience_months)
	values(@skill_id, @user_id, @skills, @experience_months)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Insert_User_Login_Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Insert_User_Login_Table] 
	-- Add the parameters for the stored procedure here
	@userid numeric(5),
	@firstname varchar(15),
	@lastname varchar(15),
	@usertype varchar(25),
	@emailid varchar(30),
	@password varchar(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    Insert into User_Login_Table(User_ID,first_name,last_name,user_type,email_id,password)
	values(@userid,
	@firstname,
	@lastname,	@usertype,
	@emailid,
	@password)
END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_Applied_Job_Seekers]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Applied_Job_Seekers] 
@applied_job_id numeric(5),
@user_id numeric (5),
@job_id numeric (5),
@cover_letter ntext

AS
BEGIN
	
	SET NOCOUNT ON;

   update Applied_Job_Seekers set applied_job_id=@applied_job_id,user_id=@user_id,
   job_id=@job_id,cover_letter=@cover_letter where applied_job_id =@applied_job_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Basic_Profile_Details_Job_Seeker]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Basic_Profile_Details_Job_Seeker] 
@date_of_birth varchar(10),
@address varchar (100),
@city varchar (15),
@state varchar (20),
@pincode numeric (6),
@mobile_number numeric (10),
@gender varchar (10),
@user_id numeric (5),
@profile_id numeric (5),
@created_on nchar (10)
AS
BEGIN
	
	SET NOCOUNT ON;

   update Basic_Profile_Details_Job_Seeker set date_of_birth=@date_of_birth,address=@address,
   city=@city,state=@state,pincode=@pincode,mobile_number=@mobile_number, gender=@gender, user_id=@user_id,profile_id=@profile_id,created_on=@created_on where profile_id=@profile_id
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Contact_Person]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Contact_Person] 
@contact_id numeric(5),
@contact_person_name varchar(20),
@employer_id numeric (5),
@contact_email varchar(50),
@contact_phone varchar(10)

AS
BEGIN
	
	SET NOCOUNT ON;

   update Contact_Person set contact_id=@contact_id,contact_person_name=@contact_person_name,
   employer_id=@employer_id,contact_email=@contact_email where contact_phone =@contact_phone
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Educational_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Educational_Details] 
@educationid numeric(7),
@educationname varchar(25),
@educationboard numeric (20),
@yearofpassing numeric(5),
@percentage numeric(5),
@institutionname varchar (25),
@userid numeric (5),
@stream nchar(10)

AS
BEGIN
	
	SET NOCOUNT ON;

   update Educational_Details
    set 
		education_id=@educationid,
		education_name=@educationname,
		education_board=@educationboard,
		year_of_passing=@yearofpassing,
		percentage=@percentage,
		institution_name=@institutionname,
		user_id=@userid
where stream=@stream
    
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_update_Employer_Detail]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Employer_Detail] 
	@employer_id numeric(5),
	@employer_name varchar(20),
	@city varchar(15),
	@address varchar(100),
	@emailid varchar(50),
	@headquater varchar(20),
	@employertype varchar(20),
	@branches varchar(20),
	@contactid numeric(5)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Employer_Detail
	set employer_id=@employer_id,
	employer_name=@employer_name,
	city=@city,
	address=@address,
	email_id=@emailid,
	headquater=@headquater,
	employer_type=@employertype,
	branches=@branches
	where contact_id=@contactid

END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_Employer_Login]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Employer_Login] 
	
	@username varchar(50),
	@password nchar(10),
	@employer_id numeric(5)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Employer_Login
	set username=@username,
	password=@password,
	employer_id=@employer_id

	where username=@username

END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_Employer_Type]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Employer_Type]
	-- Add the parameters for the stored procedure here
	@it nvarchar(max),
	@business nvarchar(max),
	@marketing nvarchar(max),
	@finance nvarchar(max),
	@government nvarchar(max),
	@employer_type numeric(6),
	@employer_id numeric(5)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Employer_Type
	set it=@it,
	business=@business,
	marketing=@marketing,
	finance=@finance,
	government=@government,
	employer_type=@employer_type
	where employer_id=@employer_id
END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_Job_Post_Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Job_Post_Table]
	-- Add the parameters for the stored procedure here
	@job_id numeric(5),
	@company_name varchar(25),
	@job_title varchar(20),
	@salary decimal(8),
	@industry varchar(20),
	@specialization varchar(25),
	@user_id numeric(5),
	@annual_salary varchar(10),
	@experience_year varchar(10)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Job_Post_Table
set	job_id=@job_id,
     company_name=@company_name,
	 job_title=@job_title,
	 salary=@salary,
	 industry=@industry,
	 specialization=@specialization,
	 user_id=@user_id,
	 annual_salary=@annual_salary
	 where experience_year=@experience_year
END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_Job_Seeker_Resume]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Job_Seeker_Resume]
	-- Add the parameters for the stored procedure here
@resume_id numeric(5),
@user_id numeric(5),
@file_name varchar(20),
@file_data varbinary(max),
@file_extension varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update Job_Seeker_Resume
	set resume_id=@resume_id,
	user_id=@user_id,
	file_name=@file_name,
	file_data=@file_data
	where file_extension=@file_extension
END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_Skill_Details]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_Skill_Details]
	-- Add the parameters for the stored procedure here
	@skill_id numeric(10),
	@user_id numeric(5),
	@skills varchar(15),
	@experience_months numeric(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   update Skill_Details
   set skill_id=@skill_id,
   user_id=@user_id,
   skills=@skills
   where experience_months=@experience_months
END

GO
/****** Object:  StoredProcedure [dbo].[sp_update_User_Login_Table]    Script Date: 31-07-2019 19:00:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_update_User_Login_Table]
	-- Add the parameters for the stored procedure here
	@user_id numeric(5),
	@first_name varchar(15),
	@last_name varchar(15),
	@user_type varchar(25),
	@email_id varchar(30),
	@password varchar(15)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    update User_Login_Table
	set 
	first_name=@first_name,
	last_name=@last_name,
	user_type=@user_type,
	email_id=@email_id,
	password=@password where user_id=@user_id
END

GO
USE [master]
GO
ALTER DATABASE [Career] SET  READ_WRITE 
GO
