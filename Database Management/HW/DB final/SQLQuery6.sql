alter procedure �d�߷��Ѯ�
@date varchar(50)
as
begin
select @date as Date, AVG(pressure) as pressure,AVG(sea_pressure) as sea_pressure,AVG(wind_direction) as wind_direction,AVG(temperature) as temperature,AVG(rel_humidity) as rel_humidity,AVG(precipitation) as precipitation  from [dbo].[weather (table 7)_training]
WHERE date=@date
end

exec �d�߷��Ѯ� '2016-07-01'

select * from [dbo].[trajectories(table 5)_training]

alter procedure �d�߷�騮��ID
@date datetime
as
begin
select * from  [dbo].[trajectories(table 5)_training] WHERE starting_time=@date
end

exec �d�߷�騮��ID '2016-07-19 00:14:00.000'