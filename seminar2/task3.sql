DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE PRIMARY KEY,
	employee_id VARCHAR(5) NOT NULL UNIQUE DEFAULT 'e00',
	amount FLOAT(7,2) NOT NULL DEFAULT '0.00',
    order_status VARCHAR(15) NOT NULL DEFAULT 'OPEN'
);
-- Наполняем сущность 'orders' данными:
INSERT INTO `orders` (employee_id, amount, order_status)
VALUES 
('e03', 15.00, 'OPEN'),
('e01', 25.50, 'OPEN'),
('e05', 100.70, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.50, 'CANCELLED');
-- Создаем кейс для показа отдельной колонки 'full_order_status' с интересующими нас условиями отбора и заменой маски значений:
SELECT 
	employee_id AS 'Номер заказа',
	amount AS 'Сумма заказа',
    CASE order_status 
		WHEN 'OPEN' THEN 'Order is in open state'
		WHEN 'CLOSED' THEN 'Order is closed'
		WHEN 'CANCELLED' THEN 'Order is cancelled'
	END AS 'full_order_status'	
FROM orders;
