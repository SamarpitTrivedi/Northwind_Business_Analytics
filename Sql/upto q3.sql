-- What is the average number of orders per customer?
Select CustomerID , count(OrderID) as number_of_orders from orders group by CustomerID
order by number_of_orders DESC
Limit 10;
--  Are there high-value repeat customers?
-- Yes, there are customers with order count of 15 and above.

-- How do customer order patterns vary by city or country?
-- 1) order patterns vary by city
Select ShipCity,ShipCountry, count(OrderID) as number_of_orders from orders
group by ShipCity,ShipCountry 
order by number_of_orders Desc;
-- 2) order patterns vary by country
Select ShipCountry, count(OrderID) as number_of_orders from orders
group by ShipCountry 
order by number_of_orders Desc;

-- Can we cluster customers based on total spend, order count, and preferred categories?
Select CustomerID, c.CategoryName, sum(od.UnitPrice * od.Quantity * (1- od.Discount)) as total_spends
, count(o.OrderID) as number_of_orders
from orderdetails as  od
Join orders o ON o.OrderID = od.OrderID
Join products p ON od.ProductID = p.ProductID
Join categories c ON c.CategoryID = p.CategoryID
group by CustomerID , c.CategoryName
order by CustomerID;

-- Which product categories or products contribute most to order revenue? 5 .Are there any correlations between orders and customer location or product category?

