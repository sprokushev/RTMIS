/*
Загрузка данных в dbo.person
*/

SET DATEFORMAT ymd;

DECLARE @ROOT int
DECLARE @FATHER1 int
DECLARE @FATHER2 int
DECLARE @FATHER3 int
DECLARE @FATHER4 int
DECLARE @FATHER5 int
DECLARE @FATHER6 int

TRUNCATE TABLE dbo.closure_person
ALTER TABLE dbo.closure_person DROP CONSTRAINT FK_closure_father_id;
ALTER TABLE dbo.closure_person DROP CONSTRAINT FK_closure_child_id;
TRUNCATE TABLE dbo.person
ALTER TABLE dbo.closure_person ADD CONSTRAINT FK_closure_father_id FOREIGN KEY ([father_id]) REFERENCES [person]([id]);
ALTER TABLE dbo.closure_person ADD CONSTRAINT FK_closure_child_id FOREIGN KEY ([child_id]) REFERENCES [person]([id]);


EXEC dbo.AddPerson "Люди", "-", "-",NULL,NULL,0, @ROOT OUTPUT;

EXEC dbo.AddPerson "Иванов", "Иван", "Петрович","1905-01-01",'M',@ROOT, @FATHER1 OUTPUT;

EXEC dbo.AddPerson "Иванов", "Сергей", "Иванович","1925-01-01",'M',@FATHER1, @FATHER2 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Михаил", "Сергеевич","1945-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Евгений", "Михайлович","1965-01-01",'M',@FATHER3, @FATHER4 OUTPUT;
EXEC dbo.AddPerson "Фетисова", "Василиса", "Михайловна","1966-01-01",'F',@FATHER3, @FATHER4 OUTPUT;
EXEC dbo.AddPerson "Иванова", "Татьяна", "Михайловна","1967-01-01",'F',@FATHER3, @FATHER4 OUTPUT;

EXEC dbo.AddPerson "Михайлова", "Наталья", "Сергеевна","1946-01-01",'F',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "Сидорова", "Галина", "Сергеевна","1947-01-01",'F',@FATHER2, @FATHER3 OUTPUT;

EXEC dbo.AddPerson "Петрова", "Светлана", "Ивановна","1926-01-01",'F',@FATHER1, @FATHER2 OUTPUT;

EXEC dbo.AddPerson "Иванов", "Петр", "Иванович","1927-01-01",'M',@FATHER1, @FATHER2 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Федор", "Петрович","1947-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Олег", "Федорович","1967-01-01",'M',@FATHER3, @FATHER4 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Павел", "Олегович","1987-01-01",'M',@FATHER4, @FATHER5 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Василий", "Олегович","1988-01-01",'M',@FATHER4, @FATHER5 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Игорь", "Олегович","1989-01-01",'M',@FATHER4, @FATHER5 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Иван", "Игоревич","2009-01-01",'M',@FATHER5, @FATHER6 OUTPUT;

EXEC dbo.AddPerson "Иванов", "Павел", "Петрович","1948-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Евгений", "Петрович","1949-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "Иванов", "Василий", "Петрович","1948-01-01",'M',@FATHER2, @FATHER3 OUTPUT;

