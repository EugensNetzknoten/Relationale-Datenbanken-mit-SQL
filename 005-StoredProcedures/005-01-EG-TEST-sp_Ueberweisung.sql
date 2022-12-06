USE [MiniBank];
GO

DECLARE	@Erfolg 			BIT, -- geklappt oder nicht
		@Feedback 			VARCHAR(MAX), -- Fehlermeldungen etc.
		@Datum 				DATETIME,
		@IBAN_Gegenseite	VARCHAR(22);

SET @Datum = CURRENT_TIMESTAMP


-- 50001 Konto_ID ist nicht in der Tabelle [Kunden] vorhanden
--EXEC [dbo].[sp_Ueberweisung] 
--  @Datum,
--	-150						--@Betrag: Kunde-A -> Fremde-Bank
--    ,'Kunde-A -> Fremde-Bank'	--@Verwendungszweck
--    ,4711						--@Konto_ID				
--    ,'DE17169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-1'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;


------------------------------------------------------------------------------------------------------------------------------------------------------------------------
---- 50002 [Konto_ID] (Auftraggeber) ist gesperrt!
--EXEC [dbo].[sp_Ueberweisung] 
--  @Datum,
--	-150						--@Betrag: Kunde-A -> Fremde-Bank
--    ,'Kunde-A -> Fremde-Bank'	--@Verwendungszweck
--    ,7						--@Konto_ID				
--    ,'DE17169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-1'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;
------------------------------------------------------------------------------------------------------------------------------------------------------------------------



-- 50003 IBAN inkorrekt
--EXEC [dbo].[sp_Ueberweisung] 
--  @Datum,
--	-150						--@Betrag: Kunde-A -> Fremde-Bank
--    ,'Kunde-A -> Fremde-Bank'	--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,'DE57169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-1'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;



-- 50004 Kunde-A überweist an Kunde-B und der Betrag ist positiv
--EXEC [dbo].[sp_Ueberweisung] 
--  @Datum,
--	250							--@Betrag: Kunde-A -> Kunde-B
--    ,'Kunde-A -> Kunde-B'		--@Verwendungszweck
--    ,2							--@Konto_ID				
--    ,'DE89100600009999999999'	--@IBAN_Gegenseite:  Kunde-B	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-5'					--@Kommentar				
--	--------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;


-- 50005 Kunde-A überweist an Kunde-B und Konto von Kunde-B ist gesperrt
--SET @IBAN_Gegenseite = dbo.sf_erstelle_Kontonummer_von_IBAN((SELECT TOP (1) [Kontonummer] FROM [Konto] WHERE [Gesperrt] = 1))
--EXEC [dbo].[sp_Ueberweisung] 
--  @Datum,
--	-250						--@Betrag: Kunde-A -> Kunde-B
--    ,'Kunde-A -> Kunde-B'		--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,@IBAN_Gegenseite			--@IBAN_Gegenseite:  Kunde-B	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-5'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;




-- 50006 Limit erreicht
--EXEC [dbo].[sp_Ueberweisung] 
--  @Datum,
--	-999999999999999			--@Betrag: Kunde-A -> Fremde-Bank
--    ,'Kunde-A -> Fremde-Bank'	--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,'DE17169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-1'					--@Kommentar				
--	--------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;




-- 50007 Kunde-A überweist an Kunde-B wobei Kunde-A = Kunde-B
--EXEC [dbo].[sp_Ueberweisung] 
--  @Datum,
--	-250						--@Betrag: Kunde-A -> Kunde-B
--    ,'Kunde-A -> Kunde-B'		--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,'DE89100600009999999999'	--@IBAN_Gegenseite:  Kunde-B	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-5'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;




-- Kunde-A -> Fremde-Bank
--EXEC [dbo].[sp_Ueberweisung] 
--	@Datum
--	,-150						--@Betrag: Kunde-A -> Fremde-Bank
--    ,'Kunde-A -> Fremde-Bank'	--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,'DE17169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-1'					--@Kommentar				
--	--------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;




-- Fremde-Bank -> Kunde-A 
--EXEC [dbo].[sp_Ueberweisung]
--	@Datum
--	,170							--@Betrag: Fremde-Bank -> Kunde-A 
--    ,'Fremde-Bank -> Kunde-A'	--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,'DE17169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-2'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;




-- Kunde-A -> Kunde-B
EXEC [dbo].[sp_Ueberweisung] 
	@Datum
	,-250						--@Betrag: Kunde-A -> Kunde-B
    ,'Kunde-A -> Kunde-B'		--@Verwendungszweck
    ,2							--@Konto_ID				
    ,'DE89100600009999999999'	--@IBAN_Gegenseite:  Kunde-B	
    ,'YJDADEZENMW'				--@BIC_Gegenseite			
    ,'Test-3'					--@Kommentar				
	----------
	,@Erfolg OUTPUT
	,@Feedback OUTPUT;



PRINT @Erfolg;
SELECT @Erfolg AS 'Geklappt?', @Feedback AS 'Rückgabemeldung';

