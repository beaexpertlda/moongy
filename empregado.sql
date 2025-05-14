-- Table: public.tbl_empregado

-- DROP TABLE IF EXISTS public.tbl_empregado;

CREATE TABLE IF NOT EXISTS public.tbl_empregado
(
    empregado_pk integer NOT NULL DEFAULT nextval('tbl_empregado_empregado_pk_seq'::regclass),
    nome character varying(50) COLLATE pg_catalog."default",
    saldo numeric(9,3),
    departamento_fk integer,
    CONSTRAINT tbl_empregado_pkey PRIMARY KEY (empregado_pk),
    CONSTRAINT fk_empregado_departamento FOREIGN KEY (departamento_fk)
        REFERENCES public.tbl_departamento (departamento_pk) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.tbl_empregado
    OWNER to avnadmin;
