select name
from production.product
where productid IN 
(select productid from sales.salesorderdetail)



select AVG(totaldue)
from sales.salesorderheader


/*select AVG(totaldue)
from sales.salesorderheader*/
select customerid , SUM(totaldue) as totalamount
from sales.salesorderheader
group by customerid


/*select AVG(totaldue)
from sales.salesorderheader*/
select customerid , SUM(totaldue) as totalamount
from sales.salesorderheader
group by customerid
having SUM(totaldue) > ( select AVG(totaldue) from sales.salesorderheader)


select product_name , total_sold
from(
select p.name as product_name , SUM(sod.orderqty) as total_sold
from production.product as p
join sales.salesorderdetail as sod
ON p.productid = sod.productid
group by p.name) as subquery
where total_sold > 100
order by total_sold DESC



select p.name as product_name,
(select COUNT(DISTINCT sod.salesorderid)
from sales.salesorderdetail as sod
where sod.productid = p.productid) as total_orders
from production.product as p
order by total_orders DESC



select p.productid , p.name , p.listprice , ps.name as subcategoryname 
from production.product as p 
join production.productsubcategory as ps
ON p.productsubcategoryid = ps.productsubcategoryid 
where p.listprice > (select AVG(p2.listprice)
                     from production.product as p2 
                     where p2.productsubcategoryid = p.productsubcategoryid)




select c.customerid , c.personid , soh.salesorderid , soh.totaldue
from sales.customer as c
INNER JOIN sales.salesorderheader as soh
ON c.customerid = soh.customerid
where exists (select 1 
                 from sales.salesorderheader as so
			           where so.customerid = c.customerid
			           AND so.totaldue > (select AVG(o2.totaldue)
			                              from sales.salesorderheader as o2
										   where o2.customerid = c.customerid))