Select * from sales;
Select SaleDate, Amount, Boxes, Amount / boxes 'Amount per Box' from sales;

select * from sales 
where amount > 10000;


select * from sales 
where amount > 10000
order by amount desc ;

select * from sales 
where geoid='g1'
order by PID, Amount desc ;

Select * from sales 
where amount > 10000 and SaleDate >= '2022-01-01'
order by amount desc

Select SaleDate, Amount from sales
where amount > 10000 and year (SaleDate) = 2022
order by amount desc;

select * from sales 
where boxes > 0 and boxes < 50 ;

select * from sales 
where boxes between 0 and 50; 


/* shipment happening on Friday */

select SaleDate, Amount, Boxes, weekday (SaleDate) as 'Day of Week'

from sales 

where weekday (SaleDate)= 4;

/* using multiple tables */

select * from people
where team = 'Delish' or team = 'Jucies' ;

/* in clause */

select * from people 
where team in ('Delish', 'Jucies');

/*LIKE 	*/

select * from people
where salesperson like '%B%';


/* case operator */


select * from sales;

select SaleDate, Amount, 
		case when amount < 1000 then 'under 1k'
			 when amount < 5000 then 'under 5k'
             when amount < 10000 then 'under 10k'
			else '10k or more'
		end as 'Amount category'
from sales;


/*Joins */




