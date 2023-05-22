/* Write your PL/SQL query statement below */
select temp.Department, temp.Employee, temp.Salary
from(
    select 
        e.id,e.name Employee,e.salary Salary, d.name Department, 
        dense_rank() over(partition by e.departmentId order by e.salary desc) as rank
        from Employee e
        INNER JOIN Department d ON e.departmentId = d.id) temp
where temp.rank < 4;