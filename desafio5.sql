SELECT m.music_name as 'cancao', count(p.music_id) as 'reproducoes'
FROM SpotifyClone.Music as m
INNER JOIN SpotifyClone.Playlist_history as p
ON m.music_id = p.music_id
GROUP BY m.music_name
HAVING reproducoes > 1
ORDER BY m.music_name
LIMIT 2;
