/*✅ Q2 — Department Workforce Health

For each department return:
Total employees
Active employees
Inactive employees
Inactive percentage
Use the Status column.*/


SELECT 
    Department,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN Status = 'Active' THEN 1 ELSE 0 END) AS ActiveEmployees,
    SUM(CASE WHEN Status <> 'Active' THEN 1 ELSE 0 END) AS InactiveEmployees,
    ROUND(
        CAST(SUM(CASE WHEN Status <> 'Active' THEN 1 ELSE 0 END) AS FLOAT) 
        / COUNT(*) * 100, 2
    ) AS InactivePercentage
FROM Mulazim
GROUP BY Department
ORDER BY Department;
