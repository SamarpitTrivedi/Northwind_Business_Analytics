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
