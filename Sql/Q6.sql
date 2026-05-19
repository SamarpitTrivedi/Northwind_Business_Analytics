-- What is the geographic and title-wise distribution of employees?
select Title,Country,Count(EmployeeID) as number_of_employees from employees 
group by Title, Country;