SELECT c.CustomerId, c.FirstName || ' ' || c.LastName AS FullName,
		a2.Name AS ArtistName, SUM(i1.UnitPrice) AS Price
FROM customers c 
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items i1 ON i.InvoiceId = i1.InvoiceId 
JOIN tracks t ON t.TrackId = i1.TrackId 
JOIN albums a ON a.AlbumId = t.AlbumId 
JOIN artists a2 ON a.ArtistId = a2.ArtistId
WHERE ArtistName = 'Iron Maiden'
GROUP BY 1, 2, 3
ORDER BY 4 DESC 
LIMIT 5;
