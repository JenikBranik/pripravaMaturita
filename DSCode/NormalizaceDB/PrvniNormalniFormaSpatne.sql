create table ucitel(
id int not null identity(1,1) primary key,
jmeno_prijmeni varchar(40),
trida_nazev varchar(20)
);

insert into ucitel values('Pepa Vomacka', '9. B')
insert into ucitel values('Jindra Perstejn', '6. A')
insert into ucitel values('Karel Klabzub', '7. C')