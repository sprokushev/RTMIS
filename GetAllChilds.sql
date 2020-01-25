CREATE FUNCTION [dbo].[GetAllChilds]
(
	@id int
)
RETURNS TABLE AS RETURN
(
	SELECT p.*,c.depth
	FROM dbo.person p INNER JOIN closure_person c ON p.id=c.child_id
	WHERE c.father_id = @id AND c.father_id<>c.child_id
)
