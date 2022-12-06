DECLARE @dbname NVARCHAR(MAX); -- database name 
DECLARE @path NVARCHAR(256); -- path for backup files
DECLARE @backupFile NVARCHAR(MAX); -- backup file name
DECLARE @fullDBBackupName NVARCHAR(MAX); -- full backup file name with path
-- Pfad -----------------------------------------------------------------------
SET @path = 'C:\SQL-Kurs\040-ProjektInfo\SQL-Projektbezeichnung-Gromow-Eugen\007-BackUp\'; -- Pfad existiert
PRINT '@path = ' + @path;

---- prüfen, ob @path existiert, wenn nicht - Ordner erstellen ------------------
/* Links to check if Folder or File Exists or not in Sql server query
https://stackoverflow.com/questions/30044760/folder-exists-or-not-in-sql-server-query
https://social.technet.microsoft.com/wiki/contents/articles/40107.xp-fileexist-and-its-alternate.aspx
https://www.mssqltips.com/sqlservertip/1272/file-validation-in-sql-server-with-xpfileexist-stored-procedure/
https://www.mssqltips.com/sqlservertip/1263/accessing-the-windows-file-system-from-sql-server/
*/
DECLARE @t TABLE (FileExists int, FileIsDir int, ParentDirExists int);
INSERT INTO @t EXEC master.dbo.xp_fileexist @path; -- Ordner prüfen
IF ((SELECT FileIsDir FROM @t) = 0) AND ((SELECT FileExists FROM @t) = 0) 
-- Ordner existiert nicht, ist keine Datei
BEGIN
	PRINT 'Pfad existiert nicht';
	-- testen ob die Festplatte existiert
	DECLARE @driveTable TABLE (DRIVE char, MBfrei int);
	INSERT INTO @driveTable EXEC master.sys.xp_fixeddrives; -- nur die Festplatten, ohne USB
	DECLARE @Drive char = substring(@path, 1, 1);
	PRINT 'Festplatte ' + @Drive;
	IF @Drive NOT IN (SELECT DRIVE FROM @driveTable)
		PRINT 'Festplate '  + @Drive + ' existiert nicht'
		-- TODO THROW, Fehlermeldung etc.
	ELSE -- Festplate existiert
	BEGIN 
		---- Ordner erstellen ---------------------------------------------------------------
		/* Links to create subdir from sql with xp_create_subdir procedure
		http://www.kodyaz.com/articles/create-folder-sql-sys-xp_create_subdir-extended-stored-procedure.aspx
		https://stackoverflow.com/questions/36843290/extended-stored-procedure-xp-create-subdir-returns-invalid-parameter-message
		*/
		EXEC master.sys.xp_create_subdir @path;-- Ordner erstellen
		-- TODO: TRY-CATCH (z.B. wir haben keine Berechtigungen, Festplatte existiert nicht etc.)
	END -- Festplate existiert
END -- Ordner existiert nicht, ist keine Datei
ELSE IF (SELECT FileExists FROM @t) = 1 -- Das ist eine Datei 
	PRINT 'Das ist eine Datei';
	--TODO: Fehler, Abbruch	
ELSE
	PRINT 'Pfad existiert';

--- Cursor, Backup ------
DECLARE db_cursor CURSOR FOR 
	SELECT name 
	FROM MASTER.dbo.sysdatabases 
	WHERE name IN ('MiniBank')
	ORDER BY name;
OPEN db_cursor;	
PRINT ' -------- Anfang ------------';
	FETCH NEXT FROM db_cursor INTO @dbname; -- go to record 1
	WHILE @@FETCH_STATUS = 0  -- Die FETCH-Anweisung war erfolgreich..
	BEGIN
		PRINT '---- neue Datenbank ----------'
		PRINT 'DB = ' + @dbname;
		-- Datum- und Zeitstempel 
		SET @backupFile = @dbname + '-' + FirmaUebung.dbo.sf_Zeitstempel()  + '.bak';
		PRINT '@backupFile = ' + @backupFile;
		-- mit Pfad
		SET @fullDBBackupName = @path + @backupFile;
		PRINT '@fullDBBackupName = ' + @fullDBBackupName;
		 -- BACKUP --
		BACKUP DATABASE @dbname TO DISK = @fullDBBackupName; -- DB sichern 
		-------------------
		FETCH NEXT FROM db_cursor INTO @dbname; -- go to next record
	END
PRINT ' -------- Ende ------------'	
CLOSE db_cursor;
DEALLOCATE db_cursor; 	-- CURSOR vernichten aus Arbeitsspeicher