Create database vazby;
use vazby;

-- 1:1

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

-- 1:N

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

-- M:N
create table student(
id int not null identity(1,1) primary key,
jmeno varchar(50)
)

create table predmet(
id int not null identity(1,1) primary key,
nazev varchar(40)
)

create table student_predmet(
id int not null identity(1,1) primary key,
student_id int,
predmet_id int,

foreign key (student_id) references student(id),
foreign key (predmet_id) references predmet(id)
)