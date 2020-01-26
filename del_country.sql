-- FUNCTION: public.del_country(text)

-- DROP FUNCTION public.del_country(text);

CREATE OR REPLACE FUNCTION public.del_country(
	vname text)
    RETURNS void
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE PARALLEL SAFE
AS $BODY$
BEGIN
	IF vname IS NULL OR vname='' THEN
   		RAISE WARNING 'Не указано название страны!';
   		RETURN;
	END IF;

	DELETE FROM countries 
	WHERE NAME=vname;
END;	
$BODY$;

ALTER FUNCTION public.del_country(text)
    OWNER TO postgres;
