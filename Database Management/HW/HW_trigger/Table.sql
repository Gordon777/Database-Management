use mydbase
select * from orginal_table
select * from shadow_table


create table shadow_table(--�إ�shadow_table
PID varchar(50),
Name varchar(50),
Birth varchar(50),
SeqNo varchar(50),
Eplee varchar(250),
DateTime datetime,
OP varchar(250)
)

create table orginal_table(--�إ�orginal_table
PID varchar(50),
Name varchar(50),
Birth varchar(50),
SeqNo varchar(50),
Eplee varchar(250),
DateTime datetime,

)

drop table shadow_table--�R��shadow_tabl
drop table orginal_table--�R��orginal_table

select * from sys.fn_trace_getinfo



