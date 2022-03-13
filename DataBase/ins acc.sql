USE [Assignment_PRJ]
GO

INSERT INTO [dbo].[account]
           ([user]
           ,[pass]
           ,[isAdmin]
           ,[isUser])
     VALUES
           ('admin','admin',1,0)
		   INSERT INTO [dbo].[account]
           ([user]
           ,[pass]
           ,[isAdmin]
           ,[isUser])
     VALUES
           ('mod','mod',1,0)
		   INSERT INTO [dbo].[account]
           ([user]
           ,[pass]
           ,[isAdmin]
           ,[isUser])
     VALUES
           ('quynh','quynh',0,1)
		   INSERT INTO [dbo].[account]
           ([user]
           ,[pass]
           ,[isAdmin]
           ,[isUser])
     VALUES
           ('nam','nam',0,1)

GO
SELECT * FROM dbo.account 
WHERE [user] = 'admin'
AND pass = 'admin'


SELECT * FROM dbo.account
WHERE [user] = 'admin'

SELECT * FROM dbo.category
 WHERE idCategory = 2

 SELECT * FROM dbo.news
 WHERE 
