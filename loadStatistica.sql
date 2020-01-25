/*
Загрузка данных в dbo.Statistica
*/

SET DATEFORMAT ymd;

truncate table dbo.Statistica;

insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(1, '20140131', 16, 0.035);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(2, '20140228', 13, 0.035*1.15);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(3, '20140331', 16, 0.035*1.15*1.15);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(4, '20140430', 15, 0.035*1.15*1.15*1.15);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(5, '20140531', 16, 0.035*1.15*1.15*1.15*1.15);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(6, '20140630', 15, 0.035*1.15*1.15*1.15*1.15/1.05);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(7, '20140731', 16, 0.035*1.15*1.15*1.15*1.15/1.05/1.05);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(8, '20140831', 16, 0.035*1.15*1.15*1.15*1.15/1.05/1.05/1.05);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(9, '20140930', 15, 0.035*1.15*1.15*1.15*1.15/1.05/1.05/1.05/1.05);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(10, '20141031', 16, 0.035*1.15*1.15*1.15*1.15/1.05/1.05/1.05/1.05/1.05);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(11, '20141130', 15, 0.035*1.15*1.15*1.15*1.15/1.05/1.05/1.05/1.05/1.05/1.05);
insert into dbo.Statistica (ID,DateReport,Days, Stavka) values(12, '20141231', 16, 0.035*1.15*1.15*1.15*1.15/1.05/1.05/1.05/1.05/1.05/1.05/1.05);
