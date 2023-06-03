SELECT c.CustomerId, c.FirstName ||' '|| c.LastName AS CutomerName, SupportRepId
FROM Customer c, (SELECT EmployeeId
	FROM Employee e
	INNER JOIN Customer c
	ON e.EmployeeId = c.SupportRepId
	WHERE e.Country = 'Canada')
GROUP BY c.CustomerId;
