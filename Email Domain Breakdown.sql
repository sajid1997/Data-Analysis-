/*✅ Q4 — Email Domain Breakdown

Extract email domain (text after @)
Show employee count per domain
Output example:
EmailDomain*/

Select 
RIGHT(Email , Len(Email) - Charindex('@', Email)) as Emaildomin,
Count(*) AS EmployeeCount
from mulazim 
GROUP BY RIGHT(Email, LEN(Email) - CHARINDEX('@', Email))
ORDER BY EmployeeCount DESC;
