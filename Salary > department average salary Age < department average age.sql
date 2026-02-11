/*✅ Q6 — Expected Output Format (Example)

Condition:
Salary > department average salary
Age < department average age

Example Result Table:
EmployeeName
Department
Salary
Age*/

With EMPloyee_Details as
(
 Select Department, AVG(Salary) as AVG_SALARY, AVG(Age) as AVG_Age
 from mulazim 
 Group by Department
)
select M.EmployeeName, M.Department, M.salary, E.AVG_SALARY, E.AVG_Age
from Mulazim M
inner join EMPloyee_Details E on 
E.Department = M.Department
Where M.Salary > E.AVG_SALARY AND M.Age < E.AVG_Age
