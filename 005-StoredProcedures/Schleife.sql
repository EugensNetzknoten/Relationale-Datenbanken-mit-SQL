--DECLARE @Table TABLE (Col1 INT, Col2 DATETIME)
DECLARE @StartDT					DATETIME,
	    @Month_Numeric 				NUMERIC(2,0),
		@Month_Char 				CHAR(2);

SET @StartDT =  '20090101'

WHILE @StartDT < '20111201'
BEGIN
	SET @Month_Char = FORMAT(@StartDT, 'MM')
	SET @Month_Numeric = @Month_Char
	SET @Month_Numeric = @Month_Numeric % 12
	SET @Month_Char = @Month_Numeric
	PRINT CONVERT(VARCHAR,@StartDT) + '---' + 
		convert(varchar,DATEADD(MONTH,1,@StartDT)) + '-----' + 
		FORMAT(@StartDT, 'dd.MM.yyyy') + '-----' +
		FORMAT(@StartDT, 'MM') + '-----' +
		@Month_Char






	--SELECT COUNT(*) FROM @Table WHERE Col2 >= @StartDT AND Col2 < DATEADD(MONTH,1,@StartDT)
	SET @StartDT = DATEADD(MONTH,1,@StartDT)
END