-----WF-SONU CHECKÝNG YOURSELF---1-- oldu--
--2020'de çalýþanýn ilk sipariþ tarihlerini aylara göre listeleyin. Beklenen sütunlar þunlardýr: ad, soyadý, ay ve ilk sipariþ tarihi. (artan sýrada soyadý ve ay)
--(SampleRetail Database'i kullanýn ve sonucunuzu aþaðýdaki kutuya yapýþtýrýn.)

with t1 as (
SELECT  a.staff_id,a.first_name,A.last_name, DATEPART(MONTH,B.order_date) as month_no, b.order_date
FROM SALE.staff A
RIGHT JOIN SALE.orders B
ON A.staff_id = B.staff_id
where b.order_date < '2021-01-01' and b.order_date > '2019-12-31')

select distinct t1.first_name,t1.last_name, t1.month_no, FIRST_VALUE(t1.order_date) 
	over (partition by t1.last_name, t1.month_no order by t1.last_name asc ,  t1.order_date asc) ilk_siparis_tar
from t1
order by t1.last_name

-----WF-SONU CHECKÝNG YOURSELF---2--hatalý
--Burkes Outlet'in "2019-04-01" ve "2019-04-30" arasýndaki sipariþ tarihine göre kümülatif toplam cirolarýný döndüren pencere iþlevini kullanarak bir sorgu yazýn.
--Listelenmesi gereken sütunlar: artan sýrada 'order_date' ve 'Cumulative_Total_Price'.


select a.order_date,convert(numeric(7,2), (b.list_price )*b.quantity) as net_ciro
--into s1		
from sale.orders a, sale.order_item b
where store_id = (
	select store_id
	from sale.store
	where store_name = 'Burkes Outlet')
and a.order_date between '2019-03-31' and '2019-05-01'
and a.order_id = b.order_id
order by order_date

select s1.order_date, sum(net_ciro) over (order by s1.order_date
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) Cumulative_Total_Price1
--into s2
from s1
-------

select s2.order_date, max(Cumulative_Total_Price1) Cumulative_Total_Price2
from s2
group by s2.order_date



-----WF-SONU CHECKÝNG YOURSELF---3--oldu

--Personelin adýný, soyadýný ve toplam net sipariþ miktarýný azalan düzende döndüren pencere iþlevini kullanarak bir sorgu yazýn.
--(SampleRetail Database'i kullanýn ve sonucunuzu aþaðýdaki kutuya yapýþtýrýn.)

with t1 as (
select c.first_name,c.last_name,b.order_date, 
	convert(numeric(8,4), (a.list_price - a.list_price*a.discount)*a.quantity) as net_getiri
from sale.order_item a
left join sale.orders b
on a.order_id = b.order_id
left join sale.staff c
on b.staff_id = c.staff_id)

select distinct t1.first_name, t1.last_name, 
		sum(t1.net_getiri) over(partition by t1.first_name) total_ciro
from t1
order by total_ciro desc