create procedure ����~���ˬd
as
begin
select * from �|�������
where �~��  not between '18'and'100'
end

go
create procedure �|���s���ˬd
as
begin
select �|���s�� from [�|�������]
where not exists(select * from [����O����] where [�|�������].�|���s��=[����O����].�|���s��)
end

go

create procedure ���~�s���ˬd
as
begin
select ���~�s�� from [���~�����]
where not exists(select * from [����O����] where [���~�����].���~�s��=[����O����].���~�s��)
end

create procedure �~���s���P�W���ˬd
as
begin
select �~���s��,�~���W�� from [�~���s�X��]
where not exists(select * from [���~�����] where [���~�����].�~���s��=[�~���s�X��].�~���s�� and [���~�����].�~���W��=[�~���s�X��].�~���W��)
end

create procedure �ƶq���@�P�h�f
as
begin
MERGE INTO ����O����$--�A�פJ�@�i�@�˳���
   USING ����O����
   ON ����O����$.���~�s�� = ����O����.���~�s�� --�N��i���s��MERGE
WHEN MATCHED AND (����O����$.�ʶR�ƶq + ����O����.�ʶR�ƶq = 0) THEN--���i�����MERGE�ɡA�B�w�s�q�[�W�i�h�f�q����s�ɡA�h�R�����
   DELETE;--��X��i��h�f���@�P

select * from ����O����$--�Ҧ������D�����
where �ʶR�ƶq<0
end




exec ����~���ˬd--d.��X�~�֤��O�b18~100�������|��
exec �|���s���ˬd--a.��X��|�|���s��
exec ���~�s���ˬd--b.��X��|���~�s��
exec �~���s���P�W���ˬd--e.��X��|�~���s���P�W��
exec �ƶq���@�P�h�f--c.�A�Ф@�itable�P�쥻����X�ƶq���@�P