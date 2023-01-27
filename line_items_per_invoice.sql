Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.
HINT: GROUP BY

SELECT InvoiceLine.InvoiceId, COUNT(InvoiceLine.Quantity) as "Number of line items"
FROM InvoiceLine
GROUP BY InvoiceId;
