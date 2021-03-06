USE [master]
GO
/****** Object:  Database [moviereviewsmain]    Script Date: 24.12.2021 19:43:37 ******/
CREATE DATABASE [moviereviewsmain]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'moviereviewsmain', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\moviereviewsmain.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'moviereviewsmain_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\moviereviewsmain_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [moviereviewsmain] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [moviereviewsmain].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [moviereviewsmain] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [moviereviewsmain] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [moviereviewsmain] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [moviereviewsmain] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [moviereviewsmain] SET ARITHABORT OFF 
GO
ALTER DATABASE [moviereviewsmain] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [moviereviewsmain] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [moviereviewsmain] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [moviereviewsmain] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [moviereviewsmain] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [moviereviewsmain] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [moviereviewsmain] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [moviereviewsmain] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [moviereviewsmain] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [moviereviewsmain] SET  ENABLE_BROKER 
GO
ALTER DATABASE [moviereviewsmain] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [moviereviewsmain] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [moviereviewsmain] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [moviereviewsmain] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [moviereviewsmain] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [moviereviewsmain] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [moviereviewsmain] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [moviereviewsmain] SET RECOVERY FULL 
GO
ALTER DATABASE [moviereviewsmain] SET  MULTI_USER 
GO
ALTER DATABASE [moviereviewsmain] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [moviereviewsmain] SET DB_CHAINING OFF 
GO
ALTER DATABASE [moviereviewsmain] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [moviereviewsmain] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [moviereviewsmain] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [moviereviewsmain] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'moviereviewsmain', N'ON'
GO
ALTER DATABASE [moviereviewsmain] SET QUERY_STORE = OFF
GO
USE [moviereviewsmain]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[shortDescription] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjectRole]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProjectRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 24.12.2021 19:43:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[MovieId] [int] NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[HeadLine] [nvarchar](max) NULL,
	[Rating] [nvarchar](max) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221064158_mgr', N'5.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221090325_mgr1', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221100615_mgr2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221121629_mgr3', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221124512_mgr4', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211221130442_mgr5', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211222095454_mgr6', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211222100015_mgr7', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211222103218_mgr8', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211222105255_mgr9', N'5.0.12')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b310f2d6-6bdf-4393-9eae-e0ee55ea2d41', N'Admin', N'ADMIN', N'd0c82161-6a94-48ec-bddb-7e7669bee216')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'ff2e69b3-bd4d-488d-86a2-ee868ac13fdb', N'User', N'USER', N'b608035d-9ba1-48a9-b69c-70aacceb0dbd')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3f9e7cfb-165c-4249-8a08-7b0f48d8a617', N'b310f2d6-6bdf-4393-9eae-e0ee55ea2d41')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0429a8e-8c26-448f-b28f-d4f39298924f', N'b310f2d6-6bdf-4393-9eae-e0ee55ea2d41')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'1df5a9cb-c55c-486c-a447-c68b6c07f676', N'ff2e69b3-bd4d-488d-86a2-ee868ac13fdb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'47064751-d58f-4f62-b545-4d6e602a4dff', N'ff2e69b3-bd4d-488d-86a2-ee868ac13fdb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'77bcf96e-2a67-4da3-889a-d873dc5ce18d', N'ff2e69b3-bd4d-488d-86a2-ee868ac13fdb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a3946cef-943d-497d-b9b2-96db5b7eb202', N'ff2e69b3-bd4d-488d-86a2-ee868ac13fdb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f2f42f08-c1a0-4203-b9e3-362b4f52e098', N'ff2e69b3-bd4d-488d-86a2-ee868ac13fdb')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1df5a9cb-c55c-486c-a447-c68b6c07f676', NULL, N'alex@gmail.com', N'ALEX@GMAIL.COM', N'alex@gmail.com', N'ALEX@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEF0TBIbqv4Y9KH7MjMpfxMtARawuFYx2mBceRIm13vhd1lMQxXwtN5H/bSgRKBmNiQ==', N'Z6N264JBHKWDCA3OQT2KBOJBLEIWGZFU', N'36fc2633-d157-44d2-8d22-ba0774ced6ec', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3f9e7cfb-165c-4249-8a08-7b0f48d8a617', NULL, N'g191210055@gmail.com', N'G191210055@GMAIL.COM', N'g191210055@gmail.com', N'G191210055@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHpoRUFQDIxVjoShyxXFBHEYdeVvsVS05W9FpAVp3tF2FbNrp7OFZ2fyT2z2WR5hkA==', N'UQKKNV6FJHEBIL5U6WZVPJ7BWDCTAENV', N'b17c6275-9877-486f-be3f-a6e0aa80487d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'47064751-d58f-4f62-b545-4d6e602a4dff', NULL, N'umut@gmail.com', N'UMUT@GMAIL.COM', N'umut@gmail.com', N'UMUT@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAECdzfh5OMdofawgURmlSgDZGOZdxPA3sC4fVI0+/2EQHan5VCW4Yy5Yly8pcuMJESw==', N'XVR64WCZE4DHOYKVHIW5BRH7URLCMCAW', N'8931fd9b-6710-4e44-aab1-2191bb72d416', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'77bcf96e-2a67-4da3-889a-d873dc5ce18d', NULL, N'ayse@gmail.com', N'AYSE@GMAIL.COM', N'ayse@gmail.com', N'AYSE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEO0OhkP9HbTir2rMrAe9zV92iHJOHU4XiQmTuG4CL8uBcTm9/KZQ9nhjrZDA3J2ueg==', N'YSHJ5NSX6SPCQDA2RPPGLX232ZGE6EMU', N'760d9bfc-1867-4ffc-8718-572ef28ba52c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a3946cef-943d-497d-b9b2-96db5b7eb202', NULL, N'emirhan@sakarya.edu.tr', N'EMIRHAN@SAKARYA.EDU.TR', N'emirhan@sakarya.edu.tr', N'EMIRHAN@SAKARYA.EDU.TR', 1, N'AQAAAAEAACcQAAAAEE5WcuVT2+B3ArZHTf71CbBsJK7TMwL4l64eW0R1iWJRg0cWFslSj1eq/DM8ET1o5A==', N'MR3AMD65QV76HHQMB2AH6XZRB2OMNK5L', N'f2e319fc-d539-497b-98df-065b3d78511d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f0429a8e-8c26-448f-b28f-d4f39298924f', NULL, N'g191210055@sakarya.edu.tr', N'G191210055@SAKARYA.EDU.TR', N'g191210055@sakarya.edu.tr', N'G191210055@SAKARYA.EDU.TR', 1, N'AQAAAAEAACcQAAAAEAzw8pGAZ7iGzqgrrd91SJzL+rJc6Y+yyxS1qM9UTUgHRTpfxS/gu0vUHUgqzUCrVw==', N'ZJMSLTPECUV7GGRQGYQ2W37U5ARIKBET', N'994d8250-464c-47a8-bedb-1b6fc873cc68', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f2f42f08-c1a0-4203-b9e3-362b4f52e098', NULL, N'ali@gmail.com', N'ALI@GMAIL.COM', N'ali@gmail.com', N'ALI@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMEqP+Gk8TK8LEAhcJVwTAXka39MWM4W4vnPhNcyUkM8jPIDbVDXQN+vHIEJezvMnw==', N'K7RMZDPRF35XSBCUNDQSYSLF2U57VWPM', N'6123f184-f463-4d78-8843-b0d27a5f28f0', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Drama')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Western')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Comedy')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (8, N'Action')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (9, N'Science-Fiction')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (10, N'Adventure')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (11, N'Family')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (12, N'Fantastic ')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (13, N'Horror')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (14, N'History')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (15, N'Romantic')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (1, N'King Richard', N'VENUS, SERENA AND A PLAN FOR GREATNESS.', N'Richard Williams serves as a coach to his daughters Venus and Serena, who will soon become two of the most legendary tennis players in history.', N'6.jpg', 1)
INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (2, N'The Harder They Fall', N'A NEW DAY IS DAWNING.', N'Gunning for revenge, outlaw Nat Love saddles up with his gang to take down enemy Rufus Buck, a ruthless crime boss who just got sprung from prison.', N'5.jpg', 2)
INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (3, N'Licorice Pizza', N'Licorice Pizza', N'Set in the San Fernando Valley in the 1970s, the film follows a high school student who is also a successful child actor.', N'4.jpg', 3)
INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (4, N'The Power of the Dog', N'The Power of the Dog', N'Charismatic rancher Phil Burbank inspires fear and awe in those around him. When his brother brings home a new wife and her son, Phil torments them until he finds himself exposed to the possibility of love.', N'3.jpg', 2)
INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (5, N'C’mon C’mon', N'C’mon C’mon', N'A documentary filmmaker whose latest project involves gifted children bonds with his smart-yet-sensitive nephew, whose father struggles with bipolar disorder and is in the grips of a manic episode.', N'2.jpg', 1)
INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (15, N'Spencer ', N'EVERY FAIRY TALE ENDS.', N'Covers a critical weekend in the early ‘90s, when Princess Diana decided her marriage to Prince Charles wasn’t working, and that she needed to veer from a path that put her in line to one day be queen.', N'7.jpg', 1)
INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (16, N'Spider-Man: No Way Home', N'Spider-Man: No Way Home', N'Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a Super Hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.', N'8.jpg', 9)
INSERT [dbo].[Movies] ([Id], [Name], [shortDescription], [Description], [ImageUrl], [CategoryId]) VALUES (17, N'Spider-Man: Far From Home', N'IT’S TIME TO STEP UP.', N'Peter Parker and his friends go on a summer trip to Europe. However, they will hardly be able to rest - Peter will have to agree to help Nick Fury uncover the mystery of creatures that cause natural disasters and destruction throughout the continent.', N'9.jpg', 9)
SET IDENTITY_INSERT [dbo].[Movies] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (1, N'ahmet', 1, N'If you''re looking for a Venus and Serena Williams biopic you''re in the wrong place, as Will Smith goes from ''Fresh Prince'' to ''King'' in a film that worships his character, the titular Richard, above all else. His daughters'' successes are framed as an essential inevitability in a story that focuses on the patriarchal hero behind getting them there, their eventual accomplishments a foregone conclusion in a film framed around believing in yourself. An inspirational, crowd-pleasing and well-acted movie, but also one that is heavy-handed, shallow and panders to the audience. It''s a slighter effort than what could have been, but the emotional depth comes from the moving performances, not the screenplay. Lots of people are gonna love this.', N'Perfect', N'9')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (33, N'serhat@gmail.com', 16, N'Marvel is so good at getting people to do things for money in a way that reads like love.

there''s some very cutesy stuff here (most of it an ominous, logical continuation of the content snake eating its own tail), CGI New York City is a really a Character Unto Itself lolol, and Jon Watts is now unquestionably the worst director to ever make a Spider-Man movie.

also, not a spoiler, lol at Pete and his friends for simply *assuming* they''d all get into MIT. a very cool premise for a $250 million movie.', N'Just Awesome', N'10')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (35, N'alex@gmail.com', 1, N'A movie focused more on the actual sisters’ journey would have been much better on a lot of levels.

A good movie though, Will Smith is great', N'Good', N'7')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (38, N'ayse@gmail.com', 1, N'wow, i cried though soooo much of this. i have not (consciously) lived in a world without venus and serena as legends, so it’s always been kind of lost to me just how much of a breakthrough they were in the tennis world. until watching this i also didn’t really realize i had never seen a sports movie about black girls. the realization came to me over and over as i watched this and i started crying every time, which is more a credit to the history than the film itself, save for a few moments that made the history feel so potent; venus walking onto the green at her final match, learning she went 63-0, seeing her walk past her white competitors and cheer in the mirror, seeing all the black women in the crowd at her final match, hearing her say she wanted other people to want to play like her. i fell for it all like a true sucker. sure this is a sports biopic by the numbers, that only occasionally rises to my own description of “I, Tonya by way of LaVar Ball,” but it worked on me.', N'Wow', N'10')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (39, N'ayse@gmail.com', 2, N'Here''s the real difference between this and Tarantino: Treacherous Trudy would have shot Quentin dead before he got even half the word out.', N'Good', N'6')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (40, N'ayse@gmail.com', 3, N'another slice of 70s heaven from pta. cooper has the genes, alaina proves to be the stealth mvp of her fam, and cooper continues to steal every scene he’s in. wish it had more of the tenacity of boogie nights and less of the halcyon effects of punch drunk love but the cut of this pizza is plenty.', N'Not bad', N'5')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (41, N'ayse@gmail.com', 4, N'My first Jane Campion film and it was great!

Loved the way it was shot, Campion has a clear and precise eye for detail as well delivering clever visual storytelling. There are some truly wonderful moments in this that often inspire due to how well made they are but also genuine fear and discomfort. 
Great performances all around, Benedict Cumberbatch especially grew on me as the film progressed. I was kind of dismissing him at first as just playing the arsehole, but he shows so much subtle nuance in his characterisation and believability, walking the lines between ghoulish, confrontational behaviour and genuine heartfelt longing.

The music was my favourite thing about it, just absolutely mesmerising and enchanting and it does such a great job at conveying this off-kilter tone and a feeling of uncertainty. It’s plucky and inventive and consistently immersive. Oh, then I find out Johnny Greenwood did it so of course it was amazing!!!

Yeah, really impressive film. Got a little restless as it went on, not sure if it was my attention or investment waiting or if the film was making me feel like that, but regardless, it’s great. Time to get on with watching more of Jane Campion’s stuff cos this was marvellous.', N'It was great', N'8')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (42, N'ayse@gmail.com', 5, N'a long time ago i wrote a joke about pitching a new program to disneyland– the conceit being that you could subsidize an underprivileged child’s discounted admission to disneyland and spend the day with them, experiencing the joy of the park through their open, unjaded eyes (the punchline being that said program is one of many good ideas ruined by me continually forgetting that pedophiles exist.) the idea came back to me through this movie as soon as i realized that the openness and curiosity that most children hold allowed jesse to bypass the invisible customs of courtesy that we learn as adults and just… ask why things are a certain way. and when you care enough to treat those senses respectfully, you find yourself encouraging their openness and vulnerability like a proxy for your own similar senses. you slowly discover the parts of yourself that need the most care. you slowly discover the parts of yourself that are most equipped to care for others.

to care for a child is such a special thing. it’s not just a chance to properly nurture a person’s future. sometimes it’s a chance to properly nurture your own past.', N'Good', N'6')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (43, N'ayse@gmail.com', 15, N'listening to Jonny Greenwood slowly earn his eventual status as one of the greatest composers in film history is one of those things that makes life just a little more bearable.', N'Not bad', N'5')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (44, N'ayse@gmail.com', 16, N'listening to Jonny Greenwood slowly earn his eventual status as one of the greatest composers in film history is one of those things that makes life just a little more bearable.', N'Awful', N'2')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (45, N'alex@gmail.com', 3, N'i too am an english bulldog in a cute little red dress with a very jewish nose', N'Good', N'7')
INSERT [dbo].[Reviews] ([Id], [UserName], [MovieId], [Comment], [HeadLine], [Rating]) VALUES (49, N'emirhan@sakarya.edu.tr', 2, N'Best movie of all time', N'Perfect', N'10')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 24.12.2021 19:43:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 24.12.2021 19:43:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 24.12.2021 19:43:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 24.12.2021 19:43:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 24.12.2021 19:43:38 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 24.12.2021 19:43:38 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 24.12.2021 19:43:38 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Reviews] ADD  DEFAULT ((0)) FOR [MovieId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [moviereviewsmain] SET  READ_WRITE 
GO
