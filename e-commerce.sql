CREATE DATABASE ecommerce_analytics;

USE ecommerce_analytics;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    signup_date DATE
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    discount DECIMAL(5,2),
    payment_method VARCHAR(30),
    order_status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
INSERT INTO customers (customer_id, customer_name, gender, age, city, signup_date) VALUES
(1, 'Amit Sharma', 'Male', 25, 'Mumbai', '2025-01-15'),
(2, 'Priya Patel', 'Female', 29, 'Pune', '2025-02-10'),
(3, 'Rahul Mehta', 'Male', 32, 'Mumbai', '2025-02-18'),
(4, 'Sneha Shah', 'Female', 24, 'Navi Mumbai', '2025-03-05'),
(5, 'Rohit Verma', 'Male', 28, 'Thane', '2025-03-22'),
(6, 'Neha Joshi', 'Female', 35, 'Mumbai', '2025-04-11'),
(7, 'Karan Singh', 'Male', 30, 'Pune', '2025-04-19'),
(8, 'Anjali Desai', 'Female', 27, 'Navi Mumbai', '2025-05-03'),
(9, 'Vivek Rao', 'Male', 40, 'Thane', '2025-05-17'),
(10, 'Pooja Nair', 'Female', 31, 'Mumbai', '2025-06-08'),
(11, 'Arjun Kapoor', 'Male', 26, 'Pune', '2025-06-21'),
(12, 'Riya Malhotra', 'Female', 23, 'Mumbai', '2025-07-02'),
(13, 'Sahil Khan', 'Male', 34, 'Navi Mumbai', '2025-07-15'),
(14, 'Meera Iyer', 'Female', 38, 'Thane', '2025-08-04'),
(15, 'Aditya Kulkarni', 'Male', 29, 'Mumbai', '2025-08-18'),
(16, 'Nisha Gupta', 'Female', 33, 'Pune', '2025-09-01'),
(17, 'Varun Patil', 'Male', 27, 'Navi Mumbai', '2025-09-14'),
(18, 'Kavya Rao', 'Female', 25, 'Mumbai', '2025-10-05'),
(19, 'Manish Jain', 'Male', 36, 'Thane', '2025-10-19'),
(20, 'Simran Kaur', 'Female', 28, 'Pune', '2025-11-07');
INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 55000),
(2, 'Smartphone', 'Electronics', 30000),
(3, 'Headphones', 'Electronics', 2500),
(4, 'Keyboard', 'Electronics', 1800),
(5, 'Mouse', 'Electronics', 900),
(6, 'Monitor', 'Electronics', 12000),
(7, 'Office Chair', 'Furniture', 8500),
(8, 'Desk', 'Furniture', 12000),
(9, 'Bookshelf', 'Furniture', 7000),
(10, 'Backpack', 'Accessories', 2500),
(11, 'Watch', 'Accessories', 5000),
(12, 'Shoes', 'Fashion', 4000),
(13, 'T-Shirt', 'Fashion', 1200),
(14, 'Jeans', 'Fashion', 2500),
(15, 'Jacket', 'Fashion', 4500);
INSERT INTO orders
(order_id, customer_id, product_id, order_date, quantity, discount, payment_method, order_status) VALUES
(1, 1, 1, '2025-01-20', 1, 5.00, 'UPI', 'Completed'),
(2, 2, 3, '2025-01-25', 2, 10.00, 'Credit Card', 'Completed'),
(3, 3, 2, '2025-02-05', 1, 5.00, 'UPI', 'Completed'),
(4, 4, 7, '2025-02-12', 1, 0.00, 'Debit Card', 'Completed'),
(5, 5, 6, '2025-02-20', 2, 8.00, 'Credit Card', 'Completed'),
(6, 6, 12, '2025-03-03', 2, 10.00, 'UPI', 'Completed'),
(7, 7, 8, '2025-03-15', 1, 5.00, 'Cash', 'Completed'),
(8, 8, 4, '2025-03-22', 3, 5.00, 'UPI', 'Completed'),
(9, 9, 1, '2025-04-04', 1, 10.00, 'Credit Card', 'Completed'),
(10, 10, 11, '2025-04-18', 2, 5.00, 'UPI', 'Completed'),
(11, 11, 5, '2025-05-02', 4, 10.00, 'Cash', 'Completed'),
(12, 12, 2, '2025-05-16', 1, 5.00, 'Debit Card', 'Completed'),
(13, 13, 10, '2025-05-28', 2, 0.00, 'UPI', 'Completed'),
(14, 14, 9, '2025-06-06', 1, 8.00, 'Credit Card', 'Completed'),
(15, 15, 6, '2025-06-19', 1, 5.00, 'UPI', 'Completed'),
(16, 16, 13, '2025-07-03', 3, 10.00, 'Cash', 'Completed'),
(17, 17, 14, '2025-07-17', 2, 5.00, 'UPI', 'Completed'),
(18, 18, 3, '2025-08-01', 2, 10.00, 'Credit Card', 'Completed'),
(19, 19, 15, '2025-08-15', 1, 5.00, 'Debit Card', 'Completed'),
(20, 20, 1, '2025-09-01', 1, 10.00, 'UPI', 'Completed'),
(21, 1, 2, '2025-09-12', 1, 5.00, 'Credit Card', 'Completed'),
(22, 3, 7, '2025-09-20', 2, 8.00, 'UPI', 'Completed'),
(23, 5, 8, '2025-10-03', 1, 5.00, 'Cash', 'Completed'),
(24, 7, 3, '2025-10-15', 3, 10.00, 'UPI', 'Completed'),
(25, 9, 6, '2025-10-28', 1, 5.00, 'Credit Card', 'Completed'),
(26, 11, 12, '2025-11-05', 2, 8.00, 'UPI', 'Completed'),
(27, 13, 4, '2025-11-18', 2, 5.00, 'Debit Card', 'Completed'),
(28, 15, 1, '2025-12-02', 1, 10.00, 'Credit Card', 'Completed'),
(29, 17, 11, '2025-12-15', 1, 5.00, 'UPI', 'Completed'),
(30, 19, 5, '2025-12-28', 3, 10.00, 'Cash', 'Completed'),
(31, 2, 6, '2026-01-08', 1, 5.00, 'UPI', 'Completed'),
(32, 4, 10, '2026-01-20', 2, 0.00, 'Credit Card', 'Completed'),
(33, 6, 2, '2026-02-04', 1, 8.00, 'UPI', 'Completed'),
(34, 8, 8, '2026-02-16', 1, 5.00, 'Debit Card', 'Completed'),
(35, 10, 1, '2026-03-01', 1, 10.00, 'Credit Card', 'Completed'),
(36, 12, 13, '2026-03-14', 4, 5.00, 'UPI', 'Completed'),
(37, 14, 14, '2026-04-02', 2, 8.00, 'Cash', 'Completed'),
(38, 16, 15, '2026-04-18', 1, 5.00, 'UPI', 'Completed'),
(39, 18, 3, '2026-05-03', 2, 10.00, 'Credit Card', 'Completed'),
(40, 20, 7, '2026-05-20', 1, 5.00, 'UPI', 'Completed'),
(41, 1, 6, '2026-06-05', 2, 5.00, 'Credit Card', 'Completed'),
(42, 2, 11, '2026-06-18', 1, 8.00, 'UPI', 'Completed'),
(43, 3, 1, '2026-07-02', 1, 10.00, 'Credit Card', 'Completed'),
(44, 4, 12, '2026-07-16', 2, 5.00, 'UPI', 'Completed'),
(45, 5, 2, '2026-08-01', 1, 5.00, 'Debit Card', 'Completed'),
(46, 6, 8, '2026-08-14', 1, 10.00, 'Cash', 'Completed'),
(47, 7, 4, '2026-09-01', 3, 5.00, 'UPI', 'Completed'),
(48, 8, 9, '2026-09-12', 1, 8.00, 'Credit Card', 'Completed'),
(49, 9, 15, '2026-09-20', 2, 5.00, 'UPI', 'Completed'),
(50, 10, 1, '2026-09-28', 1, 10.00, 'Credit Card', 'Completed');
SELECT COUNT(*) AS total_customers
FROM customers;
select count(*) as total_products
from products;
SELECT COUNT(*) AS total_orders
FROM orders;
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(o.quantity * p.price * (1 - o.discount / 100)) DESC
    ) AS revenue_rank
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY revenue_rank;
SELECT
    category,
    product_name,
    total_revenue,
    ROW_NUMBER() OVER (
        PARTITION BY category
        ORDER BY total_revenue DESC
    ) AS product_rank
