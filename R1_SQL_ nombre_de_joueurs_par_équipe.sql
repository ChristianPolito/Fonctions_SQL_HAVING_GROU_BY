SELECT t.name AS team, COUNT(p.team_id) AS no_of_players
FROM team AS t
LEFT JOIN player AS p
On t.id=p.team_id
GROUP BY team
ORDER BY no_of_players DESC;