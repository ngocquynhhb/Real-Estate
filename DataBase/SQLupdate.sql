CREATE DATABASE Assignment_PRJ
USE Assignment_PRJ

CREATE TABLE account
(
	idACC INT IDENTITY(1,1) PRIMARY KEY,
	[user] NVARCHAR(50),
	pass NVARCHAR(50),
	isAdmin INT,
	isUser INT
)

CREATE TABLE category
(
	idCategory INT PRIMARY KEY,
	nameCa NVARCHAR(255)
)


CREATE TABLE news 
(
	idNews INT PRIMARY KEY,
	title VARCHAR(255),
	thumbnail VARCHAR(255),
	shortDescription TEXT,
	content TEXT,
	idCategory INT FOREIGN KEY REFERENCES category(idCategory)
)

CREATE TABLE comment
(
	idComment INT PRIMARY KEY,
	content TEXT,    --cm o bai nao
	createdBy VARCHAR(255),
	idACC INT FOREIGN KEY REFERENCES dbo.account(idACC),
	idNews INT FOREIGN KEY REFERENCES dbo.news(idNews)
)