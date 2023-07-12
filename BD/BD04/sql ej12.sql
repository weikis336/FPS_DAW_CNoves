SELECT rider.name as name, team.name as team /*selects the rider name and team name to shows them*/
FROM rider
INNER JOIN team /* joins the table team with the rider one*/
ON rider.team = team.id_team
WHERE rider.dorsal IN ( 
    SELECT dorsal /*selects the dorsal off the wear table*/
    FROM wear 
    UNION
    SELECT winner as dorsal /*determine who wears that dorsal when he wins*/
    FROM pass
)
