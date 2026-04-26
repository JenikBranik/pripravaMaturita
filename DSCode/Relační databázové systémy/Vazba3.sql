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