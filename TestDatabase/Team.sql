CREATE TABLE [dbo].[Team]
(
	[TeamId] INT NOT NULL PRIMARY KEY, 
    [TeamName] NVARCHAR(255) NOT NULL, 
    [CityName] NCHAR(50) NOT NULL, 
    [Country] NCHAR(50) NOT NULL,
Constraint UQ_TeamName UNIQUE (TeamName)
)
Go
Create NonClustered Index IX_Team_City on dbo.Team([CityName])