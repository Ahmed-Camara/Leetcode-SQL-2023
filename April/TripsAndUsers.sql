select 
t.request_at as Day, round(sum(decode(t.status, 'completed',0,1)) / count(status),2) as "Cancellation Rate"
from trips t, users u, users uu
where t.client_id = u.users_id and t.driver_id = uu.users_id 
and u.banned != 'Yes' and uu.banned != 'Yes' and t.request_at BETWEEN '2013-10-01' and '2013-10-03'
group by t.request_at
order by 1