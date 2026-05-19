-- Which product categories or products contribute most to order revenue? 
Select c.CategoryName, p.ProductName, round(sum(od.UnitPrice * od.Quantity * (1- od.Discount)),2) as total_revenue
from orderdetails as od 
Join products p 
ON od.ProductID  = p.ProductID
Join categories c 
on c.CategoryID = p.CategoryID
group by c.CategoryName , p.ProductName
order by total_revenue desc
limit 1;

--Are there any correlations between orders and customer location or product category?
Select  c.CategoryName, o.ShipCountry
, count(distinct(o.OrderID)) as number_of_orders
from orderdetails as  od
Join orders o ON o.OrderID = od.OrderID
Join products p ON od.ProductID = p.ProductID
Join categories c ON c.CategoryID = p.CategoryID
group by c.CategoryName , o.ShipCountry
order by Count(distinct(o.OrderID)) Desc;