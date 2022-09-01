SELECT a.artist_name AS 'artista', al.album_name AS 'album'
FROM SpotifyClone.Artist AS a
INNER JOIN SpotifyClone.Album AS al ON a.artist_id = al.artist_id
WHERE a.artist_name = 'Walter Phoenix';