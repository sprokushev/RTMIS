CREATE FUNCTION [dbo].[GetChilds]
(
	@id int
)
RETURNS TABLE
AS RETURN
(
	SELECT * FROM dbo.person WHERE father_id = @id
);
