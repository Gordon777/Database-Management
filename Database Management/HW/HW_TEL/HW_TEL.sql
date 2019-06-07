use mydbase
select 電信,sum(時間) as 撥打時間
from TeleTable$ 
group by 電信
