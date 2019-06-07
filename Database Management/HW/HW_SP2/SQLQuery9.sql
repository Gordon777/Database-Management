create procedure 賣場年齡檢查
as
begin
select * from 會員資料檔
where 年齡  not between '18'and'100'
end

go
create procedure 會員編號檢查
as
begin
select 會員編號 from [會員資料檔]
where not exists(select * from [交易記錄檔] where [會員資料檔].會員編號=[交易記錄檔].會員編號)
end

go

create procedure 產品編號檢查
as
begin
select 產品編號 from [產品資料檔]
where not exists(select * from [交易記錄檔] where [產品資料檔].產品編號=[交易記錄檔].產品編號)
end

create procedure 品類編號與名稱檢查
as
begin
select 品類編號,品類名稱 from [品類編碼表]
where not exists(select * from [產品資料檔] where [產品資料檔].品類編號=[品類編碼表].品類編號 and [產品資料檔].品類名稱=[品類編碼表].品類名稱)
end

create procedure 數量不一致退貨
as
begin
MERGE INTO 交易記錄檔$--再匯入一張一樣報表
   USING 交易記錄檔
   ON 交易記錄檔$.產品編號 = 交易記錄檔.產品編號 --將兩張表的編號MERGE
WHEN MATCHED AND (交易記錄檔$.購買數量 + 交易記錄檔.購買數量 = 0) THEN--當兩張表有資料MERGE時，且庫存量加上進退貨量等於零時，則刪除資料
   DELETE;--找出兩張表退貨不一致

select * from 交易記錄檔$--所有有問題的資料
where 購買數量<0
end




exec 賣場年齡檢查--d.找出年齡不是在18~100歲間的會員
exec 會員編號檢查--a.找出遺漏會員編號
exec 產品編號檢查--b.找出遺漏產品編號
exec 品類編號與名稱檢查--e.找出遺漏品類編號與名稱
exec 數量不一致退貨--c.再創一張table與原本比對找出數量不一致