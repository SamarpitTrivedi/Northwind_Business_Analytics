-- Are there any regional trends in supplier distribution and pricing?
Select s.Country, count(s.SupplierID) as supplier_count, Concat("$",Round(Avg(p.UnitPrice),2)) as Avg_price 
from suppliers s
Join products p 
ON p.SupplierID = s.SupplierID
Group By s.Country 
order by count(s.SupplierID) DESC;