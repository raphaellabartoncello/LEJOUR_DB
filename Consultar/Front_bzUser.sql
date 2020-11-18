USE LEJOUR_DB
GO

--Quantidade de cadastros por dia
DECLARE @dtConsult DATE;
SET @dtConsult = @dtConsult
SELECT COUNT(idUserLejour) FROM bzUser WHERE CAST(dtCreated AS date) = @dtConsult
GO

--Quantidade de cadastros por semana
DECLARE @dtConsultStart DATE, @dtConsultEnd DATE;
SET @dtConsultStart = @dtConsultStart, @dtConsultEnd = @dtConsultEnd
SELECT COUNT(idUserLejour) FROM bzUser WHERE CAST(dtCreated AS date) BETWEEN @dtConsultStart AND @dtConsultEnd

--Quantidade de cadastros por mês
DECLARE @mtConsult INT;
SET @mtConsult = @mtConsult
SELECT COUNT(idUserLejour) FROM bzUser WHERE MONTH(CAST(dtCreated AS date)) = @mtConsult

--Quantidade de cadastros por ano
DECLARE @yaConsult INT;
SET @yaConsult = @yaConsult
SELECT COUNT(idUserLejour) FROM bzUser WHERE YEAR(CAST(dtCreated AS date)) = @yaConsult