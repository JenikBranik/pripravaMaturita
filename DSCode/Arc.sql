create table bankovni_ucet(
id int not null identity(1,1) primary key,
cislo_ucut varchar(20),
zustatek decimal(10,2),

id_osoba int null foreign key references FyzickaOsoba(id),
id_firma int null foreign key references Firma(id),


constraint majitel_arc check(
	(id_osoba is not null and id_firma is null)
	or
	(id_osoba is null and id_firma is not null)
	)
);