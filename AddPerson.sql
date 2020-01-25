/* Добавление записи в таблицу dbo.person  */

CREATE PROCEDURE [dbo].[AddPerson] 
	@lastname nvarchar(50),
	@firstname nvarchar(50),
	@patronymic nvarchar(50),
	@birthday date,
	@gender char(1),
	@father_id int ,
	@id int OUTPUT
AS
BEGIN	
	IF NOT EXISTS(SELECT id FROM dbo.person WHERE id=@father_id)
	BEGIN
		/* если ссылка не верная, обнулим ее */
		SET @father_id=0;
    END;

	/* добавляем человека */
	INSERT INTO dbo.person (lastname, firstname, patronymic, birthday, gender, father_id)
		VALUES (@lastname, @firstname, @patronymic, @birthday, @gender, @father_id);

	SET @id=@@IDENTITY;
		
	/* добавляем информацию о предках */
	INSERT INTO closure_person (child_id, father_id, depth) 
		VALUES (@id, @id, 0);
	
	INSERT INTO closure_person (child_id, father_id, depth) 
	SELECT @id, cp.father_id, cp.depth+1
	FROM dbo.closure_person cp
	WHERE cp.child_id=@father_id;

END;
