USE LEJOUR_DB
GO

--Ticket médio dos casamentos (Amount)
SELECT AVG(amount) FROM slInvoice

--Comissao média por casamento realizado
SELECT AVG(amount-amountVendor) FROM slInvoice
WHERE accepted = 'TRUE'

--Comissao média por casamento "perdida" recusada
SELECT AVG(amount-amountVendor) FROM slInvoice
WHERE accepted = 'FALSE'

--Fornecedor x Comissao Lejour - Amount - Vendor_Amount
DECLARE @idVendor VARCHAR (10), @accepted NVARCHAR (5);
SET @idVendor = @idVendor, @accepted = @accepted
SELECT idVendor,SUM(amount-amountVendor) Comissao
FROM slInvoice
WHERE idVendor = @idVendor AND accepted = @accepted
GROUP BY idVendor
ORDER BY Comissao DESC

--Categoria x Comissao
DECLARE @style VARCHAR (10), @accepted NVARCHAR (5);
SET @style = @style, @accepted = @accepted
SELECT style,SUM(amount-amountVendor) Comissao
FROM slInvoice I
INNER JOIN bzWedding W ON I.idWedding = W.idWedding
WHERE style = @style AND accepted = @accepted
GROUP BY style
ORDER BY Comissao DESC

--Casamento x Comissao
DECLARE @idWedding VARCHAR (10), @accepted NVARCHAR (5);
SET @idWedding = @idWedding, @accepted = @accepted
SELECT idWedding,SUM(amount-amountVendor) Comissao
FROM slInvoice 
WHERE idWedding = @idWedding AND accepted = @accepted
GROUP BY idWedding
ORDER BY Comissao DESC

--ID Usuário x Comissao
DECLARE @idUser VARCHAR (10), @accepted NVARCHAR (5);
SET @idUser = @idUser, @accepted = @accepted
SELECT idUser,SUM(amount-amountVendor) Comissao
FROM slInvoice I
INNER JOIN bzWedding W ON I.idWedding = W.idWedding
WHERE idUser = @idUser AND accepted = @accepted
GROUP BY idUser
ORDER BY Comissao DESC

--Fornecedor x Orçamento recusado
DECLARE @idVendor VARCHAR (10);
SET @idVendor = @idVendor
SELECT idVendor,COUNT(idInvoiceLejour) OrcamentoRecusado
FROM slInvoice I
WHERE accepted = 'FALSE' AND idVendor = @idVendor
GROUP BY idVendor
ORDER BY OrcamentoRecusado DESC

--Fornecedor x Comissao perdida
DECLARE @idVendor VARCHAR (10), @accepted NVARCHAR (5);
SET @idVendor = @idVendor, @accepted = @accepted
SELECT idVendor,SUM(amount-amountVendor) Comissao
FROM slInvoice I
WHERE idVendor = @idVendor AND accepted = 'FALSE'
GROUP BY idVendor
ORDER BY Comissao DESC
SELECT * FROM slInvoice
SELECT * FROM bzWedding

--Comissao perdida
SELECT SUM(amount-amountVendor) ComissaoPerdida
FROM slInvoice I
WHERE accepted = 'FALSE'
ORDER BY ComissaoPerdida DESC

--Fornecedor x Amount
DECLARE @idVendor VARCHAR (10);
SET @idVendor = @idVendor
SELECT idVendor,SUM(amount) VendasBrutas
FROM slInvoice I
WHERE accepted = 'TRUE' AND idVendor = @idVendor
GROUP BY idVendor
ORDER BY VendasBrutas DESC

--Fornecedor x AmountVendor
DECLARE @idVendor VARCHAR (10);
SET @idVendor = @idVendor
SELECT idVendor,SUM(amountVendor) VendasLiquidas
FROM slInvoice I
WHERE accepted = 'TRUE' AND idVendor = @idVendor
GROUP BY idVendor
ORDER BY VendasLiquidas DESC

--Fornecedor x Qtdade de casamentos realizados
DECLARE @idVendor VARCHAR (10);
SET @idVendor = @idVendor
SELECT idVendor,COUNT(idWedding) QtdadeCasamentos
FROM slInvoice I
WHERE accepted = 'TRUE' AND idVendor = @idVendor
GROUP BY idVendor
ORDER BY QtdadeCasamentos DESC