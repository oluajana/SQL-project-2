CREATE database sales;
USE sales;
CREATE table customer(
id INT PRIMARY KEY,
name VARCHAR(50),
phone_no INT,
address VARCHAR(50)
);
ALTER TABLE customer
MODIFY COLUMN phone_no VARCHAR(20);
SELECT * FROM customer;

USE sales;
CREATE table product(
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(50),
price VARCHAR(50),
stock_quantity VARCHAR(50)
);
SELECT * FROM product;

USE sales; 
CREATE table orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
total_amount INT,
FOREIGN KEY (customer_id) REFERENCES customer(id)
);
SELECT * FROM orders;

USE sales; 
CREATE table order_items(
order_item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT, 
price INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES product(product_id)
);

USE sales;
SELECT * FROM customer;
INSERT INTO customer(id, name, phone_no, address)
 VALUES(1011, 'CHARLES OLUMO', '08099999999', '20 RING ROAD, IBADAN'),
(1012, 'ALABI PASUMA', '08077777777', '13 JEJE STREET, IBADAN'),
(1013, 'JIDE KOSOKO', '070445566666', '19 IMOLE CRESCENT, IBADAN'),
(1014, 'ADEBAYO SALAMI', '090887666666', '77 GUGU CLOSE, IBADAN'),                        
(1015, 'ODUNLADE ADEKOLA', '08033333370', '12, AWOLU STREET, IBADAN'),
(1016, 'FUNKE AKINDELE', '08123456789', '5 OLUWOLE STREET, IBADAN'),
(1017, 'TOYIN ABRAHAM', '08087654321', '22 ADEBISI CLOSE, IBADAN'),
(1018, 'SAHEED BALOGUN', '09011223344', '3 OKOYA ROAD, IBADAN'),
(1019, 'FATHIA WILLIAMS', '07099887766', '14 ADEOTI AVENUE, IBADAN'),
(1020, 'YINKA QUADRI', '08155667788', '18 LAWAL STREET, IBADAN'),
(1021, 'IYABO OJO', '08033445566', '9 OKE ADO CRESCENT, IBADAN');

USE sales;
SELECT * FROM product;
INSERT INTO product(product_id, product_name, category, price, stock_quantity)
VALUES(777, 'COROLLA', 'SALON', 2000000, 10),
(701, 'PRADO', 'SUV',10000000, 2),
(888, 'CAMRY', 'SALON', 3500000, 7),
(950, 'HIGHLANDER', 'SUV', 12000000, 3),
(845, 'LEXUS RX350', 'SUV', 15000000, 2),
(932, 'SIENNA', 'BUS', 5500000, 5),
(812, 'CIVIC', 'SALON', 2500000, 8),
(990, 'LAND CRUISER', 'SUV', 18000000, 1),
(876, 'ACCORD', 'SALON', 4000000, 6);

USE sales;
SELECT * FROM orders;
INSERT INTO orders(order_id, customer_id, order_date, total_amount)
VALUES(778, 1011, '2025-01-03', 100000),
(779, 1012, '2025-01-15', 150000),
(780, 1013, '2025-02-20', 275000),
(781, 1014, '2025-03-10', 450000),
(782, 1015, '2025-04-05', 80000),
(783, 1016, '2025-06-18', 120000),
(784, 1017, '2025-07-22', 200000),
(785, 1018, '2025-09-11', 500000),
(786, 1019, '2025-10-28', 175000),
(787, 1020, '2025-12-05', 300000),
(788, 1021, '2025-11-17', 220000);


USE sales;
SELECT * FROM order_items;
INSERT INTO order_items(order_item_id, order_id, product_id, quantity, price)
VALUES(400, 778, 777, 12, 8000),
(401, 779, 701, 2, 10000),
(402, 780, 888, 1, 3500),
(403, 781, 950, 3, 12000),
(404, 782, 845, 2, 15000),
(405, 783, 932, 5, 5500),
(406, 784, 812, 4, 2500),
(407, 785, 990, 1, 18000),
(408, 786, 876, 6, 4000);

USE sales;
SELECT * FROM customer;
INSERT INTO customer(id, name, phone_no, address)
VALUES(1025, 'LOLA IDIJE', '09088883838', '23, BODIJA,IBADAN'),
(1026, 'MAMA RAINBOW','080222233322', '97, OLODA STREET, IBADAN');

USE sales;
SELECT * FROM product;
UPDATE product
SET stock_quantity = 20
WHERE product_id = 876;

UPDATE product
SET price = 2000
WHERE product_id = 701;

SELECT * FROM orders;
START TRANSACTION;
DELETE FROM orders
WHERE order_id = 778;
COMMIT;


SELECT * FROM customer 
WHERE id = 1016;








 