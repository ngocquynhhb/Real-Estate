USE [Assignment_PRJ]
GO

INSERT INTO [dbo].[category]([idCategory],[nameCa]) VALUES(1,N'Tin Tức Nổi Bật')
INSERT INTO [dbo].[category]([idCategory],[nameCa]) VALUES(2,N'Tin Tức Mới Nhất')
INSERT INTO [dbo].[category]([idCategory],[nameCa]) VALUES(3,N'Tin Tức - Hoà Lạc')
INSERT INTO [dbo].[category]([idCategory],[nameCa]) VALUES(4,N'Tin Tức Kiến Trúc - Xây Dựng')
INSERT INTO [dbo].[category]([idCategory],[nameCa]) VALUES(5,N'Tin Tức Bất Động Sản')
GO

SELECT * FROM dbo.category
