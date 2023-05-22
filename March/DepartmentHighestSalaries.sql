select rank.Department, rank.Employee, rank.Salary
from (select e.id,e.name Employee,e.salary Salary, d.name Department, 
dense_rank() over(partition by e.departmentId order by e.salary desc) rank from employee e,department d
where e.departmentId = d.id) rank
where rank = 1;