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
values('財務金融研究所','5155660_01','財務報表分析','鄭揚耀');

insert into ecourse(department,CID,name,prof_set)
values('資訊管理學系','5301217_01','資訊管理導論','葉耕榕');

insert into ecourse(department,CID,name,prof_set)
values('資訊管理學系','5302202_01','資料庫管理','吳帆');

insert into ecourse(department,CID,name,prof_set)
values('資訊管理研究所','5306116_01','電子商務與應用','羅美玲');

insert into ecourse(department,CID,name,prof_set)
values('會計與資訊科技研究所','5265100_01','風險管理與電腦稽核','黃士銘');
