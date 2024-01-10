use retail;



select * from Products;
select * , (quantityinstock * MSRP) as revenue
from products;





select productline, sum(quantityinstock * MSRP) as revenue
from products
group by productline;

select sum(MSRP) from products/count(*) from products;

 
 select count(*) as n
 from products
 where (sum(MSRP/n));
 
 
 describe products;
 
 -- on which way most of payment are done
 
 select * from payments;
 
 
-- sum(quantityinstock * MSRP) as revenue
 
 
 
 
 select dayname(paymentDate) as pay , count(*) as cnt  , sum(amount)
 from payments
 group by pay
 order by cnt desc;
 
 select dayname(paymentDate) as pay , count(*) as cnt  , sum(amount),sum(quantityinstock * MSRP) as revenue
 from payments
 join  customers as c
 using (customerNumber)
 join orders as o
 using (customerNumber)
 join orderdetails as od
 using (orderNumber)
 join products as pd
 using (productCode)
 group by pay
 order by cnt desc;
 
 