
-- product_id = 6 çýkýyor.
select *
from [product].[product]
where [product_name] = '2TB Red 5400 rpm SATA III 3.5 Internal NAS HDD'


-- sipariþ verenler order_id ler için tablo oluþturduk.
select *
--into order_idler
from [sale].[order_item]   
where product_id = 6;

--customer_id leri bulup yeni tablo oluþturduk

select customer_id 
into c_idler
from [dbo].[order_idler] as a
inner join [sale].[orders] as b
on a.order_id = b.order_id;

-- isimleri bulalým yeni tablo oluþsun

select a.customer_id,b.first_name,b.last_name
into isim_soyisim
from [dbo].[c_idler] as a
inner join [sale].[customer] as b
on a.customer_id = b.customer_id;




-- first-sipariþ verenler order_id ler için tablo oluþturduk.
select *
into order_idler_first
from [sale].[order_item]   
where product_id = 13;


-- first-sipariþ verenler customer_id ler için tablo oluþturduk.

select customer_id as First_Product
into c_idler_first
from [dbo].[order_idler_first] as a
inner join [sale].[orders] as b
on a.order_id = b.order_id;




---- second-sipariþ verenler order_id ler için tablo oluþturduk.
select *
into order_idler_second
from [sale].[order_item]   
where product_id = 21;

-- second-sipariþ verenler customer_id ler için tablo oluþturduk.

select customer_id as Second_Product
into c_idler_second
from [dbo].[order_idler_second] as a
inner join [sale].[orders] as b
on a.order_id = b.order_id;


---- third-sipariþ verenler order_id ler için tablo oluþturduk.
select *
into order_idler_third
from [sale].[order_item]   
where product_id = 16;

-- third-sipariþ verenler customer_id ler için tablo oluþturduk.

select customer_id as Third_Product
into c_idler_third
from [dbo].[order_idler_third] as a
inner join [sale].[orders] as b
on a.order_id = b.order_id;


--sonucumuzu bir tablo olarak kaydettik (result)
select isim.[customer_id],
	   isim.[first_name],
	   isim.[last_name],
	   b.First_Product,
	   c.Second_Product,
	   d.Third_Product

into result
from [dbo].[c_idler] as a

left join [dbo].[isim_soyisim] as isim
on a.customer_id = isim.customer_id

left join [dbo].[c_idler_first] as b
on a.customer_id = b.First_Product

left join [dbo].[c_idler_second] as c
on a.customer_id = c.Second_Product

left join [dbo].[c_idler_third] as d
on a.customer_id = d.Third_Product;


--þimdi sonucumuzu düzenleyelim str çevirdik

select a.customer_id,a.first_name,a.last_name,
		str(a.First_Product) as First_Product,
		str(a.Second_Product) as Second_Product,
		str(a.Third_Product) as Third_Product
into result_str
FROM [dbo].[result] as a;



select a.customer_id,a.first_name,a.last_name,
		

		isnumeric(a.First_Product) as First_Product,
		isnumeric(a.Second_Product) as Second_Product,
		isnumeric(a.Third_Product) as Third_Product
into result_01		
		--replace(a.First_Product,0,'No'),replace(a.First_Product,1,'Yes'),
		--replace(a.Second_Product,0,'No'),replace(a.Second_Product,1,'Yes'),
		--replace(a.Third_Product,0,'No'),replace(a.Third_Product,1,'Yes')
FROM [dbo].[result_str] as a;

select a.customer_id,a.first_name,a.last_name,
		

		--isnumeric(a.First_Product) as First_Product,
		--isnumeric(a.Second_Product) as Second_Product,
		--isnumeric(a.Third_Product) as Third_Product
		
replace(a.First_Product,0,'No') as First_Product, --replace(a.First_Product,1,'Yes'),
replace(a.Second_Product,0,'No') as Second_Product,--replace(a.Second_Product,1,'Yes'),
replace(a.Third_Product,0,'No') as Third_Product --replace(a.Third_Product,1,'Yes')

into result_0_No
FROM [dbo].[result_01] as a;


select distinct(a.customer_id),a.first_name,a.last_name,
		

		--isnumeric(a.First_Product) as First_Product,
		--isnumeric(a.Second_Product) as Second_Product,
		--isnumeric(a.Third_Product) as Third_Product
		
replace(a.First_Product,1,'Yes') as First_Product,
replace(a.Second_Product,1,'Yes') as Second_Product,
replace(a.Third_Product,1,'Yes') as Third_Product
into resul_son
FROM [dbo].[result_0_No] as a;

select *
from [dbo].[resul_son];