Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT InvoiceLine.InvoiceLineId, Track.Name, Artist.Name
FROM InvoiceLine, Track, Album, Artist
WHERE InvoiceLine.TrackId = Track.TrackId
AND Artist.ArtistId = Album.ArtistId
And Track.AlbumId = Album.AlbumId
