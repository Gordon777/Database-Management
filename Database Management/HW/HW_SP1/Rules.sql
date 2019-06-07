alter procedure ALLRECORDS
as
begin
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID

end


go

alter procedure Rules
as

begin
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='MIS' and [HW_SP1 StudentVSMinor].MMID in('MS','CS')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='MS' and [HW_SP1 StudentVSMinor].MMID In('MIS','LAW')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='CS' and [HW_SP1 StudentVSMinor].MMID In('MIS','EE')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='EE' and [HW_SP1 StudentVSMinor].MMID In('CS')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='LAW' and [HW_SP1 StudentVSMinor].MMID In('MS','MIS','CS')
end
go

alter procedure Rule1
as

begin
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='MIS' and [HW_SP1 StudentVSMinor].MMID not in('MS','CS')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='MS' and [HW_SP1 StudentVSMinor].MMID NOT In('MIS','LAW')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='CS' and [HW_SP1 StudentVSMinor].MMID NOT In('MIS','EE')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='EE' and [HW_SP1 StudentVSMinor].MMID NOT In('CS')
select [HW_SP1 StudentVSMajor].SID,[HW_SP1 student].[Student name], MDID,MMID
From [HW_SP1 StudentVSMajor],[HW_SP1 StudentVSMinor],[HW_SP1 student]
where [HW_SP1 StudentVSMajor].SID=[HW_SP1 StudentVSMinor].SID and
[HW_SP1 student].SID=[HW_SP1 StudentVSMajor].SID and
[HW_SP1 StudentVSMajor].MDID='LAW' and [HW_SP1 StudentVSMinor].MMID NOT In('MS','MIS','CS')
end

exec ALLRECORDS---所有資料
exec Rules ---有符合規則的資料
exec Rule1---沒有符合規則的資料