SELECT Y.Name, SUM(Y.Total) AS GrandTotal
FROM	(SELECT X.Name, (X.UnitPrice * X.Quantity) AS Total
			FROM	(SELECT a.Name, il.UnitPrice , il.Quantity 
					FROM Artist a 
					JOIN Album a2 ON a.ArtistId =a2.ArtistId
					JOIN Track t ON t.AlbumId = a2.AlbumId 
					JOIN InvoiceLine il ON t.TrackId = il.TrackId) AS X) AS Y
GROUP BY Y.Name
ORDER BY GrandTotal DESC
LIMIT 1;
