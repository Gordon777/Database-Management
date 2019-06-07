select * from orginal_table

insert into orginal_table--插入資料
(PID,Name,Birth,SeqNo,Eplee,DateTime)
Values
(112,'John',1980,1,SUSER_NAME(),GetDate())

update orginal_table--新增資料
set Birth='1981'
where Name='John'

delete from orginal_table 
where Birth='1981' and Name='John'




-- 查詢：現行資料庫內，有哪些 DML 觸發程序
SELECT SCHEMA_NAME(tb.schema_id) N'結構描述', OBJECT_NAME(t.parent_id) N'資料表', t.name N'觸發程序名稱', parent_class_desc N'觸發程序父類別的描述', 
 t.type_desc N'物件類型的描述',  tEV.type_desc '引發觸發程序的每個事件', is_instead_of_trigger N'是否為 INSTEAD OF 觸發程序'
FROM sys.triggers t INNER JOIN sys.trigger_events tEV ON t.object_id = tEV.object_id 
 INNER JOIN sys.tables tb ON t.parent_id = tb.object_id
GO
select * from sys.triggers 
select * from sys.trigger_events