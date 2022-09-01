SELECT a.artist_name AS 'artista', al.album_name AS 'album', count(ua.user_id) AS 'seguidores'
FROM SpotifyClone.Artist AS a
INNER JOIN SpotifyClone.Album AS al ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.User_artist as ua ON ua.artist_id = a.artist_id
GROUP BY artist_name, album_name
ORDER BY seguidores DESC, artista, album;
