INSERT INTO customers (customer_name, email, phone, address) VALUES
('Amit Sharma', 'amit.sharma@example.com', '9876543210', '12 MG Road, Bangalore, Karnataka'),
('Pooja Verma', 'pooja.verma@example.com', '8765432109', '34 Brigade Road, Bangalore, Karnataka'),
('Raj Patel', 'raj.patel@example.com', '9001234567', '56 Church Street, Mumbai, Maharashtra'),
('Sneha Iyer', 'sneha.iyer@example.com', '9123456780', '78 Marine Drive, Mumbai, Maharashtra'),
('Vikram Singh', 'vikram.singh@example.com', '9234567890', '90 Connaught Place, Delhi, Delhi'),
('Meera Reddy', 'meera.reddy@example.com', '9345678901', '12 Jubilee Hills, Hyderabad, Telangana'),
('Karan Gupta', 'karan.gupta@example.com', '9456789012', '56 MG Road, Delhi, Delhi'),
('Neha Desai', 'neha.desai@example.com', '9567890123', '78 Bandra, Mumbai, Maharashtra'),
('Ravi Kumar', 'ravi.kumar@example.com', '9654321098', '22 DLF Phase 1, Gurgaon, Haryana');

select * from customers;

INSERT INTO products (product_name, price) VALUES
('Laptop', 50000.00),
('Smartphone', 25000.00),
('Wireless Earbuds', 2000.00),
('Smartwatch', 8000.00),
('Tablet', 15000.00),
('Camera', 35000.00),
('Bluetooth Speaker', 3000.00),
('Monitor', 12000.00),
('Keyboard', 1500.00),
('External Hard Drive', 7000.00);

select * from products;

INSERT INTO orders (customer_id, order_date, total_amount) VALUES
(1, '2026-06-01 10:00:00', 52000.00),
(2, '2026-06-02 11:30:00', 25000.00),
(3, '2026-06-03 14:15:00', 15000.00),
(4, '2026-06-04 09:45:00', 8000.00),
(5, '2026-06-05 16:00:00', 35000.00),
(1, '2026-06-06 12:20:00', 12000.00),
(6, '2026-06-07 13:00:00', 3000.00),
(7, '2026-06-08 15:30:00', 7000.00),
(8, '2026-06-09 10:50:00', 12000.00),
(9, '2026-06-10 17:10:00', 18000.00);

select * from orders;

INSERT INTO order_items (order_id, product_id, price) VALUES
(1, 1, 50000.00),  -- Order 1: Laptop
(2, 2, 25000.00),  -- Order 2: Smartphone
(3, 3, 15000.00),  -- Order 3: Wireless Earbuds
(4, 4, 8000.00),   -- Order 4: Smartwatch
(5, 5, 35000.00),  -- Order 5: Camera
(1, 6, 3000.00),   -- Order 1: Bluetooth Speaker
(6, 7, 7000.00),   -- Order 6: Monitor
(7, 8, 12000.00),  -- Order 7: Keyboard
(8, 9, 7000.00),   -- Order 8: External Hard Drive
(9, 1, 50000.00);  -- Order 9: Laptop again

SELECT * FROM order_items;
