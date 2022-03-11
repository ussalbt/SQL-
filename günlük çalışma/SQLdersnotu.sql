select city, count(customer_id)noc
from sale.customer
where state='TX'
group by city;-- burada teksas eyaletinde yaþayan her bir þehirde bulunan müþteri sayýsýný bulduk.

select city, count(customer_id)noc
from sale.customer
where state= 'CA'
group by city
having count(customer_id)>5
order by noc desc;

select top 10 product_name,list_price
from product.product
order by list_price desc;

select A.store_id, B.product_name, B.list_price,A.quantity
from product.stock A, product.product B
--Join product.product B
--on A.product_id=B.product_id
where A.product_id=B.product_id
     And store_id= 2 And list_price>25-- store_id=2 and list_price>25
order by list_price desc;


select A.order_id, B.first_name, B.last_name, A.order_date
from sale.orders A 
join sale.customer B
on A.customer_id = B.customer_id
where city= 'Boulder'
order by order_date 


select A.first_name,
      A.last_name,
	  year(B.order_date) as[year],
      Avg( quantity*(list_price*(1-discount))) as order_ort
 from sale.staff A
 JOIN sale.orders B
 on A.staff_id= B.staff_id
 Join sale.order_item C
 on B.order_id=C.order_id
 group by first_name,last_name,YEAR(B.order_date)
 order by order_ort desc;


 select list_price,discount,quantity
 from sale.order_item

 select B.brand_name, sum(A.quantity) quantity
 from sale.order_item A, product.brand B, product.product C
where A.product_id=C.product_id
and B.brand_id=C.brand_id --Join product.product C
 --on A.product_id= C.product_id
--Join product.brand B
--on B.brand_id=C.brand_id
group by B.brand_name
 order by quantity desc;


select distinct B.brand_name,C.category_name
from product.category C, product.brand B,product.product A
where B.brand_id=A.brand_id
and C.category_id= A.category_id
order by brand_name

-- deðiþik çözüm
SELECT DISTINCT B.brand_name, C.category_name
FROM product.product P 
JOIN product.brand B 
ON P.brand_id = B.brand_id
JOIN product.category C 
ON P.category_id = C.category_id
ORDER BY B.brand_name;


select B.brand_name, C.category_name, Avg(P.list_price)As Avg_Pro
from product.brand B, Product.category C, product.product P
Where C.category_id= P.category_id
and B.brand_id= P.category_id
group by B.brand_name,C.category_name
order by B.brand_name -- Farklý sonuç veriyor.

select C.brand_name,B.category_name, Avg (A.list_price)As Avg_brands
from product.product A
join product.category B
on A.category_id=B.category_id
join product.brand C
on A.brand_id= C.brand_id
group by C.brand_name, B.category_name
order by C.brand_name