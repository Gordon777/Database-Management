use mydbase
select * from  Bonus3_orginal_table
select * from Bonus3_shadow_table
select * from Bonus3_shadow_insert_table


create table Bonus3_orginal_table(--建立orginal_table
PID varchar(50),
Name varchar(50),
Birth varchar(50),
SeqNo varchar(50),
Eplee varchar(250),
DateTime datetime,
)

create table Bonus3_shadow_table(--建立shadow_table
P_key XML,
Old XML,
New XML,
OP varchar(50),
OPter varchar(250),
)

create table Bonus3_shadow_insert_table(--建立shadow_table
PID varchar(50),
Name varchar(50),
Birth varchar(50),
SeqNo varchar(50),
Eplee varchar(250),
DateTime datetime,
)

drop table Bonus3_shadow_table--刪除shadow_tabl
drop table Bonus3_orginal_table--刪除orginal_table
drop table  Bonus3_shadow_insert_table--刪除insert_table





