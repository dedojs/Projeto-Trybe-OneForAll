SELECT u.user_name AS 'usuario',  COUNT(p.music_id) AS 'qtde_musicas_ouvidas', ROUND(SUM(m.music_length/60),2) AS 'total_minutos'
FROM SpotifyClone.User AS u
INNER JOIN SpotifyClone.Playlist_history AS p
INNER JOIN SpotifyClone.Music as m
ON u.user_id = p.user_id AND p.music_id = m.music_id
GROUP BY u.user_name
ORDER BY u.user_name;
