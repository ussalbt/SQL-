-----WF-SONU CHECK�NG YOURSELF---1-- oldu--
--2020'de �al��an�n ilk sipari� tarihlerini aylara g�re listeleyin. Beklenen s�tunlar �unlard�r: ad, soyad�, ay ve ilk sipari� tarihi. (artan s�rada soyad� ve ay)
--(SampleRetail Database'i kullan�n ve sonucunuzu a�a��daki kutuya yap��t�r�n.)

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

-----WF-SONU CHECK�NG YOURSELF---2--hatal�
--Burkes Outlet'in "2019-04-01" ve "2019-04-30" aras�ndaki sipari� tarihine g�re k�m�latif toplam cirolar�n� d�nd�ren pencere i�levini kullanarak bir sorgu yaz�n.
--Listelenmesi gereken s�tunlar: artan s�rada 'order_date' ve 'Cumulative_Total_Price'.


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



-----WF-SONU CHECK�NG YOURSELF---3--oldu

--Personelin ad�n�, soyad�n� ve toplam net sipari� miktar�n� azalan d�zende d�nd�ren pencere i�levini kullanarak bir sorgu yaz�n.
--(SampleRetail Database'i kullan�n ve sonucunuzu a�a��daki kutuya yap��t�r�n.)

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