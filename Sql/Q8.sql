-- What patterns exist in employee title and courtesy title distributions?
Select TitleOfCourtesy,Title, Count(EmployeeID) as count_of_employees from employees
group by Title,TitleOfCourtesy
order by Count(EmployeeID) DESC ;