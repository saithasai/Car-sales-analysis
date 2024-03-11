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

#9)Top selling car name by price
select name,sum(selling_price) from car_proj
group by name
order by sum(selling_price) desc
limit 1;

#10)Top selling car name by count 
select name,count(*) as num from car_proj
group by name
order by num desc
limit 1;

#11)Top 10 sales by year
select year,sum(selling_price) as amount from car_proj
group by year
order by amount desc
limit 10;

#12)If customers prefer for joint family trip
select name,seats,year,sum(selling_price) as amount from car_proj
group by name,seats,year
having seats=9
order by seats desc;

#13)If customers prefer for 2 family trip in 2019 
select name from car_proj
where seats>7 and year=2019
order by seats desc

#14)Fuel efficiency impact
select name,mileage,sum(selling_price) as amount from car_proj
group by name,mileage
order by amount desc
limit 10;

#15)Total Number of Vehicles having different fuel Type category and their Average Price.
select fuel,concat(round(count(fuel)*100/(select count(*) from car_proj),2),"%") as vehicle_percent,round(avg(selling_price)/100000,0) as amount_in_lakhs from car_proj
group by fuel

#16)Total Number of Vehicles having different Seat number category and their Average selling Price.
select seats,concat(round(count(seats)*100/(select count(*) from car_proj),2),"%") as seat_percent,round(avg(selling_price)/100000,0) as amount_in_lakhs from car_proj
group by seats;

#17)Total Number of Vehicles having different engine category and their Average selling Price.
select engine,concat(round(count(engine)*100/(select count(*) from car_proj),2),"%") as vehicle_percent,round(avg(selling_price)/100000,0) as amount_in_lakhs from car_proj
group by engine
order by engine;

#18)Total Number of Vehicles having different max power category and their Average selling Price.
select max_power,concat(round(count(max_power)*100/(select count(*) from car_proj),2),"%") as vehicle_percent,round(avg(selling_price)/100000,0) as amount_in_lakhs from car_proj
group by max_power
order by max_power;
