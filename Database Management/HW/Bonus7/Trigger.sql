create trigger Bonus7_audit_insert --在orginal_table INSERT時觸發
on [dbo].[Bonus7_orginal_table]
for insert
as

begin
Declare @交易單號 varchar(50);
Declare @產品 varchar(50);
Declare @價格 varchar(50);
Declare @數量 varchar(50);
Declare @付款方式 varchar(50);
Declare @備註 varchar(50);
Declare @付款日期 varchar(50);

select @交易單號=Bonus7_orginal_table.交易單號 from Bonus7_orginal_table;
select @產品=Bonus7_orginal_table.產品 from Bonus7_orginal_table;
select @價格=Bonus7_orginal_table.價格 from Bonus7_orginal_table;
select @數量=Bonus7_orginal_table.數量 from Bonus7_orginal_table;
select @付款方式=Bonus7_orginal_table.付款方式 from Bonus7_orginal_table;
select @備註=Bonus7_orginal_table.備註 from Bonus7_orginal_table;
select @付款日期=Bonus7_orginal_table.付款日期 from Bonus7_orginal_table;

if @產品 = ('飯糰+咖啡')--飯糰+咖啡39元
begin
select @價格=39;

insert into Bonus7_shadow_table
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(
@交易單號,
@產品,
@價格,
@數量, 
@付款方式, 
@備註, 
@付款日期
)
end
end


if @產品 = ('飲料') and @數量=2--飲料第2件6折
begin
select @價格=Bonus7_orginal_table.價格*0.8 from Bonus7_orginal_table;

insert into Bonus7_shadow_table
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(
@交易單號,
@產品,
@價格,
@數量, 
@付款方式, 
@備註, 
@付款日期
)
end

if @產品 = ('便當') and @付款方式=('悠遊卡')--悠遊卡折10元
begin
select @價格=Bonus7_orginal_table.價格-10 from Bonus7_orginal_table;

insert into Bonus7_shadow_table
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(
@交易單號,
@產品,
@價格,
@數量, 
@付款方式, 
@備註, 
@付款日期
)
end


if @產品 = ('可樂') --可樂買一送一
begin
select @數量=Bonus7_orginal_table.數量+1 from Bonus7_orginal_table;
select @備註='可樂買一送一';

insert into Bonus7_shadow_table
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(
@交易單號,
@產品,
@價格,
@數量, 
@付款方式, 
@備註, 
@付款日期
)
end

if @價格 > 1000 --滿千送Hello Kitty一隻
begin

select @備註='滿千送Hello Kitty一隻';

insert into Bonus7_shadow_table
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(
@交易單號,
@產品,
@價格,
@數量, 
@付款方式, 
@備註, 
@付款日期
)
end