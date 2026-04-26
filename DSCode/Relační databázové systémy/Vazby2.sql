create table Zak(
id int not null identity(1,1) primary key,
jmeno varchar(20)
)

create table Objednavka(
id int not null identity(1,1) primary key,
popis varchar(200),
zak_id int,

foreign key (zak_id) references Zak(id)
)