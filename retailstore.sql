create  database retailstore;
use retailstore;
select * from retails
limit 10;
describe retails;

#1. Which are the top 10 customers by total purchase amount?

SELECT Customer_Name, 
       SUM(total) AS total_purchase
FROM retails
GROUP BY Customer_Name
ORDER BY total_purchase DESC
LIMIT 10;


#2. Which states generated the highest total revenue?

SELECT `State`,
       SUM(`Total`) AS total_revenue
FROM retails
GROUP BY `State`
ORDER BY total_revenue DESC;



select * from retails;




#Q3. What is the monthly sales trend over time?

SELECT 
    DATE_FORMAT(STR_TO_DATE(`Order_Date`, '%Y-%m-%d'), '%Y-%m') AS order_month,
    SUM(`Total`) AS total_sales
FROM retails
GROUP BY order_month
ORDER BY order_month;


#4. Which product categories are most profitable overall?

SELECT Product_Category,
       SUM(Profit_Margin * Order_Quantity) AS total_profit
FROM retails
GROUP BY Product_Category
ORDER BY total_profit DESC;




#5. What is the average discount given per product category?
SELECT Product_category,
       AVG(`Discount_percent`) AS avg_discount_percentage
FROM retails
GROUP BY Product_Category
ORDER BY avg_discount_percentage DESC;





#6. Which shipping mode is most used and how does it affect delivery time?
select ship_mode,count(*) as total_orders
from retails
group by ship_mode
order by total_orders desc;



select ship_mode,
avg(datediff(str_to_date(ship_date,"%Y-%m-%d"),str_to_date(order_date,"%Y-%m-%d"))) as avg_
from retails 
group by ship_mode
order by avg_;


#7. Which customer type (Consumer, Corporate, etc.) is the most profitable?
select customer_type, sum(order_quantity * total) as total_profits 
from retails
group by customer_type
order by total_profits desc;



#8. What is the relationship between discount % and profit margin?
SELECT 
  CASE 
    WHEN `Discount_percent` < 5 THEN '0-5%'
    WHEN `Discount_percent` BETWEEN 5 AND 10 THEN '5-10%'
    WHEN `Discount_percent` BETWEEN 10 AND 20 THEN '10-20%'
    WHEN `Discount_percent` > 20 THEN '20%+'
  END AS discount_range,
  AVG(`Profit_Margin`) AS avg_profit_margin
FROM retails
GROUP BY discount_range
ORDER BY discount_range;




#9. Which products are frequently sold with high discount but low profit margin?

SELECT 
  product_name,
  AVG(CAST(REPLACE(`discount_percent`, '%', '') AS DECIMAL(5,2))) AS avg_,
  AVG(profit_margin) AS prs
FROM retails
GROUP BY product_name
HAVING avg_ >= 5 AND prs >= 20;




#10.What is the overall profit margin for each order priority level?


select order_priority,avg(profit_margin) as avg_order_priority_profit_margins 
from retails
group by order_priority
order by avg_order_priority_profit_margins desc;