FROM (
    SELECT
        p.category,
        p.product_name,
        SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue
    FROM products p
    JOIN orders o
        ON p.product_id = o.product_id
    GROUP BY
        p.category,
        p.product_name
) AS product_sales
ORDER BY
    category,
    product_rank;
WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
        SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue
    FROM orders o
    JOIN products p
        ON o.product_id = p.product_id
    GROUP BY
        DATE_FORMAT(o.order_date, '%Y-%m')
)
SELECT
    sales_month,
    total_revenue,
    LAG(total_revenue) OVER (
        ORDER BY sales_month
    ) AS previous_month_revenue,
    total_revenue - LAG(total_revenue) OVER (
        ORDER BY sales_month
    ) AS revenue_change
FROM monthly_sales
ORDER BY sales_month;
WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
        SUM(o.quantity * p.price * (1 - o.discount / 100)) AS monthly_revenue
    FROM orders o
    JOIN products p
        ON o.product_id = p.product_id
    GROUP BY
        DATE_FORMAT(o.order_date, '%Y-%m')
)
SELECT
    sales_month,
    monthly_revenue,
    SUM(monthly_revenue) OVER (
        ORDER BY sales_month
    ) AS running_total_revenue
FROM monthly_sales
ORDER BY sales_month;
WITH customer_orders AS (
    SELECT
        c.customer_id,
        c.customer_name,
        COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY
        c.customer_id,
        c.customer_name
)
SELECT
    customer_id,
    customer_name,
    total_orders
