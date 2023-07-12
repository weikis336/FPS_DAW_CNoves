SELECT pass.name /* selects the column to show in the query*/
FROM pass /*determine in whhich table to search*/
WHERE pass.height > (SELECT AVG(height) FROM pass) 
/*Search the mountains with a highest tall than the averange mountain
    use an better character ">" and then an operation to determine the averange*/
