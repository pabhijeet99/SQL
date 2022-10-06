use assignments;
### Q1  ###
select * from employee;
select * from employee where deptno=10 and salary>3000;

###  Q2  ###
select* from students;
select* from students where marks between 50 and 79;
#12 students are of First class

select* from students where marks between 80 and 100;
#11 students are of Distinction

###  Q3  ###
select* from station where id % 2 = 0;

desc station;
select* from station;

###  Q4  ###
select count(city) from station;
select count(distinct city) from station;
select count(city) - count(distinct city)from station;
/*
Number of cities(N) = 501
number of distinct cities(N1) = 471
Difference between cities and distinct cities = N-N1
											  =501-471=30 cities
*/
                                              
###  Q5a  ###
select* from station where city like ('a%') or city like ('e%') or city like ('i%') or city like ('o%') or city like ('u%');

###  Q5b  ###
select* from station where (city like ('a%') or city like ('e%') or city like ('i%') or city like ('o%') or city like ('u%')) and
(city like ('%a') or city like ('%e') or city like ('%i') or city like ('%o') or city like ('%u'));

###  Q5c  ###
select* from station where city not like ('a%') or city not like ('e%') or city not like ('i%') or city not like ('o%') or city not like ('u%');

###  Q5d  ###
select* from station where (city not like ('a%') or city not like ('e%') or city not like ('i%') or city not like ('o%') or city not like ('u%')) and
(city not like ('%a') or city not like ('%e') or city not like ('%i') or city not like ('%o') or city not like ('%u'));


###  Q6  ###
select * from emp;
select first_name,last_name,salary,hire_date from emp WHERE (Salary > 2000 AND hire_date > '2017-01-01') order by salary desc;


###  Q7  ###
select* from employee;
select deptno,sum(salary)
from employee
group by deptno;


###  Q8  ###
select* from city;
select name,population from city where population>100000;
/* 11 cities have the population more than 100000*/

###  Q9  ###
select district,sum(population) from city where district='california';
/*Population of california is 339002*/

###  Q10  ###
select avg(population) from city;
/* 173880.2857 is the average population*/


### Q11 ###
select* from orders;
select * from customers;
SELECT Orders.Ordernumber,orders.status,orders.comments,orders.customernumber, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.Customernumber = Customers.Customernumber
where status != 'shipped';