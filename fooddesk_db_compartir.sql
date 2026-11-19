--
-- PostgreSQL database dump
--

\restrict eH5rwpehAg1V0eCIsjnAmi4imtXbYrubakb7xmld2FZRruuSS6EzyhhbkJb3h1t

-- Dumped from database version 18.7
-- Dumped by pg_dump version 18.7

-- Started on 2026-11-18 18:42:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16391)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    descripcion text,
    precio numeric(10,2) NOT NULL,
    disponible boolean DEFAULT true
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16390)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_seq OWNER TO postgres;

--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 219
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- TOC entry 4856 (class 2604 OID 16394)
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- TOC entry 5008 (class 0 OID 16391)
-- Dependencies: 220
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, nombre, descripcion, precio, disponible) FROM stdin;
1	Hamburguesa clasica	Carne de res, queso, lechuga, tomate y salsas de la casa	18000.00	t
2	Pizza personal	Pizza individual de queso y jamon con masa artesanal	15000.00	t
3	Papas fritas	Porcion de papas fritas crocantes con sal	7000.00	t
4	Limonada natural	Limonada preparada con limon fresco, vaso de 12 oz	5000.00	t
\.


--
-- TOC entry 5015 (class 0 OID 0)
-- Dependencies: 219
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 4, true);


--
-- TOC entry 4859 (class 2606 OID 16402)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


-- Completed on 2026-11-18 18:42:50

--
-- PostgreSQL database dump complete
--

\unrestrict eH5rwpehAg1V0eCIsjnAmi4imtXbYrubakb7xmld2FZRruuSS6EzyhhbkJb3h1t

