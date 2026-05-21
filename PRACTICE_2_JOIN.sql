-- Active: 1778232352309@@127.0.0.1@5432@ph
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (customer_id, order_date, total_amount) VALUES 
    (1, '2022-01-05', 100.50),
    (2, '2022-01-07', 200.75),
    (1, '2022-01-08', 150.25),
    (3, '2022-01-10', 300.00),
    (2, '2022-01-15', 180.50),
    (3, '2022-01-20', 220.25),
    (1, '2022-01-25', 90.00),
    (2, '2022-01-28', 120.75),
    (3, '2022-02-01', 250.50),
    (1, '2022-02-05', 180.25);


-- Find customers who have placed more than 2 orders and calculate the total amount spent by  each of these customers.
SELECT customer_id, ROUND(SUM(total_amount)) FROM orders
GROUP BY customer_id HAVING count(*)>2


-- Find the total amount of orders placed each month in the year 2022.
SELECT EXTRACT(MONTH FROM order_date)as order_month, SUM(total_amount) FROM orders
GROUP BY order_month