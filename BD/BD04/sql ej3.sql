SELECT team.name, COUNT(rider.team) AS member_count  /*selects the team name to show them, counts the quantity of members in a team counting the raiders*/
FROM  rider 
INNER JOIN team 
ON rider.team = team.id_team /* use the relation with rider.team and team.id_team to works with both tables*/
GROUP BY team.name; /*groups the raiders on the same team*/