/*✅ Q3 — Department Hiring Trend

Return departments that hired more than 3 employees in the last 12 months.*/

Select Department, Count(*) as total_Employees
from mulazim 
Where HireDate >= DateADD(Month, -12,Getdate())
group by Department
Having Count(*) > 3
