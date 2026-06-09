USE e_commerce;

--get all customers with their details
SELECT * FROM CUSTOMERS

--get all products with their prices
SELECT * FROM products;

--get all orders along with customer names
SELECT o.order_id,c.customer_name,o.order_date,o.total_amount FROM orders o 
INNER JOIN customers c ON o.customer_id=c.customer_id;

--get total sales per product (sum of all order items for each product)
SELECT p.product_name,SUM(oi.price) as total_sales FROM products p 
INNER JOIN order_items oi ON oi.product_id=p.product_id GROUP BY p.product_name;

--get all orders for a specific customer (eg : customer_id=1)
SELECT * FROM orders WHERE customer_id = 1 ;

--get all order items for a specific order (eg : order_id=2)
SELECT * FROM order_items WHERE order_id = 2 ;

--get customers who have placed more than one order
SELECT c.customer_name,COUNT(o.order_id) as order_count FROM customers c 
INNER JOIN orders o ON c.customer_id=o.customer_id GROUP BY c.customer_name HAVING COUNT(o.order_id) > 1;

--get the total number of orders and total revenue
SELECT COUNT(*) as total_orders, SUM(total_amount) as total_revenue
FROM orders;

--get products that have never been ordered
SELECT p.product_name FROM products p 
LEFT JOIN order_items oi ON oi.product_id=p.product_id
WHERE oi.product_id is NULL;

--get the top 3 customers by total spending
SELECT c.customer_name,SUM(o.total_amount) as total_spend FROM customers c
INNER JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.customer_name ORDER BY SUM(o.total_amount) DESC LIMIT 3;