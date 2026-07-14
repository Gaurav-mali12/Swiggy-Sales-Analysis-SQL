--KPI'S DEVLOPMENT

-- Total Orders
SELECT COUNT(*) AS Total_Orders
FROM fact_swiggy_orders;


-- Total Revenue (INR Million)
SELECT
FORMAT(SUM(CONVERT(FLOAT,price_INR))/1000000, 'N2') + 'INR Million'
AS Total_Revenue
FROM fact_swiggy_orders;


-- Average Dish Price
SELECT
FORMAT(AVG(CONVERT(FLOAT,price_INR)), 'N2') +'INR'
AS Total_Revenue
FROM fact_swiggy_orders;

-- Average Rating
SELECT
AVG(Rating) AS Avg_Rating
FROM fact_swiggy_orders;


--Deep-Dive Business Analysis
--Date-Based Analysis

--Monthly Order Trend
SELECT 
	d.year,
	d.month,
	d.month_name,
	COUNT(*) AS TOTAL_ORDER,
	SUM(Price_INR) AS TOTAL_REVENUE
FROM fact_swiggy_orders AS f
JOIN dim_date AS d
ON f.date_id = d.date_id
GROUP BY d.year,d.month,d.month_name;



--Quarterly Trend
SELECT 
	d.year,
	d.Quarter,
	COUNT(*) AS TOTAL_ORDER,
	SUM(Price_INR) AS TOTAL_REVENUE
FROM fact_swiggy_orders AS f
JOIN dim_date AS d
ON f.date_id = d.date_id
GROUP BY d.year,d.Quarter;


--Yearly Trend
SELECT 
	d.year,
	COUNT(*) AS TOTAL_ORDER,
	SUM(Price_INR) AS TOTAL_REVENUE
FROM fact_swiggy_orders AS f
JOIN dim_date AS d
ON f.date_id = d.date_id
GROUP BY d.year;


-- Orders by Day of Week (Mon-Sun)
SELECT
DATENAME (WEEKDAY, d.full_date) AS day_name,
COUNT(*) AS total_orders
FROM fact_swiggy_orders  AS f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY DATENAME (WEEKDAY, d.full_date), DATEPART(WEEKDAY, d.full_date)
ORDER BY DATEPART(WEEKDAY, d.full_date);


--Location-Based Analysis

--Top 10 cities by order volume
SELECT TOP 10
l.city,
COUNT(*) AS Total_orders
FROM fact_swiggy_orders AS f
JOIN  dim_location AS l 
ON l.location_id = f.location_id
GROUP BY l.city
ORDER BY COUNT(*) DESC;


--Top 10 cities by Revenue
SELECT TOP 10
l.city,
SUM(Price_INR) AS TOTAL_REVENUE
FROM fact_swiggy_orders AS f
JOIN  dim_location AS l 
ON l.location_id = f.location_id
GROUP BY l.city
ORDER BY SUM(Price_INR) DESC;


--Revenue contribution by states
SELECT 
l.State,
SUM(Price_INR) AS TOTAL_REVENUE
FROM fact_swiggy_orders AS f
JOIN  dim_location AS l 
ON l.location_id = f.location_id
GROUP BY l.State
ORDER BY SUM(Price_INR) DESC;


--Food Performance

--Top 10 restaurants by orders
SELECT TOP 10
r.Restaurant_Name,
COUNT(*) AS TOTAL_ORDERS
FROM fact_swiggy_orders AS f
JOIN  dim_restaurant AS r 
ON r.restaurant_id = f.restaurant_id
GROUP BY r.Restaurant_Name
ORDER BY SUM(Price_INR) DESC;


-- Top Categories by Order Volume
SELECT TOP 10
c.category,
COUNT(*) AS total_orders
FROM fact_swiggy_orders f
JOIN dim_category c ON f.category_id = c.category_id
GROUP BY c.category
ORDER BY total_orders DESC;


-- Most Ordered Dishes
SELECT TOP 10
d.dish_name,
COUNT(*) AS order_count
FROM fact_swiggy_orders f
JOIN dim_dish d ON f.dish_id = d.dish_id
GROUP BY d.dish_name
ORDER BY order_count DESC;


-- Cuisine Performance (Orders + Avg Rating)
SELECT
c.category,
COUNT(*) AS total_orders,
AVG( f.rating) AS avg_rating
FROM fact_swiggy_orders f
JOIN dim_category c ON f.category_id = c.category_id
GROUP BY c.category
ORDER BY total_orders DESC;



--Customer Spending Insights

-- Total Orders by Price Range
SELECT
	CASE
		WHEN CONVERT(FLOAT, price_inr) < 100 THEN 'Under 100'
		WHEN CONVERT(FLOAT, price_inr) BETWEEN 100 AND 199 THEN '100 - 199'
		WHEN CONVERT(FLOAT, price_inr) BETWEEN 200 AND 299 THEN '200 - 299'
		WHEN CONVERT(FLOAT, price_inr) BETWEEN 300 AND 499 THEN '300 - 499'
		ELSE '500+'
	END AS price_range,
COUNT(*) AS total_orders
FROM fact_swiggy_orders
GROUP BY
	CASE
		WHEN CONVERT(FLOAT, price_inr) < 100 THEN 'Under 100'
		WHEN CONVERT(FLOAT, price_inr) BETWEEN 100 AND 199 THEN '100 - 199'
		WHEN CONVERT(FLOAT, price_inr) BETWEEN 200 AND 299 THEN '200 - 299'
		WHEN CONVERT(FLOAT, price_inr) BETWEEN 300 AND 499 THEN '300 - 499'
		ELSE '500+'
	END
ORDER BY total_orders DESC;


-- Rating Count Distribution (1-5)
SELECT
rating,
COUNT(*) AS rating_count
FROM fact_swiggy_orders
GROUP BY rating
ORDER BY COUNT(*) DESC;


