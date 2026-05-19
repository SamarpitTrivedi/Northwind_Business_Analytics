-- Can we cluster customers based on total spend, order count, and preferred categories?
Select CustomerID, c.CategoryName, sum(od.UnitPrice * od.Quantity * (1- od.Discount)) as total_spends
, count(o.OrderID) as number_of_orders
from orderdetails as  od
Join orders o ON o.OrderID = od.OrderID
Join products p ON od.ProductID = p.ProductID
Join categories c ON c.CategoryID = p.CategoryID
group by CustomerID , c.CategoryName
order by CustomerID;