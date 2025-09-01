Create database Sales_data;

use  Sales_data;

select * from `sales data`;
alter table `sales data` drop column Sales;

select * from `sales data`;

#Total_Sales

Select `Order ID`,
Sum(`Quantity Ordered`*`Price Each`) as Total_Sales 
from `sales data`
group by `Order ID`
Order by Total_Sales DESC;

select * from `sales data`;

#TotalSales by City
Select City,
sum(`Quantity Ordered`*`Price Each`) as TotalSales
from `sales data`
group by City
Order by City Asc;

#Product count 

select Product,
count(`Quantity Ordered`) as TotalUnitsSold
from `sales data`
Group by Product;

#Most number of Purchase by same Adress

Select `Purchase Address`,
count(`Quantity Ordered`) as Totalunits,
sum(`Quantity Ordered`*`Price Each`) as Totalsales
from `sales data`
group by `Purchase Address`
order by Totalunits DESC ;


#Orders Placed by most recent date
select * from `sales data`;
select `Order ID`, `Order Date`
FROM `sales data`
group by `Order ID`,`Order Date` order by `Order Date`desc;

select * from `sales data`;

show variables like 'secure_file_priv';

