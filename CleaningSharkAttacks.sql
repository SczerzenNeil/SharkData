select * 
from sharkattackdata;

## Data Cleaning 

select distinct Year
from sharkattackdata;

select * 
from sharkattackdata
where Year = 3019;

Update sharkattackdata
SET Year = 2019
WHERE Year = 3019;

select distinct Name
from sharkattackdata
order by 1;

select Distinct Country
from sharkattackdata
order by 1;

Update sharkattackdata 
SET Country = 'UNITED ARAB EMIRATES'
WHERE Country LIKE 'UNITED ARAB EMIRATES%';

select Distinct Type 
from sharkattackdata;

select * 
from sharkattackdata
where Type = '';

update sharkattackdata
Set Type = 'Boating'
Where Type LIKE 'Boat%';

select distinct activity 
from sharkattackdata
order by 1;

update sharkattackdata
SET activity = 'Body Surfing'
WHERE activity LIKE 'Bodys%';
update sharkattackdata
SET activity = 'Body Surfing'
WHERE activity LIKE 'Body Su%';
update sharkattackdata
SET activity = 'Body Surfing'
WHERE activity LIKE 'Body Bo%';
update sharkattackdata
SET activity = 'Body Surfing'
WHERE activity LIKE 'Body-s%';
update sharkattackdata
SET activity = 'Body Surfing'
WHERE activity LIKE 'Bodyb%';
update sharkattackdata
SET activity = 'Body Surfing'
WHERE activity LIKE 'Boogie b%';

select distinct activity 
from sharkattackdata
order by 1; 

select distinct activity 
from sharkattackdata
where activity LIKE '%fishing%';

update sharkattackdata
SET activity = 'Fishing'
WHERE activity LIKE '%fishing%';

select distinct activity 
from sharkattackdata
where activity LIKE '%snorkeling%';
update sharkattackdata
SET activity = 'Snorkeling'
WHERE activity LIKE '%snorkeling%';
update sharkattackdata
SET activity = 'Swimming'
WHERE activity LIKE '%swimming%';

select distinct activity 
from sharkattackdata
where activity LIKE '%surf%';
Update sharkattackdata
SET activity = 'Surfing'
Where activity LIKE '%surfi%';
Update sharkattackdata
SET activity = 'Surfing'
Where (activity LIKE '%surfn%'
or activity LIKE '%surf-%'
or activity LIKE '%kite surf%'
or activity LIKE 'Surf s%');

select distinct activity 
from sharkattackdata 
 where activity like '%diving%';
Update sharkattackdata 
SET activity = 'Diving'
Where activity like '%diving%';

select distinct activity 
from sharkattackdata
order by 1; 

update sharkattackdata 
Set activity = 'Sea Disaster'
Where (
activity LIKE 'Sea dis%'
or activity LIKE '2 boats%'
);

select * 
from sharkattackdata
where activity = 'Sea disaster';

Delete 
from sharkattackdata
where activity = 'Crawling';

Update sharkattackdata
SET activity = 'Washing'
Where activity LIKE 'Washing%';

Update sharkattackdata
Set activity = 'Standing'
where activity LIKE '%Standing%';

select distinct activity 
from sharkattackdata
where activity LIKE '%feed%';
Update sharkattackdata
SET activity = 'Feeding'
where activity LIKE '%feed%';
select distinct activity 
from sharkattackdata
where activity LIKE '%board%';

Update sharkattackdata
SET activity = 'Paddleboarding'
where (
activity like '%board%'
or activity LIKE '%SUP%')
AND activity NOT LIKE '%wakeboard%'
AND activity NOT LIKE '%kite%';

Update sharkattackdata
SET activity = 'Kite Boarding'
where activity like '%Kite%';

select * 
from sharkattackdata
where activity LIKE '%Martin%';
Update sharkattackdata
SET activity = 'Surfing'
Where activity LIKE '%Martin%';

Select activity 
from sharkattackdata
where activity like '%filming%';
Update sharkattackdata
SET activity = 'Filming'
where activity LIKE '%filming%';

Update sharkattackdata 
SET activity = 'Walking'
Where activity Like '%Walking%';

Update sharkattackdata
SET activity = 'Shark Interaction'
where (
activity LIKE '%Wrangling%'
or activity LIKE '%Touching%'
or activity LIKE '%Teasing%'
or activity LIKE '%Tagging%'
or activity LIKE '%Attempting%'
or activity LIKE '%Dragging%'
or activity LIKE '%Grabbing shartk%'
or activity LIKE '%Measuring%'
or activity LIKE '%Petting%'
or activity LIKE '%Putting hand in%'
or activity LIKE '%Grabbing shark%'

)
AND activity NOT LIKE '%motor%';

update sharkattackdata
SET activity = 'Fishing'
WHERE activity LIKE '%casting a net%';

update sharkattackdata
SET activity = 'Kayaking'
WHERE (
activity LIKE '%kaya%'
or activity LIKE '%kaka%');

update sharkattackdata
SET activity = 'Swimming'
WHERE ( 
activity LIKE '%Floating%'
or activity LIKE '%Jumping in the%'
or activity LIKE '%Kneeling%'
or activity LIKE '%Night bath%'
or activity LIKE '%Playing%'
or activity LIKE '%sitting in%'
or activity LIKE '%Treading Wa%'
) ;

update sharkattackdata
SET activity = 'Kayaking'
WHERE activity LIKE '%kaya%';


update sharkattackdata 
set activity = 'Rowing'
where activity LIKE '%Rowing%';

update sharkattackdata 
set activity = 'Photography'
where activity LIKE '%Photo%';

update sharkattackdata
set activity = 'Canoeing'
where activity LIKE '%canoe%';

select * 
from sharkattackdata;

select distinct Type 
from sharkattackdata;

select distinct Species
from sharkattackdata;

select Date, TRIM('Reported ' FROM Date)
from sharkattackdata;

Update sharkattackdata
set Date = TRIM('Reported ' FROM Date);

select distinct species 
from sharkattackdata
order by 1;

select distinct activity
from sharkattackdata
order by 1;

select *
from sharkattackdata
where activity = '';

Update sharkattackdata
SET activity = "Unclassified"
Where activity = '';

Select Distinct `Date`, `index`
from sharkattackdata
order by 1;

Update sharkattackdata
Set `Date` = '05-Jul-2014'
where `Date` = '5-Jul-2014';

Update sharkattackdata
Set `Date` = '08-Jan-2019'
where `Date` = '8-Jan-2019';

Update sharkattackdata
Set `Date` = '09-Jul-2014'
where `Date` = '9-Jul-2014';

Update sharkattackdata
Set `Date` = '09-Mar-2018'
where `Date` = '9-Mar-2018';

select `Fatal (Y/N)`, count('index') as number_of_incidents
from sharkattackdata
group by `Fatal (Y/N)`;

select distinct Age
from sharkattackdata
order by 1;

Update sharkattackdata 
SET `Fatal (Y/N)` = ''
where (
`Fatal (Y/N)` NOT LIKE 'N'
or `Fatal (Y/N)` NOT LIKE 'Y');

Update sharkattackdata, fatalreports
SET sharkattackdata.`Fatal (Y/N)` = fatalreports.`Fatal (Y/N)`
where sharkattackdata.index = fatalreports.index

