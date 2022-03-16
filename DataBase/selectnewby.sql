USE [Assignment_PRJ]
GO

SELECT [idNews]
      ,[title]
      ,[thumbnail]
      ,[shortDescription]
      ,[content]
      ,news.idACC,category.idCategory    
	  ,nameCa
  FROM [dbo].[news],dbo.category,dbo.account
  WHERE news.idCategory = category.idCategory AND news.idACC =account.idACC AND isAdmin = ?


GO
SELECT * FROM dbo.news WHERE idACC = 1

SELECT * FROM dbo.account