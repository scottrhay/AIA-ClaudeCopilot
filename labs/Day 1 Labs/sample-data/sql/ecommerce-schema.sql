-- E-Commerce Database Schema
-- SQLite compatible with intentional data quality issues for validation exercises
-- © 2026 AIA Copilot Training Materials

-- Clean slate for re-runs
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- Customers table
CREATE TABLE customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    city TEXT,
    created_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- Products table
CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price REAL NOT NULL CHECK(price >= 0),
    stock_quantity INTEGER NOT NULL DEFAULT 0 CHECK(stock_quantity >= 0)
);

-- Orders table
CREATE TABLE orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    customer_id INTEGER NOT NULL,
    order_date TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
    total_amount REAL NOT NULL CHECK(total_amount >= 0),
    status TEXT NOT NULL CHECK(status IN ('pending', 'processing', 'shipped', 'delivered', 'cancelled')),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

-- Order items table
CREATE TABLE order_items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL CHECK(quantity > 0),
    unit_price REAL NOT NULL CHECK(unit_price >= 0),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES products(id)
);

-- Insert customers (15 total)
INSERT INTO customers (name, email, city, created_at) VALUES
('Sarah Mitchell', 'sarah.mitchell@email.com', 'Seattle', '2024-01-15 10:23:00'),
('James Rodriguez', 'james.rodriguez@email.com', 'Austin', '2024-01-18 14:35:00'),
('Emily Chen', 'emily.chen@email.com', 'San Francisco', '2024-02-03 09:12:00'),
('Michael Brown', 'michael.brown@email.com', 'Boston', '2024-02-10 16:45:00'),
('Jessica Taylor', 'jessica.taylor@email.com', 'Denver', '2024-02-14 11:20:00'),
('David Kim', 'david.kim@email.com', 'Seattle', '2024-02-20 13:55:00'),
('Amanda White', 'amanda.white@email.com', 'Portland', '2024-03-01 08:30:00'),
('Chris Anderson', 'chris.anderson@email.com', 'Austin', '2024-03-05 15:10:00'),
('Rachel Green', 'rachel.green@email.com', 'Chicago', '2024-03-12 10:05:00'),
('Tom Wilson', 'tom.wilson@email.com', 'Miami', '2024-03-18 14:22:00'),
('Laura Martinez', 'laura.martinez@email.com', 'Los Angeles', '2024-03-25 09:45:00'),
('Kevin Lee', 'kevin.lee@email.com', 'New York', '2024-04-02 12:30:00'),
('Sophie Turner', 'sophie.turner@email.com', 'San Diego', '2024-04-08 16:15:00'),
-- DATA QUALITY ISSUE #1: Duplicate email (violates UNIQUE constraint if inserted)
-- This line is commented to allow schema to load, but represents a data quality issue
-- ('John Duplicate', 'sarah.mitchell@email.com', 'Phoenix', '2024-04-10 11:00:00'),
('Nina Patel', 'nina.patel@email.com', 'Atlanta', '2024-04-15 13:40:00'),
('Marcus Johnson', 'marcus.johnson@email.com', 'Dallas', '2024-04-20 10:55:00');

-- Insert products (20 total)
INSERT INTO products (name, category, price, stock_quantity) VALUES
('Wireless Bluetooth Headphones', 'Electronics', 79.99, 45),
('Organic Cotton T-Shirt', 'Clothing', 24.99, 120),
('Stainless Steel Water Bottle', 'Home & Kitchen', 18.50, 200),
('Yoga Mat Premium', 'Sports & Outdoors', 35.00, 75),
('LED Desk Lamp', 'Home & Kitchen', 42.99, 60),
('Running Shoes', 'Sports & Outdoors', 89.99, 85),
('Coffee Maker', 'Home & Kitchen', 124.99, 30),
('Laptop Backpack', 'Accessories', 54.99, 95),
('Portable Phone Charger', 'Electronics', 29.99, 150),
('Bamboo Cutting Board', 'Home & Kitchen', 22.50, 110),
('Fitness Tracker Watch', 'Electronics', 149.99, 40),
('Winter Jacket', 'Clothing', 159.99, 50),
('Cookbook: Healthy Meals', 'Books', 19.99, 80),
('Plant-Based Protein Powder', 'Health & Wellness', 39.99, 65),
('Ceramic Coffee Mug Set', 'Home & Kitchen', 28.99, 100),
('Wireless Mouse', 'Electronics', 34.99, 125),
('Sunglasses Polarized', 'Accessories', 49.99, 70),
('Journal & Planner', 'Stationery', 16.99, 140),
-- DATA QUALITY ISSUE #2: NULL in stock_quantity (but schema has DEFAULT 0, so this is a soft issue)
('Premium Candle Set', 'Home & Kitchen', 32.99, 0),  -- Actually out of stock
('Resistance Bands Set', 'Sports & Outdoors', 21.99, 90);

