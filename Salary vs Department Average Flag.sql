/*✅ Q5 — Salary vs Department Average Flag

For each employee, add a column:
Above Dept Avg
Below Dept Avg
Below Dept Avg
Return:

EmployeeName
Department
Salary
DeptAvgSalar
SalaryFlag*/

WITH AVG_SALARY
as
(
 select Department, AVG(Salary) as DeptAvgSalary
 from mulazim 
 Group by Department
)

Select m.EmployeeName, m.Department, m.Salary, A.DeptAvgSalary,
Case
When m.salary > A.DeptAvgSalary then 'Above Dept Avg'
when m.Salary < A.DeptAvgSalary then 'Below Dept Avg'
Else 'Equal Dept Avg'
End as SalaryFlag
from mulazim m
inner join AVG_SALARY A on A.Department = m.Department
