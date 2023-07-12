SELECT rider.name as name, team.name as team, wear.stage as stage 
/*shows the name of ciclist, in which team runs and the stage who won with a yellow maillot*/
FROM wear
INNER JOIN rider /*uses the dorsal relation with the wear dorsal and the rider dorsal*/
ON wear.dorsal = rider.dorsal
INNER JOIN team /*uses the relation with the rider.team and team.id_team*/
ON rider.team = team.id_team 
INNER JOIN maillot /*uses the relation with the maillot table and the wear table*/
ON wear.maillot = maillot.code
WHERE maillot.colour = 'yellow' /*defines where to find the match and wich colour*/
