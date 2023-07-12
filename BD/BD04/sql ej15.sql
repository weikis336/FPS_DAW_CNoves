SELECT MIN(rider.age) as youngest, MAX(rider.age) as oldest, AVG(rider.age) as average_age
 /* Of the column age in the table rider, searchs the min age of them and shows it as youngest
do the same with the oldest but using max to determine the highest number, with averange calculates the averange of all of the ciclists*/
FROM rider