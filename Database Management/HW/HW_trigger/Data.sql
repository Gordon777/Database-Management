select * from orginal_table

insert into orginal_table--���J���
(PID,Name,Birth,SeqNo,Eplee,DateTime)
Values
(112,'John',1980,1,SUSER_NAME(),GetDate())

update orginal_table--�s�W���
set Birth='1981'
where Name='John'

delete from orginal_table 
where Birth='1981' and Name='John'




-- �d�ߡG�{���Ʈw���A������ DML Ĳ�o�{��
SELECT SCHEMA_NAME(tb.schema_id) N'���c�y�z', OBJECT_NAME(t.parent_id) N'��ƪ�', t.name N'Ĳ�o�{�ǦW��', parent_class_desc N'Ĳ�o�{�Ǥ����O���y�z', 
 t.type_desc N'�����������y�z',  tEV.type_desc '�޵oĲ�o�{�Ǫ��C�Өƥ�', is_instead_of_trigger N'�O�_�� INSTEAD OF Ĳ�o�{��'
FROM sys.triggers t INNER JOIN sys.trigger_events tEV ON t.object_id = tEV.object_id 
 INNER JOIN sys.tables tb ON t.parent_id = tb.object_id
GO
select * from sys.triggers 
select * from sys.trigger_events