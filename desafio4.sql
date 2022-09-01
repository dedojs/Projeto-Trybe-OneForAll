SELECT DISTINCT u.user_name AS 'usuario', IF (YEAR(p.history_date)=2021, 'Usuário ativo', 'Usuário inativo' ) AS 'condicao_usuario'
FROM SpotifyClone.User AS u
INNER JOIN SpotifyClone.Playlist_history AS p
ON u.user_id = p.user_id
GROUP BY u.user_name, p.history_date
-- HAVING date(history_date) NOT IN ('2018-12-07', '2019-05-25', '2020-04-01', '2018-03-21', '2020-10-18')
ORDER BY u.user_name;


