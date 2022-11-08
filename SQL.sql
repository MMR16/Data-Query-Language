--select  *
--from DimEmployee
--where MiddleName is null
--where MiddleName is not null
--where ParentEmployeeKey between 1 and 13
--where FirstName in ('kevin', 'dylan',null)
--where FirstName not in ('kevin', 'dylan',null) -- null with not return unknown (null or empty)
--where MiddleName like '%n%'
---------------------------
--group by
-- aggrecate function operator on set of elements(collection) & return single value 
--minimum, maximum, average,count, stander deviation, variance
--select MiddleName, count(*) as NumberOfMiddleName
--from DimEmployee
--where MiddleName is not null
--group by MiddleName
--having count(*) >20
-------------------------
--order by
-- top can be used without orderby< can't use offset with it
--The WITH TIES option is important to the TOP() predicate.
--It enables the last place to include multiple rows if
--those rows have equal values in the columns used in the ORDER BY clause.


--select top(7)  FirstName, LastName 
--from DimEmployee
--where MiddleName is not null
--order by FirstName asc

--select top(7) with ties FirstName, LastName 
--from DimEmployee
--where MiddleName is not null
--order by FirstName asc

-- offset (skip), fetch next (take)
--select  FirstName, LastName 
--from DimEmployee
--where MiddleName is not null
--order by FirstName  desc
--OFFSET 5 rows
--fetch next 5 rows only

-- Get Second High Rate
--select FirstName, MiddleName, BaseRate * VacationHours  as Rating
--from DimEmployee
--where MiddleName is not null
--order by Rating desc
--offset 1 rows 
--fetch next 1 rows only

---------------------
--  remove duplicate by distinct , group by
-- the diffrence is distinct work after all query excuted (after select)
--select all MiddleName
--from DimEmployee

--select distinct ISNULL(MiddleName,'N/A') as Emp
--from DimEmployee

--select MiddleName
--from DimEmployee
--group by MiddleName