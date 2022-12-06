USE [MiniBank];
GO

DECLARE	@Erfolg bit; -- geklappt oder nicht
DECLARE	@Feedback VARCHAR(MAX); -- Fehlermeldungen etc.

/*
ACHTUNG.
Zuerst den Script "005-01-EG-CREATE-sp_Ueberweisung.sql" ausführen
*/







-- Kunde-A -> Fremde-Bank
--EXEC [dbo].[sp_Ueberweisung] 
--	-150						--@Betrag: Kunde-A -> Fremde-Bank
--    ,'Kunde-A -> Fremde-Bank'	--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,'DE17169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-1'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;




-- Fremde-Bank -> Kunde-A 
--EXEC [dbo].[sp_Ueberweisung] 
--	170							--@Betrag: Fremde-Bank -> Kunde-A 
--    ,'Fremde-Bank -> Kunde-A'	--@Verwendungszweck
--    ,1							--@Konto_ID				
--    ,'DE17169112197990114341'	--@IBAN_Gegenseite:  Fremde-Bank	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-2'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;


-- Kunde-A -> Kunde-B
--EXEC [dbo].[sp_Ueberweisung] 
--	-250						--@Betrag: Kunde-A -> Kunde-B
--    ,'Kunde-A -> Kunde-B'		--@Verwendungszweck
--    ,2							--@Konto_ID				
--    ,'DE89100600009999999999'	--@IBAN_Gegenseite:  Kunde-B	
--    ,'YJDADEZENMW'				--@BIC_Gegenseite			
--    ,'Test-3'					--@Kommentar				
--	----------
--	,@Erfolg OUTPUT
--	,@Feedback OUTPUT;

SELECT @Erfolg AS 'Geklappt?', @Feedback AS 'Rückgabemeldung';

