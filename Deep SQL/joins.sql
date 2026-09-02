create database customerDB

use customerDB;

create table customers(
id int primary key,
name varchar(50),
age int,
address varchar(50)
);

create table orders(
oid int primary key,
customer_id  int unique,
item varchar(20),
amount int,
);

insert into customers(id, name, age, address)
values
(1, 'Rohan', 21, 'Ahmedabad'),
(2, 'Riya', 22, 'Vadodara'),
(3, 'Het', 23, 'Surat'),
(4, 'Hiren', 24, 'Mumbai');

select * from customers

insert into orders(oid, customer_id, item, amount)
values
(01, 1, 'Pizza', 250),
(02, 2, 'Dosa', 180),
(03, 5, 'Wrap', 150),
(04, 7, 'Burger', 270);

select * from orders

--Inner Join--
select * from customers
inner join orders 
on customers.id = orders.customer_id;

--Left join
select * from customers
left join orders on customers.id = orders.customer_id;

--Right join--
select * from customers
right join orders on customers.id = orders.customer_id;

--Full join--
select * from customers
full join orders on customers.id = orders.customer_id;