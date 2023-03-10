USE [master]
GO
/****** Object:  Database [WebProject]    Script Date: 08/30/2022 23:47:26 ******/
CREATE DATABASE [WebProject] ON  PRIMARY 
( NAME = N'WebProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\WebProject.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WebProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\WebProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WebProject] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebProject] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WebProject] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WebProject] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WebProject] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WebProject] SET ARITHABORT OFF
GO
ALTER DATABASE [WebProject] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [WebProject] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WebProject] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [WebProject] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WebProject] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WebProject] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WebProject] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WebProject] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WebProject] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WebProject] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WebProject] SET  DISABLE_BROKER
GO
ALTER DATABASE [WebProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WebProject] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WebProject] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WebProject] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WebProject] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WebProject] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [WebProject] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [WebProject] SET  READ_WRITE
GO
ALTER DATABASE [WebProject] SET RECOVERY SIMPLE
GO
ALTER DATABASE [WebProject] SET  MULTI_USER
GO
ALTER DATABASE [WebProject] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WebProject] SET DB_CHAINING OFF
GO
USE [WebProject]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 08/30/2022 23:47:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](450) NULL,
	[Status] [nvarchar](max) NULL,
	[CreatedAt] [datetime2](7) NULL,
	[QuantityTotal] [int] NULL,
	[ShippingAddress] [nvarchar](max) NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Orders] ON
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (18, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (19, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (20, NULL, NULL, NULL, 1, NULL, 180)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (21, NULL, NULL, NULL, 6, NULL, 5019)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (22, NULL, NULL, NULL, 2, NULL, 3660)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (23, NULL, NULL, NULL, 5, NULL, 3339)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (24, N'admin@gmail.com', NULL, NULL, 1, NULL, 2970)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (26, N'admin@gmail.com', NULL, NULL, 6, NULL, 9248)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (27, N'test1@gmail.com', NULL, NULL, 2, NULL, 5940)
INSERT [dbo].[Orders] ([Id], [UserID], [Status], [CreatedAt], [QuantityTotal], [ShippingAddress], [Total]) VALUES (28, N'admin3@gmail.com', NULL, NULL, 3, NULL, 8670)
SET IDENTITY_INSERT [dbo].[Orders] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 08/30/2022 23:47:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (1, N'Logitech Pro', N'Hãng này từ Mỹ')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (2, N'Corsair', NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (6, N'Akko', N'Akko ')
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (7, N'Razer', NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (8, N'Steelseries', NULL)
INSERT [dbo].[Categories] ([Id], [Name], [Description]) VALUES (9, N'Acer1', N'Hãng Acer')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 08/30/2022 23:47:28 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles] 
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 08/30/2022 23:47:28 ******/
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
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers] 
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers] 
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'012a3ae1-109b-4ac8-a596-92ff04daaffa', N'1111111q2@gmail.com', N'1111111Q2@GMAIL.COM', N'1111111q2@gmail.com', N'1111111Q2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEPqa0medkDfUpuntDi8SzZLcE64qgJLfNmfVjSunuSwjmnOqar25MwHNDEw6jboRiA==', N'A756XX4X2YOC4CIB37ASBVIUC66GNGOU', N'aabcc821-4473-4b02-a07c-c99553852b9b', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'02b2a6c0-29c5-44e0-a9de-9ac6eb55d258', N'q21111111@gmail.com', N'Q21111111@GMAIL.COM', N'q21111111@gmail.com', N'Q21111111@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEAghC5eJGlK74Kwci4Rg+/gYRBNNdGr1DPr0gv4FBgXgDwBo54wxKt6dozN7v93DYA==', N'EXMZ3UBPWXCCPCMO7DEYARZCOVRK7Y6N', N'4308bfb9-73f7-4951-bd87-191576db078a', NULL, 0, 0, NULL, 1, 0, N'Q', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'02f02f78-3447-49a3-af3d-37fd9dcd05b1', N'q1111112@gmail.com', N'Q1111112@GMAIL.COM', N'q1111112@gmail.com', N'Q1111112@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMYtSncsHnZuVojbN52lZayFI20AqQ6H1QyWq3YZ1IuivCTiQx58UmbIN9K/JX8Rvg==', N'GHHYJD3OWEEIUQEUPNLJMPKKBH4HEIWD', N'e57e8f51-6197-472f-a3a0-0246641623f3', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'07e204ac-9665-488c-a722-2992bea9dad8', N'q2@gmail.com22', N'Q2@GMAIL.COM22', N'q2@gmail.com22', N'Q2@GMAIL.COM22', 0, N'AQAAAAEAACcQAAAAEJnTWoIDemMIKZZ4EdmTlYXJiMx51NPZ1oVQEH0kqTnXHTpaUjiiG/kRH6nF5AxQUw==', N'GU3VU7BVI4IDOU4LNYNUXY4K5YPNWPSI', N'6a7f6a61-16e1-44b4-8fae-72dca71df0c7', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'0a848a7c-90ed-48b0-a88d-baff3036dfa2', N'q1111121212@gmail.com', N'Q1111121212@GMAIL.COM', N'q1111121212@gmail.com', N'Q1111121212@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG4zrq94fC2Bsxjpc7uCyJ3xiazrr+6MZOYiPaOaL5uHDGuJ8bu20w4r1TD2ZMbI6A==', N'HBZF7KADNJJ6IT4RG2XO6OLERDQNNM4G', N'4e430c62-7927-4896-b463-92fa78d15309', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'0ad39aec-0427-4eb3-bd3f-05e8389a0a69', N'qqq2111@gmail.com', N'QQQ2111@GMAIL.COM', N'qqq2111@gmail.com', N'QQQ2111@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEG8JHQe98xCfIXXtmUr9EirD6TOFyDhsnbpx8+2KU89ctvu8j1DC7OH81K+zvxRHUw==', N'EGIOPV6SY75YWQYBLDB3O6B2WZ64ZYB4', N'2e83cf47-31f0-461b-98ce-1f27085721d8', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'0e9700e3-7a72-44b1-b56d-4be78ef3bcba', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEM1zxe6geCpuEfCt2jK2S1idagfVcrJ+sHaIWyU86iRJqLHvu5k/y7Ueed9MM7gfRw==', N'I6JG4I2B77YH6N5DS26ANKDEKRTYKJQC', N'76b7cc94-651e-43fe-852b-e4f269a97a12', NULL, 0, 0, NULL, 1, 0, N'Test', N'Test')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'2a92a69a-dab9-4a11-933e-fbfdddfdda48', N'q22@gmail.com', N'Q22@GMAIL.COM', N'q22@gmail.com', N'Q22@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECzp57HEypOrN1TWKdCfVxwP3D9OkQFlWyoVoPk6Wb5Cm1XIICgTiiZq++jer1YM2Q==', N'BEDYTEJMYCFXS2YG2L67MRFMNCVXUCLZ', N'ea9c446e-2b01-40a4-892d-04925ec68c95', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'2f55f26a-8c22-4d40-bcd6-a2532d6b33fe', N'1q2@gmail.com', N'1Q2@GMAIL.COM', N'1q2@gmail.com', N'1Q2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEH1JlI7SP+nJBqDh3nZTQQwuhY7HYMB7mA5O/qadQzY+0XdyeD7J6yIG0lEoD+QKJw==', N'SU3ZJHNCQSTAHOL35OPPGA37AUGOHIDR', N'5072abd4-211b-4166-84c1-3a32012edf19', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'32e5600c-16a8-4cdc-a9c3-c2252b2e0813', N'nhatquang2@gmail.com', N'NHATQUANG2@GMAIL.COM', N'nhatquang2@gmail.com', N'NHATQUANG2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJtgXWRqPefrKQzS9/P76gnP1mktCC3yTFm7Vz63xD+eIA4Q60NmLyisFboAai3d9w==', N'BRQLML2L7NQQ2QWDAIDCQUGAQAOX7EB3', N'cadfc80c-d350-4b46-92db-d7673f7f6600', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Trần')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'3bb9b99c-161a-4f26-9978-8b5014665d59', N'nhatquang1@gmail.com', N'NHATQUANG1@GMAIL.COM', N'nhatquang1@gmail.com', N'NHATQUANG1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELsdfmBkLgqJe1M1meAXlCw0J9Gmv6mWK3qyVrnGKlfODxMmuHi38DC6/EWh+kcQIg==', N'6JX7O6XATCUNRZPM5J6INEQT455IXONY', N'66667d01-9873-48f6-bb09-fb9e6dea7835', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Trần')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'43f6fcfc-1bb0-44d5-bf10-00646820b7c8', N'jason@gmail.com', N'JASON@GMAIL.COM', N'jason@gmail.com', N'JASON@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA+xS3rZYTe9DQ97jxAg8SaSVCYMOcAGOUewuf2ig41OehOgUl9oEZfUjz/xZvFjng==', N'MNEM452DFD2Q5OMPWS3ERHH7OLON67OU', N'7570565d-c4ca-4794-a59e-bbed21942511', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'454ecf0e-1774-43e4-98cf-563755d42ed3', N'admin3@gmail.com', N'ADMIN3@GMAIL.COM', N'admin3@gmail.com', N'ADMIN3@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEArKlvphqC0xmF6fp2EpVGIIBe2EGKhaKr4Zgmzqs6qVcnxntfJrKmzpKX9uA/ZmbA==', N'3VIPGIMYFLRHKSYYPFAOSKIB3CN2V4PV', N'4f2df9cd-6e20-47f3-8a49-839239b06af1', NULL, 0, 0, NULL, 1, 0, N'admin', N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'63ee3785-e76f-4fb0-8729-d58a79a916c4', N'admin1@gmail.com', N'ADMIN1@GMAIL.COM', N'admin1@gmail.com', N'ADMIN1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEMS5grAtgqKnxlUf6pfxPFYatqqwe44fJ+2ai+RjMqqWRQphevmPuL2Ox7LczJaQmg==', N'UWOBPI3S2J7KEEBTYR763KRSP6F6LCAG', N'2215cea3-79d2-422a-bf2e-d37bee225368', NULL, 0, 0, NULL, 1, 4, N'admin', N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'699e06ae-6ad4-4ec6-9efa-3a888a96d900', N'jason@gmail.com111', N'JASON@GMAIL.COM111', N'jason@gmail.com111', N'JASON@GMAIL.COM111', 0, N'AQAAAAEAACcQAAAAEHJ+k+fTtvVdwiItncHvr+tuIkG4isycXmk0uTLoq7YnbbqV5ZrWz+XyiA5ifw+8ig==', N'TL2SHJZCCUVJUYDO6XF6SJRO673LQSKE', N'58be5c13-20e1-4c63-b72c-edc0951e94a3', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'6c6e9da9-bec3-4c00-af4b-0783e9dc0a5a', N'nhatquangth69@gmail.com', N'NHATQUANGTH69@GMAIL.COM', N'nhatquangth69@gmail.com', N'NHATQUANGTH69@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEPH/azVFNHc3HiwegcABv244VhP88O9lwETk9P8tylBZenUVfBPzJosZrUEoPxGWig==', N'RWSTNJY3JJW376FDA7EGHOXLP4LM4WEZ', N'44ce022a-d04d-4109-9ae5-55ca90a0d477', NULL, 0, 0, NULL, 1, 3, N'Quang', N'Trần')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'b0ce2974-d0e7-4d4c-9d9f-2dce148cb53f', N'q11112@gmail.com', N'Q11112@GMAIL.COM', N'q11112@gmail.com', N'Q11112@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEA6gAUKzrINTBBHUUI67Gwb6b5zOGHL/iwoibPEW2NcPeEfuK79EPwdCfwKi9YGx6Q==', N'2M67AMOVULWYYKWXKNOCEBUNDLITZQLC', N'64291486-856e-48e3-a799-fa4f041bb022', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'b1bfff5c-92f0-4f79-be91-d239f9c5c927', N'nhatquang21@gmail.com', N'NHATQUANG21@GMAIL.COM', N'nhatquang21@gmail.com', N'NHATQUANG21@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEEilJoi+hfruY4Q4iOP88iU6jEz0MOsO3KqiofYw5d4IJ9t2JY/1E3RcSKVGu0LinA==', N'4DNGBEAC7BOCMN5U5RUJ37SX2M5BGLJW', N'4774a2c5-b7ef-443f-accc-d705ffc8afde', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Trần')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'c549278a-fd4f-473e-86a1-219824b7b4cb', N'WQEQW@GMAIL.COM', N'WQEQW@GMAIL.COM', N'WQEQW@GMAIL.COM', N'WQEQW@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELWFOTq4ilv2d5msi84pxaMrM4ftK/tRJXzxnDR8PNeX+znb7DFrMPIZ56XTXR5X6g==', N'WUNVQR2QNEUAZS655HBKHGEV36W6RLZH', N'fdf6fc66-139d-437b-8de0-1aeea742c9d3', NULL, 0, 0, NULL, 1, 0, N'WQEWQEWQ', N'12321')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'ccb5f6e3-7615-49de-81c2-87eadfa42d9b', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEOJXcOtS4RfzVbajruOn+xe6DPiD5idB2ecingMYNsu174h5n184eW5cLaHoEN8g4g==', N'NGRH6G3T3YVF74KPHNBBY2LO52M44VEY', N'694568b1-7bb9-41d1-81b4-b3b659a5777b', NULL, 0, 0, NULL, 1, 0, N'admin', N'admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'de1fb22d-a562-491c-a47c-4cf38fb408b7', N'q2@gmail.com', N'Q2@GMAIL.COM', N'q2@gmail.com', N'Q2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFZo8wDlebeWmGHQuiU6oyUL4LVkXP0n0vq+HDZn3ksLsKQDeJw+ftcrxdP4lq1zlw==', N'KQMYM7ZQGS5OEKCINWCLX76QBEKBL7TB', N'372d2899-710f-4bc9-aa80-65f2de135f84', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'e4ead909-8bdb-462a-b719-bfbf2f066c60', N'jason@gmail.com3', N'JASON@GMAIL.COM3', N'jason@gmail.com3', N'JASON@GMAIL.COM3', 0, N'AQAAAAEAACcQAAAAECOgxD9/PpyIib7Xl6bAkZkWFyA41jkH/5ctdG8vuM/Tx2fDErnATW1idoJDfbnwew==', N'AT4Q5RHFVUU2E6XMG62ZGDV54EPUNN2J', N'27021abd-2284-4002-9765-c6a2be65ba88', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'e813ce84-0167-4b3c-a798-725e03133c15', N'q12312312212@gmail.com', N'Q12312312212@GMAIL.COM', N'q12312312212@gmail.com', N'Q12312312212@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEDLhmdW8k33HRT+WbBXyE2uZtIim+HIy15h9K7kFSrwEnOejL8ARVKWIeVQAQg/A4g==', N'SALBJXSRCMN33LV4GZIST6ZFXQH2LZI7', N'7c27ce92-e4d7-4c38-a33e-a24e1bcad0c6', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'f370c738-c67e-44b6-a810-0621fc4192e9', N'nhatquang@gmail.com', N'NHATQUANG@GMAIL.COM', N'nhatquang@gmail.com', N'NHATQUANG@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELiWI+qOVvXaxE51fDghjrzxiih4El/x+KVo7XmyHEMqSyy+m/o5alZpTh6ky1ePXw==', N'MBH4YU63SGWB6ONMVDYSGUADR6Y24L7C', N'dd87de3b-51b6-4c7a-99f0-04ea8036e69f', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Trần')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'f6d94a0c-c921-497b-825c-fd54c5378b57', N'qqq2@gmail.com', N'QQQ2@GMAIL.COM', N'qqq2@gmail.com', N'QQQ2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMdDUqfj7PDtI2M7eL+nJ3H6+H8znovS+QDiLrhKNOOT0YZhy+dkTz6ZkjL8Av5cYA==', N'WZVN4ET22MSLKOGCADSCQY3I2WJIZXMO', N'2759d291-9f43-46c6-927b-36de41a0d69d', NULL, 0, 0, NULL, 1, 0, N'Quang', N'Tran')
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08/30/2022 23:47:28 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801033302_DB_v1.0', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801034521_DB_v1.1', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220803025255_DB_v1.2', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220803025941_DB_v1.3', N'5.0.7')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220825161553_DB_v1.4', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220825163744_db_v1.5', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220825173507_DB_v1.6', N'5.0.17')
/****** Object:  Table [dbo].[Products]    Script Date: 08/30/2022 23:47:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](160) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoryID] [int] NOT NULL,
	[Discount] [int] NULL,
	[ImgUrl] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products] 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (1, N'Mouse', N'Chuột sử dụng với bàn phím', 1, NULL, N'1.jpg', 1000)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (2, N'Keyboard', N'ẬP BÀN PHÍM', 1, NULL, N'2.jpg', 200)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (3, N'Laptop', NULL, 2, 20, N'3.jpg', 1000)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (4, N'Monitor', NULL, 1, 10, N'4.jpg', 300)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (5, N'Speakers', NULL, 2, 5, N'5.jpg', 400)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (6, N'Table', NULL, 2, NULL, N'6.jpg', 200)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (7, N'Lightbulb', N'Gắn bóng đèn lên', 2, NULL, N'01.jpg', 400)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (8, N'Chuột corsair', N'Hihi', 2, NULL, N'1.jpg', 1)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (10, N'Bàn phím Akkoo 2002', N'mới 2022', 6, 5, N'2.jpg', 3000)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (12, N'Chuột Rekless', N'Hihi', 8, NULL, N'1.jpg', 99)
INSERT [dbo].[Products] ([Id], [Name], [Description], [CategoryID], [Discount], [ImgUrl], [Price]) VALUES (13, N'Máy tính Acer', N'laptop', 9, NULL, N'8.jpg', 3000)
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 08/30/2022 23:47:28 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 08/30/2022 23:47:28 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 08/30/2022 23:47:28 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims] 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 08/30/2022 23:47:28 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims] 
(
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 08/30/2022 23:47:28 ******/
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
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderProducts]    Script Date: 08/30/2022 23:47:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
 CONSTRAINT [PK_OrderProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_OrderProducts_OrderId] ON [dbo].[OrderProducts] 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_OrderProducts_ProductId] ON [dbo].[OrderProducts] 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[OrderProducts] ON
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (4, 10, 19, 1, 2850)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (5, 12, 19, 3, 99)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (6, 2, 20, 1, 180)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (8, 2, 21, 1, 180)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (9, 4, 21, 1, 270)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (10, 12, 21, 1, 99)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (11, 10, 21, 1, 2850)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (13, 10, 22, 1, 2850)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (14, 12, 23, 1, 99)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (16, 13, 24, 1, 2970)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (19, 13, 26, 1, 2970)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (20, 12, 26, 2, 99)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (21, 10, 26, 2, 2850)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (22, 5, 26, 1, 380)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (23, 13, 27, 2, 2970)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (24, 10, 28, 2, 2850)
INSERT [dbo].[OrderProducts] ([Id], [ProductId], [OrderId], [Quantity], [Price]) VALUES (25, 13, 28, 1, 2970)
SET IDENTITY_INSERT [dbo].[OrderProducts] OFF
/****** Object:  Default [DF__Categories__Name__286302EC]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[Categories] ADD  DEFAULT (N'') FOR [Name]
GO
/****** Object:  Default [DF__Products__Name__267ABA7A]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[Products] ADD  DEFAULT (N'') FOR [Name]
GO
/****** Object:  Default [DF__Products__Catego__276EDEB3]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoryID]
GO
/****** Object:  Default [DF__Products__Price__25869641]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [Price]
GO
/****** Object:  ForeignKey [FK_Products_Categories_CategoryID]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryID]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetRoles_RoleId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserRoles_AspNetUsers_UserId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserLogins_AspNetUsers_UserId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetUserClaims_AspNetUsers_UserId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_AspNetRoleClaims_AspNetRoles_RoleId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
/****** Object:  ForeignKey [FK_AspNetUserTokens_AspNetUsers_UserId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  ForeignKey [FK_OrderProducts_Orders_OrderId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Orders_OrderId]
GO
/****** Object:  ForeignKey [FK_OrderProducts_Products_ProductId]    Script Date: 08/30/2022 23:47:28 ******/
ALTER TABLE [dbo].[OrderProducts]  WITH CHECK ADD  CONSTRAINT [FK_OrderProducts_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderProducts] CHECK CONSTRAINT [FK_OrderProducts_Products_ProductId]
GO
