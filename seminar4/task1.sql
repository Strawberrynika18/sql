SELECT MARK, color, COUNT(color) AS 'Quantity of cars' FROM AUTO
	WHERE MARK = 'LADA'
	GROUP BY color, mark 
UNION 
	SELECT MARK, color, COUNT(color) AS 'Quantity of cars' FROM AUTO
	WHERE MARK = 'BMW'
	GROUP BY color, mark;