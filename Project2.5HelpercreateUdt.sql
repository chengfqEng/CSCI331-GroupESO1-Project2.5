Use PrestigeCars
Go
--==============================================
CREATE SCHEMA [Udt]
GO
--==Data Country---------------------------------
Create Type [Udt].CountryNameT from [nvarchar](150);
Create Type [Udt].CountryISO2T from [nchar](2);
Create Type [Udt].CountryISO3T from [nchar](3);
Create Type [Udt].SalesRegionT from [nvarchar](20);
-----------------------------------------------------

--== Data Customer---------------------------------------
Create Type [Udt].CustomerNameT from [nvarchar](150);
--------------------------------------------------------------------

--==Data Make
--Create Type [Udt].MakeNameT from [nvarchar](100);
Create Type [Udt].MakeCountry from [char](3);
------------------------------------------------
--==Data Model
Create Type [Udt].ModelNameT from [nvarchar](150);
Create Type [Udt].MakeID from [smallint];









--====================================================
ALter Table [Data].[Country]
 --ALter Column CountryName [Udt].CountryNameT
--ALter Column CountryISO2 [Udt].CountryISO2T
--ALter Column CountryISO3 [Udt].CountryISO3T
ALter Column SalesRegion [Udt].SalesRegionT;
--=====================================================
Alter Table [Data].[Customer]
Alter Column CustomerName [Udt].CustomerNameT;
--===================================================================
ALter Table [Data].[Make]
--Alter Column MakeName [Udt].MakeNameT;
--Alter Column MakeID [Udt].MakeID;
Alter Column MakeCountry [Udt].MakeCountry;
--===================================================
Alter Table [Data].[Model]
--Alter Column ModelName [Udt].ModelNameT;
Alter Column MakeID [Udt].MakeID;


























































