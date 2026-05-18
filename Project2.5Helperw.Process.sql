Use PrestigeCars
Go;

Alter table [Data].[Country]
--Drop column if Exists CountryFlag;
--Drop column if Exists FlagFileName;
--Drop column if Exists FlagFileType;
Add Constraint FK_SalesRegionID Foreign Key (SalesRegionID)
	References [Data].[SalesRegion](SalesRegionId);

---add SalesRegionID int null;

Create Schema [Process];
DROP TABLE IF EXISTS Process.WorkflowSteps;
CREATE TABLE [Process].[WorkflowSteps](
 WorkFlowStepKey INT NOT NULL
		Constraint PK_Process primary key,
 WorkFlowStepDescription NVARCHAR(100) NOT NULL,
 WorkFlowStepTableRowCount INT NULL DEFAULT (0),
 StartingDateTime DATETIME2(7) NULL DEFAULT (SYSDATETIME()) ,
 EndingDateTime DATETIME2(7) NULL DEFAULT (SYSDATETIME()) ,
 ClassTime CHAR (5) NULL DEFAULT ('09:15'),
 UserAuthorizationKey INT NOT NULL 
);

