CREATE TABLE [dbo].[closure_person]
(
	[father_id] INT NOT NULL, 
    [child_id] INT NOT NULL, 
    [depth] INT NOT NULL ,
    CONSTRAINT [PK_closure_person] UNIQUE ([father_id], [child_id]), 
    CONSTRAINT [FK_closure_father_id] FOREIGN KEY ([father_id]) REFERENCES [person]([id]),
    CONSTRAINT [FK_closure_child_id] FOREIGN KEY ([child_id]) REFERENCES [person]([id])
)
