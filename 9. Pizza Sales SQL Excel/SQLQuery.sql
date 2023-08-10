select sum(total_price)as Total_Revenue from pizza_sales;

select (sum(total_price)/count(distinct order_id)) as Avg_Order_value from pizza_sales;

select sum(quantity) as Total_Pizza_Sold from pizza_sales;

select count(distinct order_id) as Total_Order_Placed from pizza_sales;

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))
AS Avg_Pizzas_per_order
FROM pizza_sales;


select DATENAME(DW,order_date) as order_day , count(distinct order_id) as Total_orders 
from pizza_sales
group by DATENAME(DW,order_date);


SELECT DATEPART(HOUR, order_time) as order_hours, COUNT(DISTINCT order_id) as total_orders
from pizza_sales
group by DATEPART(HOUR, order_time)
order by DATEPART(HOUR, order_time);



select pizza_category , (sum(total_price)/(select sum(total_price) from pizza_sales)*100) as percent_sales
from pizza_sales
group by pizza_category;


select pizza_size , (sum(total_price)/(select sum(total_price) from pizza_sales)*100) as percent_sales
from pizza_sales
group by pizza_size
order by pizza_size;


SELECT pizza_category, SUM(quantity) as Total_Quantity_Sold
FROM pizza_sales
GROUP BY pizza_category;


SELECT Top 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold DESC;


SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;


