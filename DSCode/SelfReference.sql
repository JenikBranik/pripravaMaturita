create table Zam(
id int not null identity(1,1) primary key,
jmeno varchar(20),
prijmeni varchar(20),
id_nadrizeny int null,
foreign key (id_nadrizeny) references Zam(id)
);