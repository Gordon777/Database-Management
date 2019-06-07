insert into Bonus3_orginal_table--插入資料
(PID,Name,Birth,SeqNo,Eplee,DateTime)
Values
(112,'John',1980,1,SUSER_NAME(),GetDate())

update Bonus3_orginal_table--新增資料
set Birth='1981'
where Name='John'

delete from Bonus3_orginal_table 
where Birth='1981' and Name='John'




