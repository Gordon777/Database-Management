create trigger Bonus3_audit_insert --在orginal_table insert時觸發
on [dbo].[Bonus3_orginal_table]
for insert
as

begin
Declare @P_key XML;
Declare @Old XML;
Declare @New XML;
Declare @OP varchar(50);
Declare @OPter varchar(250);
Declare @PID varchar(50);
Declare @Name varchar(50);
Declare @Birth varchar(50);
Declare @SeqNo varchar(50);
Declare @Eplee varchar(250);
Declare @DateTime datetime;


set @P_key=(select Bonus3_orginal_table.PID from Bonus3_orginal_table FOR XML AUTO,TYPE);
select @Old=null;
set @New=(select Bonus3_orginal_table.Name,Bonus3_orginal_table.Birth,Bonus3_orginal_table.DateTime from Bonus3_orginal_table FOR XML AUTO,TYPE);
select @OP='INSERT';
select @OPter=Bonus3_orginal_table.Eplee from Bonus3_orginal_table;
select @PID=Bonus3_orginal_table.PID from Bonus3_orginal_table;
select @Name=Bonus3_orginal_table.Name from Bonus3_orginal_table;
select @Birth=Bonus3_orginal_table.Birth from Bonus3_orginal_table;
select @SeqNo=Bonus3_orginal_table.SeqNo from Bonus3_orginal_table;
select @Eplee=Bonus3_orginal_table.Eplee from Bonus3_orginal_table;
select @DateTime=Bonus3_orginal_table.DateTime from Bonus3_orginal_table;

begin
insert into Bonus3_shadow_table--正本
(P_key,Old,New,OP,OPter)
Values
(
@P_key,
@Old,
@New,
@OP,
@OPter
)
end

begin
insert into Bonus3_shadow_insert_table--備份
(PID,Name,Birth,SeqNo,Eplee,DateTime)
Values
(
@PID,
@Name,
@Birth,
@SeqNo,
@Eplee,
@DateTime
)
end
end

go

create trigger Bonus3_audit_delete --在orginal_table delete時觸發
on [dbo].[Bonus3_orginal_table]
instead of delete
as


Declare @P_key XML;
Declare @Old XML;
Declare @New XML;
Declare @OP varchar(50);
Declare @OPter varchar(250);


begin
set @P_key=(select Bonus3_orginal_table.PID from Bonus3_orginal_table FOR XML AUTO,TYPE);
select @Old=(select Bonus3_orginal_table.Name,Bonus3_orginal_table.Birth,Bonus3_orginal_table.DateTime from Bonus3_orginal_table FOR XML AUTO,TYPE);
set @New=null;
select @OP='DELETE';
select @OPter=SUSER_NAME();



begin
insert into Bonus3_shadow_table
(P_key,Old,New,OP,OPter)
Values
(
@P_key,
@Old,
@New,
@OP,
@OPter
)
end
end

go


create trigger Bonus3_audit_update --在orginal_table update時觸發
on [dbo].[Bonus3_orginal_table]
after update
as


Declare @P_key XML;
Declare @Old XML;
Declare @New XML;
Declare @OP varchar(50);
Declare @OPter varchar(250);


begin
set @P_key=(select Bonus3_orginal_table.PID from Bonus3_orginal_table FOR XML AUTO,TYPE);
set @Old=(select Bonus3_shadow_insert_table.Name,Bonus3_shadow_insert_table.Birth,Bonus3_shadow_insert_table.DateTime from Bonus3_shadow_insert_table FOR XML AUTO,TYPE);
set @New=(select Bonus3_orginal_table.Name,Bonus3_orginal_table.Birth,Bonus3_orginal_table.DateTime from Bonus3_orginal_table FOR XML AUTO,TYPE);
select @OP='UPDATE';
select @OPter=SUSER_NAME();



begin
insert into Bonus3_shadow_table
(P_key,Old,New,OP,OPter)
Values
(
@P_key,
@Old,
@New,
@OP,
@OPter
)
end
end