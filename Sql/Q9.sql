-- Are there correlations between product pricing, stock levels, and sales performance?
select p.ProductName, p.UnitPrice, p.UnitsInStock, ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) as Sales_Amount 
from orderdetails od
Join products p
On p.productID = od.productID
Group By  p.ProductName, p.UnitPrice, p.UnitsInStock
Order bY ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) DESC;