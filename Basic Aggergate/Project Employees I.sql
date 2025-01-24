Write an SQL query that reports the average experience years of all the employees 
for each project, rounded to 2 digits.

Return the result table in any order.

Input: 
Project table:
+-------------+-------------+
| project_id  | employee_id |
+-------------+-------------+
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |
+-------------+-------------+
Employee table:
+-------------+--------+------------------+
| employee_id | name   | experience_years |
+-------------+--------+------------------+
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |
+-------------+--------+------------------+
Output: 
+-------------+---------------+
| project_id  | average_years |
+-------------+---------------+
| 1           | 2.00          |
| 2           | 2.50          |
+-------------+---------------+


*********
Appproch-----

1.. generally if we want to find AVG we are using Aggegrate function AVG(col_name);
    but here we need to find upto Round of two isliye
    syntax is ROUND(AVG(col_name), 2)

****and one more important thing is that when we use Aggegrate function we need to have ,
    or GROUP THEM BY unique_id like this GROUP BY unique_id


# Write your MySQL query statement below

SELECT project_id, ROUND(AVG(experience_years), 2) AS average_years 
FROM Employee RIGHT JOIN Project on Employee.employee_id = Project.employee_id 
GROUP BY project_id;    