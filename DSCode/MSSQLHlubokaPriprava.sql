create database cvico1605;
use cvico1605;

-- 12

create table zam(
id int not null identity(1,1) primary key,
jmeno varchar(20),
prijmeni varchar(20),
plat int,
id_oddeleni int,
foreign key (id_oddeleni) references oddelen(id)
);

create table zam_archiv(
id int primary key,
jmeno varchar(20),
prijmeni varchar(20),
plat int,
id_oddeleni int
);


create table oddelen(
id int not null identity(1,1) primary key,
nazev varchar(30)
);

insert into oddelen values ('IT');
insert into oddelen values ('HR');
insert into oddelen values ('Eko');

insert into zam values ('Pepa', 'Rychlik',500, 1);
insert into zam values ('Jindra', 'Machal',300, 1);
insert into zam values ('Pepa', 'Karlot',1200, 3);

select jmeno, prijmeni from zam where id_oddeleni = (select id from oddelen where nazev = 'IT');
select jmeno, prijmeni from zam z1 where plat > (select AVG(plat) from zam z2 where z1.id_oddeleni = z2.id_oddeleni);

select jmeno, prijmeni from zam where id_oddeleni = EXISTS (select id from oddelen where nazev = 'IT');


--13
BEGIN TRANSACTION;
UPDATE zam set jmeno = 'Pavel' where prijmeni = 'Rychlik';
COMMIT;

SELECT jmeno,prijmeni FROM zam;

UPDATE zam set prijmeni = 'Fuj' where prijmeni = 'Rychlik';

BEGIN TRANSACTION;
INSERT into zam(jmeno,prijmeni,plat) values ('Jan', 'Vavrousek', 1000);
ROLLBACK;


create table DIM_produkt(
id int primary key,
nazev varchar(30),
kategorie varchar(50)
);

create table prodeje(
id int primary key,
id_produktu int,
foreign key (id_produktu) references dim_produkt(id),
kusu int,
trzba int
);

go
create proc vypis_zam
as
begin
	SELECT jmeno,prijmeni from zam;
end;
go

go
alter proc vypis_zam
as
begin
select * from zam;
end;
go

exec vypis_zam;

go
create or alter proc zaloz_zam @jmeno varchar(20), @prijmeni varchar(20), @plat int, @id_oddeleni int
as
begin
	insert into zam(jmeno,prijmeni,plat, id_oddeleni) values (@jmeno,@prijmeni,@plat, @id_oddeleni);
end;
go

exec zaloz_zam @jmeno = 'Jan', @prijmeni = 'Kanafasek', @plat = 1500, @id_oddeleni = 2;

go
create proc vypis_plat_do_promenne @prijmeni varchar(20), @plat int out
as
begin
select @plat = plat from zam where prijmeni = @prijmeni;
end;
go

declare @plat_output int;
exec vypis_plat_do_promenne @prijmeni = 'Vavrousek', @plat = @plat_output out

select @plat_output;

go
create FUNCTION fce_test(@stary_plat int)
returns int
as
begin
	return @stary_plat * 1.20;
end;
go

select jmeno as Jmeno,prijmeni as Prijmeni,dbo.fce_test(plat) as Navyseni_platu from zam;

go
create or alter trigger trg_test
on Zam
after delete
as
begin
	insert into zam_archiv(id,jmeno,prijmeni,plat,id_oddeleni) select d.id,d.jmeno,d.prijmeni,d.plat,d.id_oddeleni from deleted d
end;
go

delete from zam where prijmeni = 'Fuj';
exec vypis_zam;

select * from zam_archiv;

create table brigadnik(
id int not null identity(1,1) primary key,
jmeno varchar(20),
prijmeni varchar(20),
id_nadrizeny int default null,
foreign key (id_nadrizeny) references brigadnik(id)
);

select jmeno,prijmeni,id_nadrizeny from brigadnik;

insert into brigadnik(jmeno,prijmeni) values ('Robert', 'Klepis');
insert into brigadnik(jmeno,prijmeni,id_nadrizeny) values ('Jan', 'Vavrousek', 1);

create table platba(
id int not null identity(1,1) primary key,
cislo_uctu varchar(20),
cena int,
osoba_id int default null,
firma_id int default null,

foreign key (osoba_id) references Osoba(id),
foreign key (firma_id) references Firma(id),

constraint zpusob check(
	(osoba_id is null and firma_id is not null)
	or
	(osoba_id is not null and firma_id is null)
	)
);

create index test on Zam (prijmeni);

 select * from zam;