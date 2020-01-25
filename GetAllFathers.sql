/* Возвращает цепочку предков */
CREATE FUNCTION [dbo].[GetAllFathers]
(
	@id int
)
RETURNS TABLE
AS RETURN
(
	SELECT f.*, c.depth FROM dbo.person f INNER JOIN dbo.closure_person c ON f.id=c.father_id 
	WHERE c.child_id = @id AND c.child_id<>c.father_id
);

