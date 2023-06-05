SELECT *, (SELECT ROUND (ROUND((NoOfSale*100), 2) / SUM(Quantity), 2) FROM invoice_items) AS Percentage
FROM (SELECT t.MediaTypeId AS MediaType, COUNT(*) AS NoOfSale
FROM tracks t
JOIN invoice_items ii ON t.TrackId = ii.TrackId
GROUP BY t.MediaTypeId)
