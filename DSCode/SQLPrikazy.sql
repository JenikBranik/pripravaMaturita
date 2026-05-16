-- DATABASE Definition LANGUAGE DDL

create table student(
id int not null identity(1,1) primary key,
jmeno varchar(20)
);

alter table student add prijmeni varchar(20)

drop table student;

truncate table student; -- Pouze vyprazdni tabulku, ale necha strukturu

-- Database manipulation language DML

insert into student values ('Josef', 'Kodet');
insert into student values ('pes', 'harapes');

select * from student;

update student set jmeno = 'Pes' where prijmeni = 'harapes';

delete from student where jmeno = 'Pes';

-- Pøíklad pøíkazu Select
select jmeno as prezdivka from student
where prijmeni = 'Kodet'
order by jmeno;

select count(jmeno) as pocet from student
having count(jmeno) > 0;

select count(jmeno) as pocet from student
group by jmeno;

-- View
Create view pohled as select jmeno,prijmeni from student;

insert into pohled values ('Jan','Mazuch');

select * from pohled;