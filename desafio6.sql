SELECT
MIN(s.subscription_value) AS faturamento_minimo,
MAX(s.subscription_value) AS faturamento_maximo,
ROUND(AVG(s.subscription_value),2) AS faturamento_medio,
ROUND(SUM(s.subscription_value ),2) AS faturamento_total
FROM SpotifyClone.Subscription AS s
INNER JOIN SpotifyClone.User as u
ON s.subscription_id = u.subscription_id;