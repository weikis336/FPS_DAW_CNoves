SELECT stage.stage, COUNT(pass.stage) as number_of_passes /*selects stage.stage to show him, shows the count of the number_of_passes from the query*/
FROM stage
INNER JOIN pass /*joins the tables pass and stage with her relation*/
ON pass.stage = stage.stage
GROUP BY stage.stage /*defines the condition to group the query*/
