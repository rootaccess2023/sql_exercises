--SELECT FirstName || ' ' || LastName as Employees
--FROM Employee
--WHERE Title LIKE '%Sales%'
--AND Title LIKE '%Agent%';

SELECT FirstName || ' ' || LastName as Employees
FROM Employee
WHERE Title LIKE '%Sales%'
AND Title LIKE '%Agent%';
