-- Can we identify anomalies in product sales or revenue performance? --
select p.ProductName, ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) as Revenue 
from products p
join orderdetails od 
on p.ProductID = od.ProductID
group by p.ProductName 
order by ROUND(SUM(od.UnitPrice*od.Quantity * (1 - od.Discount)),2) asc
limit 5
;