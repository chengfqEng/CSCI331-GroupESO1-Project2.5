USE PrestigeCars
go

--This creates constraint on Data.Country Table
AlTER TABLE [Data].[Country]
--Alter Column CountryISO2 nchar(2) null;
--Alter Column CountryISO3 nchar(3) null;
--Alter Column CountryName nvarchar(150) null;
Alter Column SalesRegion nvarchar(20) null;
----------------------------------------------------------------
--This creates contraint on Data.Customer Table
ALTER TABlE [Data].[Customer]
--ADD CONSTRAINT PK_Customer PRIMARY KEY (CustomerID);
--ALTER COLUMN CustomerName nvarchar(150) not null;
--Alter Column Country nchar(2) not null;
--Alter Column Town nvarchar(50) not null;
--Alter Column Address1 nvarchar(50) not null;
Alter Column Address2 nvarchar(50) not null;
----------------------------------------------------------
--This changes the Data.Make Table
Alter Table [Data].[Make]
--ADD Constraint Pk_MakeID PRIMARY KEY (MakeID);
Alter column MakeName nvarchar(100) not null;
---------------------------------------------------------------
--THIS changes the Data model table
Alter Table [Data].[Model]
--ADD Constraint PK_ModelID Primary Key(ModelID);
--ADD Constraint FK_MakeID Foreign Key (MakeID)
--	References [Data].[Model](ModelID); 
--Alter Column MakeID smallint not null;
--ALter Column ModelName nvarchar(150) not null;
--ALter Column YearFirstProduced int not null;
Add Constraint UNQ_ModelName UNIQUE(ModelName);
----------------------------------------------------------------------------------
--THIS one changes Data Sales
Alter Table [Data].[Sales]
--Alter Column CustomerID nvarchar not null;
--Add Constraint PK_SalesID Primary Key(SalesID);
--Add constraint FK_CustomerID Foreign Key(CustomerID)
	--References [Data].[Customer](CustomerID);

--Alter Column InvoiceNumber char(8) not null;
--Alter Column TotalSalePrice numeric(18,2) not null;
Alter Column SaleDate datetime not null;
---------------------------------------------------------------
--ALter Table [Data].[SalesDetails]
--Alter Column SalesID int not null;
--ALter Column LineItemNumber tinyint not null;
--Alter Column StockID nvarchar(50) not null;
--Add Constraint PK_SalesDetailsID Primary key(SalesDetailsID);
--Add constraint FK_SalesID Foreign Key (SalesID)
	--references [Data].[Sales](SalesID);
---------------------------------------------------------------------
Alter Table [Data].[Stock]
--Alter Column StockCode nvarchar(50) not null;
Add Constraint FK_ModelID Foreign Key(ModelID)
	references [Data].[Model](ModelID);
------------------------------------------------------------------------------
--This change the Output.StockPrices
Alter Table[Output].[StockPrices]
--alter Column MakeName nvarchar(100) not null;
--Alter Column ModelName nvarchar(150) not null;
Add constraint FK_StockPricesModelName Foreign Key(ModelName)
	references [Data].[Model] (ModelName);
--=============================================
ALter table [Reference].[Budget]
--Add constraint PK_BudgetKey Primary Key(BudgetKey);
--Alter column [Year] int not null;
Alter Column [Month] tinyint not null;
--=============================================
Alter table [Reference].[Forex]
--Alter Column ExchangeDate date not null;
--ALter Column ISOCurrency char(3) not null;
Alter Column ExchangeRate money not null;
--==================================================









































