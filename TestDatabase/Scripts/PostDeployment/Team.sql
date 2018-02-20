--Insert into Team table
SET IDENTITY_INSERT [Team] ON 
GO

Insert into Team (TeamId,TeamName,[CityName],Country)
select 1,N'Rocks',N'Hyderabad',N'India'
where Not Exists (select 1 from Dbo.Team where TeamId=1)
GO

Insert into Team (TeamID,TeamName,[CityName],Country)
Select 2,N'Heros',N'NewJersey',N'U.S'
where Not Exists (select 1 from Dbo.Team where TeamId=2)
GO

Insert into Team (TeamID,TeamName,[CityName],Country)
Select 3,N'Achievers',N'London',N'U.K'
where Not Exists (select 1 from Dbo.Team where TeamId=3)
GO

SET IDENTITY_INSERT [Team] OFF
GO