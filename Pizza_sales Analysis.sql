create database Weekend

use [Weekend]

sp_rename pizza_sales$, Pizza_sales

select * from Pizza_sales

select month(order_date) as Month_,sum(quantity*total_price) as Monthly_revenue,
count(quantity) as order_volume
from Pizza_sales 
group by month(order_date) 
order by month(order_date) 

 






 

