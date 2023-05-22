select distinct l.num ConsecutiveNums
from logs l, logs g, logs i
where l.id = g.id + 1 and  l.id = i.id + 2 and l.num = g.num and l.num = i.num;