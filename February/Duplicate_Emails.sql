

select email from person
group by email
HAVING COUNT(*) > 1;