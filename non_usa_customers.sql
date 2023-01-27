non_usa_customers.sql

SELECT CustomerId, FirstName, LastName, Country
FROM Customer WHERE NOT Country='USA';
