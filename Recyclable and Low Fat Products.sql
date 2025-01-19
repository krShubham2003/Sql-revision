+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+

product_id is the primary key (column with unique values) for this table.
low_fats is an ENUM (category) of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not
recyclable is an ENUM (category) of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.

Write a solution to find the ids of products that are both low fat and recyclable.

1....Input: 

Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+

Output: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
Explanation: Only products 1 and 3 are both low fat and recyclable.


approach--->> 
we are not using select * because the question is asking to print only,
product_id column isliye , agr hum select * use krte hai to wo pura row+col print kr dega 
means +-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+     
| 1           | Y        | Y          |      
| 3           | Y        | Y          |     
+-------------+----------+------------+
but humko answer ye chaiye Output: 
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+



code ---->  

# Write your MySQL query statement below

select product_id from Products where low_fats='Y'and recyclable='Y';