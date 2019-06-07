alter procedure 查詢車輛時速
@intersection_id Varchar(50),
@tollgate_id Varchar(50),
@車輛ID Varchar(50)
as
begin

Declare @A2長度 float;
Declare @A3長度 float;
Declare @B1長度 float;
Declare @B3長度 float;
Declare @C1長度 float;
Declare @C3長度 float;

Declare @A2平均時間 float;
Declare @A3平均時間 float;
Declare @B1平均時間 float;
Declare @B3平均時間 float;
Declare @C1平均時間 float;
Declare @C3平均時間 float;

Declare @A2平均時速 float;
Declare @A3平均時速 float;
Declare @B1平均時速 float;
Declare @B3平均時速 float;
Declare @C1平均時速 float;
Declare @C3平均時速 float;

select @A2長度 =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('110','123','107','108','120','117');
select @A3長度 =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('110','123','107','108','119','114','118','122');
select @B1長度 =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('105','100','111','103','116','101','121','106','113');
select @B3長度 =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('105','100','111','103','122');
select @C1長度 =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('115','102','109','104','112','111','103','116','101','121','106','113');
select @C3長度 =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('115','102','109','104','112','111','103','122');

select @A2平均時間=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='A' and tollgate_id='2';
select @A3平均時間=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='A' and tollgate_id='3';
select @B1平均時間=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='B' and tollgate_id='1';
select @B3平均時間=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='B' and tollgate_id='3';
select @C1平均時間=AVG(travel_time)  from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='C' and tollgate_id='1';
select @C3平均時間=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='C' and tollgate_id='3';

select @A2平均時速=@A2長度/@A2平均時間;
select @A3平均時速=@A3長度/@A3平均時間;
select @B1平均時速=@B1長度/@B1平均時間;
select @B3平均時速=@B3長度/@B3平均時間;
select @C1平均時速=@C1長度/@C1平均時間;
select @C3平均時速=@C3長度/@C3平均時間;


if(@intersection_id='A' and @tollgate_id='2')--車輛與A2路段
select intersection_id,tollgate_id,vehicle_id,starting_time,@A2長度 as A2長度,travel_time,@A2長度/(travel_time) as 平均時速 from [dbo].[trajectories(table 5)_training]
where vehicle_id=@車輛ID
if(@intersection_id='A' and @tollgate_id='3')--車輛與A3路段
select intersection_id,tollgate_id,vehicle_id,starting_time,@A3長度 as A3長度,travel_time,@A3長度/(travel_time) as 平均時速 from [dbo].[trajectories(table 5)_training]
where vehicle_id=@車輛ID
if(@intersection_id='B' and @tollgate_id='1')--車輛與B1路段
select intersection_id,tollgate_id,vehicle_id,starting_time,@B1長度 as B1長度,travel_time,@B1長度/(travel_time) as 平均時速 from [dbo].[trajectories(table 5)_training]
where vehicle_id=@車輛ID
if(@intersection_id='B' and @tollgate_id='3')--車輛與B3路段
select intersection_id,tollgate_id,vehicle_id,starting_time,@B3長度 as B3長度,travel_time,@B3長度/(travel_time) as 平均時速 from [dbo].[trajectories(table 5)_training]
where vehicle_id=@車輛ID
if(@intersection_id='C' and @tollgate_id='1')--車輛與C1路段
select intersection_id,tollgate_id,vehicle_id,starting_time,@C1長度 as C1長度,travel_time,@C1長度/(travel_time) as 平均時速 from [dbo].[trajectories(table 5)_training]
where vehicle_id=@車輛ID
if(@intersection_id='C' and @tollgate_id='3')--車輛與C3路段
select intersection_id,tollgate_id,vehicle_id,starting_time,@C3長度 as C3長度,travel_time,@C3長度/(travel_time) as 平均時速 from [dbo].[trajectories(table 5)_training]
where vehicle_id=@車輛ID

end



exec 查詢車輛時速 C,3,1072812
