.mode json

SELECT artists.name AS artist_name,
albums.name AS album_name,
AVG(features.danceability) AS average_danceability,
AVG(features.energy) AS average_energy,
AVG(features.speechiness) AS average_speechiness,
AVG(features.acousticness) AS average_acousticness,
AVG(features.liveness) AS average_liveness
FROM albums INNER JOIN tracks on tracks.album_id = albums.id INNER JOIN artists on artists.id = albums.artist_id INNER JOIN features on tracks.id = features.track_id GROUP BY albums.id