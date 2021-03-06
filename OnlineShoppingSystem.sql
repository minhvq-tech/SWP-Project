USE [OnlineShoppingSystem]
GO
ALTER TABLE [dbo].[SliderContent] DROP CONSTRAINT [FK__SliderCon__Slide__21B6055D]
GO
ALTER TABLE [dbo].[SliderContent] DROP CONSTRAINT [FK__SliderCon__Produ__22AA2996]
GO
ALTER TABLE [dbo].[ProductAttachedImage] DROP CONSTRAINT [FK__ProductAt__Produ__32E0915F]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK__Product__Product__1A14E395]
GO
ALTER TABLE [dbo].[Post] DROP CONSTRAINT [FK__Post__PostCatego__1ED998B2]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__Produ__2D27B809]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__Order__2C3393D0]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK__Order__SaleMembe__29572725]
GO
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK__Order__CustomerI__286302EC]
GO
ALTER TABLE [dbo].[FeedbackAttachedImage] DROP CONSTRAINT [FK__FeedbackA__Feedb__300424B4]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK__Feedback__Produc__25869641]
GO
ALTER TABLE [dbo].[CustomerOldDetails] DROP CONSTRAINT [FK__CustomerO__Custo__1367E606]
GO
/****** Object:  Index [UQ__User__A9D10534BCFDEC44]    Script Date: 7/4/2021 3:28:47 PM ******/
ALTER TABLE [dbo].[User] DROP CONSTRAINT [UQ__User__A9D10534BCFDEC44]
GO
/****** Object:  Table [dbo].[User]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[SliderContent]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[SliderContent]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[Slider]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[ProductCategory]
GO
/****** Object:  Table [dbo].[ProductAttachedImage]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[ProductAttachedImage]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[PostCategory]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[Post]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[FeedbackAttachedImage]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[FeedbackAttachedImage]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[CustomerOldDetails]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP TABLE [dbo].[CustomerOldDetails]
GO
USE [master]
GO
/****** Object:  Database [OnlineShoppingSystem]    Script Date: 7/4/2021 3:28:47 PM ******/
DROP DATABASE [OnlineShoppingSystem]
GO
/****** Object:  Database [OnlineShoppingSystem]    Script Date: 7/4/2021 3:28:47 PM ******/
CREATE DATABASE [OnlineShoppingSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OnlineShoppingSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\OnlineShoppingSystem.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'OnlineShoppingSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\OnlineShoppingSystem_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [OnlineShoppingSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OnlineShoppingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OnlineShoppingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OnlineShoppingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OnlineShoppingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OnlineShoppingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET RECOVERY FULL 
GO
ALTER DATABASE [OnlineShoppingSystem] SET  MULTI_USER 
GO
ALTER DATABASE [OnlineShoppingSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OnlineShoppingSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OnlineShoppingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OnlineShoppingSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [OnlineShoppingSystem] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'OnlineShoppingSystem', N'ON'
GO
USE [OnlineShoppingSystem]
GO
/****** Object:  Table [dbo].[CustomerOldDetails]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerOldDetails](
	[OldID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gender] [int] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Phone] [nchar](20) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[CustomerID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OldID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[FeedbackID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[FeedbackContent] [nvarchar](4000) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [nchar](20) NOT NULL,
	[Status] [int] NOT NULL,
	[RatedStar] [int] NOT NULL,
	[ProductID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FeedbackAttachedImage]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackAttachedImage](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](300) NOT NULL,
	[FeedbackID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Order]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[OrderedDate] [datetime] NOT NULL,
	[CustomerID] [int] NULL,
	[ReceiverName] [nvarchar](100) NOT NULL,
	[ReceiverAddress] [nvarchar](200) NOT NULL,
	[ReceiverEmail] [nchar](100) NOT NULL,
	[ReceiverGender] [int] NOT NULL,
	[ReceiverPhone] [nchar](20) NOT NULL,
	[Note] [nvarchar](1000) NULL,
	[SaleMemberID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Post]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[PostID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](700) NOT NULL,
	[Thumbnail] [nchar](300) NOT NULL,
	[BriefInfo] [nvarchar](1000) NOT NULL,
	[Author] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[Featured] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[PostCategoryID] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostCategory]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostCategory](
	[PostCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PostCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[Thumbnail] [nchar](300) NOT NULL,
	[BriefInfo] [nvarchar](700) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ListPrice] [float] NOT NULL,
	[SalePrice] [float] NULL,
	[Featured] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[RatedStar] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductAttachedImage]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttachedImage](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nchar](300) NOT NULL,
	[ProductID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Slider]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[SliderID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SliderContent]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SliderContent](
	[SliderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SliderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 7/4/2021 3:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Gender] [int] NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Phone] [nchar](20) NOT NULL,
	[Status] [int] NOT NULL,
	[Avatar] [nchar](300) NOT NULL,
	[Role] [int] NOT NULL,
	[Password] [nchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__User__A9D10534BCFDEC44]    Script Date: 7/4/2021 3:28:47 PM ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CustomerOldDetails]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[FeedbackAttachedImage]  WITH CHECK ADD FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[Feedback] ([FeedbackID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([SaleMemberID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD FOREIGN KEY([PostCategoryID])
REFERENCES [dbo].[PostCategory] ([PostCategoryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryID])
GO
ALTER TABLE [dbo].[ProductAttachedImage]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[SliderContent]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[SliderContent]  WITH CHECK ADD FOREIGN KEY([SliderID])
REFERENCES [dbo].[Slider] ([SliderID])
GO
USE [master]
GO
ALTER DATABASE [OnlineShoppingSystem] SET  READ_WRITE 
GO
