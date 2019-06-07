alter trigger audit 
on [dbo].[orginal_table]
for insert, update,delete 
as

begin
Declare @PID varchar(50);
Declare @Name varchar(50);
Declare @Birth varchar(50);
Declare @SeqNo varchar(50);
Declare @Eplee varchar(50);
Declare @OP varchar(50);
Declare @EventData XML

select @PID=orginal_table.PID from orginal_table;
select @Name=orginal_table.Name from orginal_table;
select @Birth=orginal_table.Birth from orginal_table;
select @SeqNo=orginal_table.SeqNo from orginal_table;
select @Eplee=SUSER_SNAME();
select @OP=tEV.type_desc FROM sys.triggers t INNER JOIN sys.trigger_events tEV ON t.object_id = tEV.object_id INNER JOIN sys.tables tb ON t.parent_id = tb.object_id;
set @EventData = EVENTDATA()


insert into shadow_table
(PID,Name,Birth,SeqNo,Eplee,DateTime,OP)
Values
(
@PID,
@Name,
@Birth,
@SeqNo,
@Eplee,
GetDate(),
@OP
)
end



go



alter trigger audit
on orginal_table
for insert, update,delete 
as
begin
select EVENTDATA()
end