/* Возвращает ближайшего предка */
CREATE FUNCTION [dbo].[GetFather]
(
	@id int
)
RETURNS TABLE
AS RETURN
(
	SELECT f.* FROM dbo.person f INNER JOIN dbo.person c ON f.id=c.father_id WHERE c.id = @id
);

