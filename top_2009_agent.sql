Which sales agent made the most in sales in 2009?

HINT: Use the MAX function on a subquery.

SELECT
    strftime('%Y',Invoice.InvoiceDate), Employee.FirstName || " " || Employee.LastName as "Employee Name", SUM(Invoice.Total) AS "Total Sales By Employee"
FROM
    Invoice, Employee, Customer
WHERE
    InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
AND
    Employee.EmployeeId = Customer.SupportRepId
And
    Invoice.CustomerId = Customer.CustomerId
GROUP BY
    Customer.SupportRepId
ORDER BY
    SUM(Invoice.Total) DESC
LIMIT
    1
