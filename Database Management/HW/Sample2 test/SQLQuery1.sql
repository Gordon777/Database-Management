use mydbase
select TE$.Empname,TD$.Deptname,TE$.Empsalary
from TE$ ,TD$
where TE$.Empdeptno=TD$.Deptno