SELECT rider.name, team.name /* selects rider.name and team.name to show data of the query*/
FROM rider
INNER JOIN wear 
ON rider.dorsal = wear.dorsal /*create a relation of wear.dorsal with rider.dorsal*/
INNER JOIN maillot 
ON wear.maillot = maillot.code /*create a relation of wear.maillot and maillot.code*/
INNER JOIN stage
ON wear.stage = stage.stage /*create a relation of stage.stage and wear.stage*/
INNER JOIN team
ON rider.team = team.id_team /*create a relation of rider.team and team.id_team*/
WHERE maillot.colour = "yellow"  /*define the query asking for a yellow maillot and the last winner who wears it*/
    AND wear.stage = 
        (SELECT MAX(stage) FROM stage) 