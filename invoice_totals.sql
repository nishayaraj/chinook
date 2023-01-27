7. 

Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
Invoice Total
Customer Name
Customer Country
Sale Agent full name

SELECT Invoice.Total, Customer.FirstName || " " || Customer.LastName as "Customer Name", Customer.Country, Employee.FirstName || " " ||Employee.LastName as "Employee Name"
FROM Invoice, Customer, Employee
WHERE Invoice.CustomerId = Customer.CustomerId
AND Customer.SupportRepId = Employee.EmployeeId
