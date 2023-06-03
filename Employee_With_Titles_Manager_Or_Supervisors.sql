SELECT ManagerOrSupervisors
FROM (
	SELECT FirstName ||' '|| LastName AS ManagerOrSupervisors
	FROM Employee
	WHERE Title LIKE '%Manager%'
	OR Title LIKE '%Supervisor%'
	);
