drop database gunaydinlar

CREATE DATABASE MERHABADUNYA

use MERHABADUNYA 

create table nas (id int primary key identity (1,1),
				  isim nvarchar(20),
				  soyisim nvarchar(20),
				  cinsiyet bit,
				  dogumtarihi date,
				  islem_zamani datetime

)

insert into nas(isim,soyisim,cinsiyet,dogumtarihi,islem_zamani) values ('hasan','kaptan','E','20151009', GETDATE())


select *
from nas

update nas
set cinsiyet = 'K'
where id=2