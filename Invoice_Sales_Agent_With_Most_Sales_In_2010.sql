SELECT e.FirstName ||' '|| e.LastName AS SalesRep, SUM(i.Total) AS TotalSales
FROM Employee e, Customer c, Invoice i 
WHERE e.EmployeeId == c.SupportRepId
AND c.CustomerId == i.CustomerId
AND i.InvoiceDate LIKE '2010%'
GROUP BY SalesRep
--GROUP BY e.FirstName ||' '|| e.LastName
ORDER BY SUM(i.Total) DESC
LIMIT 1;
