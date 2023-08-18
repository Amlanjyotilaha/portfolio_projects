select * from road_accident;

--Q1: Current Year Casualties
select sum(number_of_casualties) as CY_Casualties
from road_accident
where year(accident_date)=2022;

--Q2: Current Year Casualties by Road Surface Dry
select sum(number_of_casualties) as CY_Casualties
from road_accident
where year(accident_date)=2022 and road_surface_conditions='Dry';

--Q3:Current Year Accidents
select count(accident_index) as CY_Accidents
from road_accident
where year(accident_date)=2022;

--Q4:Current Year Fatal Casualties
select sum(number_of_casualties) as CY_Fatal_Casualties
from road_accident
where year(accident_date)=2022 and accident_severity='Fatal';

--Q5:Current Year Monthly Casualties
select DATENAME(MONTH,accident_date) as month_name, sum(number_of_casualties) as CY_Casualties
from road_accident
where YEAR(accident_date)=2022
group by DATENAME(MONTH,accident_date);

--Q6: Casualties by Road Type 
select road_type,sum(number_of_casualties) as CY_Casualties
from road_accident
where year(accident_date)=2022
group by road_type;

--Q7: Casualties by Urban and Rural 
select urban_or_rural_area,sum(number_of_casualties) as CY_Casualties
from road_accident
where year(accident_date)=2022
group by urban_or_rural_area;

--Q8: Top 10 Location wise Casualties
select top 10 local_authority,sum(number_of_casualties)as Total_Casualities
from road_accident
group by local_authority
order by Total_Casualities Desc;
