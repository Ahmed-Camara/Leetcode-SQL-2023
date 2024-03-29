/*


Table: Department

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| revenue     | int     |
| month       | varchar |
+-------------+---------+
(id, month) is the primary key of this table.
The table has information about the revenue of each department per month.
The month has values in ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"].
 

Write an SQL query to reformat the table such that there is a department id column and a revenue column for each month.

Return the result table in any order.

The query result format is in the following example.

 

Example 1:

Input: 
Department table:
+------+---------+-------+
| id   | revenue | month |
+------+---------+-------+
| 1    | 8000    | Jan   |
| 2    | 9000    | Jan   |
| 3    | 10000   | Feb   |
| 1    | 7000    | Feb   |
| 1    | 6000    | Mar   |
+------+---------+-------+
Output: 
+------+-------------+-------------+-------------+-----+-------------+
| id   | Jan_Revenue | Feb_Revenue | Mar_Revenue | ... | Dec_Revenue |
+------+-------------+-------------+-------------+-----+-------------+
| 1    | 8000        | 7000        | 6000        | ... | null        |
| 2    | 9000        | null        | null        | ... | null        |
| 3    | null        | 10000       | null        | ... | null        |
+------+-------------+-------------+-------------+-----+-------------+
Explanation: The revenue from Apr to Dec is null.
Note that the result table has 13 columns (1 for the department id + 12 for the months).

*/

SELECT id,
       sum(CASE month WHEN 'Jan' THEN revenue END) AS Jan_Revenue,
       sum(CASE month WHEN 'Feb' THEN revenue END) AS Feb_Revenue,
       sum(CASE month WHEN 'Mar' THEN revenue END) AS Mar_Revenue,
       sum(CASE month WHEN 'Apr' THEN revenue END) AS Apr_Revenue,
       sum(CASE month WHEN 'May' THEN revenue END) AS May_Revenue,
       sum(CASE month WHEN 'Jun' THEN revenue END) AS Jun_Revenue,
       sum(CASE month WHEN 'Jul' THEN revenue END) AS Jul_Revenue,
       sum(CASE month WHEN 'Aug' THEN revenue END) AS Aug_Revenue,
       sum(CASE month WHEN 'Sep' THEN revenue END) AS Sep_Revenue,
       sum(CASE month WHEN 'Oct' THEN revenue END) AS Oct_Revenue,
       sum(CASE month WHEN 'Nov' THEN revenue END) AS Nov_Revenue,
       sum(CASE month WHEN 'Dec' THEN revenue END) AS Dec_Revenue
FROM Department
GROUP BY id;