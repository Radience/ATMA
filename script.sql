USE [master]
GO
/****** Object:  Database [ATMA]    Script Date: 3/14/2023 3:30:57 AM ******/
CREATE DATABASE [ATMA]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ATMA', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ATMA.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ATMA_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ATMA_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ATMA] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ATMA].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ATMA] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ATMA] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ATMA] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ATMA] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ATMA] SET ARITHABORT OFF 
GO
ALTER DATABASE [ATMA] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ATMA] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ATMA] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ATMA] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ATMA] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ATMA] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ATMA] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ATMA] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ATMA] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ATMA] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ATMA] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ATMA] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ATMA] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ATMA] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ATMA] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ATMA] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ATMA] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ATMA] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ATMA] SET  MULTI_USER 
GO
ALTER DATABASE [ATMA] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ATMA] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ATMA] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ATMA] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ATMA] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ATMA] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ATMA] SET QUERY_STORE = OFF
GO
USE [ATMA]
GO
/****** Object:  Table [dbo].[ATM]    Script Date: 3/14/2023 3:30:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ATM](
	[id_ATM] [int] NOT NULL,
	[balance] [money] NULL,
	[isConnected] [char](1) NULL,
 CONSTRAINT [PK_ATM] PRIMARY KEY CLUSTERED 
(
	[id_ATM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[id_city] [int] NOT NULL,
	[name_city] [nvarchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[id_city] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_](
	[id_group] [int] NOT NULL,
	[id_city] [int] NULL,
 CONSTRAINT [PK_Group_] PRIMARY KEY CLUSTERED 
(
	[id_group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Person]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Person](
	[id_group] [int] NOT NULL,
	[id_person] [int] NOT NULL,
 CONSTRAINT [PK_Group_Person] PRIMARY KEY CLUSTERED 
(
	[id_group] ASC,
	[id_person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Sector]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Sector](
	[id_group] [int] NOT NULL,
	[id_sector] [int] NOT NULL,
 CONSTRAINT [PK_Group_Sector] PRIMARY KEY CLUSTERED 
(
	[id_group] ASC,
	[id_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[id_person] [int] NOT NULL,
	[second_name] [nvarchar](50) NULL,
	[name_] [nvarchar](50) NULL,
	[patronymic] [nvarchar](50) NULL,
	[photo] [image] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id_person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector](
	[id_sector] [int] NOT NULL,
 CONSTRAINT [PK_Sector_1] PRIMARY KEY CLUSTERED 
(
	[id_sector] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sector_GPS]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sector_GPS](
	[id_sector] [int] NOT NULL,
	[id_city] [int] NOT NULL,
	[id_street] [int] NOT NULL,
	[number_build] [int] NULL,
	[id_ATM] [int] NOT NULL,
 CONSTRAINT [PK_Sector_GPS] PRIMARY KEY CLUSTERED 
(
	[id_sector] ASC,
	[id_city] ASC,
	[id_street] ASC,
	[id_ATM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 3/14/2023 3:30:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[id_street] [int] NOT NULL,
	[name_street] [nvarchar](50) NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[id_street] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (1, 500000.0000, N'1')
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (2, 125000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (3, 990000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (4, 1000000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (5, 540300.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (6, 776000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (7, 54000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (8, 125000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (9, 0.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (10, 70000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (11, 50000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (12, 25000.0000, N'1')
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (13, 45000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (14, 360000.0000, NULL)
INSERT [dbo].[ATM] ([id_ATM], [balance], [isConnected]) VALUES (15, 1750000.0000, N'1')
GO
INSERT [dbo].[City] ([id_city], [name_city]) VALUES (1, N'Казань')
INSERT [dbo].[City] ([id_city], [name_city]) VALUES (2, N'Москва')
GO
INSERT [dbo].[Group_] ([id_group], [id_city]) VALUES (1, 1)
INSERT [dbo].[Group_] ([id_group], [id_city]) VALUES (2, 1)
INSERT [dbo].[Group_] ([id_group], [id_city]) VALUES (3, 2)
GO
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (1, 1)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (1, 2)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (1, 3)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (1, 4)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (1, 5)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (2, 6)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (2, 7)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (2, 8)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (2, 9)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (2, 10)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (3, 11)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (3, 12)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (3, 13)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (3, 14)
INSERT [dbo].[Group_Person] ([id_group], [id_person]) VALUES (3, 15)
GO
INSERT [dbo].[Group_Sector] ([id_group], [id_sector]) VALUES (1, 1)
INSERT [dbo].[Group_Sector] ([id_group], [id_sector]) VALUES (2, 2)
INSERT [dbo].[Group_Sector] ([id_group], [id_sector]) VALUES (3, 3)
GO
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (1, N'Иванов', N'Иван', N'Иванович', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (2, N'Кузнецов', N'Михаил', N'Анатольевич', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (3, N'Смирнов', N'Александр', N'Иванович', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (4, N'Гжегож', N'Бженчишчикевич', NULL, NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (5, N'Иванов', N'Георгий', N'Алексеевич', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (6, N'Перов', N'Александр', N'Александрович', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (7, N'Попов', N'Виталий', N'Андреевич', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (8, N'Соколов', N'Михаил', N'Витальевич', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (9, N'Волков', N'Евгений', N'Александрович', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (10, N'Козлов', N'Светлан', N'Рюрикович', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (11, N'Семенов', N'Ярослав', N'Олегович', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (12, N'Захаров', N'Никита', N'Юрьевич', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (13, N'Макаров', N'Ярополк', N'Святич', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (14, N'Лебедев', N'Юрий', N'Мстиславич', NULL)
INSERT [dbo].[Person] ([id_person], [second_name], [name_], [patronymic], [photo]) VALUES (15, N'Сорокин', N'Святослав', N'Всеволодич', NULL)
GO
INSERT [dbo].[Sector] ([id_sector]) VALUES (1)
INSERT [dbo].[Sector] ([id_sector]) VALUES (2)
INSERT [dbo].[Sector] ([id_sector]) VALUES (3)
GO
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (1, 1, 1, 12, 1)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (1, 1, 2, 24, 2)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (1, 1, 3, 55, 3)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (1, 1, 4, 33, 4)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (1, 1, 5, 67, 5)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (2, 1, 6, 33, 6)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (2, 1, 7, 77, 7)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (2, 1, 8, 35, 8)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (2, 1, 9, 65, 9)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (2, 1, 10, 99, 10)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (3, 2, 1, 45, 11)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (3, 2, 4, 65, 12)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (3, 2, 6, 7, 13)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (3, 2, 7, 2, 14)
INSERT [dbo].[Sector_GPS] ([id_sector], [id_city], [id_street], [number_build], [id_ATM]) VALUES (3, 2, 10, 4, 15)
GO
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (1, N'Ленина')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (2, N'Кремлевская')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (3, N'Чернышевского')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (4, N'Карбышево')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (5, N'Тукая')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (6, N'Петербургская')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (7, N'Центральная')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (8, N'Ибрагимова')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (9, N'Восстания')
INSERT [dbo].[Street] ([id_street], [name_street]) VALUES (10, N'Чистопольская')
GO
ALTER TABLE [dbo].[Group_]  WITH CHECK ADD  CONSTRAINT [FK_Group__City] FOREIGN KEY([id_city])
REFERENCES [dbo].[City] ([id_city])
GO
ALTER TABLE [dbo].[Group_] CHECK CONSTRAINT [FK_Group__City]
GO
ALTER TABLE [dbo].[Group_Person]  WITH CHECK ADD  CONSTRAINT [FK_Group_Person_Group_] FOREIGN KEY([id_group])
REFERENCES [dbo].[Group_] ([id_group])
GO
ALTER TABLE [dbo].[Group_Person] CHECK CONSTRAINT [FK_Group_Person_Group_]
GO
ALTER TABLE [dbo].[Group_Person]  WITH CHECK ADD  CONSTRAINT [FK_Group_Person_Person] FOREIGN KEY([id_person])
REFERENCES [dbo].[Person] ([id_person])
GO
ALTER TABLE [dbo].[Group_Person] CHECK CONSTRAINT [FK_Group_Person_Person]
GO
ALTER TABLE [dbo].[Group_Sector]  WITH CHECK ADD  CONSTRAINT [FK_Group_Sector_Group_] FOREIGN KEY([id_group])
REFERENCES [dbo].[Group_] ([id_group])
GO
ALTER TABLE [dbo].[Group_Sector] CHECK CONSTRAINT [FK_Group_Sector_Group_]
GO
ALTER TABLE [dbo].[Group_Sector]  WITH CHECK ADD  CONSTRAINT [FK_Group_Sector_Sector] FOREIGN KEY([id_sector])
REFERENCES [dbo].[Sector] ([id_sector])
GO
ALTER TABLE [dbo].[Group_Sector] CHECK CONSTRAINT [FK_Group_Sector_Sector]
GO
ALTER TABLE [dbo].[Sector_GPS]  WITH CHECK ADD  CONSTRAINT [FK_Sector_GPS_ATM] FOREIGN KEY([id_ATM])
REFERENCES [dbo].[ATM] ([id_ATM])
GO
ALTER TABLE [dbo].[Sector_GPS] CHECK CONSTRAINT [FK_Sector_GPS_ATM]
GO
ALTER TABLE [dbo].[Sector_GPS]  WITH CHECK ADD  CONSTRAINT [FK_Sector_GPS_City] FOREIGN KEY([id_city])
REFERENCES [dbo].[City] ([id_city])
GO
ALTER TABLE [dbo].[Sector_GPS] CHECK CONSTRAINT [FK_Sector_GPS_City]
GO
ALTER TABLE [dbo].[Sector_GPS]  WITH CHECK ADD  CONSTRAINT [FK_Sector_GPS_Sector] FOREIGN KEY([id_sector])
REFERENCES [dbo].[Sector] ([id_sector])
GO
ALTER TABLE [dbo].[Sector_GPS] CHECK CONSTRAINT [FK_Sector_GPS_Sector]
GO
ALTER TABLE [dbo].[Sector_GPS]  WITH CHECK ADD  CONSTRAINT [FK_Sector_GPS_Street] FOREIGN KEY([id_street])
REFERENCES [dbo].[Street] ([id_street])
GO
ALTER TABLE [dbo].[Sector_GPS] CHECK CONSTRAINT [FK_Sector_GPS_Street]
GO
USE [master]
GO
ALTER DATABASE [ATMA] SET  READ_WRITE 
GO
