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

