-- FUNCTION: public.field_to_case(character varying, character varying, character varying)

-- DROP FUNCTION public.field_to_case(character varying, character varying, character varying);

CREATE OR REPLACE FUNCTION public.field_to_case(
	vtable character varying,
	vfield character varying,
	vcase character varying)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE PARALLEL SAFE
AS $BODY$
DECLARE 
	txt varchar;
BEGIN
	IF vtable IS NULL OR vtable='' THEN
   		RAISE WARNING 'Не указано название таблицы!';
   		RETURN ;
	END IF;
	
	IF vfield IS NULL OR vfield='' THEN
   		RAISE WARNING 'Не указано название поля в таблице % !',vtable;
   		RETURN ;
	END IF;

	IF vcase IS NULL OR vcase='' OR (vcase<>'lower' AND vcase<>'upper') THEN
   		RAISE WARNING 'Укажите вариант преобразования значений в поле %.% . Возможные варианты: ''upper'' или ''lower''!',vtable,vfield;
   		RETURN ;
	END IF;
	
	-- формируем оператор
	txt=format('UPDATE %s SET %s=%s(%s)',vtable,vfield,vcase,vfield);
	RAISE NOTICE '%',txt;
	
	-- выполняем обновление
	EXECUTE txt;
END;	
$BODY$;

ALTER FUNCTION public.field_to_case(character varying, character varying, character varying)
    OWNER TO postgres;
