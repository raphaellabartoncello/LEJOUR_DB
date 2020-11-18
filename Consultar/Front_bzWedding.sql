USE LEJOUR_DB
GO

--Casamento por estilo
DECLARE @style VARCHAR(100)
SET @style = @style
SELECT COUNT(idWeddingLejour) FROM bzWedding WHERE style = @style


--Quantidade de casamentos por período
DECLARE @dtConsultStart DATE, @dtConsultEnd DATE;
SET @dtConsultStart = @dtConsultStart, @dtConsultEnd = @dtConsultEnd
SELECT COUNT(idUserLejour) FROM bzUser WHERE CAST(dtCreated AS date) BETWEEN @dtConsultStart AND @dtConsultEnd

--Quantidade de casamentos sem data
DECLARE @dtConsult DATE;
SET @dtConsult = @dtConsult
SELECT COUNT(idWedding) FROM bzWedding WHERE CAST(dtWedding AS date) = ''

--Quantidade de convidados por casamento
DECLARE @qtdConsult VARCHAR (10);
SET @qtdConsult = @qtdConsult
SELECT COUNT(idWedding) FROM bzWedding WHERE numberGuests = @qtdConsult

--Casamento por orçamento
DECLARE @bugetConsult VARCHAR (30);
SET @bugetConsult = @bugetConsult
SELECT COUNT(idWedding) FROM bzWedding WHERE budget = @qtdConsult

--Casamento por orçamento NULL ou 0
DECLARE @bugetConsult VARCHAR (30);
SET @bugetConsult = @bugetConsult
SELECT COUNT(idWedding) FROM bzWedding WHERE budget = '' OR budget = '0'