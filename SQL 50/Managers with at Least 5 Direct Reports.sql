/*
Table Name: Employee
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the name of an employee, their department, and the id of their manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.
*/

# Write your MySQL query statement below

SELECT 
    E2.name
FROM 
    Employee E1
JOIN 
    Employee E2
ON 
    E1.managerId = E2.id
WHERE 
    E1.managerId IS NOT NULL
GROUP BY 
    E1.managerId, E2.name
HAVING 
    COUNT(E1.id) >= 5;
