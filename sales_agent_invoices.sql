Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
Sales Agent's full name
Invoice ID

SELECT Employee.FirstName, Employee.LastName, Invoice.InvoiceId
FROM Invoice
INNER JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
INNER JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
