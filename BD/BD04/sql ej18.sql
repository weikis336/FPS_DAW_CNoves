SELECT school.name, city.name as city_name /*shows school name and city name on a table*/
From school 
Inner Join city /*create the relation off this query, mixing city.id with school.city_id*/
ON city.id = school.city_id
