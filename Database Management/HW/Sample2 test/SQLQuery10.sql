use mydbase
select RT$.MAKE,count(RT$.RTN),CT$.Cregion,CAR$.AT
from CT$,RT$,CAR$
where CT$.CID=RT$.CID
and RT$.VIN=CAR$.VIN
group by RT$.MAKE,CT$.Cregion,CAR$.AT