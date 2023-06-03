SELECT BillingCountry, (SUM(Total)/(SELECT SUM(Total) AS TOTAL
FROM Invoice))*100 AS Percentage
FROM Invoice i
GROUP BY BillingCountry;
