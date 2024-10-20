USE SCOMGER
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USP_DimSucursal_SEL]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[USP_DimSucursal_SEL]
GO
CREATE PROCEDURE USP_DimSucursal_SEL AS
BEGIN

  SET NOCOUNT OFF

	SELECT [IdSucursal]
		  ,[Descripcion]
	  FROM [SCOMGER].[dbo].[DimSucursal] WITH (NOLOCK) ;
  
END
GO