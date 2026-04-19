-- What is the geographic and title-wise distribution of employees?
select Title,Country,Count(EmployeeID) as number_of_employees from employees 
group by Title, Country;

-- What trends can we observe in hire dates across employee titles?
Select Year(HireDate) as Year,Count(EmployeeID) as number_of_employees from employees group by Year(HireDate);

Update employees
set BirthDate = str_to_date(BirthDate,'%d-%m-%Y');

Alter Table employees
Modify BirthDate Date Not NUll;

-- What patterns exist in employee title and courtesy title distributions?
Select TitleOfCourtesy,Title, Count(EmployeeID) as count_of_employees from employees
group by Title,TitleOfCourtesy
order by Count(EmployeeID) DESC ;

-- 