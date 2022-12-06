USE [MiniBank]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:
-- Create date:
-- Description:	
-- =============================================
CREATE OR ALTER TRIGGER  [tr_UeberweisungINSERT]
   ON [Ueberweisung]
   AFTER INSERT
AS 
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @Konto_ID AS INT;

	SET @Konto_ID = (SELECT [Konto_ID] FROM INSERTED)

    -- Insert statements for trigger here
	UPDATE [dbo].[Konto]
		SET [KontoStand] = (SELECT KontoStandNeu FROM INSERTED)
	WHERE [Konto_ID] =  @Konto_ID

END
GO
