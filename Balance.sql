CREATE TABLE [dbo].[Balance]
(
	[ID] INT NOT NULL , 
    [DateReport] DATE NOT NULL, 
    [Dogovor] VARCHAR(10) NOT NULL, 
    [Dolg] MONEY NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_Balance] UNIQUE ([ID], [Dogovor]), 
    CONSTRAINT [UK_Balance] UNIQUE ([Dogovor], [DateReport])
)
