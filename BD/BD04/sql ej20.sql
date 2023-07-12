SELECT student.name as name, /* shows the student.name column as name */
       CONCAT(school.id, "-", student.id) as dorsal /* combine school.id and student.id in a single chart */
FROM school 
INNER JOIN student /* crete a relation with student and school */
ON student.school_id = school.id
ORDER BY name /* shows the query with alphabetical order*/
