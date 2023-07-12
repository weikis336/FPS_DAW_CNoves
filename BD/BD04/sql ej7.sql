SELECT stage.arrival as town /* shows on the stage starts as a town*/
FROM stage
WHERE stage.arrival NOT IN ( stage.departure); /* define the condition to find a town with a arrival but without a departure comparing them with the stage departure*/