SELECT AVG(Total) AS AverageSize
FROM	(SELECT AlbumId, SUM(Bytes) AS Total
		FROM Track t
		GROUP BY AlbumId);
