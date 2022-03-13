create database action_tab

----Actions tablosu olu�turup, de�erleri girdik.
create table actions( Visitor_id int, Adv_type char(10), Actions char(10))

insert into actions(Visitor_id,Adv_type,Actions)Values
			(1,'A','Left'),
			(2,'A','Order'),
			(3,'B','Left'),
			(4,'A','Order'),
			(5,'A','Review'),
			(6,'A','Left'),
			(7,'B','Left'),
			(8,'B','Order'),
			(9,'B','Reiew'),
			(10,'A','Review')


select* 
from actions
------Adv(Reklam) tiplerinin ve yap�lan i�elmelrin say�s�n� ��kard�k.
With T1 as
	(select * 
	from actions
	),
	table_2 As(
	select adv_type ,count(*) count_action,
	Sum(Case When Actions='Order' 
	Then 1 else 0 
	end)As count_order
	from actions
	group by Adv_type

	)

select * 
from table_2

------Conversion  yani d�n���m oran� verilen direktifin toplam i�lemlere b�l�m�n� yaparak sonuca ula�t�k.
With T1 as
	(select * 
	from actions
	),
	table_2 As(
	select adv_type ,count(*) count_action,
	Sum(Case When Actions='Order' 
	Then 1 else 0 
	end)As count_order
	from actions
	group by Adv_type
	)

select Adv_type,
	CONVERT(numeric(2,2),(1.0*count_order/count_action)) As Conversion_rate
	from table_2