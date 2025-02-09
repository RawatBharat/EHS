USE [ehs1]
GO
ALTER TABLE [dbo].[Users] DROP CONSTRAINT [CK__Users__UserType__24927208]
GO
ALTER TABLE [dbo].[Seller] DROP CONSTRAINT [FK__Seller__StateId__2C3393D0]
GO
ALTER TABLE [dbo].[Seller] DROP CONSTRAINT [FK__Seller__CityId__2D27B809]
GO
ALTER TABLE [dbo].[PropertyImage] DROP CONSTRAINT [FK_PropertyImage_PropertyImage_PropertyImageId1]
GO
ALTER TABLE [dbo].[PropertyImage] DROP CONSTRAINT [FK__PropertyImage__Property__...]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK_Properties_Cities_CityId]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [FK__Property__Seller__31EC6D26]
GO
ALTER TABLE [dbo].[Images] DROP CONSTRAINT [FK__Images__Property__34C8D9D1]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [FK__City__StateId__29572725]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK__Cart__PropertyId__38996AB5]
GO
ALTER TABLE [dbo].[Cart] DROP CONSTRAINT [FK__Cart__BuyerId__37A5467C]
GO
ALTER TABLE [dbo].[AspNetUserTokens] DROP CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims] DROP CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[Property] DROP CONSTRAINT [DF__Property__IsVeri__5165187F]
GO
ALTER TABLE [dbo].[Images] DROP CONSTRAINT [DF__Images__ImageUrl__59063A47]
GO
/****** Object:  Index [IX_PropertyImage_PropertyImageId1]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [IX_PropertyImage_PropertyImageId1] ON [dbo].[PropertyImage]
GO
/****** Object:  Index [IX_PropertyImage_PropertyId]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [IX_PropertyImage_PropertyId] ON [dbo].[PropertyImage]
GO
/****** Object:  Index [UserNameIndex]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [EmailIndex]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [EmailIndex] ON [dbo].[AspNetUsers]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 08-02-2025 14:20:21 ******/
DROP INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type in (N'U'))
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[State]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State]') AND type in (N'U'))
DROP TABLE [dbo].[State]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seller]') AND type in (N'U'))
DROP TABLE [dbo].[Seller]
GO
/****** Object:  Table [dbo].[PropertyImage]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PropertyImage]') AND type in (N'U'))
DROP TABLE [dbo].[PropertyImage]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Property]') AND type in (N'U'))
DROP TABLE [dbo].[Property]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Images]') AND type in (N'U'))
DROP TABLE [dbo].[Images]
GO
/****** Object:  Table [dbo].[City]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type in (N'U'))
DROP TABLE [dbo].[City]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cart]') AND type in (N'U'))
DROP TABLE [dbo].[Cart]
GO
/****** Object:  Table [dbo].[Buyer]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Buyer]') AND type in (N'U'))
DROP TABLE [dbo].[Buyer]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserTokens]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetRoleClaims]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08-02-2025 14:20:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [ehs1]    Script Date: 08-02-2025 14:20:21 ******/
DROP DATABASE [ehs1]
GO
/****** Object:  Database [ehs1]    Script Date: 08-02-2025 14:20:21 ******/
CREATE DATABASE [ehs1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ehs1', FILENAME = N'E:\DATA\ehs1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ehs1_log', FILENAME = N'E:\LOG\ehs1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ehs1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ehs1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ehs1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ehs1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ehs1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ehs1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ehs1] SET ARITHABORT OFF 
GO
ALTER DATABASE [ehs1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ehs1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ehs1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ehs1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ehs1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ehs1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ehs1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ehs1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ehs1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ehs1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ehs1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ehs1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ehs1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ehs1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ehs1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ehs1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ehs1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ehs1] SET RECOVERY FULL 
GO
ALTER DATABASE [ehs1] SET  MULTI_USER 
GO
ALTER DATABASE [ehs1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ehs1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ehs1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ehs1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ehs1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ehs1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ehs1', N'ON'
GO
ALTER DATABASE [ehs1] SET QUERY_STORE = OFF
GO
USE [ehs1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08-02-2025 14:20:22 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08-02-2025 14:20:22 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08-02-2025 14:20:22 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08-02-2025 14:20:22 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08-02-2025 14:20:22 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08-02-2025 14:20:22 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08-02-2025 14:20:22 ******/
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
/****** Object:  Table [dbo].[Buyer]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyer](
	[BuyerId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](25) NOT NULL,
	[LastName] [varchar](25) NULL,
	[DateOfBirth] [date] NOT NULL,
	[PhoneNo] [varchar](10) NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BuyerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[BuyerId] [int] NOT NULL,
	[PropertyId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](50) NOT NULL,
	[StateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NOT NULL,
	[Image] [varbinary](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Property]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Property](
	[PropertyId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyName] [varchar](50) NOT NULL,
	[PropertyType] [varchar](15) NOT NULL,
	[PropertyOption] [varchar](10) NOT NULL,
	[Description] [varchar](250) NULL,
	[Address] [varchar](250) NOT NULL,
	[PriceRange] [money] NOT NULL,
	[InitialDeposit] [money] NOT NULL,
	[Landmark] [varchar](25) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SellerId] [int] NOT NULL,
	[IsVerified] [bit] NOT NULL,
	[CityId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PropertyImage]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PropertyImage](
	[PropertyImageId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NOT NULL,
	[ImageUrl] [varchar](250) NOT NULL,
	[PropertyImageId1] [int] NULL,
 CONSTRAINT [PK__PropertyImage__...] PRIMARY KEY CLUSTERED 
(
	[PropertyImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seller]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seller](
	[SellerId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](25) NOT NULL,
	[FirstName] [varchar](25) NOT NULL,
	[LastName] [varchar](25) NULL,
	[DateOfBirth] [date] NOT NULL,
	[PhoneNo] [varchar](10) NOT NULL,
	[Address] [varchar](250) NOT NULL,
	[StateId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[EmailId] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 08-02-2025 14:20:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](25) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[UserType] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'9.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250206061029_InitialCreate', N'9.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250206183142_AddIsVerifiedColumnToProperty', N'9.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250207055700_aa1', N'9.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250207073924_RecreateMigrations', N'9.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250207083957_AddCityIdToProperty', N'9.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250207103138_AddPropertyImageRelationship', N'9.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250207105025_AddImageUrlToImage', N'9.0.1')
GO
SET IDENTITY_INSERT [dbo].[Buyer] ON 

INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (1, N'Robert', N'Johnson', CAST(N'1990-01-01' AS Date), N'987654321', N'robert.johnson@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (2, N'Emily', N'Davis', CAST(N'1992-02-02' AS Date), N'9876543211', N'emily.davis@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (3, N'James', N'Williams', CAST(N'1988-03-15' AS Date), N'987654322', N'james.williams@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (4, N'Michael', N'Brown', CAST(N'1995-04-20' AS Date), N'987654323', N'michael.brown@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (5, N'Sarah', N'Smith', CAST(N'1987-05-10' AS Date), N'987654324', N'sarah.smith@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (6, N'John', N'Williams', CAST(N'1991-06-25' AS Date), N'987654325', N'john.williams@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (7, N'Laura', N'Miller', CAST(N'1985-07-18' AS Date), N'987654326', N'laura.miller@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (8, N'Kevin', N'Garcia', CAST(N'1993-08-22' AS Date), N'987654327', N'kevin.garcia@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (9, N'Jessica', N'Rodriguez', CAST(N'1989-09-12' AS Date), N'987654328', N'jessica.rodriguez@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (10, N'David', N'Hernandez', CAST(N'1990-10-05' AS Date), N'987654329', N'david.hernandez@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (11, N'Megan', N'Lopez', CAST(N'1992-11-15' AS Date), N'987654330', N'megan.lopez@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (12, N'William', N'Gonzalez', CAST(N'1994-12-10' AS Date), N'987654331', N'william.gonzalez@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (13, N'Charlotte', N'Wilson', CAST(N'1988-01-25' AS Date), N'987654332', N'charlotte.wilson@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (14, N'Anthony', N'Anderson', CAST(N'1996-02-14' AS Date), N'987654333', N'anthony.anderson@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (15, N'Sophia', N'Thomas', CAST(N'1984-03-04' AS Date), N'987654334', N'sophia.thomas@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (16, N'Alexander', N'Martinez', CAST(N'1990-04-20' AS Date), N'987654335', N'alexander.martinez@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (17, N'Isabella', N'Jackson', CAST(N'1991-05-30' AS Date), N'987654336', N'isabella.jackson@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (18, N'Benjamin', N'White', CAST(N'1993-06-05' AS Date), N'987654337', N'benjamin.white@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (19, N'Amelia', N'King', CAST(N'1986-07-12' AS Date), N'987654338', N'amelia.king@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (20, N'Ethan', N'Wright', CAST(N'1992-08-24' AS Date), N'987654339', N'ethan.wright@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (21, N'Olivia', N'Green', CAST(N'1994-09-14' AS Date), N'987654340', N'olivia.green@example.com')
INSERT [dbo].[Buyer] ([BuyerId], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [EmailId]) VALUES (22, N'Jacob', N'Adams', CAST(N'1987-10-01' AS Date), N'987654341', N'jacob.adams@example.com')
SET IDENTITY_INSERT [dbo].[Buyer] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([CartId], [BuyerId], [PropertyId]) VALUES (4, 1, 1)
INSERT [dbo].[Cart] ([CartId], [BuyerId], [PropertyId]) VALUES (5, 2, 2)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (1, N'Los Angeles', 1)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (2, N'Houston', 2)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (3, N'Miami', 3)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (4, N'New York City', 4)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (5, N'Chicago', 5)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (6, N'Philadelphia', 6)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (7, N'Columbus', 7)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (8, N'Atlanta', 8)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (9, N'Charlotte', 9)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (10, N'Detroit', 10)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (11, N'San Jose', 1)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (12, N'San Antonio', 2)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (13, N'Dallas', 2)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (14, N'San Diego', 1)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (15, N'Austin', 2)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (16, N'Jacksonville', 3)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (17, N'Fort Worth', 2)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (18, N'Indianapolis', 16)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (19, N'Seattle', 13)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (20, N'Denver', 20)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (21, N'Washington', 4)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (22, N'Boston', 14)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (23, N'Memphis', 15)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (24, N'Milwaukee', 19)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (25, N'Nashville', 16)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (26, N'Portland', 25)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (27, N'Las Vegas', 27)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (28, N'Louisville', 16)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (29, N'Sacramento', 1)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (30, N'Detroit', 10)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (31, N'Phoenix', 14)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (32, N'Pittsburgh', 6)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (33, N'Cincinnati', 7)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (34, N'New Orleans', 15)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (35, N'Oklahoma City', 25)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (36, N'Tucson', 14)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (37, N'Anchorage', 46)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (38, N'Raleigh', 9)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (39, N'Salt Lake City', 26)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (40, N'Harrisburg', 6)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (41, N'Toledo', 7)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (42, N'Chattanooga', 15)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (43, N'Boise', 46)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (44, N'Little Rock', 29)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (45, N'Greensboro', 9)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (46, N'Des Moines', 28)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (47, N'Kansas City', 28)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (48, N'St. Louis', 15)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (49, N'Grand Rapids', 10)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (50, N'Birmingham', 23)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (51, N'Buffalo', 4)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (52, N'Madison', 19)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (53, N'Fresno', 1)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (54, N'Long Beach', 1)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (55, N'Tampa', 3)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (56, N'Scranton', 6)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (57, N'Bethlehem', 6)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (58, N'Lancaster', 6)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (59, N'Harrisburg', 6)
INSERT [dbo].[City] ([CityId], [CityName], [StateId]) VALUES (60, N'York', 6)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 

INSERT [dbo].[Images] ([ImageId], [PropertyId], [Image], [ImageUrl]) VALUES (4, 1, 0x123456, N'')
INSERT [dbo].[Images] ([ImageId], [PropertyId], [Image], [ImageUrl]) VALUES (5, 2, 0x7890AB, N'')
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Property] ON 

INSERT [dbo].[Property] ([PropertyId], [PropertyName], [PropertyType], [PropertyOption], [Description], [Address], [PriceRange], [InitialDeposit], [Landmark], [IsActive], [SellerId], [IsVerified], [CityId]) VALUES (1, N'Sunny Villa1', N'House', N'For Sale', N'A beautiful 3-bedroom villa.', N'123 Villa St, Los Angeles, CA', 500000.0000, 50000.0000, N'Near Park', 0, 1, 0, 1)
INSERT [dbo].[Property] ([PropertyId], [PropertyName], [PropertyType], [PropertyOption], [Description], [Address], [PriceRange], [InitialDeposit], [Landmark], [IsActive], [SellerId], [IsVerified], [CityId]) VALUES (2, N'Mountain Retreat', N'House', N'For Rent', N'A peaceful mountain retreat with amazing views.', N'456 Mountain St, Houston, TX', 2000.0000, 200.0000, N'Near Mountain', 1, 2, 1, 1)
SET IDENTITY_INSERT [dbo].[Property] OFF
GO
SET IDENTITY_INSERT [dbo].[Seller] ON 

INSERT [dbo].[Seller] ([SellerId], [UserName], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [Address], [StateId], [CityId], [EmailId]) VALUES (1, N'seller1', N'John', N'Doe', CAST(N'1985-05-15' AS Date), N'1234567890', N'123 Seller St, Los Angeles, CA', 1, 1, N'john.doe@example.com')
INSERT [dbo].[Seller] ([SellerId], [UserName], [FirstName], [LastName], [DateOfBirth], [PhoneNo], [Address], [StateId], [CityId], [EmailId]) VALUES (2, N'seller2', N'Jane', N'Smith', CAST(N'1983-07-21' AS Date), N'1234567891', N'456 Seller St, Houston, TX', 2, 2, N'jane.smith@example.com')
SET IDENTITY_INSERT [dbo].[Seller] OFF
GO
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([StateId], [StateName]) VALUES (1, N'California')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (2, N'Texas')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (3, N'Florida')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (4, N'New York')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (5, N'Illinois')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (6, N'Pennsylvania')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (7, N'Ohio')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (8, N'Georgia')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (9, N'North Carolina')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (10, N'Michigan')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (11, N'New Jersey')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (12, N'Virginia')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (13, N'Washington')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (14, N'Arizona')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (15, N'Massachusetts')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (16, N'Tennessee')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (17, N'Indiana')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (18, N'Missouri')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (19, N'Maryland')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (20, N'Wisconsin')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (21, N'Colorado')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (22, N'Minnesota')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (23, N'South Carolina')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (24, N'Alabama')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (25, N'Louisiana')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (26, N'Kentucky')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (27, N'Oregon')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (28, N'Oklahoma')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (29, N'Connecticut')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (30, N'Iowa')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (31, N'Mississippi')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (32, N'Arkansas')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (33, N'Kansas')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (34, N'Nevada')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (35, N'Utah')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (36, N'Arizona')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (37, N'New Mexico')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (38, N'Nebraska')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (39, N'West Virginia')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (40, N'Idaho')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (41, N'Hawaii')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (42, N'Maine')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (43, N'New Hampshire')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (44, N'Montana')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (45, N'Rhode Island')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (46, N'Delaware')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (47, N'South Dakota')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (48, N'North Dakota')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (49, N'Alaska')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (50, N'Vermont')
INSERT [dbo].[State] ([StateId], [StateName]) VALUES (51, N'Wyoming')
SET IDENTITY_INSERT [dbo].[State] OFF
GO
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin1', N'password1', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin10', N'password10', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin2', N'password2', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin3', N'password3', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin4', N'password4', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin5', N'password5', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin6', N'password6', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin7', N'password7', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin8', N'password8', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'admin9', N'password9', N'Admin')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer1', N'password1', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer10', N'password10', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer2', N'password2', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer3', N'password3', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer4', N'password4', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer5', N'password5', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer6', N'password6', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer7', N'password7', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer8', N'password8', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'buyer9', N'password9', N'Buyer')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller1', N'password1', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller10', N'password10', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller2', N'password2', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller3', N'password3', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller4', N'password4', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller5', N'password5', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller6', N'password6', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller7', N'password7', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller8', N'password8', N'Seller')
INSERT [dbo].[Users] ([UserName], [Password], [UserType]) VALUES (N'seller9', N'password9', N'Seller')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 08-02-2025 14:20:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 08-02-2025 14:20:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 08-02-2025 14:20:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 08-02-2025 14:20:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 08-02-2025 14:20:25 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 08-02-2025 14:20:25 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 08-02-2025 14:20:25 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyImage_PropertyId]    Script Date: 08-02-2025 14:20:25 ******/
CREATE NONCLUSTERED INDEX [IX_PropertyImage_PropertyId] ON [dbo].[PropertyImage]
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PropertyImage_PropertyImageId1]    Script Date: 08-02-2025 14:20:25 ******/
CREATE NONCLUSTERED INDEX [IX_PropertyImage_PropertyImageId1] ON [dbo].[PropertyImage]
(
	[PropertyImageId1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Images] ADD  DEFAULT (N'') FOR [ImageUrl]
GO
ALTER TABLE [dbo].[Property] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsVerified]
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
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([BuyerId])
REFERENCES [dbo].[Buyer] ([BuyerId])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Property] ([PropertyId])
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Property] ([PropertyId])
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD FOREIGN KEY([SellerId])
REFERENCES [dbo].[Seller] ([SellerId])
GO
ALTER TABLE [dbo].[Property]  WITH CHECK ADD  CONSTRAINT [FK_Properties_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Property] CHECK CONSTRAINT [FK_Properties_Cities_CityId]
GO
ALTER TABLE [dbo].[PropertyImage]  WITH CHECK ADD  CONSTRAINT [FK__PropertyImage__Property__...] FOREIGN KEY([PropertyId])
REFERENCES [dbo].[Property] ([PropertyId])
GO
ALTER TABLE [dbo].[PropertyImage] CHECK CONSTRAINT [FK__PropertyImage__Property__...]
GO
ALTER TABLE [dbo].[PropertyImage]  WITH CHECK ADD  CONSTRAINT [FK_PropertyImage_PropertyImage_PropertyImageId1] FOREIGN KEY([PropertyImageId1])
REFERENCES [dbo].[PropertyImage] ([PropertyImageId])
GO
ALTER TABLE [dbo].[PropertyImage] CHECK CONSTRAINT [FK_PropertyImage_PropertyImage_PropertyImageId1]
GO
ALTER TABLE [dbo].[Seller]  WITH CHECK ADD FOREIGN KEY([CityId])
REFERENCES [dbo].[City] ([CityId])
GO
ALTER TABLE [dbo].[Seller]  WITH CHECK ADD FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([StateId])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD CHECK  (([UserType]='Seller' OR [UserType]='Buyer' OR [UserType]='Admin'))
GO
USE [master]
GO
ALTER DATABASE [ehs1] SET  READ_WRITE 
GO
