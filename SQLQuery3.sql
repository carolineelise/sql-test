select *, 'A' 'ABC'
from student
where SAT > 1200
Union	
select *, 'B' 'ABC'
from student
where SAT <= 1200 and SAT >=1000
union
select *, 'C' 'ABC'
from student
where SAT < 1000
order by ABC;
