SELECT *, (SELECT ROUND (ROUND((UnitSold*100), 2) / SUM(Quantity), 2) FROM invoice_items) Percentage 
FROM (SELECT g.Name AS Genre, COUNT(*) AS UnitSold
FROM genres g
JOIN tracks t ON g.GenreId = t.GenreId 
JOIN invoice_items ii ON t.TrackId = ii.TrackId
GROUP BY g.Name)
ORDER BY UnitSold DESC
LIMIT 10
