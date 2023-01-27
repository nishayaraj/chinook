Provide a query that shows the total number of invoices per country.
HINT: GROUP BY

SELECT COUNT(Invoice.InvoiceId) AS "Total number of invoices", Invoice.BillingCountry
FROM Invoice
GROUP BY BillingCountry
