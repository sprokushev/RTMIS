CREATE TABLE [dbo].[Address]
(
    [id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [person_id] INT NOT NULL, 
    [country] NVARCHAR(50) NULL, 
    [city] NVARCHAR(50) NULL, 
    [street] NVARCHAR(50) NULL, 
    [house] NVARCHAR(50) NULL, 
    [flat] NVARCHAR(50) NULL, 
    CONSTRAINT [FK_Address_person_id] FOREIGN KEY ([person_id]) REFERENCES [person]([id])
)

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'ID адреса',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'id'
GO

CREATE INDEX [IX_Address_person_id] ON [dbo].[Address] ([person_id])

GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'страна',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'country'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'город',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'city'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'улица',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'street'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'дом',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'house'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'квартира',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'flat'
GO
EXEC sp_addextendedproperty @name = N'MS_Description',
    @value = N'человек (dbo.person)',
    @level0type = N'SCHEMA',
    @level0name = N'dbo',
    @level1type = N'TABLE',
    @level1name = N'Address',
    @level2type = N'COLUMN',
    @level2name = N'person_id'