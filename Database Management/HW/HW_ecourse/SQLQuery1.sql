use mydbase
create table ecourse(
department varchar(30) not null,
CID char(30),
name varchar(30),
prof_set varchar(30),
primary key(CID),
);

drop table "ecourse"

select * from ecourse

insert into ecourse(department,CID,name,prof_set)
values('�]�Ȫ��Ĭ�s��','5155660_01','�]�ȳ�����R','�G��ģ');

insert into ecourse(department,CID,name,prof_set)
values('��T�޲z�Ǩt','5301217_01','��T�޲z�ɽ�','���Ѻ_');

insert into ecourse(department,CID,name,prof_set)
values('��T�޲z�Ǩt','5302202_01','��Ʈw�޲z','�d�|');

insert into ecourse(department,CID,name,prof_set)
values('��T�޲z��s��','5306116_01','�q�l�ӰȻP����','ù����');

insert into ecourse(department,CID,name,prof_set)
values('�|�p�P��T��ެ�s��','5265100_01','���I�޲z�P�q���]��','���h��');
