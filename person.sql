CREATE TABLE [dbo].[person]
(
	[id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [lastname] NVARCHAR(50) NOT NULL, 
    [firstname] NVARCHAR(50) NULL, 
    [patronymic] NVARCHAR(50) NULL, 
    [birthday] DATE NULL, 
    [gender] CHAR(1) NULL, 
    [father_id] INT NOT NULL DEFAULT 0 , 
    CONSTRAINT [CK_person_gender] CHECK (gender='M' or gender='F' or gender is null), 
    CONSTRAINT [UK_person] UNIQUE ([lastname],[firstname],[patronymic],[birthday]) 
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Фамилия',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'person',
    @level2type = N'COLUMN',
    @level2name = N'lastname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Имя',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'person',
    @level2type = N'COLUMN',
    @level2name = N'firstname'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Отчество',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'person',
    @level2type = N'COLUMN',
    @level2name = 'patronymic'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Дата рождения',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'person',
    @level2type = N'COLUMN',
    @level2name = N'birthday'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'Пол',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'person',
    @level2type = N'COLUMN',
    @level2name = N'gender'
GO

CREATE INDEX [IX_person_father_id] ON [dbo].[person] ([father_id])
