DROP DATABASE IF EXISTS ecommerce_project;
CREATE DATABASE ecommerce_project;
USE ecommerce_project;

CREATE TABLE categories(category_id INT PRIMARY KEY,category_name VARCHAR(100) NOT NULL UNIQUE);
CREATE TABLE suppliers(supplier_id INT PRIMARY KEY,supplier_name VARCHAR(100) NOT NULL,phone VARCHAR(20) UNIQUE,city VARCHAR(80));
CREATE TABLE products(product_id INT PRIMARY KEY,product_name VARCHAR(150) NOT NULL,category_id INT,supplier_id INT,price DECIMAL(10,2) NOT NULL CHECK(price>=0),stock INT DEFAULT 0 CHECK(stock>=0),FOREIGN KEY(category_id) REFERENCES categories(category_id) ON UPDATE CASCADE ON DELETE SET NULL,FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id) ON UPDATE CASCADE ON DELETE SET NULL);
CREATE TABLE customers(customer_id INT PRIMARY KEY,customer_name VARCHAR(100) NOT NULL,email VARCHAR(120) UNIQUE,phone VARCHAR(20),city VARCHAR(80));
CREATE TABLE orders(order_id INT PRIMARY KEY,customer_id INT NOT NULL,order_date DATE NOT NULL,order_status VARCHAR(30) DEFAULT 'Pending',FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE order_items(order_item_id INT PRIMARY KEY,order_id INT NOT NULL,product_id INT NOT NULL,quantity INT CHECK(quantity>0),unit_price DECIMAL(10,2) CHECK(unit_price>=0),FOREIGN KEY(order_id) REFERENCES orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE,FOREIGN KEY(product_id) REFERENCES products(product_id) ON UPDATE CASCADE ON DELETE CASCADE);
CREATE TABLE payments(payment_id INT PRIMARY KEY,order_id INT NOT NULL,payment_date DATE,amount DECIMAL(10,2) CHECK(amount>=0),payment_method VARCHAR(30),payment_status VARCHAR(20) DEFAULT 'Paid',FOREIGN KEY(order_id) REFERENCES orders(order_id) ON UPDATE CASCADE ON DELETE CASCADE);

INSERT INTO categories VALUES(1,'Electronics'),(2,'Computer'),(3,'Mobile'),(4,'Accessories'),(5,'Home Appliances');
INSERT INTO suppliers VALUES(1,'Tech Supply Ltd','01810000001','Dhaka'),(2,'Digital World','01810000002','Chattogram'),(3,'Smart Source','01810000003','Feni'),(4,'Home Electronics','01810000004','Cumilla');
INSERT INTO products VALUES(101,'Laptop Core i5',2,1,65000,15),(102,'Laptop Core i7',2,1,85000,8),(103,'Mechanical Keyboard',4,2,4500,30),(104,'Wireless Mouse',4,2,1800,50),(105,'Android Phone A',3,3,25000,20),(106,'Android Phone B',3,3,35000,12),(107,'Smart TV 43 Inch',5,4,48000,10),(108,'Bluetooth Speaker',1,2,5500,25),(109,'USB-C Hub',4,1,3200,40),(110,'Monitor 24 Inch',2,1,22000,18);
INSERT INTO customers VALUES(1001,'Rahim Ahmed','rahim@shop.com','01710000001','Feni'),(1002,'Karim Hasan','karim@shop.com','01710000002','Dhaka'),(1003,'Nadia Akter','nadia@shop.com','01710000003','Chattogram'),(1004,'Sadia Rahman','sadia@shop.com','01710000004','Feni'),(1005,'Hasan Ali','hasan@shop.com','01710000005','Cumilla'),(1006,'Mim Akter','mim@shop.com','01710000006','Dhaka'),(1007,'Tanvir Hossain','tanvir@shop.com','01710000007','Noakhali'),(1008,'Fahim Chowdhury','fahim@shop.com','01710000008','Rajshahi');
INSERT INTO orders VALUES(5001,1001,'2026-01-05','Delivered'),(5002,1002,'2026-01-07','Delivered'),(5003,1003,'2026-01-10','Delivered'),(5004,1004,'2026-01-12','Pending'),(5005,1005,'2026-01-15','Delivered'),(5006,1006,'2026-01-18','Shipped'),(5007,1007,'2026-01-20','Delivered'),(5008,1008,'2026-01-22','Pending'),(5009,1001,'2026-01-25','Delivered'),(5010,1003,'2026-01-28','Delivered');
INSERT INTO order_items VALUES(1,5001,101,1,65000),(2,5001,104,2,1800),(3,5002,102,1,85000),(4,5002,103,1,4500),(5,5003,105,1,25000),(6,5003,108,2,5500),(7,5004,107,1,48000),(8,5005,106,1,35000),(9,5005,109,2,3200),(10,5006,110,1,22000),(11,5006,104,1,1800),(12,5007,105,2,25000),(13,5008,103,2,4500),(14,5008,108,1,5500),(15,5009,101,1,65000),(16,5010,106,1,35000),(17,5010,109,1,3200);
INSERT INTO payments VALUES(1,5001,'2026-01-05',68600,'Cash','Paid'),(2,5002,'2026-01-07',89500,'Card','Paid'),(3,5003,'2026-01-10',36000,'Mobile Banking','Paid'),(4,5004,'2026-01-12',48000,'Card','Pending'),(5,5005,'2026-01-15',41400,'Cash','Paid'),(6,5006,'2026-01-18',23800,'Mobile Banking','Paid'),(7,5007,'2026-01-20',50000,'Card','Paid'),(8,5008,'2026-01-22',14500,'Cash','Pending'),(9,5009,'2026-01-25',65000,'Card','Paid'),(10,5010,'2026-01-28',38200,'Mobile Banking','Paid');

-- BASIC / FILTERING
SELECT * FROM products;
SELECT product_name,price,stock FROM products WHERE price>20000;
SELECT * FROM products WHERE category_id IN(2,3);
SELECT * FROM products WHERE price BETWEEN 3000 AND 50000;
SELECT * FROM products ORDER BY price DESC LIMIT 5;
SELECT * FROM customers WHERE city='Feni';

-- AGGREGATES
SELECT COUNT(*) AS total_products FROM products;
SELECT MAX(price) AS highest_price FROM products;
SELECT MIN(price) AS lowest_price FROM products;
SELECT AVG(price) AS average_price FROM products;
SELECT SUM(stock) AS total_stock FROM products;
SELECT SUM(amount) AS total_paid FROM payments WHERE payment_status='Paid';

-- GROUP BY / HAVING
SELECT category_id,COUNT(*) AS total_products FROM products GROUP BY category_id;
SELECT category_id,AVG(price) AS average_price FROM products GROUP BY category_id;
SELECT customer_id,COUNT(*) AS total_orders FROM orders GROUP BY customer_id;
SELECT customer_id,COUNT(*) AS total_orders FROM orders GROUP BY customer_id HAVING COUNT(*)>=2;
SELECT order_status,COUNT(*) AS total_orders FROM orders GROUP BY order_status;

-- JOINS
SELECT p.product_name,c.category_name,p.price,p.stock FROM products p JOIN categories c ON p.category_id=c.category_id;
SELECT o.order_id,cu.customer_name,o.order_date,o.order_status FROM orders o JOIN customers cu ON o.customer_id=cu.customer_id;
SELECT oi.order_id,p.product_name,oi.quantity,oi.unit_price FROM order_items oi JOIN products p ON oi.product_id=p.product_id;
SELECT cu.customer_name,o.order_id FROM customers cu LEFT JOIN orders o ON cu.customer_id=o.customer_id;

-- ORDER TOTALS
SELECT o.order_id,SUM(oi.quantity*oi.unit_price) AS order_total FROM orders o JOIN order_items oi ON o.order_id=oi.order_id GROUP BY o.order_id;

-- SUBQUERIES
SELECT product_name,price FROM products WHERE price>(SELECT AVG(price) FROM products);
SELECT product_name,price FROM products WHERE price=(SELECT MAX(price) FROM products);
SELECT customer_name FROM customers WHERE customer_id IN(SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*)>1);
SELECT product_name,stock FROM products WHERE stock>(SELECT AVG(stock) FROM products);

