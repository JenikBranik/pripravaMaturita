create table test(
id int primary key,
nazev varchar(20)
);

insert into test values (1,'ahoj')
insert into test values (2,'ne')


GO
CREATE PROCEDURE blem 
AS
SELECT * FROM test;
GO

exec blem;


CREATE PROCEDURE pridej_test
@id int,
@nazev varchar(20)
AS
BEGIN
	insert into test values (@id,@nazev)
END
GO

exec pridej_test @id = 3, @nazev = 'ggfdfgsd';

go
create procedure pocet_testu3 @pocet int output
as
select @pocet = COUNT(*) from test;
go

declare @pocet_testu int;
exec pocet_testu3 @pocet = @pocet_testu output;
select @pocet_testu;

go
CREATE FUNCTION moje_testovaci_funkce3 (@startcena int)
RETURNS decimal(10,2)
AS
BEGIN
	RETURN @startcena * 20;
END;
GO

select dbo.moje_testovaci_funkce(id) from test;
select dbo.moje_testovaci_funkce2(id) from test;
select dbo.moje_testovaci_funkce3(id) from test;

