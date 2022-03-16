USE [Assignment_PRJ]
GO

SELECT * FROM dbo.news

UPDATE [dbo].[news]
   SET [title] = 'abc'
      ,[thumbnail] = 'abc'
      ,[shortDescription] ='abc'
      ,[content] = 'abc'
      ,[idACC] =1
      ,[idCategory] = 2
 WHERE idNews = 14
GO


