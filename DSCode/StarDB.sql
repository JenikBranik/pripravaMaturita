CREATE TABLE dim_produkt(
id int primary key,
nazev varchar(50),
kategorie varchar(50)
);

create table fact_prodej(
id int primary key,
id_produkt int
foreign key (id_produkt) references dim_produkt(id),
kusu int,
trzba int
);