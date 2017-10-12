--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

-- Started on 2017-10-12 09:08:07

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2127 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 186 (class 1259 OID 24703)
-- Name: kisiler; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE kisiler (
    id integer NOT NULL,
    name character varying(30) NOT NULL,
    surname character varying(30) NOT NULL,
    address character varying(30) NOT NULL,
    tck_no integer NOT NULL
);


ALTER TABLE kisiler OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 24701)
-- Name: kisiler_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE kisiler_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE kisiler_id_seq OWNER TO postgres;

--
-- TOC entry 2128 (class 0 OID 0)
-- Dependencies: 185
-- Name: kisiler_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE kisiler_id_seq OWNED BY kisiler.id;


--
-- TOC entry 2001 (class 2604 OID 24706)
-- Name: kisiler id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kisiler ALTER COLUMN id SET DEFAULT nextval('kisiler_id_seq'::regclass);


--
-- TOC entry 2003 (class 2606 OID 24708)
-- Name: kisiler kisiler_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY kisiler
    ADD CONSTRAINT kisiler_pkey PRIMARY KEY (id);


-- Completed on 2017-10-12 09:08:08

--
-- PostgreSQL database dump complete
--

