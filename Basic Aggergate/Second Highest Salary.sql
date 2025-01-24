Write a solution to find the second highest distinct salary from the Employee table.
 If there is no second highest salary, return null

 Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+
Example 2:

Input: 
Employee table:
+----+--------+
| id | salary |
+----+--------+
| 1  | 100    |
+----+--------+
Output: 
+---------------------+
| SecondHighestSalary |
+---------------------+
| null                |
+---------------------+


SELECT IFNULL(
           (SELECT DISTINCT salary
            FROM Employee
            ORDER BY salary DESC
            LIMIT 1 OFFSET 1),
           NULL) AS SecondHighestSalary;

Appproch----
we will first arrange in dcreasing order 
then 
we will apply LIMIT and OFFSET
here LIMIT 1 means we wnat only salary 
OFFSET 1 means here we wnat second highest salary 
if we wnat third then OFFSET 2 like that (means one less than the now we wnat to find)


  **** General syntax is 
       
        SELECT IFNULL(
        (subquery),
         NULL
        ) AS SecondHighestSalary;
