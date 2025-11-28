use [Retail sales]
--monthly sales trend--
select format(order_date, 'MM') as month,
sum(sales) as total_sales

from retail_sales_dataset
group by format(order_date, 'MM')
order by format(order_date, 'MM');

-- top 10 best selling products--
select Product, sum(Quantity) as total_quantity
from retail_sales_dataset
group by Product
order by total_quantity  DESC;

--profit by category--
select Category, sum(sales) as total_sales,sum(profit) as total_profit
from retail_sales_dataset
group by Category
order by total_profit DESC;

--region wise sales--
select region, sum(sales) as region_sales
from retail_sales_dataset
group by region
order by region_sales DESC;

--city wise sales profit--
select city, sum(sales) as total_sales,
sum(profit) as total_profit
from retail_sales_dataset
group by city
order by total_sales DESC;

--discount impact--
select discount, 
sum(sales) as total_sales,
sum(profit) as total_profit,
avg(profit/sales)*100 as avg_profit_margin
from retail_sales_dataset
group by Discount
order by Discount;

--KPI's--
select 
sum(sales) as total_sales,
sum(profit) as total_profit,
sum(quantity) as total_quantity
from retail_sales_dataset;




