{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fnil\fcharset0 Menlo-Regular;\f2\fnil\fcharset0 Menlo-Bold;
}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;}
{\*\expandedcolortbl;;\csgray\c0;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11200\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs36 \cf0 \ul \ulc0 Insertion Into Retail_Sale\
\

\fs24 Customer:-
\fs36 \
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f1\b0\fs22 \cf2 \ulnone \CocoaLigature0 INSERT INTO cust(customer_name, city, country, signup_date) VALUES\
    -> ('Amit Patel','Dubai','UAE','2023-01-05'),\
    -> ('Sara Ali','Abu Dhabi','UAE','2023-02-12'),\
    -> ('John Mathew','Sharjah','UAE','2023-01-20'),\
    -> ('Ali Khan','Dubai','UAE','2023-03-03'),\
    -> ('Priya Sharma','Dubai','UAE','2023-02-28');\
\
\

\f2\b\fs24 \ul Stores :-\

\f1\b0\fs22 \ulnone INSERT INTO stores (store_name, region) VALUES\
    -> ('Mall of Dubai','Dubai'),\
    -> ('Marina Mall','Abu Dhabi'),\
    -> ('City Centre','Sharjah');\
\
\

\f2\b\fs24 \ul Products :-\

\f1\b0\fs22 \ulnone  INSERT INTO products (product_name, category, price) VALUES\
    -> ('Laptop Pro 15','Electronics',1500.00),\
    -> ('Noise Headphones','Electronics',120.00),\
    -> ('T-shirt','Apparel',25.00),\
    -> ('Tablet 10','Electronics',800.00),\
    -> ('Mobile Phone X','Electronics',900.00),\
    -> ('Wireless Mouse','Accessories',30.00);\
\
\
\

\f2\b\fs24 \ul Orders :-
\f1\b0\fs22 \ulnone  INSERT INTO orderss (order_date, customer_id, store_id, total_amount) VALUES\
    -> ('2024-01-05', 1, 1, 3000.00),  \
    -> ('2024-01-07', 2, 2, 900.00),  \
    -> ('2024-01-08', 3, 3, 410.00),   \
    -> ('2024-01-15', 4, 1, 830.00),   \
    -> ('2024-02-01', 5, 1, 25.00),   \
    -> ('2024-02-10', 1, 2, 1020.00), \
    -> ('2024-02-14', 2, 1, 155.00),   \
    -> ('2024-03-01', 4, 2, 1500.00),  \
    -> ('2024-03-05', 3, 1, 1800.00),  \
    -> ('2024-03-20', 5, 3, 860.00);   \
\
\

\f2\b\fs24 \ul Order_items :-
\f1\b0\fs22 \ulnone \
 INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES\
    -> (1, 1, 2, 1500.00),   \
    -> (2, 5, 1, 900.00),    \
    -> (3, 2, 3, 120.00),   \
    -> (3, 3, 2, 25.00),     \
    -> (4, 4, 1, 800.00),    \
    -> (4, 6, 1, 30.00),     \
    -> (5, 3, 1, 25.00),     \
    -> (6, 5, 1, 900.00),     \
    -> (6, 2, 1, 120.00),    \
    -> (7, 3, 5, 25.00),     \
    -> (7, 6, 1, 30.00),      \
    -> (8, 1, 1, 1500.00),    \
    -> (9, 5, 2, 900.00),    \
    -> (9, 5, 1, 900.00),\
    -> (10, 4, 1, 800.00),    \
    -> (10, 6, 2, 30.00);     \
}