
Retail Sale queries

1.⁠ ⁠Total Sales

SELECT SUM(total_amount) AS total_sales FROM orders;


2.⁠ ⁠Monthly Sales Trend

SELECT 
    MONTH(order_date) AS month, 
    SUM(total_amount) AS monthly_sales
FROM orders
GROUP BY MONTH(order_date);


3.⁠ ⁠Product List (Price Order)

SELECT product_name, price 
FROM products
ORDER BY product_name DESC;


4.⁠ ⁠Product Revenue (with JOIN)

SELECT 
    p.product_name, 
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_revenue DESC;

