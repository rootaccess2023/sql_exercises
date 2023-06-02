SELECT FirstName ||' '|| LastName AS FullName, i.InvoiceDate, i.BillingCountry 
FROM Customer AS c
INNER JOIN Invoice AS i
ON c.CustomerId = i.CustomerId;
