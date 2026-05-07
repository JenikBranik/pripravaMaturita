 create table zam2(
 id int not null identity(1,1) primary key,
 jmeno varchar(30),
 prijmeni varchar(30),
 parkoviste varchar(30),
 Kapacita int
 );
  
 insert into zam2 values ('Richard','Krajco','Modra', 180)