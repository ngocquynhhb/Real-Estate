USE [Assignment_PRJ]
GO

INSERT INTO [dbo].[news]
           ([title]
           ,[thumbnail]
           ,[shortDescription]
           ,[content]
           ,[idACC]
           ,[idCategory])
     VALUES
           (?,?,?,?,?,?)
GO


SELECT * FROM dbo.category

SELECT * FROM dbo.news WHERE idACC = 1

SELECT ,nameCa FROM dbo.news
JOIN dbo.category ON news.idCategory = category.idCategory
 