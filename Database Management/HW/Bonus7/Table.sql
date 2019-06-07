use mydbase
select * from Bonus7_orginal_table
select * from Bonus7_shadow_table


create table Bonus7_shadow_table(--建立shadow_table
交易單號 varchar(50),
產品 varchar(50),
價格 float(50),
數量 float(50),
付款方式 varchar(50),
備註 varchar(250),
付款日期 datetime,
)

create table Bonus7_orginal_table(--建立orginal_table
交易單號 varchar(50),
產品 varchar(50),
價格 float(50),
數量 float(50),
付款方式 varchar(50),
備註 varchar(250),
付款日期 datetime,
)

drop table Bonus7_shadow_table--刪除shadow_tabl
drop table Bonus7_orginal_table--刪除orginal_table





