SELECT CustomerId, FirstName, LastName, Country
FROM Customer WHERE NOT Country='USA';

SELECT * FROM Customer
WHERE Country='Brazil';

SELECT * FROM Employee
WHERE Title='Sales Support Agent';

SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
INNER JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId;

SELECT DISTINCT BillingCountry
FROM Invoice;

SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Invoice
INNER JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
