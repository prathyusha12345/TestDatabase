----/*
---- Pre-Deployment Script Template							
------------------------------------------------------------------------------------------
---- This file contains SQL statements that will be executed before the build script.	
---- Use SQLCMD syntax to include a file in the pre-deployment script.			
---- Example:      :r .\myfile.sql								
---- Use SQLCMD syntax to reference a variable in the pre-deployment script.		
---- Example:      :setvar TableName MyTable							
----               SELECT * FROM [$(TableName)]					
------------------------------------------------------------------------------------------
----*/

--PRINT N'Creating temperaory table PersonTemp'

--CREATE TABLE [dbo].[PersonTemp]
--(

--	[Id] INT NOT NULL PRIMARY KEY, 
--    [Name] NCHAR(255) NOT NULL, 
--    [Address] NVARCHAR(MAX)  NULL,
--    [DepartmentDetails] NVARCHAR(MAX) NOT NULL
--)

--PRINT N'Copy data from Person to PersonTemp table'
--GO
--INSERT INTO [dbo].[PersonTemp] (ID,Name,Address,DepartmentDetails)
--select p.Id,p.Name,p.Address,p.DepartmentDetails
--from Person p
--Go

--PRINT N'Drop Foreign keys and any constraints on Person table'
--ALTER TABLE Dbo.Person DROP CONSTRAINT  PK__Person__3214EC07A6A87079
--DROP TABLE Dbo.Person