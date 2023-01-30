Provide a query that shows all Invoices. The resultant table should include:
InvoiceId
The total number of line items on each invoice

SELECT Invoice.InvoiceId, COUNT(InvoiceLine.InvoiceLineId) AS "The total number of line items"
FROM InvoiceLine, Invoice
WHERE InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId
