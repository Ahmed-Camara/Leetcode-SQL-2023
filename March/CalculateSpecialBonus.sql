/* Write your PL/SQL query statement below*/
select employee_id,
    case
        when mod(employee_id,2) = 0
        or name  like 'M%' THEN 0
        else salary
    end as bonus
from Employees order by employee_id;