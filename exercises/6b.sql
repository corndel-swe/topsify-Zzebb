-- Create a list of all album names
-- Include the total duration of the album
-- Sort the results by album duration, with the longest first
SELECT albums.name, SUM(tracks.duration_ms)
FROM albums
INNER JOIN tracks ON tracks.album_id = albums.id
GROUP BY album_id
ORDER BY SUM(tracks.duration_ms) DESC;