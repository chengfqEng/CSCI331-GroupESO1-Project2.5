Use PrestigeCars
Go

CREATE or Alter VIEW [Output].[StockPricesV]
AS
select *
FROM [Output].[StockPrices];
Go
--==============================================
CREATE or Alter VIEW [Reference].[BudgetV]
AS
select *
FROM [Reference].[Budget];
Go
--===============================================
Create or Alter View [Reference].[ForexV]
As
Select *
FROM [Reference].[Forex]
Go
--================================================
Create or Alter View [Reference].[MarketingCategoriesV]
As
Select *
FROM [Reference].[MarketingCategories]
Go
--=================================================
Create or Alter View [Reference].[MarketingInformationV]
As
Select *
FROM [Reference].[MarketingInformation]
Go
--==============================================
Create or Alter View [Reference].[SalesBudgetsV]
As
Select *
FROM [Reference].[SalesBudgets]
Go
--================================================
Create or Alter View [Reference].[SalesCategoryV]
As
Select *
FROM [Reference].[SalesCategory]
Go
--===============================================
Create or Alter View [Reference].[StaffV]
As
Select *
FROM [Reference].[Staff]
Go
--================================================
Create or Alter View [Reference].[StaffHierarchyV]
As
Select *
FROM [Reference].[StaffHierarchy]
Go
--================================================
Create or Alter View [Reference].[YearlySalesV]
As
Select *
FROM [Reference].[YearlySales]
Go
--================================================
Create or Alter View [SourceData].[SalesInPoundsV]
As
Select *
FROM [SourceData].[SalesInPounds]
Go
--=================================================
Create or Alter View [SourceData].[SalesTextV]
As
Select *
FROM [SourceData].[SalesText]
Go











































