use mydbase
select * from  Bonus3_orginal_table
select * from Bonus3_shadow_table
select * from Bonus3_shadow_insert_table


create table Bonus3_orginal_table(--�إ�orginal_table
PID varchar(50),
Name varchar(50),
Birth varchar(50),
SeqNo varchar(50),
Eplee varchar(250),
DateTime datetime,
)

create table Bonus3_shadow_table(--�إ�shadow_table
P_key XML,
Old XML,
New XML,
OP varchar(50),
OPter varchar(250),
)

create table Bonus3_shadow_insert_table(--�إ�shadow_table
PID varchar(50),
Name varchar(50),
Birth varchar(50),
SeqNo varchar(50),
Eplee varchar(250),
DateTime datetime,
)

drop table Bonus3_shadow_table--�R��shadow_tabl
drop table Bonus3_orginal_table--�R��orginal_table
drop table  Bonus3_shadow_insert_table--�R��insert_table





