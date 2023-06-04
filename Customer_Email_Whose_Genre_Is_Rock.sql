SELECT c.Email, c.FirstName, c.LastName, g.Name 
FROM customers c
JOIN invoices i ON c.CustomerId = i.CustomerId
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId 
JOIN tracks t ON ii.TrackId = t.TrackId 
JOIN genres g ON t.GenreId  = g.GenreId 
WHERE g.Name = 'Rock'
GROUP BY 1;
