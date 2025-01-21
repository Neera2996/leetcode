/*
Table Name: Weather
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.


*/
# Write your MySQL query statement below

select W1.id from weather W1 , weather W2 
WHERE
DATEDIFF (W1.recorddate,W2.recorddate) = 1 AND (W1.temperature>W2.temperature)