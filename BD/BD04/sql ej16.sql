SELECT country.name as country, maillot.colour as colour /*selects the colummns to show of the query*/
FROM rider
INNER JOIN country
ON rider.country = country.id_country /*create a relation of country.id_country with rider.country*/
INNER JOIN team
ON rider.team = team.id_team /*create a relation of team.team.id_team with rider.team*/
INNER JOIN wear
ON rider.dorsal = wear.dorsal /*create a relation of wear.dorsal with rider.dorsal*/
INNER JOIN maillot
ON wear.maillot = maillot.code /*create a relation of wear.maillot with maillot.code*/
ORDER BY country, colour /*Define an order to show the query*/
