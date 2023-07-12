SELECT school.name as school_name, city.name as city_name, student.name as student_name, student.birthdate as bithdate /* shows the selected in a table*/
FROM school 
INNER JOIN city /*create a relation with city and student */
ON city.id = school.city_id
INNER JOIN student /*create a relation with student and school*/
ON student.school_id = school.id 