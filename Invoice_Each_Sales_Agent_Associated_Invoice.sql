SELECT DISTINCT e.Title, FirstName || ' ' || LastName AS FullName, i.*
FROM Employee AS e
INNER JOIN Invoice AS i
ON e.EmployeeId = i.CustomerId
WHERE e.Title LIKE '%sales%' 
AND e.Title LIKE '%agent%';
