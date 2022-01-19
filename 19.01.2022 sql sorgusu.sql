--ddl data definition language
--CREATE database DDLDATABASE



--ALTER database [DDLDATABASE] modify Name = [NEWDATABASE]

--ALTER DATABASE [mobilhanem] MODIFY NAME = [mobilhanem2]


--DROP database NEWDATABASE


--CREATE database ddldatabase1


--ALTER database [ddldatabase1] modify Name =[data19]

--use data19


--CREATE TABLE isimler (
isimID int primary key identity(1,1) not null,
adi nvarchar (50) not null,
soyadi nvarchar (50) not null,
dogumtarihi date not null,
cinsiyet smallint not null
)

--alter table isimler add medenidurum smallint not null 

--alter table isimler add deneme varchar(50) not null


--drop table isimler

drop database data19