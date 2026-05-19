-- How do customer order patterns vary by city or country?
-- 1) order patterns vary by city
Select ShipCity,ShipCountry, count(OrderID) as number_of_orders from orders
group by ShipCity,ShipCountry 
order by number_of_orders Desc;
-- 2) order patterns vary by country
Select ShipCountry, count(OrderID) as number_of_orders from orders
group by ShipCountry 
order by number_of_orders Desc;