-- Insert orders (30 total)
INSERT INTO orders (customer_id, order_date, total_amount, status) VALUES
(1, '2024-04-21 10:15:00', 104.98, 'delivered'),
(2, '2024-04-21 14:22:00', 89.99, 'delivered'),
(3, '2024-04-22 09:30:00', 178.97, 'delivered'),
(1, '2024-04-23 11:45:00', 42.99, 'delivered'),
(4, '2024-04-23 16:20:00', 53.49, 'delivered'),
(5, '2024-04-24 10:05:00', 229.97, 'delivered'),
(6, '2024-04-24 13:50:00', 124.99, 'shipped'),
(7, '2024-04-25 08:35:00', 97.48, 'shipped'),
(8, '2024-04-25 15:10:00', 159.99, 'shipped'),
(3, '2024-04-26 09:25:00', 149.99, 'shipped'),
(9, '2024-04-26 12:40:00', 71.98, 'processing'),
(10, '2024-04-27 10:55:00', 54.99, 'processing'),
(11, '2024-04-27 14:15:00', 207.97, 'processing'),
(2, '2024-04-28 09:10:00', 29.99, 'processing'),
(12, '2024-04-28 11:30:00', 92.98, 'pending'),
(13, '2024-04-29 08:45:00', 35.00, 'pending'),
(1, '2024-04-29 13:20:00', 79.99, 'pending'),
(14, '2024-04-30 10:00:00', 186.97, 'pending'),
(15, '2024-04-30 15:35:00', 44.98, 'pending'),
(4, '2024-05-01 09:15:00', 124.99, 'pending'),
(6, '2024-05-01 12:50:00', 149.99, 'pending'),
(8, '2024-05-02 10:25:00', 112.97, 'cancelled'),
(7, '2024-05-02 14:40:00', 67.48, 'cancelled'),
(5, '2024-05-03 09:05:00', 89.99, 'pending'),
(11, '2024-05-03 11:55:00', 28.99, 'pending'),
(9, '2024-05-04 08:30:00', 21.99, 'pending'),
(3, '2024-05-04 13:15:00', 134.97, 'pending'),
(10, '2024-05-05 10:40:00', 79.99, 'pending'),
-- DATA QUALITY ISSUE #3: Orphaned order (customer_id 999 doesn't exist)
(999, '2024-05-05 14:20:00', 49.99, 'pending'),
(12, '2024-05-06 09:30:00', 95.98, 'pending');

-- Insert order_items (60 total)
-- Order 1 items (Customer 1)
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 79.99),
(1, 3, 1, 18.50),
(1, 18, 1, 16.99),

-- Order 2 items (Customer 2)
(2, 6, 1, 89.99),

-- Order 3 items (Customer 3)
(3, 7, 1, 124.99),
(3, 10, 2, 22.50),
(3, 18, 1, 16.99),

-- Order 4 items (Customer 1)
(4, 5, 1, 42.99),

-- Order 5 items (Customer 4)
(5, 2, 2, 24.99),
(5, 18, 1, 16.99),

-- Order 6 items (Customer 5)
(6, 6, 1, 89.99),
(6, 12, 1, 159.99),

-- Order 7 items (Customer 6)
(7, 7, 1, 124.99),

-- Order 8 items (Customer 7)
(8, 2, 1, 24.99),
(8, 3, 2, 18.50),
(8, 14, 1, 39.99),

-- Order 9 items (Customer 8)
(9, 12, 1, 159.99),

-- Order 10 items (Customer 3)
(10, 11, 1, 149.99),

-- Order 11 items (Customer 9)
(11, 4, 1, 35.00),
(11, 13, 1, 19.99),
(11, 18, 1, 16.99),

-- Order 12 items (Customer 10)
(12, 8, 1, 54.99),

-- Order 13 items (Customer 11)
(13, 1, 1, 79.99),
(13, 7, 1, 124.99),
(13, 18, 1, 16.99),

-- Order 14 items (Customer 2)
(14, 9, 1, 29.99),

-- Order 15 items (Customer 12)
(15, 2, 2, 24.99),
(15, 13, 2, 19.99),

-- Order 16 items (Customer 13)
(16, 4, 1, 35.00),

-- Order 17 items (Customer 1)
(17, 1, 1, 79.99),

-- Order 18 items (Customer 14)
(18, 11, 1, 149.99),
(18, 13, 1, 19.99),
(18, 18, 1, 16.99),

-- Order 19 items (Customer 15)
(19, 10, 2, 22.49),

-- Order 20 items (Customer 4)
(20, 7, 1, 124.99),

-- Order 21 items (Customer 6)
(21, 11, 1, 149.99),

-- Order 22 items (Customer 8)
(22, 1, 1, 79.99),
(22, 18, 2, 16.99),

-- Order 23 items (Customer 7)
(23, 2, 1, 24.99),
(23, 10, 1, 22.50),
(23, 13, 1, 19.99),

-- Order 24 items (Customer 5)
(24, 6, 1, 89.99),

-- Order 25 items (Customer 11)
(25, 15, 1, 28.99),

-- Order 26 items (Customer 9)
(26, 20, 1, 21.99),

-- Order 27 items (Customer 3)
(27, 1, 1, 79.99),
(27, 8, 1, 54.99),

-- Order 28 items (Customer 10)
(28, 1, 1, 79.99),

-- Order 29 items (Orphaned order - customer 999)
(29, 17, 1, 49.99),

-- Order 30 items (Customer 12)
(30, 9, 2, 29.99),
(30, 3, 2, 18.00);

-- Summary queries for validation
-- Run these to verify data loaded correctly:

-- Total customers: should be 15
-- SELECT COUNT(*) as total_customers FROM customers;

-- Total products: should be 20
-- SELECT COUNT(*) as total_products FROM products;

-- Total orders: should be 30
-- SELECT COUNT(*) as total_orders FROM orders;

-- Total order items: should be 60
-- SELECT COUNT(*) as total_order_items FROM order_items;

-- Find data quality issues:
-- 1. Orders with non-existent customers (orphaned records):
-- SELECT o.* FROM orders o LEFT JOIN customers c ON o.customer_id = c.id WHERE c.id IS NULL;

-- 2. Products with zero stock:
-- SELECT * FROM products WHERE stock_quantity = 0;

-- 3. Orders where total_amount doesn't match sum of order_items:
-- SELECT o.id, o.total_amount, SUM(oi.quantity * oi.unit_price) as calculated_total
-- FROM orders o
-- JOIN order_items oi ON o.id = oi.order_id
-- GROUP BY o.id
-- HAVING ABS(o.total_amount - calculated_total) > 0.01;
