SELECT rider.name as "rider_name" ,age , team.name as "team_name" , pass.name as "circuit" /* shows the columns of the tables */
FROM rider
INNER JOIN team 
ON rider.team = team.id_team /*use the relation with rider.team and team.id_team to works with the two tables*/
INNER JOIN pass
ON rider.dorsal = pass.winner /*use the relation with raider.dorsal and pass.winner to know who wons*/
where age >32  /*finds the ciclist who wons a pass with more than 32 years*/