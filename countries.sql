-- Table: public.countries

-- DROP TABLE public.countries;

CREATE TABLE public.countries
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    name character(50) COLLATE pg_catalog."default" NOT NULL,
    capital character(50) COLLATE pg_catalog."default",
    countryday date,
    population integer DEFAULT 0,
    CONSTRAINT countries_pkey PRIMARY KEY (id)
)
WITH (
    OIDS = TRUE
)
TABLESPACE pg_default;

ALTER TABLE public.countries
    OWNER to postgres;
COMMENT ON TABLE public.countries
    IS 'Таблица стран';

COMMENT ON COLUMN public.countries.id
    IS 'уникальный ID';

COMMENT ON COLUMN public.countries.name
    IS 'Название страны';

COMMENT ON COLUMN public.countries.capital
    IS 'Название столицы';

COMMENT ON COLUMN public.countries.countryday
    IS 'Дата дня "страны"';

COMMENT ON COLUMN public.countries.population
    IS 'Кол-во населения';

-- Index: ix_countries_name

-- DROP INDEX public.ix_countries_name;

CREATE UNIQUE INDEX ix_countries_name
    ON public.countries USING btree
    (name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;