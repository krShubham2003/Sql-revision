-- Query to Find the Nth Highest Salary in a Table

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT n-1, 1;

-- n is limit means if we wnat to find second highst then n-1 = 2-1 = 1
-- like that for third n-1 = 3-1 = 2 like that 

Employee Table (Before Query Execution)

+----+-----------+-----+------------+--------+--------+
| id | name      | age | department | city   | salary |
+----+-----------+-----+------------+--------+--------+
| 1  | Rahul     | 25  | IT         | Mumbai | 1500   |
| 2  | Afsara    | 26  | HR         | Pune   | 2000   |
| 3  | Abhimanyu | 27  | IT         | Mumbai | 2500   |
| 4  | Aditya    | 25  | Marketing  | Surat  | 2400   |
| 5  | Raj       | 24  | Finance    | Delhi  | 1500   |
+----+-----------+-----+------------+--------+--------+


Example: Finding the 2nd Highest Salary (n = 2)

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1, 1;  -- (n-1 = 1, 1 row to fetch)

Output:

+--------+
| salary |
+--------+
| 2400   |
+--------+

Explanation:
ORDER BY salary DESC → Sorts salaries in descending order (highest first).
DISTINCT → Ensures that only unique salaries are considered.
LIMIT n-1, 1 → Skips (n-1) salaries and retrieves 1 row (the nth highest salary).
