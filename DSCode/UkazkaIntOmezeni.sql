create table zanr(
-- Primarni klic je datoveho typu int, je nenulovy, pouziva funkci identity (auto_increment) a je to PK
id int not null identity(1,1) primary key,
nazev varchar(50) not null -- Nazev je dat. typu varchar a je nenulovy
);

-- Podrizena tabulka
create table knihy(
id int not null identity(1,1) primary key,
nazev varchar(30) not null,
pocet_stran int check(pocet_stran > 0), -- Ohlidani aby se daly zadat hodnoty pouze vetsi nez nula, pomoci metody check
skladem bit default 1, -- Defaultni nastaveni 1, pokud neni jinak zadano 1(True)/0(False)
zanr_id int not null, -- Vyvtovreni int atributu pro foreign key
foreign key (zanr_id) references zanr(id)  -- Definovani ciziho klice
); 