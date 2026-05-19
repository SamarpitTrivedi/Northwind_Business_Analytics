-- How are suppliers distributed across different product categories?
Select distinct(c.CategoryName) , count(s.CompanyName) as Supplier_Count from categories c
join products p 
ON c.CategoryID = p.CategoryID
JOIN suppliers s 
ON p.SupplierID = s.SupplierID
Group By c.CategoryName
Order BY count(s.CompanyName) DESC;
