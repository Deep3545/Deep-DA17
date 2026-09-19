CREATE database Numeric_Functions;
use Numeric_Functions;

CREATE TABLE ProductSales (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,3),
    quantity INT,
    profit DECIMAL(10,3),
    discount_percent DECIMAL(5,2),
    cost_price DECIMAL(10,3),
    sales_amount DECIMAL(12,3),
    tax_amount DECIMAL(10,3),
    shipping_cost DECIMAL(10,3),
    rating DECIMAL(3,2)
);

INSERT INTO ProductSales
(product_id, product_name, category, price, quantity, profit,
 discount_percent, cost_price, sales_amount, tax_amount, shipping_cost, rating)
VALUES
(101, 'Laptop','Electronics', 55999.789,  2,  8500.456,  5.25, 47500.125, 111999.578, 10079.962, 450.75, 4.50),
(102, 'Mouse','Electronics',  799.456,   5,  -120.785, 10.50,   824.750,   3997.280,   359.755, 120.25, 4.20),
(103, 'Keyboard','Electronics', 1499.678,   3,   450.234,  7.75,  4049.000,   4499.034,   404.913, 150.50, 4.30),
(104, 'Monitor','Electronics', 12549.999,  2,  2100.555, 12.25, 10449.444,  25099.998, 2258.999, 350.80, 4.60),
(105, 'Printer','Electronics',  8999.125,  1,  -550.625, 15.50,  9549.750,   8999.125,  809.921, 275.40, 3.90),
(106, 'Office Chair','Furniture',   7499.567,  4,  1250.789,  8.25,  6248.778,  29998.268, 2699.844, 500.75, 4.10),
(107, 'Desk','Furniture',  11999.345,  2,  1850.678,  6.50, 10148.667,  23998.690, 2159.882, 600.25, 4.40),
(108, 'Bookshelf','Furniture',   5499.876,  3,   875.432,  9.75,  4624.444,  16499.628, 1484.967, 420.60, 4.00),
(109, 'Table Lamp','Furniture',   1299.234,  6,   320.567, 11.25,  1062.667,   7795.404,  701.586, 180.40, 4.25),
(110, 'Sofa','Furniture',  25999.678,  1,  4250.345,  5.75, 21749.333,  25999.678, 2339.971, 750.90, 4.70),
(111, 'Refrigerator','Appliances', 38999.456,  2,  5200.789, 13.50, 33798.667,  77998.912, 7019.902, 950.25, 4.60),
(112, 'Microwave','Appliances',  8999.789,  3,  1125.345,  8.75,  7874.444,  26999.367, 2429.943, 450.80, 4.20),
(113, 'Air Cooler','Appliances', 11999.234,  2,  1650.567, 10.25, 10348.667,  23998.468, 2159.862, 525.40, 4.15),
(114, 'Washing Machine','Appliances', 29999.876, 1,  3800.234,  7.50, 26199.642,  29999.876, 2699.989, 800.60, 4.55),
(115, 'Mixer Grinder', 'Appliances',  3499.567,  5,   625.789, 12.75,  2873.778,  17497.835, 1574.805, 275.30, 4.05),
(116, 'Headphones','Accessories', 2499.345,  7,   580.456,  6.25,  1918.889,  17495.415, 1574.587, 210.45, 4.35),
(117, 'Webcam','Accessories', 3299.678,  4,   725.234,  9.50,  2574.444,  13198.712, 1187.884, 190.25, 4.10),
(118, 'USB Cable','Accessories',  499.123,  10,   95.678,  4.75,   403.445,   4991.230,  449.211,  75.60, 3.95),
(119, 'Power Bank','Accessories', 1799.876,  6,   340.567,  8.50,  1459.309,  10799.256,  971.933, 135.75, 4.25),
(120, 'Smart Watch','Accessories', 6999.456,  3,  1450.789, 11.25,  5548.667,  20998.368, 1889.853, 240.80, 4.50),
(121, 'Notebook','Stationery',   149.789,  20,   35.456,  3.50,   114.333,   2995.780,  269.620,  45.25, 4.00),
(122, 'Pen Set','Stationery',    99.456,  25,   22.678,  2.75,    76.778,   2486.400,  223.776,  30.50, 3.85),
(123, 'Marker Set','Stationery',   249.678,  15,   48.345,  5.25,   201.333,   3745.170,  337.065,  55.75, 4.10),
(124, 'File Folder','Stationery',   129.345,  30,   28.567,  4.50,   100.778,   3880.350,  349.232,  60.25, 3.90),
(125, 'Calculator','Stationery',   799.567,   8,   165.789,  6.75,   633.778,   6396.536,  575.688,  95.40, 4.30),
(126, 'Tablet','Electronics', 22999.876, 2,  3650.567,  9.25, 19349.309,  45999.752, 4139.978, 550.60, 4.65),
(127, 'Smartphone','Electronics', 32999.456, 3,  6250.789, 12.50, 26748.667,  98998.368, 8909.853, 650.75, 4.75),
(128, 'Speaker','Electronics',  5499.789, 4,   875.345,  7.25,  4624.444,  21999.156, 1979.924, 325.80, 4.35),
(129, 'Projector','Electronics', 45999.234, 1,  7100.678, 15.75, 38898.556,  45999.234, 4139.931, 900.50, 4.55),
(130, 'Gaming Chair','Furniture',   15999.678, 2,  2750.456, 10.50, 13249.222,  31999.356, 2879.942, 575.75, 4.45);

SELECT * 
FROM ProductSales;

--1)
SELECT 
   product_name,
   ABS(profit) as absolute_value
FROM ProductSales;

--2)
SELECT
   product_name,
   ROUND(price,2) as rounded_price
FROM ProductSales;

--3)
SELECT
   product_name,
   CEILING(price) as ceiling_price
FROM ProductSales

--4)
SELECT 
   product_name,
   FLOOR(price) as floor_price
FROM ProductSales


--6)
SELECT 
    product_name,
    quantity,
    SQRT(quantity) AS quantity_sqrt
FROM ProductSales;

--7)
SELECT
    product_name,
    quantity,
    price,
ROUND(quantity * price ,2) as rounded_price
FROM ProductSales;

--9)

SELECT 
    product_name,
    FLOOR(1 + (RAND(CHECKSUM(NEWID())) * 100)) AS random_number
FROM ProductSales;

--10)
SELECT 
    product_name,
    profit,
    CASE SIGN(profit)
        WHEN 1 THEN 'Positive'
        WHEN -1 THEN 'Negative'
        ELSE 'Zero'
    END AS profit_status
FROM ProductSales;

