-- Are there correlations between product pricing, stock levels, and sales performance?
select p.ProductName, p.UnitPrice, p.UnitsInStock, ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) as Sales_Amount 
from orderdetails od
Join products p
On p.productID = od.productID
Group By  p.ProductName, p.UnitPrice, p.UnitsInStock
Order bY ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) DESC;


-- How does product demand change over months or seasons?
SELECT 
    c.CategoryName,
    YEAR(o.OrderDate) as Year,
    QUARTER(o.OrderDate) as Quarter,
    COUNT(DISTINCT o.OrderID) as TotalOrders,
    SUM(od.Quantity) as TotalUnitsSold
FROM categories c
JOIN products p ON c.CategoryID = p.CategoryID
JOIN orderdetails od ON p.ProductID = od.ProductID
JOIN orders o ON od.OrderID = o.OrderID
GROUP BY c.CategoryName, YEAR(o.OrderDate), QUARTER(o.OrderDate)
ORDER BY c.CategoryName, Year, Quarter;

-- Can we identify anomalies in product sales or revenue performance? --------------------------------------------------------------------------------------------------
select p.ProductName, ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) as Revenue 
from products p
join orderdetails od 
on p.ProductID = od.ProductID
group by p.ProductName 
order by ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) asc
limit 5
;

-- Are there any regional trends in supplier distribution and pricing?
Select s.Country, count(s.SupplierID) as supplier_count, Concat("$",Round(Avg(p.UnitPrice),2)) as Avg_price 
from suppliers s
Join products p 
ON p.SupplierID = s.SupplierID
Group By s.Country 
order by count(s.SupplierID) DESC;


-- How are suppliers distributed across different product categories?
Select distinct(c.CategoryName) , count(s.CompanyName) as Supplier_Count from categories c
join products p 
ON c.CategoryID = p.CategoryID
JOIN suppliers s 
ON p.SupplierID = s.SupplierID
Group By c.CategoryName
Order BY count(s.CompanyName) DESC;

-- How do supplier pricing and categories relate across different regions?
SELECT 
    s.Country,
    c.CategoryName,
    CONCAT("$", ROUND(AVG(p.UnitPrice), 2)) AS Avg_Unit_Price
FROM suppliers s
JOIN products p ON p.SupplierID = s.SupplierID
JOIN categories c ON c.CategoryID = p.CategoryID
GROUP BY s.Country, c.CategoryName
HAVING AVG(p.UnitPrice) = (
    -- For each country, get the max avg price category
    SELECT AVG(p2.UnitPrice)
    FROM suppliers s2
    JOIN products p2 ON p2.SupplierID = s2.SupplierID
    JOIN categories c2 ON c2.CategoryID = p2.CategoryID
    WHERE s2.Country = s.Country
    GROUP BY c2.CategoryName
    ORDER BY AVG(p2.UnitPrice) DESC
    LIMIT 1
)
ORDER BY s.Country;