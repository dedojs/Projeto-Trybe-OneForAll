SELECT m.music_name AS 'nome_musica',
CASE
	WHEN nova.music_name = 'Dance With Her Own' THEN 'Dance With Trybe'
    WHEN nova.music_name = "Let's Be Silly" THEN "Let's Be Nice"
    WHEN nova.music_name = 'Magic Circus' THEN 'Magic Pull Request'
    WHEN nova.music_name = 'Troubles Of My Inner Fire' THEN 'Troubles Of My Project'
    WHEN nova.music_name = 'Without My Streets' THEN 'Without My Code Review'
END AS 'novo_nome'
FROM SpotifyClone.Music AS m
INNER JOIN SpotifyClone.Music AS nova ON m.music_id = nova.music_id
WHERE m.music_id IN (3, 20, 21, 31, 35);
