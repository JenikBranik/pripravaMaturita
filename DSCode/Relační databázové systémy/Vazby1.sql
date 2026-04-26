create table Uzivatel(
id int not null identity(1,1) primary key,
jmeno varchar(20)
)

create table Profily(
id int not null identity(1,1) primary key,
bio varchar(400),
uzivatel_id int unique,

foreign key (uzivatel_id) references uzivatel(id)
)