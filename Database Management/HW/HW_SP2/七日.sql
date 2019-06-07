create procedure 七日內退貨
as 
begin
select 交易記錄檔.會員編號, 產品資料檔.產品名稱, 交易記錄檔.購買日期, 交易記錄檔1.購買日期 as 退貨日期 from 交易記錄檔, 交易記錄檔1
left join 產品資料 t3 on t1.產品編號 = t3.產品編號 
where t1.xxx = t2.xxx and .... and t1.購買日期 + days_away < t2.購買日期
end


use DB605546001
select 交易記錄檔.會員編號, 產品資料檔.產品名稱, 交易記錄檔.購買日期, 交易記錄檔1.購買日期 as 退貨日期, 交易記錄檔.購買數量 from 交易記錄檔, 交易記錄檔1
left join 產品資料檔 on 交易記錄檔1.產品編號 = 產品資料檔.產品編號 
where 交易記錄檔.會員編號 = 交易記錄檔1.會員編號  and 交易記錄檔.購買日期 +7 < 交易記錄檔1.購買日期
