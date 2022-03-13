USE [Assignment_PRJ]
GO

INSERT INTO [dbo].[comment]
           ([content]
           ,[createdBy]
           ,[idACC]
           ,[idNews])
     VALUES
           ('abcccc','sfsa','1','1')
GO

SELECT n.*, c.content AS commentcontent, a.[user] AS usercomment FROM dbo.news AS n 
JOIN dbo.comment AS c ON n.idNews = c.idNews
JOIN dbo.account AS a ON a.idACC = c.idACC

SELECT idNews,title,thumbnail,shortDescription FROM  ((dbo.news
INNER JOIN dbo.comment ON comment.idNews = news.idNews)
INNER JOIN dbo.account ON 