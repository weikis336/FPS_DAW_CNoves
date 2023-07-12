select rider.name, rider.age from rider  /*selects the columns rider name and rider age from the rider table*/
where age >=35 and name LIKE'%ch%' 
/*Define the search on the columns rider age for people with more or 35 years and with a "ch" in whatever position on her name*/
