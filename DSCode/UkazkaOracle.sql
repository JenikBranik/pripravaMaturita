create table zam(
id int primary key,
jmeno varchar(20),
prijmeni varchar(20),
plat int,
id_oddeleni int,
foreign key (id_oddeleni) references oddeleni
);

create table oddeleni(
id int primary key,
nazev varchar(10),
kapacita int
);


insert into oddeleni values (1,'IT',20);
insert into oddeleni values (2,'HR',10);
insert into oddeleni values (3,'PR',5);

SELECT * FROM oddeleni;

insert into zam values (1, 'Karel', 'Jelinek', 10000, 3);
insert into zam values (2, 'Josef', 'Lauger', 12500, 1);
insert into zam values (3, 'Pepa', 'Planecek', 25000, 1);

SELECT z.jmeno,z.prijmeni,z.plat,od.nazev as Nazev_oddeleni from zam z
join oddeleni od on z.id_oddeleni = od.id;

create view zam_oddeleni2 as select concat(z.jmeno,z.prijmeni) as Jmeno, od.nazev from zam z
join oddeleni od on od.id = z.id_oddeleni;

select * from zam_oddeleni;


CREATE OR REPLACE PROCEDURE PROCEDURE1 
(
  ID IN NUMBER 
, JMENO IN VARCHAR2 
, PRIJMENI IN VARCHAR2 
, PLAT IN VARCHAR2 
, ID_ODD IN VARCHAR2 
) AS 
BEGIN
  insert into zam values (id,jmeno,prijmeni,plat,id_odd);
END PROCEDURE1;

exec PROCEDURE1(4,'Kanafasek','Janek',10000,2);