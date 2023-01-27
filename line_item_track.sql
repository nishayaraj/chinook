Provide a query that shows each Invoice line item, with the name of the track that was purchased.

SELECT InvoiceLine.InvoiceLineId, Track.Name
FROM InvoiceLine, Track
WHERE InvoiceLine.TrackId = Track.TrackId;
