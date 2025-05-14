-- Table: public.tbl_departamento

-- DROP TABLE IF EXISTS public.tbl_departamento;

CREATE TABLE IF NOT EXISTS public.tbl_departamento
(
    departamento_pk integer NOT NULL DEFAULT nextval('tbl_departamento_departamento_pk_seq'::regclass),
    nome character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT tbl_departamento_pkey PRIMARY KEY (departamento_pk)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tbl_departamento
    OWNER to avnadmin;
