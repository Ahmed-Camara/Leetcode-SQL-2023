

select c.name from Customer c
where c.id not in (select m.id from Customer m where m.referee_id = 2);