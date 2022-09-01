SELECT COUNT(u.music_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.Playlist_history AS u
WHERE user_id = 3;