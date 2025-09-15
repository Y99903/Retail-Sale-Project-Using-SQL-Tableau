{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Menlo-Bold;\f2\fnil\fcharset0 Menlo-Regular;
}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs36 \cf0 \ul \ulc0 Create Tables Of Retail_Sale Project\
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f1\b\fs24 \cf2 \ulc2 \CocoaLigature0 Customer
\f2\b0\fs22 \ulnone  :-CREATE TABLE IF NOT EXISTS cust (   customer_id INT AUTO_INCREMENT PRIMARY KEY,   customer_name VARCHAR(100),   city VARCHAR(50),   country VARCHAR(50),   signup_date DATE);\
\
\

\f1\b\fs24 \ul Product :- 
\f2\b0\fs22 \ulnone CREATE TABLE IF NOT EXISTS products (product_id INT PRIMARY KEY AUTO_INCREMENT,product_name VARCHAR(150),category VARCHAR(80),  price DECIMAL(10,2));\
\
\

\f1\b\fs24 \ul Stores :- 
\f2\b0\fs22 \ulnone CREATE TABLE IF NOT EXISTS stores (store_id INT PRIMARY KEY AUTO_INCREMENT,store_name VARCHAR(100),region VARCHAR(50));\
\
\

\f1\b\fs24 \ul Orders :\'97
\f2\b0\fs22 \ulnone  CREATE TABLE IF NOT EXISTS orderss (order_id INT PRIMARY KEY AUTO_INCREMENT,order_date DATE,customer_id INT,store_id INT,total_amount DECIMAL(12,2),FOREIGN KEY (customer_id) REFERENCES cust(customer_id),FOREIGN KEY (store_id) REFERENCES stores(store_id));\
\
\

\f1\b\fs24 \ul Order_items :- 
\f2\b0\fs22 \ulnone CREATE TABLE IF NOT EXISTS order_items (id INT PRIMARY KEY AUTO_INCREMENT,order_id INT,product_id INT,quantity INT,unit_price DECIMAL(10,2),FOREIGN KEY (order_id) REFERENCES orderss(order_id),FOREIGN KEY (product_id) REFERENCES products(product_id)); \
\
\

\f1\b\fs24 \ul Index:-
\f2\b0\fs22 \ulnone  CREATE INDEX idx_orders_date ON orderss(order_date);\
\
 CREATE INDEX idx_orderitems_product ON order_items(product_id);\
\
CREATE INDEX idx_orders_customer ON orderss(customer_id);\
\
\
\
\

\f1\b\fs36 \ul \
TABLES:-
\f2\b0\fs22 \ulnone \
\
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0
mysql> SELECT * FROM cust;\
+-------------+---------------+-----------+---------+-------------+\
| customer_id | customer_name | city      | country | signup_date |\
+-------------+---------------+-----------+---------+-------------+\
|           1 | Amit Patel    | Dubai     | UAE     | 2023-01-05  |\
|           2 | Sara Ali      | Abu Dhabi | UAE     | 2023-02-12  |\
|           3 | John Mathew   | Sharjah   | UAE     | 2023-01-20  |\
|           4 | Ali Khan      | Dubai     | UAE     | 2023-03-03  |\
|           5 | Priya Sharma  | Dubai     | UAE     | 2023-02-28  |\
+-------------+---------------+-----------+---------+-------------+\
5 rows in set (0.00 sec)\
\
mysql> SELECT * FROM products;\
+------------+------------------+-------------+---------+\
| product_id | product_name     | category    | price   |\
+------------+------------------+-------------+---------+\
|          1 | Laptop Pro 15    | Electronics | 1500.00 |\
|          2 | Noise Headphones | Electronics |  120.00 |\
|          3 | T-shirt          | Apparel     |   25.00 |\
|          4 | Tablet 10        | Electronics |  800.00 |\
|          5 | Mobile Phone X   | Electronics |  900.00 |\
|          6 | Wireless Mouse   | Accessories |   30.00 |\
+------------+------------------+-------------+---------+\
6 rows in set (0.00 sec)\
\
mysql> SELECT * FROM stores;\
+----------+---------------+-----------+\
| store_id | store_name    | region    |\
+----------+---------------+-----------+\
|        1 | Mall of Dubai | Dubai     |\
|        2 | Marina Mall   | Abu Dhabi |\
|        3 | City Centre   | Sharjah   |\
+----------+---------------+-----------+\
3 rows in set (0.00 sec)\
\
mysql> SELECT * FROM orderss;\
+----------+------------+-------------+----------+--------------+\
| order_id | order_date | customer_id | store_id | total_amount |\
+----------+------------+-------------+----------+--------------+\
|        1 | 2024-01-05 |           1 |        1 |      3000.00 |\
|        2 | 2024-01-07 |           2 |        2 |       900.00 |\
|        3 | 2024-01-08 |           3 |        3 |       410.00 |\
|        4 | 2024-01-15 |           4 |        1 |       830.00 |\
|        5 | 2024-02-01 |           5 |        1 |        25.00 |\
|        6 | 2024-02-10 |           1 |        2 |      1020.00 |\
|        7 | 2024-02-14 |           2 |        1 |       155.00 |\
|        8 | 2024-03-01 |           4 |        2 |      1500.00 |\
|        9 | 2024-03-05 |           3 |        1 |      1800.00 |\
|       10 | 2024-03-20 |           5 |        3 |       860.00 |\
+----------+------------+-------------+----------+--------------+\
10 rows in set (0.00 sec)\
\
mysql> SELECT * FROM order_items;\
+----+----------+------------+----------+------------+\
| id | order_id | product_id | quantity | unit_price |\
+----+----------+------------+----------+------------+\
|  1 |        1 |          1 |        2 |    1500.00 |\
|  2 |        2 |          5 |        1 |     900.00 |\
|  3 |        3 |          2 |        3 |     120.00 |\
|  4 |        3 |          3 |        2 |      25.00 |\
|  5 |        4 |          4 |        1 |     800.00 |\
|  6 |        4 |          6 |        1 |      30.00 |\
|  7 |        5 |          3 |        1 |      25.00 |\
|  8 |        6 |          5 |        1 |     900.00 |\
|  9 |        6 |          2 |        1 |     120.00 |\
| 10 |        7 |          3 |        5 |      25.00 |\
| 11 |        7 |          6 |        1 |      30.00 |\
| 12 |        8 |          1 |        1 |    1500.00 |\
| 13 |        9 |          5 |        2 |     900.00 |\
| 14 |        9 |          5 |        1 |     900.00 |\
| 15 |       10 |          4 |        1 |     800.00 |\
| 16 |       10 |          6 |        2 |      30.00 |\
+----+----------+------------+----------+------------+}