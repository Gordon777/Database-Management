alter procedure 琩高讽らぱ
@date varchar(50)
as
begin
select @date as Date, AVG(pressure) as pressure,AVG(sea_pressure) as sea_pressure,AVG(wind_direction) as wind_direction,AVG(temperature) as temperature,AVG(rel_humidity) as rel_humidity,AVG(precipitation) as precipitation  from [dbo].[weather (table 7)_training]
WHERE date=@date
end

exec 琩高讽らぱ '2016-07-01'

select * from [dbo].[trajectories(table 5)_training]

alter procedure 琩高讽らó进ID
@date datetime
as
begin
select * from  [dbo].[trajectories(table 5)_training] WHERE starting_time=@date
end

exec 琩高讽らó进ID '2016-07-19 00:14:00.000'