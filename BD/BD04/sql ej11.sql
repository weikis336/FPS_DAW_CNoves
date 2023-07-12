SELECT rider.name, rider.age, wear.stage /*Shows and selects that columns for the query*/
FROM rider
INNER JOIN wear /*creates the relation of wear and rider with the dorsal*/
ON rider.dorsal = wear.dorsal 
GROUP BY wear.stage, rider.name, rider.age /*groups the data by the stage, name and age columns*/
HAVING COUNT(wear.maillot) >= 2; /*limit the before group with the condition of wearing more or equal times a maillot*/
