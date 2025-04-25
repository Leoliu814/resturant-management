--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: resturants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.resturants (
    id integer NOT NULL,
    user_name character varying(255),
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    contact character varying(255) NOT NULL,
    website character varying(255) NOT NULL
);


ALTER TABLE public.resturants OWNER TO postgres;

--
-- Name: resturants_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.resturants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.resturants_id_seq OWNER TO postgres;

--
-- Name: resturants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.resturants_id_seq OWNED BY public.resturants.id;


--
-- Name: workers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.workers (
    id integer NOT NULL,
    boss_name character varying(255),
    salary integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    post character varying(255) NOT NULL,
    resturant_id integer NOT NULL
);


ALTER TABLE public.workers OWNER TO postgres;

--
-- Name: workers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.workers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.workers_id_seq OWNER TO postgres;

--
-- Name: workers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.workers_id_seq OWNED BY public.workers.id;


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: resturants id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resturants ALTER COLUMN id SET DEFAULT nextval('public.resturants_id_seq'::regclass);


--
-- Name: workers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workers ALTER COLUMN id SET DEFAULT nextval('public.workers_id_seq'::regclass);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, name, password, email) FROM stdin;
1	Leoliu	5WlRpnuzJJPl0keg$USBIBmKgA78hmMi6xArZMGHTpOlfn5KDepy84HPQwHc=	12345@123.com
2	admin	RWX3TMVeJcmtaT6r$q/2TpU5G6qNaQ3DzevXpb1EqfqJX4UW2E+KbbKERC9M=	admin@123.com
3	test	9Rtq8zmFXc0pIRLK$itdUww/3FQfyVVXMQVk1WwWPuaZ9fhNAtmpr1wZ6OHI=	test@email
\.


--
-- Data for Name: resturants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.resturants (id, user_name, name, address, contact, website) FROM stdin;
3	Leoliu	麦当劳	大学路	1234567	www.macdonald.com
4	Leoliu	麦当劳	东方明珠	12345671	www.mcdonald.com
5	admin	KFC	五角场	1234567	www.mcdonald.com
6	admin	麦当劳	五角场	12345671	www.pizzahut.com
7	admin	KFC	松花江路	12345671	www.pizzahut.com
2	Leoliu	必胜客	松花江路	123444	www.pizzahut.com
8	test	Test1	1	1	1
9	test	Test2	2	2	2
10	test	Test3	3	3	3
\.


--
-- Data for Name: workers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.workers (id, boss_name, salary, name, email, post, resturant_id) FROM stdin;
3	Leoliu	12	12	13	12	2
5	test	4	1	2	3	8
6	test	5	1	2	3	8
7	test	7	1	2	3	8
8	test	3	1	1	1	9
9	test	33	1	1	1	9
\.


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);


--
-- Name: resturants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.resturants_id_seq', 10, true);


--
-- Name: workers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.workers_id_seq', 9, true);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: resturants resturants_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.resturants
    ADD CONSTRAINT resturants_pkey PRIMARY KEY (id);


--
-- Name: workers workers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.workers
    ADD CONSTRAINT workers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

