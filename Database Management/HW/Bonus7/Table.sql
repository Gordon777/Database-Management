use mydbase
select * from Bonus7_orginal_table
select * from Bonus7_shadow_table


create table Bonus7_shadow_table(--�إ�shadow_table
����渹 varchar(50),
���~ varchar(50),
���� float(50),
�ƶq float(50),
�I�ڤ覡 varchar(50),
�Ƶ� varchar(250),
�I�ڤ�� datetime,
)

create table Bonus7_orginal_table(--�إ�orginal_table
����渹 varchar(50),
���~ varchar(50),
���� float(50),
�ƶq float(50),
�I�ڤ覡 varchar(50),
�Ƶ� varchar(250),
�I�ڤ�� datetime,
)

drop table Bonus7_shadow_table--�R��shadow_tabl
drop table Bonus7_orginal_table--�R��orginal_table





