-- What is the average number of orders per customer?
Select CustomerID , count(OrderID) as number_of_orders from orders group by CustomerID
order by number_of_orders DESC
Limit 10;
--  Are there high-value repeat customers?
-- Yes, there are customers with order count of 15 and above.