FROM customer_orders
WHERE total_orders > 1
ORDER BY total_orders DESC;
USE ecommerce_analytics;
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity * p.price * (1 - o.discount / 100)) AS lifetime_value,
    AVG(o.quantity * p.price * (1 - o.discount / 100)) AS average_order_value,
    RANK() OVER (
        ORDER BY SUM(o.quantity * p.price * (1 - o.discount / 100)) DESC
    ) AS customer_rank
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY customer_rank;
WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(o.order_date, '%Y-%m') AS sales_month,
        SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue
    FROM orders o
    JOIN products p
        ON o.product_id = p.product_id
    GROUP BY DATE_FORMAT(o.order_date, '%Y-%m')
),
revenue_comparison AS (
    SELECT
        sales_month,
        total_revenue,
        LAG(total_revenue) OVER (
            ORDER BY sales_month
        ) AS previous_month_revenue
    FROM monthly_sales
)
SELECT
    sales_month,
    total_revenue,
    previous_month_revenue,
    CASE
        WHEN previous_month_revenue IS NULL THEN NULL
        WHEN previous_month_revenue = 0 THEN NULL
        ELSE ROUND(
            ((total_revenue - previous_month_revenue)
            / previous_month_revenue) * 100,
            2
        )
    END AS growth_percentage
FROM revenue_comparison
ORDER BY sales_month;
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT CASE
        WHEN YEAR(o.order_date) = 2025 THEN o.order_id
    END) AS orders_2025,
    COUNT(DISTINCT CASE
        WHEN YEAR(o.order_date) = 2026 THEN o.order_id
    END) AS orders_2026
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
HAVING
    orders_2025 > 0
    AND orders_2026 > 0
ORDER BY c.customer_id;
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue,
    DENSE_RANK() OVER (
        ORDER BY SUM(o.quantity * p.price * (1 - o.discount / 100)) DESC
    ) AS revenue_rank
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY revenue_rank;
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
HAVING
    total_revenue > (
        SELECT AVG(customer_revenue)
        FROM (
            SELECT
                SUM(o2.quantity * p2.price * (1 - o2.discount / 100)) AS customer_revenue
            FROM orders o2
            JOIN products p2
                ON o2.product_id = p2.product_id
            GROUP BY o2.customer_id
        ) AS average_revenue
    )
