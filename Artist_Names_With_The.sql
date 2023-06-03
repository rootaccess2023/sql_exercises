SELECT NamesWithThe.*
FROM (SELECT Name FROM Artist a WHERE Name LIKE '%The%') AS NamesWithThe;
