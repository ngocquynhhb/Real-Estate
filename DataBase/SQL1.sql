CREATE DATABASE Assignment_PRJ
USE Assignment_PRJ

CREATE TABLE account
(
	idACC INT IDENTITY(1,1) PRIMARY KEY,
	[user] NVARCHAR(50),
	pass NVARCHAR(50)
)
ALTER TABLE dbo.account
  ADD isAdmin BIT,
	isUser BIT


CREATE TABLE comment
(
	idComment BIGINT PRIMARY KEY,
	content TEXT,    --cm o bai nao
	createdBy VARCHAR(255),
	idACC INT FOREIGN KEY REFERENCES dbo.account(idACC)
)
ALTER TABLE dbo.comment
ADD CONSTRAINT fk_idNews
 FOREIGN KEY (idNews)
 REFERENCES news (idNews);

CREATE TABLE news 
(
	idNews BIGINT PRIMARY KEY,
	title VARCHAR(255),
	thumbnail VARCHAR(255),
	shortDescription TEXT,
	content TEXT,
	idCategory BIGINT FOREIGN KEY REFERENCES category(idCategory)
)

CREATE TABLE category
(
	idCategory BIGINT PRIMARY KEY,
	nameCa NVARCHAR(255)
)