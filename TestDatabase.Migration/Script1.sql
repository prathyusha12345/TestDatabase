DECLARE @currentDBVersion BIGINT = NULL;

--Get the current version of database
select TOP 1 @currentDBVersion = Id  from DatabaseVersion order by DatabaseVersionId desc

--Jump to incremental migration based on the version number
IF @currentDBVersion = 1 GOTO version11
Else if @currentDBVersion =2 GOTO version12
ELSE
RETURN