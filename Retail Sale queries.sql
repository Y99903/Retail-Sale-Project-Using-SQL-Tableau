{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\b\fs36 \cf0 \ul \ulc0 Retail Sale queries\
\

\f1\b0\fs24 \ulnone 1.\uc0\u8288  \u8288 
\f0\b \ul Total Sales
\f1\b0 \ulnone \
\
SELECT SUM(total_amount) AS total_sales FROM orders;\
\
\
2.\uc0\u8288  \u8288 
\f0\b \ul Monthly Sales Trend
\f1\b0 \ulnone \
\
SELECT \
    MONTH(order_date) AS month, \
    SUM(total_amount) AS monthly_sales\
FROM orders\
GROUP BY MONTH(order_date);\
\
\
3.\uc0\u8288  \u8288 
\f0\b \ul Product List (Price Order)
\f1\b0 \ulnone \
\
SELECT product_name, price \
FROM products\
ORDER BY product_name DESC;\
\
\
4.\uc0\u8288  \u8288 
\f0\b \ul Product Revenue (with JOIN)
\f1\b0 \ulnone \
\
SELECT \
    p.product_name, \
    SUM(oi.quantity * oi.unit_price) AS total_revenue\
FROM order_items oi\
JOIN products p ON oi.product_id = p.product_id\
GROUP BY p.product_name\
ORDER BY total_revenue DESC;\
\
}