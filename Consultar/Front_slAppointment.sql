USE LEJOUR_DB
GO

--Vendor x agendamentos por dia
DECLARE @idVendor VARCHAR (10), @dtConsult DATE;
SET @idVendor = @idVendor, @dtConsult = @dtConsult
SELECT idVendor, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE idVendor = @idVendor AND CAST(dtCreated AS date) = @dtConsult
GROUP BY idVendor
ORDER BY Agendamentos DESC

--Vendor x agendamentos por semana
DECLARE @idVendor VARCHAR (10), @dtConsultStart DATE, @dtConsultEnd DATE;
SET @idVendor = @idVendor,@dtConsultStart = @dtConsultStart, @dtConsultEnd = @dtConsultEnd
SELECT idVendor, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE idVendor = @idVendor AND CAST(dtCreated AS date) BETWEEN @dtConsultStart AND @dtConsultEnd
GROUP BY idVendor
ORDER BY Agendamentos DESC

--Vendor x agendamentos por mês
DECLARE @idVendor VARCHAR (10), @mtConsult INT;
SET @idVendor = @idVendor,@mtConsult = @mtConsult
SELECT idVendor, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE idVendor = @idVendor AND MONTH(CAST(dtCreated AS date)) = @mtConsult
GROUP BY idVendor
ORDER BY Agendamentos DESC

--Vendor_Category x agendamentos por dia
DECLARE @categoryVendor VARCHAR (100), @dtConsult DATE;
SET @categoryVendor = @categoryVendor, @dtConsult = @dtConsult
SELECT categoryVendor, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE categoryVendor = @categoryVendor AND CAST(dtCreated AS date) = @dtConsult
GROUP BY categoryVendor
ORDER BY Agendamentos DESC

--Vendor_Category x agendamentos por semana
DECLARE @categoryVendor VARCHAR (10), @dtConsultStart DATE, @dtConsultEnd DATE;
SET @categoryVendor = @categoryVendor,@dtConsultStart = @dtConsultStart, @dtConsultEnd = @dtConsultEnd
SELECT categoryVendor, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE categoryVendor = @categoryVendor AND CAST(dtCreated AS date) BETWEEN @dtConsultStart AND @dtConsultEnd
GROUP BY categoryVendor
ORDER BY Agendamentos DESC

--Vendor_Category x agendamentos por mês
DECLARE @categoryVendor VARCHAR (10), @mtConsult INT;
SET @categoryVendor = @categoryVendor,@mtConsult = @mtConsult
SELECT categoryVendor, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE categoryVendor = @categoryVendor AND MONTH(CAST(dtCreated AS date)) = @mtConsult
GROUP BY categoryVendor
ORDER BY Agendamentos DESC

--Wedding_ID x agendamentos por dia
DECLARE @idWedding VARCHAR (10), @dtConsult DATE;
SET @idWedding = @idWedding, @dtConsult = @dtConsult
SELECT idWedding, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE idWedding = @idWedding AND CAST(dtCreated AS date) = @dtConsult
GROUP BY idWedding
ORDER BY Agendamentos DESC

--Vendor_Category x agendamentos por semana
DECLARE @idWedding VARCHAR (10), @dtConsultStart DATE, @dtConsultEnd DATE;
SET @idWedding = @idWedding,@dtConsultStart = @dtConsultStart, @dtConsultEnd = @dtConsultEnd
SELECT idWedding, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE idWedding = @idWedding AND CAST(dtCreated AS date) BETWEEN @dtConsultStart AND @dtConsultEnd
GROUP BY idWedding
ORDER BY Agendamentos DESC

--Vendor_Category x agendamentos por mês
DECLARE @idWedding VARCHAR (10), @mtConsult INT;
SET @idWedding = @idWedding,@mtConsult = @mtConsult
SELECT idWedding, COUNT(idAppointmentLejour) Agendamentos FROM slAppointment
WHERE idWedding = @idWedding AND MONTH(CAST(dtCreated AS date)) = @mtConsult
GROUP BY idWedding
ORDER BY Agendamentos DESC