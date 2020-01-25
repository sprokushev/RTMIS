CREATE TABLE [dbo].[closure_person]
(
	[father_id] INT NOT NULL, 
    [child_id] INT NOT NULL, 
    [depth] INT NOT NULL ,
    CONSTRAINT [PK_closure_person] UNIQUE ([father_id], [child_id]), 
    CONSTRAINT [FK_closure_father_id] FOREIGN KEY ([father_id]) REFERENCES [person]([id]),
    CONSTRAINT [FK_closure_child_id] FOREIGN KEY ([child_id]) REFERENCES [person]([id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'глубина относительно родителя (father_id)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'closure_person',
    @level2type = N'COLUMN',
    @level2name = N'depth'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ссылка на родителя (dbo.person)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'closure_person',
    @level2type = N'COLUMN',
    @level2name = N'father_id'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ссылка на потомка (dbo.person)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'closure_person',
    @level2type = N'COLUMN',
    @level2name = N'child_id'