USE [master]
GO
/****** Object:  Database [laptopmoddb]    Script Date: 9/8/2021 5:22:49 PM ******/
CREATE DATABASE [laptopmoddb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'laptopmoddb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\laptopmoddb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'laptopmoddb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\laptopmoddb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [laptopmoddb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [laptopmoddb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [laptopmoddb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [laptopmoddb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [laptopmoddb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [laptopmoddb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [laptopmoddb] SET ARITHABORT OFF 
GO
ALTER DATABASE [laptopmoddb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [laptopmoddb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [laptopmoddb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [laptopmoddb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [laptopmoddb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [laptopmoddb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [laptopmoddb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [laptopmoddb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [laptopmoddb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [laptopmoddb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [laptopmoddb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [laptopmoddb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [laptopmoddb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [laptopmoddb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [laptopmoddb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [laptopmoddb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [laptopmoddb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [laptopmoddb] SET RECOVERY FULL 
GO
ALTER DATABASE [laptopmoddb] SET  MULTI_USER 
GO
ALTER DATABASE [laptopmoddb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [laptopmoddb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [laptopmoddb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [laptopmoddb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [laptopmoddb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [laptopmoddb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'laptopmoddb', N'ON'
GO
ALTER DATABASE [laptopmoddb] SET QUERY_STORE = OFF
GO
USE [laptopmoddb]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 9/8/2021 5:22:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[userName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](250) NULL,
	[email] [nvarchar](250) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[gender] [nvarchar](50) NULL,
	[age] [int] NULL,
	[dateCreated] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 9/8/2021 5:22:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[userName] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[name] [nvarchar](250) NULL,
	[doB] [date] NULL,
	[email] [nvarchar](250) NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[status] [bit] NULL,
	[avatar] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 9/8/2021 5:22:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[url] [nvarchar](250) NULL,
	[productID] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceDetails]    Script Date: 9/8/2021 5:22:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetails](
	[quantity] [int] NOT NULL,
	[unitPrice] [int] NULL,
	[invoiceID] [int] NOT NULL,
	[productID] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[invoiceID] ASC,
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoices]    Script Date: 9/8/2021 5:22:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NULL,
	[phone] [nvarchar](50) NULL,
	[address] [nvarchar](250) NULL,
	[total] [int] NULL,
	[customerID] [nvarchar](50) NULL,
	[employeeID] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 9/8/2021 5:22:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[productID] [nvarchar](50) NOT NULL,
	[name] [nvarchar](250) NULL,
	[description] [nvarchar](max) NULL,
	[price] [int] NULL,
	[stock] [int] NULL,
	[maker] [nvarchar](250) NULL,
	[cpu] [nvarchar](250) NULL,
	[ram] [nvarchar](250) NULL,
	[screen] [nvarchar](250) NULL,
	[gpu] [nvarchar](250) NULL,
	[ssd] [nvarchar](250) NULL,
	[hdd] [nvarchar](250) NULL,
	[weight] [int] NULL,
	[debutYear] [date] NULL,
	[status] [bit] NULL,
	[productstype] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[productID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypes]    Script Date: 9/8/2021 5:22:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypes](
	[productsType] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[productsType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Employees] ([userName], [password], [name], [doB], [email], [phone], [address], [status], [avatar]) VALUES (N'tuyenng', N'123456', N'Tuyen Ng', CAST(N'1981-04-25' AS Date), N'trgtuyen@gmail.com', N'0818388181', N'50 Nguyen Dinh Chieu P3 PN', 1, N'ava1.jpg')
INSERT [dbo].[Employees] ([userName], [password], [name], [doB], [email], [phone], [address], [status], [avatar]) VALUES (N'tyrus', N'123123', N'Tyrus', CAST(N'1991-09-09' AS Date), N'tyrusg9@gmail.com', N'0019496663839', N'135 NKKN', 1, N'tyrus.jpg')
GO
INSERT [dbo].[Products] ([productID], [name], [description], [price], [stock], [maker], [cpu], [ram], [screen], [gpu], [ssd], [hdd], [weight], [debutYear], [status], [productstype]) VALUES (N'asusrogzephyrus152018', N'Asus ROG Zephyrus G15', NULL, 49500000, 2, N'Asus', N'AMD Ryzen 9 5900HS 8 Cores (3.0GHz-4.6GHz, 16MB Cache, 35W)', N'16Gb ddr4 3200Mhz', N'15.6" 165Hz 3ms IPS-Level QHD (2560x1440) Anti-Glare Display', N'NVIDIA GeForce RTX 3070 8GB', N'1 TB PCIe NVMe SSD', NULL, 2, CAST(N'2018-01-01' AS Date), 1, N'Gaming Laptops')
INSERT [dbo].[Products] ([productID], [name], [description], [price], [stock], [maker], [cpu], [ram], [screen], [gpu], [ssd], [hdd], [weight], [debutYear], [status], [productstype]) VALUES (N'dellawm15r5ryzen', N'Alienware M15 Ryzen Edition R5', NULL, 43900000, 1, N'Dell', N'AMD Ryzen™ 7 5800H Up To 4.4GHz (8 Cores 20MB Cache)', N'DDR4 16GB 3200MHz', N'15.6″ FHD (1920 x 1080) 165Hz 3ms with ComfortView Plus', N'NVIDIA® GeForce RTX™ 3060 6GB GDDR6', N'256GB PCIe M.2 SSD', NULL, 2, CAST(N'2020-01-01' AS Date), 1, N'Gaming Laptops')
INSERT [dbo].[Products] ([productID], [name], [description], [price], [stock], [maker], [cpu], [ram], [screen], [gpu], [ssd], [hdd], [weight], [debutYear], [status], [productstype]) VALUES (N'dellawm17r3rtx2070', N'Dell Alienware M17 R3 RTX 2070', NULL, 46000000, 3, N'Dell', N'Intel® Core™ i7 - 10750H (12M Cache), 2.6 Ghz up to 5.0 Ghz', N'16 GB DDR4 2666 MHz', N'17.3" FHD (1920 x 1080) 144Hz 9ms 300-nits 72% NTSC color gamut', N'NVIDIA(R) GeForce RTX(TM)2070 8GB GDDR6', N'512GB PCIe M.2 SSD', NULL, 2, CAST(N'2019-01-01' AS Date), 1, N'Gaming Laptops')
INSERT [dbo].[Products] ([productID], [name], [description], [price], [stock], [maker], [cpu], [ram], [screen], [gpu], [ssd], [hdd], [weight], [debutYear], [status], [productstype]) VALUES (N'dellxps1393302002', N'Dell XPS 13 9330', NULL, 20000000, 3, N'Dell', N'Intel® Core™ i7 - 1165G7 (12M Cache), 2.80 Ghz up to 4.70 Ghz', N'8 GB LPDDR4x-4267MHz On-board', N'13.4" FHD+ (1920 x 1200) InfinityEdge Touch Anti-Glare 500-Nit Display', N'Intel Iris Xe Graphics', N'256 GB M.2 PCIe NVMe', NULL, 1, CAST(N'2002-01-01' AS Date), 1, N'Laptops/Notebooks')
INSERT [dbo].[Products] ([productID], [name], [description], [price], [stock], [maker], [cpu], [ram], [screen], [gpu], [ssd], [hdd], [weight], [debutYear], [status], [productstype]) VALUES (N'hpspectre15x360', N'HP Spectre 15 X360 2in1 4K Touch Convertible', NULL, 41900000, 4, N'HP', N'Intel® Core™ i7 - 1165G7 (12M Cache) up to 4.7 Ghz', N'16 GB LPDDR4 SDRAM 3200MHz', N'15.6 Inches UHD display (3840x2160) 4K OLED Touch 340 nits', N'Intel® Iris® Xᵉ Graphics', N'512 GB PCIe® NVMe™ M.2 SSD', NULL, 1, CAST(N'2021-01-01' AS Date), 1, N'Laptops/Notebooks')
INSERT [dbo].[Products] ([productID], [name], [description], [price], [stock], [maker], [cpu], [ram], [screen], [gpu], [ssd], [hdd], [weight], [debutYear], [status], [productstype]) VALUES (N'mssurfacepro7plus', N'Surface Pro 7 Plus', NULL, 42900000, 5, N'Microsoft', N'Intel® Core™ i7-1165G7 4-Core, 2.8Ghz up to 4.7Ghz (12M Cache)', N'16GB LPDDR4x RAM', N'12.3” PixelSense™ 2736 x 1824 (267 PPI) Touch', N'Intel® Iris™ Plus Graphics', N'256 GB SSD', NULL, 1, CAST(N'2021-01-01' AS Date), 1, N'Laptops/Notebooks')
GO
INSERT [dbo].[ProductTypes] ([productsType], [description]) VALUES (N'All in One', N'Multi Purpose PC')
INSERT [dbo].[ProductTypes] ([productsType], [description]) VALUES (N'Desktops', N'Home PC')
INSERT [dbo].[ProductTypes] ([productsType], [description]) VALUES (N'Gaming Laptops', N'Gamings, Graphics and more ')
INSERT [dbo].[ProductTypes] ([productsType], [description]) VALUES (N'Laptops/Notebooks', N'Laptop for Mobility, Office ')
INSERT [dbo].[ProductTypes] ([productsType], [description]) VALUES (N'Workstations', N'WorkStations')
GO
ALTER TABLE [dbo].[Images]  WITH CHECK ADD  CONSTRAINT [FK_Images_Products] FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[Images] CHECK CONSTRAINT [FK_Images_Products]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Invoices] FOREIGN KEY([invoiceID])
REFERENCES [dbo].[Invoices] ([id])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Invoices]
GO
ALTER TABLE [dbo].[InvoiceDetails]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceDetails_Products] FOREIGN KEY([productID])
REFERENCES [dbo].[Products] ([productID])
GO
ALTER TABLE [dbo].[InvoiceDetails] CHECK CONSTRAINT [FK_InvoiceDetails_Products]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Customers] FOREIGN KEY([customerID])
REFERENCES [dbo].[Customers] ([userName])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Customers]
GO
ALTER TABLE [dbo].[Invoices]  WITH CHECK ADD  CONSTRAINT [FK_Invoices_Employees] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Employees] ([userName])
GO
ALTER TABLE [dbo].[Invoices] CHECK CONSTRAINT [FK_Invoices_Employees]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductTypes] FOREIGN KEY([productstype])
REFERENCES [dbo].[ProductTypes] ([productsType])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductTypes]
GO
USE [master]
GO
ALTER DATABASE [laptopmoddb] SET  READ_WRITE 
GO
