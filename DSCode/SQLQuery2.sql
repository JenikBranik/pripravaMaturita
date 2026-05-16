-- Ukázka vnoøeného dotazu do selectu

Select vek from zam where id_oddeleni = (select id from oddeleni where nazev = 'IT');

-- Ukázka vnoøeného dotazu do insertu

insert into zam select jmeno, prijmeni from zam2 where utrata > 10000;

-- Ukázka vnoøeného dotazu do updatu

update vek from zam where id_oddeleni = (select id from oddeleni where nazev = 'IT');

-- Ukázka vnoøeného dotazu do deletu

delete from zam where id_oddeleni = (select id from oddeleni where nazev = 'Kasa')

-- Závislé vnoøené dotazy

Select jmeno from zam z1 where plat > (select avg(plat) from zam z2 where z1.oddeleni_id = z2.oddeleni_id)

-- in/not in = Jestli se nas prvek nachazi 
select jmeno from zam where oddeleni_id in (select id from budovy where mesto = 'Praha');

-- ALL - Vice nez vsichni

select jmeno zam where plat > ALL(select plat from zam)

-- Any/Some = Alespon vuci jedne

select jmeno where plat > any (select plat from zam)