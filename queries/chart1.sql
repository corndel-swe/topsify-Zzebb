.mode json

SELECT COUNT(tracks.explicit) AS explicit_tra   ck_count, artists.name AS artist_name FROM albums INNER JOIN artists ON artists.id = albums.artist_id INNER JOIN tracks on tracks.album_id = albums.id WHERE tracks.explicit GROUP BY artists.id ORDER BY COUNT(tracks.explicit) DESC;