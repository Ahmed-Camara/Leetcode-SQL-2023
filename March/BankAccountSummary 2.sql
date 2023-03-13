/* Write your PL/SQL query statement below */

select u.name, sum(t.amount) as balance
from users u, transactions t
where u.account = t.account
GROUP BY u.name
having sum(t.amount) > 10000;