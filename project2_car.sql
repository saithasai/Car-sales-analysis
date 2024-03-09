drop database if exists project2;
create database project2;
use project2;
select * from car_proj;

#how many cars
select count(*) from car_proj;

#cars available in 2023
select count(*) from car_proj 
where year='2023';

#cars available in 2020,2021,2022
select count(*) from car_proj 
where year='2020' or year='2021' or year='2022';
#or
select year,name from car_proj 
where year='2020' or year='2021' or year='2022'
order by year;
#or
select year,count(*) from car_proj 
where year='2020' or year='2021' or year='2022'
group by year;

select year,count(*) from car_proj
group by year;

#diesel car in 2020
select count(*) from car_proj
where fuel="diesel" and year="2020";

#all the fuel cars come by all year
select name,fuel from car_proj
where year="1999"
order by fuel;

#year having more than 100 cars
select year,count(*) as total from car_proj
group by year
having total>100;

#count cars b/w 2015 and 2023
select count(*) from car_proj
where year between 2015 and 2023;

#name cars b/w 2015 and 2023
select * from car_proj
where year between 2015 and 2023