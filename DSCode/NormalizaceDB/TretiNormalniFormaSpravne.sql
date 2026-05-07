create table zam(
id int not null identity(1,1) primary key,
jmeno varchar(30),
prijmeni varchar(30),
parkoviste_id int
foreign key (parkoviste_id) references parkoviste(id)
);
  
create table parkoviste(
id int not null identity(1,1) primary key,
nazev varchar(30),
kapacita int
);

insert into parkoviste values ('cervena', 120)
insert into parkoviste values ('zluta', 60)
insert into parkoviste values ('modra', 180)

insert into zam values ('Pepa', 'Vomacka', 2)