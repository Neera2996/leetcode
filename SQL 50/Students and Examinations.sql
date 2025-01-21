/*
Table Name: Students
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| student_id    | int     |
| student_name  | varchar |
+---------------+---------+
student_id is the primary key (column with unique values) for this table.
Each row of this table contains the ID and the name of one student in the school.
 

Table Name: Subjects
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+
subject_name is the primary key (column with unique values) for this table.
Each row of this table contains the name of one subject in the school.
 

Table Name: Examinations
+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+
There is no primary key (column with unique values) for this table. It may contain duplicates.
Each student from the Students table takes every course from the Subjects table.
Each row of this table indicates that a student with ID student_id attended the exam of subject_name.
*/

# Write your MySQL query statement below

Select stu.student_id , stu.student_name , sub.subject_name ,
COUNT(exm.subject_name) AS attended_exams 
FROM Students stu
JOIN Subjects sub
LEFT JOIN Examinations exm
ON 
stu.student_id = exm.student_id
AND
sub.subject_name = exm.subject_name 
GROUP BY stu.student_id , stu.student_name , sub.subject_name 
ORDER BY stu.student_id , stu.student_name
