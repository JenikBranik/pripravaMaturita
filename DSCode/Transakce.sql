use testovaci;

create table ucet (
id int not null identity(1,1) primary key,
cislo_uctu varchar(20),
zustatek int
);

insert into ucet values ('A',1000);
insert into ucet values ('B',500);

BEGIN transaction;
update ucet set zustatek = zustatek + 1000 where cislo_uctu = 'A';
update ucet set zustatek = zustatek - 1000 where cislo_uctu = 'B';

COMMIT;
select * from ucet;

BEGIN TRANSACTION;
UPDATE ucet set zustatek = zustatek - 1000 where cislo_uctu = 'A';
ROLLBACK;
