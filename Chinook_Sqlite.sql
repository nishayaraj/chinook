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

SELECT COUNT(InvoiceLine.InvoiceLineId)
From InvoiceLine
WHERE InvoiceLine.InvoiceId = 37;

SELECT Invoice.Total, Customer.FirstName || " " || Customer.LastName as "Customer Name", Customer.Country, Employee.FirstName || " " ||Employee.LastName as "Employee Name"
FROM Invoice, Customer, Employee
WHERE Invoice.CustomerId = Customer.CustomerId
AND Customer.SupportRepId = Employee.EmployeeId

SELECT InvoiceLine.InvoiceLineId, Track.Name
FROM InvoiceLine, Track
WHERE InvoiceLine.TrackId = Track.TrackId;
