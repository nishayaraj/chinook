Provide a query that shows total sales made by each sales agent. The resultant table should include:
Employee full name
Total sales for each employee (all time)

SELECT Employee.FirstName || " " || Employee.LastName as "Employee Name", SUM(Invoice.Total) AS "Total Sales"
FROM Employee, Invoice, Customer
WHERE Employee.EmployeeId = Customer.SupportRepId
And Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.SupportRepId
