CREATE TABLE [dbo].[Person]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NCHAR(255) NOT NULL, 
    [Address] NVARCHAR(MAX) NULL, 
    [DepartmentDetails] NVARCHAR(MAX) NULL
)
