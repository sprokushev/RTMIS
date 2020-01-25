/*
Загрузка данных в dbo.Balance
*/
SET DATEFORMAT ymd;

truncate table [dbo].[Balance];

insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (1, '20140131', 'a', 100000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (1, '20140131', 'b', 100000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (2, '20140228', 'a', 100000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (2, '20140228', 'b', 100000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (3, '20140331', 'a', 100000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (3, '20140331', 'b', 100000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (4, '20140430', 'a', 100000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (4, '20140430', 'b', 100000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (5, '20140531', 'a', 100000-3000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (5, '20140531', 'b', 100000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (6, '20140630', 'a', 100000-3000-3000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (6, '20140630', 'b', 100000-1000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (6, '20140630', 'c', 200000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (7, '20140731', 'a', 100000-3000-3000-3000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (7, '20140731', 'b', 100000-1000-1000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (7, '20140731', 'c', 200000-10000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (8, '20140831', 'a', 100000-3000-3000-3000-3000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (8, '20140831', 'b', 100000-1000-1000-1000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (8, '20140831', 'c', 200000-10000-10000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (9, '20140930', 'a', 100000-3000-3000-3000-3000-3000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (9, '20140930', 'b', 100000-1000-1000-1000-1000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (9, '20140930', 'c', 200000-10000-10000-10000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (10, '20141031', 'a', 100000-3000-3000-3000-3000-3000-3000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (10, '20141031', 'b', 100000-1000-1000-1000-1000-1000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (10, '20141031', 'c', 200000-10000-10000-10000-10000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (11, '20141130', 'a', 100000-3000-3000-3000-3000-3000-3000-3000-3000-3000-3000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (11, '20141130', 'b', 100000-1000-1000-1000-1000-1000-1000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (11, '20141130', 'c', 200000-10000-10000-10000-10000-10000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (12, '20141231', 'a', 100000-3000-3000-3000-3000-3000-3000-3000-3000-3000-3000-3000  );
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (12, '20141231', 'b', 100000-1000-1000-1000-1000-1000-1000-1000-1000-1000-1000-1000);
insert into dbo.Balance (ID , DateReport, Dogovor, Dolg) values (12, '20141231', 'c', 200000-10000-10000-10000-10000-10000-10000);
