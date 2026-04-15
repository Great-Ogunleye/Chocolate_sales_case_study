#CREATING INDEXES 
CREATE INDEX order_key
ON analytics.sales_fact(order_id)

CREATE INDEX customer_key
ON analytics.sales_fact(customer_id)

CREATE INDEX product_key
ON analytics.sales_fact(product_id)

CREATE INDEX store_key
ON analytics.sales_fact(store_id)



#BUSINESS ANALYTICS & AGGREGATIONS
CREATE VIEW revenueperproduct AS
SELECT product_name, SUM(revenue)
FROM analytics.sales_fact
GROUP BY product_name
ORDER BY product_name;

SELECT * FROM revenueperproduct

CREATE VIEW revenuebyregion AS
SELECT country, SUM(revenue)
FROM analytics.sales_fact
GROUP BY country
ORDER BY country;

SELECT * FROM revenuebyregion

CREATE VIEW monthly_trends AS
SELECT DATE_TRUNC('month',order_date) AS month, product_name
FROM analytics.sales_fact
GROUP BY month, product_name
ORDER BY month;

SELECT * FROM monthly_trends


#CUSTOMER & SALES SEGMENTATION
SELECT revenue, DENSE_RANK() OVER(ORDER BY revenue) AS revenue_buckets
FROM analytics.sales_fact
ORDER BY revenue

SELECT order_date, DENSE_RANK() OVER(ORDER BY order_date) AS time_based_categories
FROM analytics.sales_fact
ORDER BY order_date

