Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
Album name
Media type
Genre

SELECT Album.Title AS "Album name", MediaType.Name AS "Media type", Genre.Name AS "Genre"
FROM Album, MediaType, Genre, Track
WHERE Album.AlbumId = Track.AlbumId
AND MediaType.MediaTypeId = Track.MediaTypeId
AND Genre.GenreId = Track.GenreId
