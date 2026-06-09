# Online Order Database System

## Project Overview

The Online Order Database System is a MySQL-based project designed to manage customers, products, orders, and order items. The project demonstrates database design concepts such as Primary Keys, Foreign Keys, Joins, Aggregate Functions, and Relationships between tables.

This project was developed using MySQL and sample data to simulate an online shopping platform.

---

## Database Tables

### 1. Customers

Stores customer information.

| Column        | Data Type |
| ------------- | --------- |
| customer_id   | INT       |
| customer_name | VARCHAR   |
| email         | VARCHAR   |
| phone         | VARCHAR   |
| address       | VARCHAR   |

### 2. Products

Stores product information.

| Column       | Data Type |
| ------------ | --------- |
| product_id   | INT       |
| product_name | VARCHAR   |
| price        | DECIMAL   |

### 3. Orders

Stores order details.

| Column       | Data Type |
| ------------ | --------- |
| order_id     | INT       |
| customer_id  | INT       |
| order_date   | DATETIME  |
| total_amount | DECIMAL   |

### 4. Order_Items

Stores products associated with each order.

| Column        | Data Type |
| ------------- | --------- |
| order_item_id | INT       |
| order_id      | INT       |
| product_id    | INT       |
| price         | DECIMAL   |

---

## Relationships

* One Customer can place many Orders.
* One Order can contain many Products.
* One Product can belong to many Orders.
* Order_Items acts as a bridge table between Orders and Products.

---

## Files

### schema.sql

Contains all CREATE TABLE statements.

### sample_data.sql

Contains sample data for:

* Customers
* Products
* Orders
* Order_Items

### queries.sql

Contains SQL queries for:

* Joins
* Aggregate Functions
* Group By
* Having Clause
* Customer Reports
* Order Reports
* Product Reports

---

## Sample Features

* View all customers
* View all products
* View customer orders
* Calculate total revenue
* Find top customers
* Find products ordered by customers
* Generate sales reports

---

## SQL Concepts Used

* CREATE TABLE
* INSERT INTO
* PRIMARY KEY
* FOREIGN KEY
* INNER JOIN
* LEFT JOIN
* GROUP BY
* HAVING
* COUNT()
* SUM()
* AVG()
* ORDER BY

---

## How to Run

1. Create a MySQL database.
2. Execute schema.sql.
3. Execute sample_data.sql.
4. Execute queries.sql to test reports and queries.

---

## Author

Sanjay P S

Project: Online Order Database System

Technology: MySQL
