alter procedure �d�ߨ����ɳt
@intersection_id Varchar(50),
@tollgate_id Varchar(50),
@����ID Varchar(50)
as
begin

Declare @A2���� float;
Declare @A3���� float;
Declare @B1���� float;
Declare @B3���� float;
Declare @C1���� float;
Declare @C3���� float;

Declare @A2�����ɶ� float;
Declare @A3�����ɶ� float;
Declare @B1�����ɶ� float;
Declare @B3�����ɶ� float;
Declare @C1�����ɶ� float;
Declare @C3�����ɶ� float;

Declare @A2�����ɳt float;
Declare @A3�����ɳt float;
Declare @B1�����ɳt float;
Declare @B3�����ɳt float;
Declare @C1�����ɳt float;
Declare @C3�����ɳt float;

select @A2���� =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('110','123','107','108','120','117');
select @A3���� =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('110','123','107','108','119','114','118','122');
select @B1���� =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('105','100','111','103','116','101','121','106','113');
select @B3���� =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('105','100','111','103','122');
select @C1���� =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('115','102','109','104','112','111','103','116','101','121','106','113');
select @C3���� =sum(length) from [dbo].[links (table 3)] 
WHERE link_id IN ('115','102','109','104','112','111','103','122');

select @A2�����ɶ�=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='A' and tollgate_id='2';
select @A3�����ɶ�=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='A' and tollgate_id='3';
select @B1�����ɶ�=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='B' and tollgate_id='1';
select @B3�����ɶ�=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='B' and tollgate_id='3';
select @C1�����ɶ�=AVG(travel_time)  from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='C' and tollgate_id='1';
select @C3�����ɶ�=AVG(travel_time) from [dbo].[trajectories(table 5)_training]
WHERE intersection_id='C' and tollgate_id='3';

select @A2�����ɳt=@A2����/@A2�����ɶ�;
select @A3�����ɳt=@A3����/@A3�����ɶ�;
select @B1�����ɳt=@B1����/@B1�����ɶ�;
select @B3�����ɳt=@B3����/@B3�����ɶ�;
select @C1�����ɳt=@C1����/@C1�����ɶ�;
select @C3�����ɳt=@C3����/@C3�����ɶ�;


if(@intersection_id='A' and @tollgate_id='2')--�����PA2���q
select intersection_id,tollgate_id,vehicle_id,starting_time,@A2���� as A2����,travel_time,@A2����/(travel_time) as �����ɳt from [dbo].[trajectories(table 5)_training]
where vehicle_id=@����ID
if(@intersection_id='A' and @tollgate_id='3')--�����PA3���q
select intersection_id,tollgate_id,vehicle_id,starting_time,@A3���� as A3����,travel_time,@A3����/(travel_time) as �����ɳt from [dbo].[trajectories(table 5)_training]
where vehicle_id=@����ID
if(@intersection_id='B' and @tollgate_id='1')--�����PB1���q
select intersection_id,tollgate_id,vehicle_id,starting_time,@B1���� as B1����,travel_time,@B1����/(travel_time) as �����ɳt from [dbo].[trajectories(table 5)_training]
where vehicle_id=@����ID
if(@intersection_id='B' and @tollgate_id='3')--�����PB3���q
select intersection_id,tollgate_id,vehicle_id,starting_time,@B3���� as B3����,travel_time,@B3����/(travel_time) as �����ɳt from [dbo].[trajectories(table 5)_training]
where vehicle_id=@����ID
if(@intersection_id='C' and @tollgate_id='1')--�����PC1���q
select intersection_id,tollgate_id,vehicle_id,starting_time,@C1���� as C1����,travel_time,@C1����/(travel_time) as �����ɳt from [dbo].[trajectories(table 5)_training]
where vehicle_id=@����ID
if(@intersection_id='C' and @tollgate_id='3')--�����PC3���q
select intersection_id,tollgate_id,vehicle_id,starting_time,@C3���� as C3����,travel_time,@C3����/(travel_time) as �����ɳt from [dbo].[trajectories(table 5)_training]
where vehicle_id=@����ID

end



exec �d�ߨ����ɳt C,3,1072812
