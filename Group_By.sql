select geoID, sum(amount), avg(amount), sum(boxes)
from sales
group by GeoID;

select g.geo, sum(amount), avg(amount), sum(boxes)
from sales s
join geo g on g.geoID= s.geoID
group by g.geo;

/* get the data from product and people table */

select pr.category, p.team, sum(boxes), sum(amount)
from sales s
join people p on s.spid=p.spid
join products pr on pr.pid= s.pid
where p.team <> ''
group by pr.category, p.team 
order by pr.category, p.team;


select pr.Product, sum(s.amount) as 'Total Amount'
from sales s 
join products pr on pr.pid = s.pid
group by pr.Product
order by 'Total Amount' desc
limit 10


