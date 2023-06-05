SELECT a.Name, COUNT(t.Name) AS NoOfTracks
FROM artists a
JOIN albums a2 ON a.ArtistId = a2.ArtistId 
JOIN tracks t ON a2.AlbumId = t.AlbumId 
JOIN genres g ON t.GenreId = g.GenreId 
WHERE g.Name = 'Rock'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1
