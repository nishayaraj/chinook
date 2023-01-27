How many Invoices were there in 2009 and 2011?
HINT: COUNT
SELECT COUNT(InvoiceId)
-- This does not work

FROM Invoice
where Invoice.InvoiceDate between '2009-01-01 00:00:00' and '2009-12-31 00:00:00' AND
Invoice.InvoiceDate between '2011-01-01 00:00:00' and '2011-12-31 00:00:00'
