
SELECT brand_name AS Brand
FROM production.brands;



SELECT 
    customer_id AS [Cust ID],
    last_name AS [Last name],
    first_name AS [First name],
    email AS Email,
    street AS [Street Address],
    city AS City,
    state AS State
FROM sales.customers
WHERE city IN ('Bronx', 'Brooklyn')
ORDER BY city, last_name;



SELECT
    p.product_name AS [Product name],
    b.brand_name AS Brand,
    p.model_year AS Model,
    p.list_price AS Price
FROM production.products p
JOIN production.brands b ON p.brand_id = b.brand_id
ORDER BY p.product_name DESC;



SELECT COUNT(*) AS [NY Customers]
FROM sales.customers
WHERE state = 'NY';


SELECT
    p.product_name AS [Product name],
    b.brand_name AS Brand,
    p.list_price AS Price
FROM sales.customers c
JOIN sales.orders o ON c.customer_id = o.customer_id
JOIN sales.order_items oi ON o.order_id = oi.order_id
JOIN production.products p ON oi.product_id = p.product_id
JOIN production.brands b ON p.brand_id = b.brand_id
WHERE c.first_name = 'Pamala'
AND c.last_name = 'Henry'
AND c.city = 'Bronx'
AND c.state = 'NY';