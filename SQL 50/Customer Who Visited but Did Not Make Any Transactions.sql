/*
Table Name: Visits
+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| visit_id    | int     |
| customer_id | int     |
+-------------+---------+
visit_id is the column with unique values for this table.
This table contains information about the customers who visited the mall.
 

Table Name: Transactions
+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| transaction_id | int     |
| visit_id       | int     |
| amount         | int     |
+----------------+---------+
transaction_id is column with unique values for this table.
This table contains information about the transactions made during the visit_id.
*/

# Write your MySQL query statement below

select count(v.visit_id) as count_no_trans , v.customer_id FROM Visits v 
LEFT JOIN  Transactions t 
ON v.visit_id = t.visit_id
WHERE transaction_id is NULL
GROUP BY customer_id
