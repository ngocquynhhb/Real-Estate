CREATE DATABASE Assignment_PRJ
USE Assignment_PRJ

CREATE TABLE account
(
	idACC INT IDENTITY(1,1) PRIMARY KEY,
	[user] NVARCHAR(50),
	pass NVARCHAR(50),
)

CREATE TABLE category
(
	idCategory INT IDENTITY(1,1) PRIMARY KEY,
	nameCa NVARCHAR(255)
)


CREATE TABLE news 
(
	idNews INT IDENTITY(1,1) PRIMARY KEY,
	title NVARCHAR(255),
	thumbnail NVARCHAR(255),
	shortDescription NVARCHAR(MAX),
	content NVARCHAR(MAX),
	idCategory INT FOREIGN KEY REFERENCES category(idCategory)
)

CREATE TABLE comment
(
	idComment INT IDENTITY(1,1) PRIMARY KEY,
	content NVARCHAR(MAX),    --cm o bai nao
	createdBy NVARCHAR(255),
	idACC INT FOREIGN KEY REFERENCES dbo.account(idACC),
	idNews INT FOREIGN KEY REFERENCES dbo.news(idNews)
)

SELECT * FROM dbo.account 

DROP TABLE dbo.category
DROP TABLE dbo.news
DROP TABLE dbo.account 
DROP TABLE dbo.comment