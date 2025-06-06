# Retail-Sales-Analysis
Retail Sales Analysis Project

This project analyzes a retail sales dataset using SQL, Python, and Power BI. It aims to derive meaningful business insights from sales, customer behavior, and profitability data.

🔍 Objective

To explore and analyze retail sales data to identify key business metrics and generate visual reports for business decision-making.

🗂 Project Structure

retail-sales-analysis/

├── data/

│   └── retails.csv

├── sql_queries/

│   └── business_analysis.sql

├── python_notebooks/

│   └── retail_analysis.ipynb

├── powerbi_reports/

│   └── retail_dashboard.pbix

├── images/

│   ├── top_customers.png

│   ├── sales_trend.png

│   ├── revenue_by_state.png

│   ├── profitable_categories.png

│   ├── avg_discount_by_category.png

│   ├── shipping_mode_impact.png

│   ├── profitable_customer_type.png

│   ├── discount_vs_profit.png

│   ├── high_discount_low_profit.png

│   └── profit_by_priority.png

├── README.md


🧾 Technologies Used

SQL (MySQL Workbench) for data querying

Python (Pandas, Matplotlib, Seaborn) for data cleaning and visualization

Power BI for dashboard and report creation

GitHub for version control and project showcase

📊 Key Business Questions, SQL Queries, and Visualizations

1. Top 10 Customers by Total Purchase Amount

SQL Query:

SELECT `Customer Name`, SUM(`Total`) AS `Total Purchase Amount`
FROM retails
GROUP BY `Customer Name`
ORDER BY `Total Purchase Amount` DESC
LIMIT 10;


![Top 10 Customers](images/Screenshot%202025-05-29%20145537.png)

Visualization:

2. States with Highest Total Revenue

SQL Query:

SELECT `State`, SUM(`Total`) AS `Total Revenue`
FROM retails
GROUP BY `State`
ORDER BY `Total Revenue` DESC;

![Yearly Sales Trends](images/Screenshot%202025-05-28%20170942.png)

Visualization:

3. Monthly Sales Trends

SQL Query:

SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS `Month`, SUM(`Total`) AS `Monthly Sales`
FROM retails
GROUP BY `Month`
ORDER BY `Month`;

![Yearly Sales Trends](images/Screenshot%202025-05-28%20171045.png)

Visualization:


4. Most Profitable Product Categories

SQL Query:

SELECT `Product Category`, SUM(`Profit Margin`) AS `Total Profit`
FROM retails
GROUP BY `Product Category`
ORDER BY `Total Profit` DESC;

![Most Profitable Product Category](images/Screenshot%202025-05-28%20171231.png)

Visualization:


5. Average Discount per Product Category

SQL Query:

SELECT `Product Category`, AVG(`Discount %`) AS `Average Discount`
FROM retails
GROUP BY `Product Category`;

![Average Discount Per Products Category](images/Screenshot%202025-05-28%20171411.png)

Visualization:


6. Most Used Shipping Mode & Delivery Impact

SQL Query:

SELECT `Ship Mode`, COUNT(*) AS `Count`, AVG(DATEDIFF(`Ship Date`, `Order Date`)) AS `Avg Delivery Days`
FROM retails
GROUP BY `Ship Mode`;

![Most Use Shipping Mode](images/Screenshot%202025-05-28%20171534.png)

Visualization:


7. Most Profitable Customer Type

SQL Query:

SELECT `Customer Type`, SUM(`Profit Margin`) AS `Total Profit`
FROM retails
GROUP BY `Customer Type`
ORDER BY `Total Profit` DESC;

![Most Profitable Customer](images/Screenshot%202025-05-28%20171702.png)

Visualization:


8. Discount % vs Profit Margin Correlation

SQL Query:

SELECT `Discount %`, `Profit Margin`
FROM retails;

![Discount Vs Profit Margin Corelation](images/Screenshot%202025-05-28%20172050.png)

Visualization:


9. Products Sold at High Discount but Low Profit

SQL Query:

SELECT `Product Name`, AVG(`Discount %`) AS `Avg Discount`, AVG(`Profit Margin`) AS `Avg Profit`
FROM retails
GROUP BY `Product Name`
HAVING `Avg Discount` > 10 AND `Avg Profit` < 20;

![Product Sold At High Discount But Low Profit](images/Screenshot%202025-05-28%20172250.png)

Visualization:


10. Profit Margin by Order Priority

SQL Query:

SELECT `Order Priority`, AVG(`Profit Margin`) AS `Avg Profit Margin`
FROM retails
GROUP BY `Order Priority`
ORDER BY `Avg Profit Margin` DESC;

![Profit Margin By Order Priority](images/Screenshot%202025-05-28%20172405.png)

Visualization:


🔮 Future Scope

Add machine learning models for sales prediction

Include customer segmentation using KMeans

Deploy dashboard online using Power BI Service

📌 How to Run

Clone this repository

Open the dataset in the data/ folder

Use MySQL to run queries from sql_queries/

Open the Jupyter notebook to run Python analysis

Open Power BI file for visual dashboard

🙋‍♂️ Author

Your Name : Rahul Suthar

Email : rahulsuthar.2027@gmail.com

GitHub : rahulsuthar27


