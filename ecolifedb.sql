USE [master]
GO
/****** Object:  Database [ecolifedb]    Script Date: 18.10.2022 23:19:23 ******/
CREATE DATABASE [ecolifedb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ecolifebd', FILENAME = N'C:\Users\Epial\ecolifebd.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ecolifebd_log', FILENAME = N'C:\Users\Epial\ecolifebd_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ecolifedb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ecolifedb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ecolifedb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ecolifedb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ecolifedb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ecolifedb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ecolifedb] SET ARITHABORT OFF 
GO
ALTER DATABASE [ecolifedb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ecolifedb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ecolifedb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ecolifedb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ecolifedb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ecolifedb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ecolifedb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ecolifedb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ecolifedb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ecolifedb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ecolifedb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ecolifedb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ecolifedb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ecolifedb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ecolifedb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ecolifedb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ecolifedb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ecolifedb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ecolifedb] SET  MULTI_USER 
GO
ALTER DATABASE [ecolifedb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ecolifedb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ecolifedb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ecolifedb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ecolifedb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ecolifedb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ecolifedb] SET QUERY_STORE = OFF
GO
USE [ecolifedb]
GO
/****** Object:  Table [dbo].[addresses]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addresses](
	[id_address] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[reception_point_id] [int] NOT NULL,
	[eco_car_id] [int] NOT NULL,
 CONSTRAINT [PK_addresses] PRIMARY KEY CLUSTERED 
(
	[id_address] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bonuses_task]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bonuses_task](
	[id_bonuses_task] [int] IDENTITY(1,1) NOT NULL,
	[description] [ntext] NOT NULL,
	[bonuses_text] [nvarchar](50) NOT NULL,
	[conut_bonuses] [int] NOT NULL,
 CONSTRAINT [PK_bonuses_task] PRIMARY KEY CLUSTERED 
(
	[id_bonuses_task] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bonuses_task_list]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bonuses_task_list](
	[user_id] [int] NOT NULL,
	[bonuses_task_id] [int] NOT NULL,
 CONSTRAINT [PK_bonuses_task_list] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[bonuses_task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bonuses_user]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bonuses_user](
	[id_bonuses] [int] IDENTITY(1,1) NOT NULL,
	[count_bonuses_user] [int] NULL,
 CONSTRAINT [PK_bonuses_user] PRIMARY KEY CLUSTERED 
(
	[id_bonuses] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[day_of_the_week]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[day_of_the_week](
	[id_day] [int] IDENTITY(1,1) NOT NULL,
	[day_name] [nvarchar](50) NOT NULL,
	[time_id] [int] NOT NULL,
 CONSTRAINT [PK_day_of_the_week] PRIMARY KEY CLUSTERED 
(
	[id_day] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[eco_car_schedule]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[eco_car_schedule](
	[id_eco_car] [int] IDENTITY(1,1) NOT NULL,
	[address_eco_car] [nvarchar](50) NOT NULL,
	[district] [nvarchar](50) NOT NULL,
	[date_eco_car] [date] NOT NULL,
	[opening_time] [time](7) NOT NULL,
	[closing_time] [time](7) NOT NULL,
	[day_of_the_week] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_eco_car_schedule] PRIMARY KEY CLUSTERED 
(
	[id_eco_car] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reception_point]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reception_point](
	[id_reception_point] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[description] [ntext] NOT NULL,
	[phone] [int] NULL,
	[day_id] [int] NOT NULL,
 CONSTRAINT [PK_reception_point] PRIMARY KEY CLUSTERED 
(
	[id_reception_point] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_role] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[task]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[task](
	[id_task] [int] IDENTITY(1,1) NOT NULL,
	[task_name] [nvarchar](50) NOT NULL,
	[text_task] [ntext] NOT NULL,
	[count_bonuses_task] [int] NOT NULL,
 CONSTRAINT [PK_task] PRIMARY KEY CLUSTERED 
(
	[id_task] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[task_list]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[task_list](
	[user_id] [int] NOT NULL,
	[task_id] [int] NOT NULL,
 CONSTRAINT [PK_task_list] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[task_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[time]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time](
	[id_time] [int] IDENTITY(1,1) NOT NULL,
	[opening_time] [time](7) NOT NULL,
	[closing_time] [time](7) NOT NULL,
 CONSTRAINT [PK_time] PRIMARY KEY CLUSTERED 
(
	[id_time] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 18.10.2022 23:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id_user] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[image] [nvarchar](100) NULL,
	[role_id] [int] NOT NULL,
	[bonuses_id] [int] NULL,
	[user_address] [nvarchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[addresses]  WITH CHECK ADD  CONSTRAINT [FK_addresses_eco_car_schedule] FOREIGN KEY([reception_point_id])
REFERENCES [dbo].[eco_car_schedule] ([id_eco_car])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[addresses] CHECK CONSTRAINT [FK_addresses_eco_car_schedule]
GO
ALTER TABLE [dbo].[addresses]  WITH CHECK ADD  CONSTRAINT [FK_addresses_reception_point] FOREIGN KEY([reception_point_id])
REFERENCES [dbo].[reception_point] ([id_reception_point])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[addresses] CHECK CONSTRAINT [FK_addresses_reception_point]
GO
ALTER TABLE [dbo].[addresses]  WITH CHECK ADD  CONSTRAINT [FK_addresses_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[addresses] CHECK CONSTRAINT [FK_addresses_user]
GO
ALTER TABLE [dbo].[bonuses_task_list]  WITH CHECK ADD  CONSTRAINT [FK_bonuses_task_list_bonuses_task] FOREIGN KEY([bonuses_task_id])
REFERENCES [dbo].[bonuses_task] ([id_bonuses_task])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bonuses_task_list] CHECK CONSTRAINT [FK_bonuses_task_list_bonuses_task]
GO
ALTER TABLE [dbo].[bonuses_task_list]  WITH CHECK ADD  CONSTRAINT [FK_bonuses_task_list_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[bonuses_task_list] CHECK CONSTRAINT [FK_bonuses_task_list_user]
GO
ALTER TABLE [dbo].[day_of_the_week]  WITH CHECK ADD  CONSTRAINT [FK_day_of_the_week_time] FOREIGN KEY([time_id])
REFERENCES [dbo].[time] ([id_time])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[day_of_the_week] CHECK CONSTRAINT [FK_day_of_the_week_time]
GO
ALTER TABLE [dbo].[reception_point]  WITH CHECK ADD  CONSTRAINT [FK_reception_point_day_of_the_week] FOREIGN KEY([day_id])
REFERENCES [dbo].[day_of_the_week] ([id_day])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reception_point] CHECK CONSTRAINT [FK_reception_point_day_of_the_week]
GO
ALTER TABLE [dbo].[task_list]  WITH CHECK ADD  CONSTRAINT [FK_task_list_task] FOREIGN KEY([task_id])
REFERENCES [dbo].[task] ([id_task])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[task_list] CHECK CONSTRAINT [FK_task_list_task]
GO
ALTER TABLE [dbo].[task_list]  WITH CHECK ADD  CONSTRAINT [FK_task_list_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id_user])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[task_list] CHECK CONSTRAINT [FK_task_list_user]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_bonuses_user] FOREIGN KEY([bonuses_id])
REFERENCES [dbo].[bonuses_user] ([id_bonuses])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_bonuses_user]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id_role])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_role]
GO
USE [master]
GO
ALTER DATABASE [ecolifedb] SET  READ_WRITE 
GO
