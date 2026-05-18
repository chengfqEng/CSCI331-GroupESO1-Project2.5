USE [PrestigeCars]
GO
/****** Object:  Schema [Udt]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE SCHEMA [Udt]
GO
/****** Object:  UserDefinedDataType [Udt].[CountryISO2T]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[CountryISO2T] FROM [nchar](2) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[CountryISO3T]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[CountryISO3T] FROM [nchar](3) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[CountryName]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[CountryName] FROM [nvarchar](15) NOT NULL
GO
/****** Object:  UserDefinedDataType [Udt].[CountryNameT]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[CountryNameT] FROM [nvarchar](150) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[CustomerNameT]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[CustomerNameT] FROM [nvarchar](150) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[ISO2]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[ISO2] FROM [nchar](2) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[ISO3]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[ISO3] FROM [nchar](3) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[MakeCountry]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[MakeCountry] FROM [char](3) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[MakeID]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[MakeID] FROM [smallint] NULL
GO
/****** Object:  UserDefinedDataType [Udt].[MakeNameT]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[MakeNameT] FROM [nvarchar](100) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[ModelNameT]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[ModelNameT] FROM [nvarchar](150) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[SalesRegion]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[SalesRegion] FROM [nvarchar](15) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[SalesRegionT]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[SalesRegionT] FROM [nvarchar](20) NULL
GO
/****** Object:  UserDefinedDataType [Udt].[SurrogateKeyInt]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE TYPE [Udt].[SurrogateKeyInt] FROM [int] NULL
GO
/****** Object:  UserDefinedFunction [DataTransfer].[Sales2015F]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   function [DataTransfer].[Sales2015F]
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2015
Where MakeName = @MakeName;
GO
/****** Object:  UserDefinedFunction [DataTransfer].[Sales2016F]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   function [DataTransfer].[Sales2016F]
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2016
Where MakeName = @MakeName;
GO
/****** Object:  UserDefinedFunction [DataTransfer].[Sales2017F]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   function [DataTransfer].[Sales2017F]
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2017
Where MakeName = @MakeName;
GO
/****** Object:  UserDefinedFunction [DataTransfer].[Sales2018F]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   function [DataTransfer].[Sales2018F]
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2018
Where MakeName = @MakeName;
GO
/****** Object:  Table [Data].[Country]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Country](
	[CountryName] [Udt].[CountryNameT] NULL,
	[CountryISO2] [Udt].[CountryISO2T] NULL,
	[CountryISO3] [Udt].[CountryISO3T] NULL,
	[SalesRegion] [Udt].[SalesRegionT] NULL,
	[SalesRegionID] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Data].[Customer]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Customer](
	[CustomerID] [nvarchar](5) NOT NULL,
	[CustomerName] [Udt].[CustomerNameT] NULL,
	[Address1] [nvarchar](50) NOT NULL,
	[Address2] [nvarchar](50) NULL,
	[Town] [nvarchar](50) NOT NULL,
	[PostCode] [nvarchar](50) NULL,
	[Country] [nchar](2) NOT NULL,
	[IsReseller] [bit] NULL,
	[IsCreditRisk] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Make]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Make](
	[MakeID] [Udt].[MakeID] IDENTITY(1,1) NOT NULL,
	[MakeName] [Udt].[MakeNameT] NULL,
	[MakeCountry] [Udt].[MakeCountry] NULL,
 CONSTRAINT [Pk_MakeID] PRIMARY KEY CLUSTERED 
(
	[MakeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Model]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Model](
	[ModelID] [smallint] IDENTITY(1,1) NOT NULL,
	[MakeID] [Udt].[MakeID] NULL,
	[ModelName] [Udt].[ModelNameT] NULL,
	[ModelVariant] [nvarchar](150) NULL,
	[YearFirstProduced] [char](4) NULL,
	[YearLastProduced] [char](4) NULL,
 CONSTRAINT [PK_ModelID] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UNQ_ModelName] UNIQUE NONCLUSTERED 
(
	[ModelName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[PivotTable]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[PivotTable](
	[Color] [nvarchar](50) NULL,
	[2015] [numeric](38, 2) NULL,
	[2016] [numeric](38, 2) NULL,
	[2017] [numeric](38, 2) NULL,
	[2018] [numeric](38, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Sales]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Sales](
	[SalesID] [int] NOT NULL,
	[CustomerID] [nvarchar](5) NULL,
	[InvoiceNumber] [char](8) NOT NULL,
	[TotalSalePrice] [numeric](18, 2) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_SalesID] PRIMARY KEY CLUSTERED 
(
	[SalesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[SalesDetails]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[SalesDetails](
	[SalesDetailsID] [int] IDENTITY(1,1) NOT NULL,
	[SalesID] [int] NOT NULL,
	[LineItemNumber] [tinyint] NOT NULL,
	[StockID] [nvarchar](50) NOT NULL,
	[SalePrice] [numeric](18, 2) NULL,
	[LineItemDiscount] [numeric](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[SalesRegion]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[SalesRegion](
	[SalesRegionId] [Udt].[SurrogateKeyInt] IDENTITY(1,1) NOT NULL,
	[SalesRegion] [Udt].[SalesRegion] NOT NULL,
 CONSTRAINT [PK_SalesRegion] PRIMARY KEY CLUSTERED 
(
	[SalesRegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Data].[Stock]    Script Date: 5/17/2026 10:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Data].[Stock](
	[StockCode] [nvarchar](50) NOT NULL,
	[ModelID] [smallint] NULL,
	[Cost] [money] NULL,
	[RepairsCost] [money] NULL,
	[PartsCost] [money] NULL,
	[TransportInCost] [money] NULL,
	[IsRHD] [bit] NULL,
	[Color] [nvarchar](50) NULL,
	[BuyerComments] [nvarchar](4000) NULL,
	[DateBought] [date] NULL,
	[TimeBought] [time](7) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryName_idx]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueCoutryName_idx] ON [Data].[Country]
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryNameISO2_idx]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE NONCLUSTERED INDEX [UniqueCoutryNameISO2_idx] ON [Data].[Country]
(
	[CountryISO2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueCoutryNameISO3_idx]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueCoutryNameISO3_idx] ON [Data].[Country]
(
	[CountryISO3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UniqueSalesRegionName_idx]    Script Date: 5/17/2026 10:55:44 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UniqueSalesRegionName_idx] ON [Data].[SalesRegion]
(
	[SalesRegion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [Data].[Stock] ADD  CONSTRAINT [DF_Stock_StockCode]  DEFAULT (newid()) FOR [StockCode]
GO
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [FK_SalesRegionID] FOREIGN KEY([SalesRegionID])
REFERENCES [Data].[SalesRegion] ([SalesRegionId])
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [FK_SalesRegionID]
GO
ALTER TABLE [Data].[Model]  WITH CHECK ADD  CONSTRAINT [FK_MakeID] FOREIGN KEY([MakeID])
REFERENCES [Data].[Model] ([ModelID])
GO
ALTER TABLE [Data].[Model] CHECK CONSTRAINT [FK_MakeID]
GO
ALTER TABLE [Data].[Sales]  WITH CHECK ADD  CONSTRAINT [FK_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [Data].[Customer] ([CustomerID])
GO
ALTER TABLE [Data].[Sales] CHECK CONSTRAINT [FK_CustomerID]
GO
ALTER TABLE [Data].[SalesDetails]  WITH CHECK ADD  CONSTRAINT [FK_SalesID] FOREIGN KEY([SalesID])
REFERENCES [Data].[Sales] ([SalesID])
GO
ALTER TABLE [Data].[SalesDetails] CHECK CONSTRAINT [FK_SalesID]
GO
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [CK_CountryISO2] CHECK  (([CountryISO2] like '[A-Z][A-Z]'))
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [CK_CountryISO2]
GO
ALTER TABLE [Data].[Country]  WITH CHECK ADD  CONSTRAINT [CK_CountryISO3] CHECK  (([CountryISO3] like '[A-Z][A-Z][A-Z]'))
GO
ALTER TABLE [Data].[Country] CHECK CONSTRAINT [CK_CountryISO3]
GO
ALTER TABLE [Data].[Customer]  WITH CHECK ADD  CONSTRAINT [CK_CustomerCountry] CHECK  (([Country] like '[A-Z][A-Z]'))
GO
ALTER TABLE [Data].[Customer] CHECK CONSTRAINT [CK_CustomerCountry]
GO
ALTER TABLE [Data].[Make]  WITH CHECK ADD  CONSTRAINT [CK_MakeCountry] CHECK  (([MakeCountry] like '[A-Z][A-Z][A-Z]'))
GO
ALTER TABLE [Data].[Make] CHECK CONSTRAINT [CK_MakeCountry]
GO
ALTER TABLE [Data].[SalesDetails]  WITH CHECK ADD  CONSTRAINT [CK_SalePrice] CHECK  (([SalePrice]>=(0)))
GO
ALTER TABLE [Data].[SalesDetails] CHECK CONSTRAINT [CK_SalePrice]
GO
ALTER TABLE [Data].[Stock]  WITH CHECK ADD  CONSTRAINT [CK_Cost] CHECK  (([Cost]>=(0)))
GO
ALTER TABLE [Data].[Stock] CHECK CONSTRAINT [CK_Cost]
GO
ALTER TABLE [Data].[Stock]  WITH CHECK ADD  CONSTRAINT [CK_DateBought] CHECK  (([DateBought]>='1800-01-01'))
GO
ALTER TABLE [Data].[Stock] CHECK CONSTRAINT [CK_DateBought]
GO
ALTER TABLE [Data].[Stock]  WITH CHECK ADD  CONSTRAINT [CK_PartsCost] CHECK  (([PartsCost]>=(0)))
GO
ALTER TABLE [Data].[Stock] CHECK CONSTRAINT [CK_PartsCost]
GO
ALTER TABLE [Data].[Stock]  WITH CHECK ADD  CONSTRAINT [CK_RepairsCost] CHECK  (([RepairsCost]>=(0)))
GO
ALTER TABLE [Data].[Stock] CHECK CONSTRAINT [CK_RepairsCost]
GO
ALTER TABLE [Data].[Stock]  WITH CHECK ADD  CONSTRAINT [CK_TransportInCost] CHECK  (([TransportInCost]>=(0)))
GO
ALTER TABLE [Data].[Stock] CHECK CONSTRAINT [CK_TransportInCost]
GO
