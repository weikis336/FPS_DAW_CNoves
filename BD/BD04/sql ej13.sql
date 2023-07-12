SELECT stage.stage /* selects the column to show in the query (number of stage)*/
FROM stage /*selects the table to take them to start */
LEFT JOIN pass /*takes the pass table to combine with the pass table to search stages without a mountain*/
ON stage.stage = pass.stage
WHERE pass.stage IS NULL /*Define the search of the query, now searching null characters for the mix of stage table and pass table*/
