SELECT * 
FROM 
	(SELECT * FROM staff ORDER BY sallary DESC LIMIT 5) 
		AS sallary 
        ORDER BY sallary;