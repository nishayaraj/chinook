Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
Playlist name
Total number of tracks on each playlist

SELECT Playlist.Name,COUNT(PlaylistTrack.PlaylistId) AS "Number of tracks on each playlist"
FROM Playlist, PlaylistTrack
WHERE Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Name
