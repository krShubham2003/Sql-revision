We define query quality as:

-The average of the ratio between query rating and its position.

We also define poor query percentage as:

-The percentage of all queries with rating less than 3.

Write a solution to find each query_name, the quality and poor_query_percentage.

Both quality and poor_query_percentage should be rounded to 2 decimal places.


Input: 
Queries table:
+------------+-------------------+----------+--------+
| query_name | result            | position | rating |
+------------+-------------------+----------+--------+
| Dog        | Golden Retriever  | 1        | 5      |
| Dog        | German Shepherd   | 2        | 5      |
| Dog        | Mule              | 200      | 1      |
| Cat        | Shirazi           | 5        | 2      |
| Cat        | Siamese           | 3        | 3      |
| Cat        | Sphynx            | 7        | 4      |
+------------+-------------------+----------+--------+
Output: 
+------------+---------+-----------------------+
| query_name | quality | poor_query_percentage |
+------------+---------+-----------------------+
| Dog        | 2.50    | 33.33                 |
| Cat        | 0.66    | 33.33                 |
+------------+---------+-----------------------+


Appproch---
1.. for calculating the percentage the general syntax is 
    SELECT (part_column / total_column) * 100 AS percentage
    FROM table_name;


but since the question is asking to calculate the percentage
whose rating <3 
  for this 
ROUND((SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END)/ COUNT(*))*100,2) 
AS poor_query_percentage      

explanation is  that it will calculate(sum) the all row value whose rating<3 
if the rating < 3  then in sum it will add to 1 if not then 0
 COUNT(*) --- this function is use to calculate the no of rows loke in this
 there will be 3.

-- and whenever we use aggragate we have to use GROUP BY 

 # Write your MySQL query statement below

SELECT query_name, ROUND(AVG(rating/position),2) AS quality,
ROUND((SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END)/ COUNT(*))*100,2) 
AS poor_query_percentage 
FROM Queries
GROUP BY query_name;