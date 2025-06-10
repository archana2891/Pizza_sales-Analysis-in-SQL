# Pizza_sales-Analysis-in-SQL
Pizza Sales Monthly Analysis – 
This project performs a monthly analysis of pizza sales using SQL Server. The objective is to derive key business insights such as total revenue and order volume per month from a sales dataset.

Dataset
Table Used: Pizza_sales
Key Columns:

order_date: Date when the order was placed

quantity: Number of pizzas ordered

total_price: Price per unit multiplied by quantity

SQL Query Breakdown
1. Data Renaming (Optional Fix)
sql
Copy
Edit
sp_rename pizza_sales$, Pizza_sales
This line attempts to rename a table (likely to clean the name). It should be run only once and may require correction if pizza_sales$ does not exist.

2. Data Selection
sql
Copy
Edit
select * from Pizza_sales
Fetches all records from the table to review the raw dataset structure.

3. Monthly Revenue and Order Volume Calculation
sql
Copy
Edit
select 
  month(order_date) as Month_,
  sum(quantity * total_price) as Monthly_revenue,
  count(quantity) as order_volume
from Pizza_sales
group by month(order_date)
order by month(order_date)
Explanation:
month(order_date): Extracts the numeric month (1–12) from the order date.

sum(quantity * total_price): Calculates the total revenue per month.

count(quantity): Calculates the total number of orders placed in each month.

group by: Groups data by month.

order by: Orders the result chronologically from January to December.

Output
The query returns a table with:

Month_: Month number (1–12)

Monthly_revenue: Total revenue generated that month

order_volume: Number of orders placed in that month

Insight:
Month 11 (November) had the highest revenue (~73,172) with 4185 orders.

Month 2 (February) had the lowest revenue (~67,408) with 3892 orders.
