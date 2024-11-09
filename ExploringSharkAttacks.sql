select *
from sharkattackdata;

select count('index')
from sharkattackdata;

select distinct activity, count('index') as number_of_incidents, SUM(if(`Fatal (Y/N)` = 'Y', 1, 0)) as Fatal_Deaths
from sharkattackdata
group by activity
order by 2 DESC;

select Year, count('index') as number_of_incidents 
from sharkattackdata
group by Year;

select `Fatal (Y/N)`, count('index') as number_of_incidents
from sharkattackdata
group by `Fatal (Y/N)`;

select country, count('index') as number_of_incidents, SUM(if(`Fatal (Y/N)` = 'Y', 1, 0)) as Fatal_Deaths
from sharkattackdata
group by country;

select AVG(age)
from sharkattackdata;

select country, area, count('index') as number_of_incidents
from sharkattackdata
group by country, area
-- having country = 'USA'
order by 3, 1 DESC;

select area, SUM(if(`Fatal (Y/N)` = 'Y', 1, 0)) as Fatal_Deaths
from sharkattackdata
where area = 'Florida';

select AVG(age) 
from sharkattackdata;

select Count(`index`)
from sharkattackdata;

select Round((SUM(Type = "Provoked") / Count(Type)), 2) as provokedPercentage, Count(`index`) as CaseAmount
from sharkattackdata;

select 
ound((SUM(Type = "Provoked") / Count(Type)), 2) as provokedPercentage, Count(`index`) as CaseAmount
from sharkattackdata
where age between 20 and 40;

select count(Type), SUM(Type = "Provoked")
from sharkattackdata
where age between 20 and 40; 

select Count(`index`) 
from sharkattackdata
where Year = 2009;
select Count(`index`) 
from sharkattackdata
where Year = 2011;
select Count(`index`) 
from sharkattackdata
where Year = 2013;
select Count(`index`) 
from sharkattackdata
where Year = 2015;
select Count(`index`) 
from sharkattackdata
where Year = 20;

select substring(`Date`,4,3) as `MONTH`, count('index') as number_of_incidents 
from sharkattackdata
group by `MONTH`;

select distinct species 
from sharkattackdata;

select location, count('index') as number_of_incidents
from sharkattackdata
group by location;

select Round(AVG(age)), activity 
from sharkattackdata
group by activity;

select Round(AVG(age)), country 
from sharkattackdata
group by country;