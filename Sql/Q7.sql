-- What trends can we observe in hire dates across employee titles?
Select Year(HireDate) as Year,Count(EmployeeID) as number_of_employees from employees group by Year(HireDate);
