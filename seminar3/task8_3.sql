SELECT speciality, sum(sallary) AS sallary_sum 
FROM staff 
GROUP BY speciality 
HAVING sallary_sum > 100000;