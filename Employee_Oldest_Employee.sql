SELECT e.FirstName ||' '|| e.LastName AS OldestEmployees, BirthDate
FROM Employee e
ORDER BY BirthDate ASC
LIMIT 10;
