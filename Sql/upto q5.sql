-- How frequently do different customer segments place orders?
with temp as (Select CustomerID, OrderDate , 
LAG(OrderDate) OVER(PARTITION BY CustomerID 
Order BY OrderDate ASC) AS previous_order_date,
datediff(OrderDate,LAG(OrderDate) OVER(PARTITION BY CustomerID 
Order BY OrderDate ASC)) as number_of_days
From orders)
Select CustomerID,AVG(number_of_days) as avg_days
from temp
group by CustomerID
order by AVG(number_of_days) DESC
limit 10;