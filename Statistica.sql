CREATE TABLE [dbo].[Statistica]
(
	[ID] INT NOT NULL, 
    [DateReport] DATE NOT NULL, 
    [Days] INT NOT NULL, 
    [Stavka] FLOAT NOT NULL DEFAULT 0, 
    CONSTRAINT [PK_Statistica] PRIMARY KEY ([ID]), 
    CONSTRAINT [UK_Statistica] UNIQUE ([DateReport]) 
)
