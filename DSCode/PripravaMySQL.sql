create database testovaci;
use testovaci;

create table zam(
id int not null auto_increment primary key,
jmeno varchar(20),
prijmeni varchar(20),
plat int,
id_oddeleni int,
foreign key (id_oddeleni) references oddeleni(id)
);

create table oddeleni(
id int not null auto_increment primary key,
nazev varchar(20),
kapacita int,
aktualni_pocet int
);

alter table oddeleni drop aktualni_pocet;

select * from oddeleni;

insert into oddeleni(nazev, kapacita) values ('IT', 22);
insert into oddeleni(nazev, kapacita) values ('PR', 10);
insert into oddeleni(nazev, kapacita) values ('EKO', 11);

insert into zam(jmeno,prijmeni,plat,id_oddeleni) values ('Karel', 'Konopny', 15200, 1);
insert into zam(jmeno,prijmeni,plat,id_oddeleni) values ('Jindra', 'Vomacka', 22000, 2);
insert into zam(jmeno,prijmeni,plat,id_oddeleni) values ('Evzen', 'Onegyn', 30000, 1);

select z.jmeno,z.prijmeni,z.plat,od.nazev as Nazev_oddeleni from zam z
join oddeleni od on z.id_oddeleni = od.id;

select * from testovaci;

use testovaci;
create view pohodinda as select * from zam;
select * from pohodinda;

delimiter //
CREATE PROCEDURE testovaci ()
BEGIN
	select * from zam;
END //
delimiter ;

call testovaci();
use testovaci;
CREATE INDEX testicek2 on zam (id_oddeleni);

explain select * from zam;
explain select * from oddeleni;

show indexes from zam;