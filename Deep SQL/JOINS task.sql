Create DATABASE JoinPracticeDB;

USE JoinPracticeDB;

CREATE TABLE Customer
(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO Customer
(customer_id, customer_name, city, country)
VALUES
(1, 'Rahul Sharma', 'Ahmedabad', 'India'),
(2, 'Priya Patel', 'Mumbai', 'India'),
(3, 'Amit Shah', 'Delhi', 'India'),
(4, 'Neha Mehta', 'Pune', 'India'),
(5, 'Rohan Desai', 'Surat', 'India'),
(6, 'Karan Joshi', 'Jaipur', 'India'),
(7, 'Sneha Patel', 'Bangalore', 'India'),
(8, 'Vikas Shah', 'Vadodara', 'India'),
(9, 'Anjali Singh', 'Delhi', 'India'),
(10, 'Raj Malhotra', 'Chennai', 'India');

CREATE TABLE Orders
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    quantity INT,
    amount DECIMAL(10,2)
);

INSERT INTO Orders
(order_id, customer_id, product_name, quantity, amount)
VALUES
(101, 1, 'Laptop', 1, 55000.00),
(102, 2, 'Mobile', 2, 30000.00),
(103, 3, 'Keyboard', 3, 4500.00),
(104, 4, 'Monitor', 1, 18000.00),
(105, 5, 'Mouse', 5, 2500.00),
(106, 6, 'Printer', 1, 12000.00),
(107, 7, 'Laptop Bag', 2, 3000.00),
(108, 11, 'Tablet', 1, 25000.00),
(109, 12, 'Headphones', 2, 6000.00),
(110, 13, 'Smart Watch', 1, 8000.00);

SELECT * FROM Customer;

SELECT * FROM Orders;

--1)
SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.order_id,
    o.product_name,
    o.amount
FROM Customer as c
INNER JOIN Orders as o
    ON c.customer_id = o.customer_id;
    
 --2)
 select 
   c.customer_name,
   c.city,
   o.product_name,
   o.amount
FROM Customer as c
INNER JOIN Orders as o
    ON c.customer_id = o.customer_id

--3)
select 
  c.customer_id,
  c.customer_name,
  o.order_id,
  o.product_name,
  o.amount
FROM Customer as c
LEFT JOIN Orders as o
    ON c.customer_id = o.customer_id

--4)
select 
  c.customer_id,
  c.customer_name,
  c.city
FROM Customer as c
LEFT JOIN Orders as o
   ON c.customer_id = o.customer_id

--5)
select
  o.order_id,
  c.customer_id,
  c.customer_name,
  o.product_name,
  o.amount
FROM Customer as c
RIGHT JOIN Orders as o
    ON c.customer_id = o.customer_id

--6)
select 
  o.order_id,
  c.customer_id,
  o.product_name,
  o.amount
FROM Customer as c
RIGHT JOIN Orders as o
    ON c.customer_id = o.customer_id

--7)
select
  c.customer_id,
  c.customer_name,
  o.order_id,
  o.product_name,
  o.amount
FROM Customer as c
FULL OUTER JOIN Orders as o
    ON c.customer_id = o.customer_id

--8)
select 
  c.customer_name,
  o.order_id,
  o.product_name,
  o.amount
FROM Customer as c
INNER JOIN Orders as o
    
    ON c.customer_id = o.customer_id
    where amount > 10000;

--9)
select 
  c.customer_name,
  c.city,
  o.order_id,
  o.product_name,
  o.amount
FROM Customer as c
INNER JOIN Orders as o
    
    ON c.customer_id = o.customer_id

--10)
select 
  c.customer_name,
  o.product_name,
  o.quantity,
  o.amount
FROM Customer as c, Orders as o
WHERE c.customer_id = o.customer_id

  AND quantity > 2;

--11)
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(o.amount) AS total_amount
FROM Customer AS c
LEFT JOIN Orders AS o
    ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.customer_name;

--12)
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customer c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.customer_name;

--13)
SELECT
   c.customer_name,
   AVG(o.order_amount) AS average_order_amount,
   FROM customer c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_name;

--14)
SELECT
    c.customer_name,
    o.order_id,
    o.product_name,
    o.amount
FROM customer c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
WHERE o.amount = (
    SELECT MAX(amount)
    FROM orders
);

--15)
--SELECT
    --c.customer_name,
    --o.order_id,
    --o.product_name,
    --o.amount
--FROM customer c
--INNER JOIN orders o
    --ON c.customer_id = o.customer_id
--WHERE o.amount = (
    --SELECT MIN(amount)
    --FROM orders
--);

--16)
--SELECT
    --c.customer_id,
    --c.customer_name,
    --COUNT(o.order_id) AS number_of_orders,

--17)
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.amount) AS total_spending
FROM customer c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
HAVING SUM(o.amount) > 20000;

--18)
