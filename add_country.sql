-- FUNCTION: public.add_country(text, text, date, integer)

-- DROP FUNCTION public.add_country(text, text, date, integer);

CREATE OR REPLACE FUNCTION public.add_country(
	vname text,
	vcapital text,
	vcountryday date,
	vpopulation integer)
    RETURNS integer
    LANGUAGE 'plpgsql'

    COST 100
    VOLATILE PARALLEL SAFE
AS $BODY$DECLARE 
	vid integer;
BEGIN
	IF vname IS NULL OR vname='' THEN
   		RAISE WARNING 'Не указано название страны!';
   		RETURN NULL;
	END IF;

	-- сначала UPDATE на случай наличия такой страны
	UPDATE countries SET CAPITAL=vcapital, COUNTRYDAY=vcountryday, POPULATION=vpopulation
	WHERE NAME=vname RETURNING id INTO vid;
	IF found THEN
  		RETURN vid;
	END IF;

	-- добавляем страну
	INSERT INTO countries(NAME, CAPITAL, COUNTRYDAY, POPULATION) 
	VALUES (vname, vcapital, vcountryday, vpopulation)
	RETURNING id INTO vid;
	
	-- возвращаем уникальный ID
	RETURN vid;
END;	
$BODY$;

ALTER FUNCTION public.add_country(text, text, date, integer)
    OWNER TO postgres;
