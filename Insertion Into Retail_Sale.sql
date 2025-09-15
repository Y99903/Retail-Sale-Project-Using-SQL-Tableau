Insertion Into Retail_Sale

Customer:-
INSERT INTO cust(customer_name, city, country, signup_date) VALUES
    -> ('Amit Patel','Dubai','UAE','2023-01-05'),
    -> ('Sara Ali','Abu Dhabi','UAE','2023-02-12'),
    -> ('John Mathew','Sharjah','UAE','2023-01-20'),
    -> ('Ali Khan','Dubai','UAE','2023-03-03'),
    -> ('Priya Sharma','Dubai','UAE','2023-02-28');


Stores :-
INSERT INTO stores (store_name, region) VALUES
    -> ('Mall of Dubai','Dubai'),
    -> ('Marina Mall','Abu Dhabi'),
    -> ('City Centre','Sharjah');


Products :-
 INSERT INTO products (product_name, category, price) VALUES
    -> ('Laptop Pro 15','Electronics',1500.00),
    -> ('Noise Headphones','Electronics',120.00),
    -> ('T-shirt','Apparel',25.00),
    -> ('Tablet 10','Electronics',800.00),
    -> ('Mobile Phone X','Electronics',900.00),
    -> ('Wireless Mouse','Accessories',30.00);



Orders :- INSERT INTO orderss (order_date, customer_id, store_id, total_amount) VALUES
    -> ('2024-01-05', 1, 1, 3000.00),  
    -> ('2024-01-07', 2, 2, 900.00),  
    -> ('2024-01-08', 3, 3, 410.00),   
    -> ('2024-01-15', 4, 1, 830.00),   
    -> ('2024-02-01', 5, 1, 25.00),   
    -> ('2024-02-10', 1, 2, 1020.00), 
    -> ('2024-02-14', 2, 1, 155.00),   
    -> ('2024-03-01', 4, 2, 1500.00),  
    -> ('2024-03-05', 3, 1, 1800.00),  
    -> ('2024-03-20', 5, 3, 860.00);   


Order_items :-
 INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
    -> (1, 1, 2, 1500.00),   
    -> (2, 5, 1, 900.00),    
    -> (3, 2, 3, 120.00),   
    -> (3, 3, 2, 25.00),     
    -> (4, 4, 1, 800.00),    
    -> (4, 6, 1, 30.00),     
    -> (5, 3, 1, 25.00),     
    -> (6, 5, 1, 900.00),     
    -> (6, 2, 1, 120.00),    
    -> (7, 3, 5, 25.00),     
    -> (7, 6, 1, 30.00),      
    -> (8, 1, 1, 1500.00),    
    -> (9, 5, 2, 900.00),    
    -> (9, 5, 1, 900.00),
    -> (10, 4, 1, 800.00),    
    -> (10, 6, 2, 30.00);     
