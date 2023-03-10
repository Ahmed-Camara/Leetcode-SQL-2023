select e.employee_id
from employees e
where e.employee_id not in (select salaries.employee_id from salaries)
union
select s.employee_id
from salaries s
where s.employee_id not in (select employees.employee_id from employees);