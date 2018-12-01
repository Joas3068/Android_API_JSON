
select * from employees where not country = 'USA' and (hiredate-current_date) < '1825 days' order by (firstname,lastname) ASC;
select productid,productname,unitsinstock,unitprice from products where unitsinstock<reorderlevel and unitsinstock>0;
select productname, unitprice from products where unitprice = (select MIN(unitprice)from products) union select productname, unitprice from products where unitprice = (select MAX(unitprice)from products);
select productid, productname, unitsinstock,unitprice, (unitsinstock * unitprice) as "Total Inventory Value" from products where (unitsinstock*unitprice)>1000 order by "Total Inventory Value" desc;
select shipcountry, count(shipcountry) from orders where not shipcountry='Germany' and (shippeddate between '2013-10-1' and '2013-10-31')group by shipcountry order by shipcountry;
select customerid, shipname from orders group by customerid, shipname having count(customerid) >= 10;