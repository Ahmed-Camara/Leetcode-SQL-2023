
select customer_number
from Orders
group by customer_number
having count(customer_number) >= (select max(count(customer_number)) from Orders group by customer_number);