-- UNION
SELECT customer_name AS name FROM customers WHERE city='Feni'
UNION
SELECT customer_name AS name FROM customers WHERE city='Dhaka';

-- VIEW
DROP VIEW IF EXISTS order_details;
CREATE VIEW order_details AS
SELECT o.order_id,cu.customer_name,o.order_date,o.order_status,p.product_name,oi.quantity,oi.unit_price,(oi.quantity*oi.unit_price) AS line_total
FROM orders o JOIN customers cu ON o.customer_id=cu.customer_id JOIN order_items oi ON o.order_id=oi.order_id JOIN products p ON oi.product_id=p.product_id;
SELECT * FROM order_details;

-- BUSINESS REPORTS
SELECT c.category_name,SUM(p.stock) AS total_stock FROM categories c JOIN products p ON c.category_id=p.category_id GROUP BY c.category_id,c.category_name;
SELECT cu.customer_name,SUM(pay.amount) AS total_payment FROM customers cu JOIN orders o ON cu.customer_id=o.customer_id JOIN payments pay ON o.order_id=pay.order_id WHERE pay.payment_status='Paid' GROUP BY cu.customer_id,cu.customer_name ORDER BY total_payment DESC;
SELECT p.product_name,SUM(oi.quantity) AS total_sold FROM products p JOIN order_items oi ON p.product_id=oi.product_id GROUP BY p.product_id,p.product_name ORDER BY total_sold DESC LIMIT 5;
SELECT * FROM orders WHERE order_status='Pending';

-- ALTER / UPDATE / DELETE PRACTICE
ALTER TABLE customers ADD COLUMN customer_type VARCHAR(30) DEFAULT 'Regular';
UPDATE products SET stock=stock+5 WHERE product_id=104;
-- DELETE FROM orders WHERE order_id=5008;

-- FINAL CHALLENGES
-- 1. Find products above average price.
-- 2. Find customers with 2 or more orders.
-- 3. Find top 5 products by quantity sold.
-- 4. Find customers with no orders using LEFT JOIN.
-- 5. Create a view with customer, order and product details.
