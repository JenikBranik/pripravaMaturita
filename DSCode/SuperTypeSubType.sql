use testovaci;

create table osoba(
id int not null identity(1,1) primary key,
jmeno varchar(20),
typ_osoba char(1)
);

create table stud(
id int primary key,
indexovani varchar(20),
foreign key (id) references osoba(id)
);

