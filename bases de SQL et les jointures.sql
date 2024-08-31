select hiredate
from humanresources.employee
where  hiredate NOT BETWEEN '2005-01-01' and '2010-12-31'

select *
from Sales.Customer
where  territoryid IN (1,2,3)

select *
from production.product
where name ilike '%road%'

select *
from production.product
where name ilike '%Road%'

select *
from production.product
where name like '_a%e'

select *
from production.product
where name like '__a%'


select *
from production.product
where name like 'Road%'


select *
from Sales.Customer
where  (territoryid NOT BETWEEN 1 and 5) and (storeid IN (942,1022,1340))



select *
from Sales.Customer
where  territoryid NOT BETWEEN 1 and 5


select *
from Sales.Customer
where  territoryid IN (1,2,3)


select *
from production.product
ORDER BY listprice ASC 
LIMIT 5

select *
from production.product
ORDER BY listprice DESC 
LIMIT 5

select productid , name , productsubcategoryid , listprice
from production.product
ORDER BY productsubcategoryid , listprice DESC 

select productid , name , productsubcategoryid , listprice
from production.product
ORDER BY productsubcategoryid , listprice DESC 
LIMIT 100

select productid , name , productsubcategoryid , listprice
from production.product
ORDER BY  listprice DESC 
LIMIT 5
OFFSET 5

select *
FROM production.product

select p.name as productname , s.orderqty as quantiteendue
from production.product as p 
left join sales.salesorderdetail as s 
on p.productID = s.productID 

select p.name as productname , s.orderqty as quantiteendue
from production.product as p 
inner join sales.salesorderdetail as s 
on p.productID = s.productID 

select * 
from sales.salesorderheader

select salesorderid , totaldue ,
case 
when totaldue > 1000 then 'High'
when totaldue Between 500 and 1000 then 'Medium'
else 'low'
end as category
from sales.salesorderheader

select p.name as productname  , COALESCE (sum(s.orderqty),0) as quantitevendue 
from production.product as p
left join sales.salesorderdetail as s 
on p.productid = s.productid
group by productname
order by quantitevendue DESC

select p.name as productname  , s.orderqty as quantiteendue 
from production.product as p
left join sales.salesorderdetail as s 
on p.productid = s.productid
limit 100

select s.name as storename , count(c.customerid) as numclients
from sales.customer as c 
inner join sales.store  as s 
on c.storeid = s.businessentityid 
group by s.name
order by numclients DESC

select p.name as productname , sum(i.quantity) as quantity 
from production.product as p 
inner join production.productinventory  as i 
on p.productid = i.productid 
group by p.name
order by quantity DESC

select p.name as productname , sum(i.quantity) as quantity 
from production.product as p 
inner join production.productinventory  as i 
on p.productid = i.productid 
group by p.name

select p.name , i.quantity 
from production.product as p 
inner join production.productinventory  as i 
on p.productid = i.productid 

select p.productid as productid , p.name as productname , c.name as categoryname
from production.product as p 
inner join production.productmodel as c
on p.productmodelid = c.productmodelid

select p.productid as productid , p.name as productname , c.name as categoryname
from production.product as p 
inner join production.productmodel as c
on p.productmodelid = c.productmodelid

select productid , coalesce( color , 'no color' ) as productcolor
from production.product

select p.name as productname  , COALESCE (sum(s.orderqty),0) as quantitevendue 
from production.product as p
left join sales.salesorderdetail as s 
on p.productid = s.productid
group by productname
order by quantitevendue DESC