ORDER BY total_revenue DESC;
WITH customer_revenue AS (
    SELECT
        c.customer_id,
        c.customer_name,
        c.city,
        SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN products p
        ON o.product_id = p.product_id
    GROUP BY
        c.customer_id,
        c.customer_name,
        c.city
),
city_ranking AS (
    SELECT
        customer_id,
        customer_name,
        city,
        total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY city
            ORDER BY total_revenue DESC
        ) AS city_rank
    FROM customer_revenue
)
SELECT
    customer_id,
    customer_name,
    city,
    total_revenue
FROM city_ranking
WHERE city_rank = 1
ORDER BY city;
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(o.quantity) AS total_quantity_sold,
    DENSE_RANK() OVER (
        ORDER BY SUM(o.quantity) DESC
    ) AS quantity_rank
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY quantity_rank;
SELECT
    p.product_id,
    p.product_name,
    p.category,
    SUM(o.quantity) AS total_quantity_sold,
    DENSE_RANK() OVER (
        ORDER BY SUM(o.quantity) DESC
    ) AS quantity_rank
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.category
ORDER BY quantity_rank;
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue,
    ROUND(
        SUM(o.quantity * p.price * (1 - o.discount / 100))
        / COUNT(o.order_id),
        2
    ) AS average_order_value
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY average_order_value DESC;
WITH product_sales AS (
    SELECT
        p.product_id,
        p.product_name,
        p.category,
        SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue
    FROM products p
    JOIN orders o
        ON p.product_id = o.product_id
    GROUP BY
        p.product_id,
        p.product_name,
        p.category
),
product_ranking AS (
    SELECT
        product_id,
        product_name,
        category,
        total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY total_revenue DESC
        ) AS product_rank
    FROM product_sales
)
SELECT
    product_id,
    product_name,
    category,
    total_revenue,
    product_rank
FROM product_ranking
WHERE product_rank <= 3
ORDER BY category, product_rank;
SELECT
    c.customer_id,
    c.customer_name,
    MIN(o.order_date) AS first_purchase_date,
    MAX(o.order_date) AS last_purchase_date,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY first_purchase_date;
WITH customer_purchases AS (
    SELECT
        c.customer_id,
        c.customer_name,
        o.order_date,
        LEAD(o.order_date) OVER (
            PARTITION BY c.customer_id
            ORDER BY o.order_date
        ) AS next_purchase_date
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
)
SELECT
    customer_id,
    customer_name,
    order_date,
    next_purchase_date,
    DATEDIFF(next_purchase_date, order_date) AS days_to_next_purchase
FROM customer_purchases
ORDER BY customer_id, order_date;
SELECT
    c.customer_id,
    c.customer_name,
    SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue,
    CASE
        WHEN SUM(o.quantity * p.price * (1 - o.discount / 100)) >= 50000
            THEN 'High Value'
        WHEN SUM(o.quantity * p.price * (1 - o.discount / 100)) >= 20000
            THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN products p
    ON o.product_id = p.product_id
GROUP BY
    c.customer_id,
    c.customer_name
ORDER BY total_revenue DESC;SELECT
    payment_method,
    COUNT(order_id) AS total_orders,
    SUM(o.quantity * p.price * (1 - o.discount / 100)) AS total_revenue,
    ROUND(
        SUM(o.quantity * p.price * (1 - o.discount / 100))
        / COUNT(o.order_id),
        2
    ) AS average_order_value
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
GROUP BY payment_method
ORDER BY total_revenue DESC;
SELECT
    p.category,
    COUNT(o.order_id) AS total_orders,
    SUM(o.quantity) AS total_quantity_sold,
    ROUND(
        SUM(o.quantity * p.price * (1 - o.discount / 100)),
        2
    ) AS total_revenue,
    ROUND(
        AVG(o.quantity * p.price * (1 - o.discount / 100)),
        2
    ) AS average_order_value
FROM products p
JOIN orders o
    ON p.product_id = o.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;
SELECT
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(o.quantity) AS total_quantity_sold,
    ROUND(
        SUM(o.quantity * p.price * (1 - o.discount / 100)),
        2
    ) AS total_revenue,
    ROUND(
        SUM(o.quantity * p.price * (1 - o.discount / 100))
        / COUNT(DISTINCT o.order_id),
        2
    ) AS average_order_value,
    COUNT(DISTINCT o.customer_id) AS active_customers
FROM orders o
JOIN products p
    ON o.product_id = p.product_id;



