SELECT c.FirstName ||' '|| c.LastName AS FullName, g.Name, SUM(ii.UnitPrice * ii.Quantity) AS TotalPrice
FROM customers c 
JOIN invoices i ON c.CustomerId = i.CustomerId 
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId 
JOIN tracks t ON ii.TrackId = t.TrackId 
JOIN genres g ON t.GenreId = g.GenreId 
WHERE c.CustomerId = 13
