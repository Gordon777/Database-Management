create trigger Bonus7_audit_insert --�borginal_table INSERT��Ĳ�o
on [dbo].[Bonus7_orginal_table]
for insert
as

begin
Declare @����渹 varchar(50);
Declare @���~ varchar(50);
Declare @���� varchar(50);
Declare @�ƶq varchar(50);
Declare @�I�ڤ覡 varchar(50);
Declare @�Ƶ� varchar(50);
Declare @�I�ڤ�� varchar(50);

select @����渹=Bonus7_orginal_table.����渹 from Bonus7_orginal_table;
select @���~=Bonus7_orginal_table.���~ from Bonus7_orginal_table;
select @����=Bonus7_orginal_table.���� from Bonus7_orginal_table;
select @�ƶq=Bonus7_orginal_table.�ƶq from Bonus7_orginal_table;
select @�I�ڤ覡=Bonus7_orginal_table.�I�ڤ覡 from Bonus7_orginal_table;
select @�Ƶ�=Bonus7_orginal_table.�Ƶ� from Bonus7_orginal_table;
select @�I�ڤ��=Bonus7_orginal_table.�I�ڤ�� from Bonus7_orginal_table;

if @���~ = ('���{+�@��')--���{+�@��39��
begin
select @����=39;

insert into Bonus7_shadow_table
(����渹,���~,����,�ƶq,�I�ڤ覡,�Ƶ�,�I�ڤ��)
Values
(
@����渹,
@���~,
@����,
@�ƶq, 
@�I�ڤ覡, 
@�Ƶ�, 
@�I�ڤ��
)
end
end


if @���~ = ('����') and @�ƶq=2--���Ʋ�2��6��
begin
select @����=Bonus7_orginal_table.����*0.8 from Bonus7_orginal_table;

insert into Bonus7_shadow_table
(����渹,���~,����,�ƶq,�I�ڤ覡,�Ƶ�,�I�ڤ��)
Values
(
@����渹,
@���~,
@����,
@�ƶq, 
@�I�ڤ覡, 
@�Ƶ�, 
@�I�ڤ��
)
end

if @���~ = ('�K��') and @�I�ڤ覡=('�y�C�d')--�y�C�d��10��
begin
select @����=Bonus7_orginal_table.����-10 from Bonus7_orginal_table;

insert into Bonus7_shadow_table
(����渹,���~,����,�ƶq,�I�ڤ覡,�Ƶ�,�I�ڤ��)
Values
(
@����渹,
@���~,
@����,
@�ƶq, 
@�I�ڤ覡, 
@�Ƶ�, 
@�I�ڤ��
)
end


if @���~ = ('�i��') --�i�ֶR�@�e�@
begin
select @�ƶq=Bonus7_orginal_table.�ƶq+1 from Bonus7_orginal_table;
select @�Ƶ�='�i�ֶR�@�e�@';

insert into Bonus7_shadow_table
(����渹,���~,����,�ƶq,�I�ڤ覡,�Ƶ�,�I�ڤ��)
Values
(
@����渹,
@���~,
@����,
@�ƶq, 
@�I�ڤ覡, 
@�Ƶ�, 
@�I�ڤ��
)
end

if @���� > 1000 --���d�eHello Kitty�@��
begin

select @�Ƶ�='���d�eHello Kitty�@��';

insert into Bonus7_shadow_table
(����渹,���~,����,�ƶq,�I�ڤ覡,�Ƶ�,�I�ڤ��)
Values
(
@����渹,
@���~,
@����,
@�ƶq, 
@�I�ڤ覡, 
@�Ƶ�, 
@�I�ڤ��
)
end