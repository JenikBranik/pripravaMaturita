create table clovek2(
id int not null identity(1,1) primary key,
jmeno varchar(30),
prijmeni varchar(30)
);
    
insert into clovek2 values ('jan', 'novotny')