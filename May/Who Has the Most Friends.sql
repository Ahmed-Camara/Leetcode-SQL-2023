select * from (SELECT acc id, COUNT(acc) num
FROM (
  SELECT requester_id req, accepter_id acc
  FROM RequestAccepted
  UNION
  SELECT accepter_id req, requester_id acc
  FROM RequestAccepted
) 
GROUP BY acc
ORDER BY COUNT(acc) DESC)
where rownum =1;