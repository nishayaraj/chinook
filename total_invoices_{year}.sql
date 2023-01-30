How many Invoices were there in 2009 and 2011?
HINT: COUNT
SELECT COUNT(InvoiceId)
-- strftime option to filter out the dates alone

SELECT COUNT(Invoice.InvoiceDate)
FROM Invoice
where Invoice.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 00:00:00' OR
Invoice.InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 00:00:00'
