select * from sales;

select * from people;

select s.SaleDate, s.Amount, P.Salesperson, s.SPID, p.spid
from sales s
join people p on p.SPID = s.SPID ;


/*LEFT JOIN */

Select s.SaleDate, s.Amount, pr.product 
from sales s
left join products pr on pr.pid= s.pid;

/*Joining multiple table */

Select s.saleDate, s.amount, pr.product, p.Salesperson, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid= s.pid
where s.amount <1000
and p.team = 'Delish' ;


Select s.saleDate, s.amount, pr.product, p.Salesperson, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid= s.pid
where s.amount <1000
and p.team = '';



Select s.saleDate, s.amount, pr.product, p.Salesperson, p.team
from sales s
join people p on p.SPID = s.SPID
join products pr on pr.pid= s.pid
join geo g on g.geoid= s.geoid
where s.amount <1000
and p.team = ''
and g.Geo in ('New Zeland', 'India')
order by SaleDate;


/* Group by */






