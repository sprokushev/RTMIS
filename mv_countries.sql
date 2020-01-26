-- View: public.mv_countries

-- DROP MATERIALIZED VIEW public.mv_countries;

CREATE MATERIALIZED VIEW public.mv_countries
TABLESPACE pg_default
AS
 SELECT countries.id,
    countries.name,
    countries.capital,
    countries.countryday,
    countries.population
   FROM countries
WITH DATA;

ALTER TABLE public.mv_countries
    OWNER TO postgres;