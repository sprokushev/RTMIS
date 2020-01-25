/*
�������� ������ � dbo.person
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


EXEC dbo.AddPerson "����", "-", "-",NULL,NULL,0, @ROOT OUTPUT;

EXEC dbo.AddPerson "������", "����", "��������","1905-01-01",'M',@ROOT, @FATHER1 OUTPUT;

EXEC dbo.AddPerson "������", "������", "��������","1925-01-01",'M',@FATHER1, @FATHER2 OUTPUT;
EXEC dbo.AddPerson "������", "������", "���������","1945-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "������", "�������", "����������","1965-01-01",'M',@FATHER3, @FATHER4 OUTPUT;
EXEC dbo.AddPerson "��������", "��������", "����������","1966-01-01",'F',@FATHER3, @FATHER4 OUTPUT;
EXEC dbo.AddPerson "�������", "�������", "����������","1967-01-01",'F',@FATHER3, @FATHER4 OUTPUT;

EXEC dbo.AddPerson "���������", "�������", "���������","1946-01-01",'F',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "��������", "������", "���������","1947-01-01",'F',@FATHER2, @FATHER3 OUTPUT;

EXEC dbo.AddPerson "�������", "��������", "��������","1926-01-01",'F',@FATHER1, @FATHER2 OUTPUT;

EXEC dbo.AddPerson "������", "����", "��������","1927-01-01",'M',@FATHER1, @FATHER2 OUTPUT;
EXEC dbo.AddPerson "������", "�����", "��������","1947-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "������", "����", "���������","1967-01-01",'M',@FATHER3, @FATHER4 OUTPUT;
EXEC dbo.AddPerson "������", "�����", "��������","1987-01-01",'M',@FATHER4, @FATHER5 OUTPUT;
EXEC dbo.AddPerson "������", "�������", "��������","1988-01-01",'M',@FATHER4, @FATHER5 OUTPUT;
EXEC dbo.AddPerson "������", "�����", "��������","1989-01-01",'M',@FATHER4, @FATHER5 OUTPUT;
EXEC dbo.AddPerson "������", "����", "��������","2009-01-01",'M',@FATHER5, @FATHER6 OUTPUT;

EXEC dbo.AddPerson "������", "�����", "��������","1948-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "������", "�������", "��������","1949-01-01",'M',@FATHER2, @FATHER3 OUTPUT;
EXEC dbo.AddPerson "������", "�������", "��������","1948-01-01",'M',@FATHER2, @FATHER3 OUTPUT;

