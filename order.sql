
create database onlinesales;
use onlinesales;
CREATE TABLE IF NOT EXISTS orders (
    transaction_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    product_category VARCHAR(100),
    product_name VARCHAR(100),
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(10,2),
    region VARCHAR(50),
    payment_method VARCHAR(50)
);
SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
SELECT * FROM orders;

SELECT
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    SUM(total_revenue) AS monthly_revenue,
    COUNT(DISTINCT transaction_id) AS order_volume
FROM orders
GROUP BY order_year, order_month
ORDER BY order_year, order_month;





