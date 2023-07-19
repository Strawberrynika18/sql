SELECT cnum, cname, city, rating 
FROM customers 
WHERE rating > 100 AND city != "Rome";