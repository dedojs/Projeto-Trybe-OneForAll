SELECT m.music_name AS 'nome', count(p.music_id) AS 'reproducoes'
FROM SpotifyClone.Music as m
INNER JOIN SpotifyClone.Playlist_history AS p
ON m.music_id = p.music_id
INNER JOIN SpotifyClone.User AS u ON p.user_id = u.user_id
WHERE u.subscription_id IN (1, 4)
GROUP BY m.music_name, p.music_id
ORDER BY nome
;

