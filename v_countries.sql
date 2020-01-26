-- View: public.v_countries

-- DROP VIEW public.v_countries;

CREATE OR REPLACE VIEW public.v_countries
 AS
 SELECT countries.id,
    countries.name,
    countries.capital,
    countries.countryday,
    countries.population
   FROM countries;

ALTER TABLE public.v_countries
    OWNER TO postgres;

