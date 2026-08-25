--1)
CREATE DATABASE SalesAnalyticsDB;
--2)
CREATE TABLE customers (
    id INT PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    age INT,
    country VARCHAR(50),
    amount_spend INT
);

--3)
INSERT INTO customers (id, user_name, age, country, amount_spend)
VALUES
(1, 'Rahul', 22, 'India', 1200),
(2, 'Vraj', 29, 'USA', 4500),
(3, 'Parth', 35, 'UK', 7800),
(4, 'Nisha', 41, 'Canada', 15000),
(5, 'David', 26, 'Australia', 3200),
(6, 'Priya', 31, 'India', 900),
(7, 'Vijay', 48, 'Russia', 22000),
(8, 'Kush', 19, 'Africa', 600),
(9, 'Arjun', 55, 'Cambodia', 18500),
(10, 'Avinash', 38, 'Australia', 6700),
(11, 'Vikram', 27, 'India', 2500),
(12, 'Jack', 44, 'Denmark', 12500),
(13, 'Ravi', 33, 'UK', 9800),
(14, 'Hitesh', 62, 'France', 30000),
(15, 'Aarya', 24, 'Australia', 1800);

--4)
select * from customers

--5)
select user_name, age, country
from customers;

--6)
select user_name, country, amount_spend
from customers;

--7)
select * from customers 
where amount_spend > 50000;

--8)
select user_name, age from customers
where age < 30;

--9)
select country, user_name from customers
where country = 'India';

--10)
select user_name, amount_spend from customers
where amount_spend < 20000;

--11)
select user_name, age, amount_spend from customers
where amount_spend > 20000;

--12)
select * from customers
where country = 'India' AND amount_spend > 20000

--13)
SELECT user_name, country FROM customers
WHERE country = 'India' OR country = 'USA';

--14)
SELECT user_name, age, country, amount_spend 
FROM customers
WHERE (country = 'India' OR country = 'USA') 
  AND amount_spend > 3000;

--15)
select * from customers
where NOT country =  'India';

--16)
select * from customers 
order by amount_spend ASC;

--17)
select * from customers 
order by amount_spend DESC;

--18)

select user_name, age, country, amount_spend from customers
order by age ASC;

--19)
SELECT user_name, age, country, amount_spend 
FROM customers
WHERE age BETWEEN 25 AND 40
  AND amount_spend > 20000
  AND country IN ('India', 'USA')
ORDER BY amount_spend DESC;

--20)
SELECT user_name, age, country, amount_spend 
FROM customers
WHERE age >= 30
  AND amount_spend > 4000
  AND country <> 'India'
ORDER BY amount_spend DESC;