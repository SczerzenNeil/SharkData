select *
from sharkattackdata;

select count('index')
from sharkattackdata;

select distinct activity, count('index') as number_of_incidents
from sharkattackdata
group by activity
order by 2 DESC;

select Year, count('index') as number_of_incidents 
from sharkattackdata
group by Year;

select substring(`Date`,4,3) as `MONTH`, count('index') as number_of_incidents 
from sharkattackdata
group by `MONTH`;

select `Fatal (Y/N)`, count('index') as number_of_incidents
from sharkattackdata
group by `Fatal (Y/N)`;

select country, count('index') as number_of_incidents, count(`Fatal (Y/N)`)
from sharkattackdata
group by country;

select Country, count('index') as number_of_incidents,
(select count(`Fatal (Y/N)`)
from sharkattackdata
where `Fatal (Y/N)` = 'Y') as fatalCount
from sharkattackdata
group by country;

select country, count(`Fatal (Y/N)`)
from sharkattackdata
where `Fatal (Y/N)` = 'Y'
group by country;

select AVG(age)
from sharkattackdata;

select country, area, count('index') as number_of_incidents
from sharkattackdata
group by country, area
-- having country = 'USA'
order by 3, 1 DESC;

select area, count(`Fatal (Y/N)`)
from sharkattackdata
where (`Fatal (Y/N)` = 'Y'
AND area = 'Florida');