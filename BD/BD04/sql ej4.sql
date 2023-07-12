SELECT rider.name as "rider_name" ,age , team.name as "team_name" 
/*selects and show with rider_name and team_name and the age columns, from rider and team tables*/
FROM rider
INNER JOIN team
ON rider.team = team.id_team /* use the relation with rider.team and team.id_team to works with both tables*/
INNER JOIN stage
ON rider.dorsal = stage.winner /*use the relation with rider.dorsal and stage.winner to works with both tables*/
where age <30   /*searchs the ciclists with less than a 30 years who wons a stage*/