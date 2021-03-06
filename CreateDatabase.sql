USE [master]
GO
/****** Object:  Database [DoctorsWardrobe]    Script Date: 11/2/2017 1:42:43 AM ******/
CREATE DATABASE [DoctorsWardrobe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DoctorsWardrobe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DoctorsWardrobe.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DoctorsWardrobe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DoctorsWardrobe_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DoctorsWardrobe] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DoctorsWardrobe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ARITHABORT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DoctorsWardrobe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DoctorsWardrobe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DoctorsWardrobe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DoctorsWardrobe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DoctorsWardrobe] SET  MULTI_USER 
GO
ALTER DATABASE [DoctorsWardrobe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DoctorsWardrobe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DoctorsWardrobe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DoctorsWardrobe] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DoctorsWardrobe] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DoctorsWardrobe]
GO
/****** Object:  Table [dbo].[Accessory]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessory](
	[AccessoryID] [int] IDENTITY(1,1) NOT NULL,
	[AccessoryName] [nvarchar](50) NOT NULL,
	[AccessoryPhotoURL] [nvarchar](max) NULL,
	[AccessoryType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Accessory] PRIMARY KEY CLUSTERED 
(
	[AccessoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bottom]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bottom](
	[BottomID] [int] IDENTITY(1,1) NOT NULL,
	[BottomName] [nvarchar](50) NOT NULL,
	[BottomPhotoURL] [nvarchar](max) NULL,
	[BottomType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Bottom] PRIMARY KEY CLUSTERED 
(
	[BottomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Color]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorFamily] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Color] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NeckWear]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NeckWear](
	[NeckWearID] [int] IDENTITY(1,1) NOT NULL,
	[NeckWearName] [nvarchar](50) NOT NULL,
	[NeckWearPhotoURL] [nvarchar](max) NULL,
	[NeckWearType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_NeckWear] PRIMARY KEY CLUSTERED 
(
	[NeckWearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occasion]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occasion](
	[OccasionID] [int] IDENTITY(1,1) NOT NULL,
	[OccasionType] [nchar](10) NULL,
 CONSTRAINT [PK_Occasion] PRIMARY KEY CLUSTERED 
(
	[OccasionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OuterWear]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OuterWear](
	[OuterWearID] [int] IDENTITY(1,1) NOT NULL,
	[OuterWearName] [nvarchar](50) NOT NULL,
	[OuterWearPhotoURL] [nvarchar](max) NULL,
	[OuterWearType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_OuterWear] PRIMARY KEY CLUSTERED 
(
	[OuterWearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Season]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[SeasonID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonName] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Top]    Script Date: 11/2/2017 1:42:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Top](
	[TopID] [int] IDENTITY(1,1) NOT NULL,
	[TopName] [nvarchar](50) NOT NULL,
	[TopPhotoURL] [nvarchar](max) NULL,
	[TopType] [nvarchar](50) NULL,
	[ColorID] [int] NOT NULL,
	[OccasionID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_Top] PRIMARY KEY CLUSTERED 
(
	[TopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Color]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Occasion]
GO
ALTER TABLE [dbo].[Accessory]  WITH CHECK ADD  CONSTRAINT [FK_Accessory_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Accessory] CHECK CONSTRAINT [FK_Accessory_Season]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Color]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Occasion]
GO
ALTER TABLE [dbo].[Bottom]  WITH CHECK ADD  CONSTRAINT [FK_Bottom_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Bottom] CHECK CONSTRAINT [FK_Bottom_Season]
GO
ALTER TABLE [dbo].[NeckWear]  WITH CHECK ADD  CONSTRAINT [FK_NeckWear_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[NeckWear] CHECK CONSTRAINT [FK_NeckWear_Color]
GO
ALTER TABLE [dbo].[NeckWear]  WITH CHECK ADD  CONSTRAINT [FK_NeckWear_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[NeckWear] CHECK CONSTRAINT [FK_NeckWear_Occasion]
GO
ALTER TABLE [dbo].[NeckWear]  WITH CHECK ADD  CONSTRAINT [FK_NeckWear_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[NeckWear] CHECK CONSTRAINT [FK_NeckWear_Season]
GO
ALTER TABLE [dbo].[OuterWear]  WITH CHECK ADD  CONSTRAINT [FK_OuterWear_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[OuterWear] CHECK CONSTRAINT [FK_OuterWear_Color]
GO
ALTER TABLE [dbo].[OuterWear]  WITH CHECK ADD  CONSTRAINT [FK_OuterWear_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[OuterWear] CHECK CONSTRAINT [FK_OuterWear_Occasion]
GO
ALTER TABLE [dbo].[OuterWear]  WITH CHECK ADD  CONSTRAINT [FK_OuterWear_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[OuterWear] CHECK CONSTRAINT [FK_OuterWear_Season]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Color] FOREIGN KEY([ColorID])
REFERENCES [dbo].[Color] ([ColorID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Color]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Occasion] FOREIGN KEY([OccasionID])
REFERENCES [dbo].[Occasion] ([OccasionID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Occasion]
GO
ALTER TABLE [dbo].[Top]  WITH CHECK ADD  CONSTRAINT [FK_Top_Season] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Top] CHECK CONSTRAINT [FK_Top_Season]
GO
USE [master]
GO
ALTER DATABASE [DoctorsWardrobe] SET  READ_WRITE 
GO
