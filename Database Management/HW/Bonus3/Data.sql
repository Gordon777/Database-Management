insert into Bonus3_orginal_table--���J���
(PID,Name,Birth,SeqNo,Eplee,DateTime)
Values
(112,'John',1980,1,SUSER_NAME(),GetDate())

update Bonus3_orginal_table--�s�W���
set Birth='1981'
where Name='John'

delete from Bonus3_orginal_table 
where Birth='1981' and Name='John'




