/* Удаление записи из таблицы dbo.person  */

CREATE PROCEDURE [dbo].[DelPerson]
	@id int
AS
BEGIN	
	IF EXISTS(SELECT child_id FROM dbo.closure_person WHERE father_id=@id AND father_id<>child_id)
	BEGIN
		/* есть потомки! */
		RAISERROR ('Есть потомки!', 16, 1);
		RETURN 
    	END;

	/* удаляем ссылкы на предков */
	DELETE FROM closure_person WHERE child_id=@id;

	/* удаляем человека */
	DELETE FROM dbo.person WHERE id=@id;

END;