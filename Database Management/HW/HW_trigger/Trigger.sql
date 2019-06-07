create trigger audit_update --在orginal_table UPDATE時觸發
on [dbo].[orginal_table]
for update
as

begin
Declare @PID varchar(50);
Declare @Name varchar(50);
Declare @Birth varchar(50);
Declare @SeqNo varchar(50);
Declare @Eplee varchar(50);
Declare @DateTime varchar(50);
Declare @OP varchar(50);


select @PID=orginal_table.PID from orginal_table;
select @Name=orginal_table.Name from orginal_table;
select @Birth=orginal_table.Birth from orginal_table;
select @SeqNo=orginal_table.SeqNo from orginal_table;
select @Eplee=orginal_table.Eplee from orginal_table;
select @DateTime=orginal_table.DateTime from orginal_table;
select @OP='UPDATE'



begin
insert into shadow_table
(PID,Name,Birth,SeqNo,Eplee,DateTime,OP)
Values
(
@PID,
@Name,
@Birth,
@SeqNo,
@Eplee,
@DateTime,
@OP
)
end
end

create trigger audit_insert --在orginal_table INSERT時觸發
on [dbo].[orginal_table]
for insert
as

begin
Declare @PID varchar(50);
Declare @Name varchar(50);
Declare @Birth varchar(50);
Declare @SeqNo varchar(50);
Declare @Eplee varchar(50);
Declare @DateTime varchar(50);
Declare @OP varchar(50);


select @PID=orginal_table.PID from orginal_table;
select @Name=orginal_table.Name from orginal_table;
select @Birth=orginal_table.Birth from orginal_table;
select @SeqNo=orginal_table.SeqNo from orginal_table;
select @Eplee=orginal_table.Eplee from orginal_table;
select @DateTime=orginal_table.DateTime from orginal_table;
select @OP='INSERT'



begin
insert into shadow_table
(PID,Name,Birth,SeqNo,Eplee,DateTime,OP)
Values
(
@PID,
@Name,
@Birth,
@SeqNo,
@Eplee,
@DateTime,
@OP
)
end
end

create trigger audit_delete --在orginal_table DELETE時觸發
on [dbo].[orginal_table]
for delete
as

begin
Declare @PID varchar(50);
Declare @Name varchar(50);
Declare @Birth varchar(50);
Declare @SeqNo varchar(50);
Declare @Eplee varchar(50);
Declare @DateTime varchar(50);
Declare @OP varchar(50);


select @PID=orginal_table.PID from orginal_table;
select @Name=orginal_table.Name from orginal_table;
select @Birth=orginal_table.Birth from orginal_table;
select @SeqNo=orginal_table.SeqNo from orginal_table;
select @Eplee=orginal_table.Eplee from orginal_table;
select @DateTime=orginal_table.DateTime from orginal_table;
select @OP='DELETE'



begin
insert into shadow_table
(PID,Name,Birth,SeqNo,Eplee,DateTime,OP)
Values
(
@PID,
@Name,
@Birth,
@SeqNo,
@Eplee,
@DateTime,
@OP
)
end
end

