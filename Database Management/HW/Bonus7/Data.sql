select * from Bonus7_orginal_table

insert into Bonus7_orginal_table--插入資料飯糰優惠
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(17,'飯糰+咖啡',50,1,'現金',null,GetDate())


insert into Bonus7_orginal_table--插入資料飲料優惠
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(18,'飲料',60,2,'現金',null,GetDate())

insert into Bonus7_orginal_table--插入資料悠遊卡優惠
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(19,'便當',75,1,'悠遊卡',null,GetDate())

insert into Bonus7_orginal_table--可樂買一送一
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(20,'可樂',25,1,'現金',null,GetDate())

insert into Bonus7_orginal_table--滿千送Hello Kitty一隻
(交易單號,產品,價格,數量,付款方式,備註,付款日期)
Values
(21,'威士忌',1500,1,'現金',null,GetDate())
