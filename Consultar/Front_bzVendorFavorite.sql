USE LEJOUR_DB
GO

--10 lojas mais favoritadas
SELECT TOP 10 idVendor, COUNT(idVendor) Favorite FROM bzVendorFavorite
GROUP BY idVendor
ORDER BY Favorite DESC

--Quantidade de vezes favoritada
DECLARE @Vendor VARCHAR (10);
SET @Vendor = @Vendor
SELECT idVendor, COUNT(idVendor) Favorite FROM bzVendorFavorite
WHERE idVendor = @Vendor
GROUP BY idVendor
ORDER BY Favorite DESC

