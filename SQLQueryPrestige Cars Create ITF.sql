Use PrestigeCars
GO

CREATE or Alter function DataTransfer.Sales2015F
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2015
Where MakeName = @MakeName;
Go
--==================================================
CREATE or Alter function DataTransfer.Sales2016F
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2016
Where MakeName = @MakeName;
Go
--==================================================
CREATE or Alter function DataTransfer.Sales2017F
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2017
Where MakeName = @MakeName;
Go
--=====================================================
CREATE or Alter function DataTransfer.Sales2018F
(@MakeName As nvarchar ) Returns Table As
Return
Select*
From DataTransfer.Sales2018
Where MakeName = @MakeName;
Go
--=======================================================

























