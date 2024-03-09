drop database if exists project2;
create database project2;
use project2;
select * from car_proj;

#1)how many cars
select count(*) from car_proj;

#2)cars available in 2023
select count(*) from car_proj 
where year='2023';

#3)cars available in 2020,2021,2022
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

#4)diesel car in 2020
select count(*) from car_proj
where fuel="diesel" and year="2020";

#5)All the fuel cars come by all year
select name,fuel from car_proj
where year="1999"
order by fuel;

#6)Year having more than 100 cars
select year,count(*) as total from car_proj
group by year
having total>100;

#7)Count cars b/w 2015 and 2023
select count(*) from car_proj
where year between 2015 and 2023;

#8)Name cars b/w 2015 and 2023
select * from car_proj
where year between 2015 and 2023

