--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: dashboard_pendingorders; Type: TABLE; Schema: public; Owner: orders
--

CREATE TABLE dashboard_pendingorders (
    id integer NOT NULL,
    ordercode integer NOT NULL,
    customer character varying(255) NOT NULL,
    orderstatus character varying(50) NOT NULL,
    ordershipmentstatus character varying(40) NOT NULL,
    truck character varying(50) NOT NULL,
    areacode integer NOT NULL,
    salesman character varying(100) NOT NULL,
    hostname character varying(100) NOT NULL
);


ALTER TABLE dashboard_pendingorders OWNER TO orders;

--
-- Name: dashboard_pendingorders_id_seq; Type: SEQUENCE; Schema: public; Owner: orders
--

CREATE SEQUENCE dashboard_pendingorders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE dashboard_pendingorders_id_seq OWNER TO orders;

--
-- Name: dashboard_pendingorders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: orders
--

ALTER SEQUENCE dashboard_pendingorders_id_seq OWNED BY dashboard_pendingorders.id;


--
-- Name: dashboard_pendingorders id; Type: DEFAULT; Schema: public; Owner: orders
--

ALTER TABLE ONLY dashboard_pendingorders ALTER COLUMN id SET DEFAULT nextval('dashboard_pendingorders_id_seq'::regclass);


--
-- Data for Name: dashboard_pendingorders; Type: TABLE DATA; Schema: public; Owner: orders
--

COPY dashboard_pendingorders (id, ordercode, customer, orderstatus, ordershipmentstatus, truck, areacode, salesman, hostname) FROM stdin;
1	1939693	AL YASMEEN BLDG.MAT.TR L.L.C	Executing	Packed	U-81553	247	MELANIE CASTILLO SILLANO	0000
2	1940307	HILLS & FORT GENERAL TRADING LLC	Executing	Packed	U-81552	218	TALAL YOUNIS	0000
3	1939807	RME MACHINERY AND EQUIPMENT TRADING LLC	Pending	Pending	NULL	248	TALAL YOUNIS	0000
4	1940476	SCIENTECHNIC LLC	Executing	For picking	Q-78407	210	TALAL YOUNIS	0000
5	1940472	DUBAI INTERNATIONAL REINFORCED PLASTICS L L C	Executing	Packed	U-81550	187	TALAL YOUNIS	0000
6	1940463	AL ZAROONI ELECTROMECHANICAL LLC	Executing	For picking	Q-78407	189	TALAL YOUNIS	0000
7	1939202	ACRYLAX DECORATION LLC	Executing	Packed	Self Collection	183	TALAL YOUNIS	0000
8	1934726	PETRA MECHATRONICS MIDDLE EAST TRADING LLC	Pending	Pending	NULL	62	ALI ASGAR RAMPURAWALA	0000
9	1938919	COFELY BESIX FACILITY MANAGEMENT LTD LLC	Pending	Pending	Q-78406	61	ALI ASGER SUNELWALA	0000
10	1933078	RAYYAN PLAZA HOTEL & OFFICES COMPLEX (S.P.C)	Executing	Packed	HOTEL PROJECTS 	183	ALI ASGER SUNELWALA	0000
11	1936023	RAYYAN PLAZA HOTEL & OFFICES COMPLEX (S.P.C)	Pending	Pending	HOTEL PROJECTS 	183	ALI ASGER SUNELWALA	0000
12	1935556	EMAAR HOTELS GROUP (L.L.C)	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
13	1935734	EMAAR HOTELS GROUP (L.L.C)	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
14	1936741	EMAAR HOTELS GROUP (L.L.C)	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
15	1934105	EMAAR DEVELOPMENT P.J.S.C	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
16	1935726	EMAAR DEVELOPMENT P.J.S.C	Executing	Packed	HOTEL PROJECTS 	208	ALI ASGER SUNELWALA	0000
17	1936053	EMAAR DEVELOPMENT P.J.S.C	Executing	Loading	NULL	62	ALI ASGER SUNELWALA	0000
18	1936740	EMAAR DEVELOPMENT P.J.S.C	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
19	1937731	EMAAR DEVELOPMENT P.J.S.C	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
20	1938639	EMAAR DEVELOPMENT P.J.S.C	Executing	Packed	HOTEL PROJECTS 	183	ALI ASGER SUNELWALA	0000
21	1937335	WASL HOSPITALITY LLC-	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
22	1935787	OMAN TOURISM DEVELOPMENT COMPANY SAOC	Executing	Packed	HOTEL PROJECTS 	208	ALI ASGER SUNELWALA	0000
23	1936185	OMAN TOURISM DEVELOPMENT COMPANY SAOC	Executing	Packed	HOTEL PROJECTS 	208	ALI ASGER SUNELWALA	0000
24	1936336	OMAN TOURISM DEVELOPMENT COMPANY SAOC	Executing	Packed	HOTEL PROJECTS 	183	ALI ASGER SUNELWALA	0000
25	1936748	OMAN TOURISM DEVELOPMENT COMPANY SAOC	Executing	Packed	HOTEL PROJECTS 	181	ALI ASGER SUNELWALA	0000
26	1932821	EMAAR DEVELOPMENT P.J.S.C	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
27	1931757	THE LAGOONS PHASE ONE LLC	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
28	1932733	THE LAGOONS PHASE ONE LLC	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
29	1932713	THE LAGOONS PHASE ONE LLC	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
30	1934089	THE LAGOONS PHASE ONE LLC	Pending	Pending	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
31	1935501	THE LAGOONS PHASE ONE LLC	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
32	1939696	THE LAGOONS PHASE ONE LLC	Executing	Packed	HOTEL PROJECTS 	183	ALI ASGER SUNELWALA	0000
33	1937587	EMAAR HOTELS GROUP (L.L.C)	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
34	1938611	EMAAR HOTELS GROUP (L.L.C)	Executing	Packed	HOTEL PROJECTS 	62	ALI ASGER SUNELWALA	0000
35	1938641	EMAAR HOTELS GROUP (L.L.C)	Pending	Pending	HOTEL PROJECTS 	183	ALI ASGER SUNELWALA	0000
36	1936324	FARAH EXPERIENCES LLC	Pending	Pending	Q-78406	61	ALI ASGER SUNELWALA	0000
37	1940091	FARAH EXPERIENCES LLC	Executing	For picking	Q-78406	61	ALI ASGER SUNELWALA	0000
38	1940343	FARAH EXPERIENCES LLC	Executing	Picked	Q-78406	61	ALI ASGER SUNELWALA	0000
39	1939583	ALEMCO ELECTROMECHANICAL CONTRACTING LLC	Executing	Picked	NULL	62	MURTUZA ZAFAR	0000
40	1939866	NAFFCO FZCO	Executing	For picking	AAB CAL 	25	MURTUZA ZAFAR	0000
41	1939839	NAFFCO FZCO	Executing	For picking	AAB CAL 	62	MURTUZA ZAFAR	0000
42	1940065	RUSKIN TITUS GULF MANUFACTURING L.L.C	Executing	Picking	U-81553	30	MURTUZA ZAFAR	0000
43	1940406	AL AFIF BLDG. MAT. & PAINTS TRDG LLC	Executing	Packing	U-81553	63	BIJU CHETTIYAR	0000
44	1940413	AL AFIF BLDG. MAT. & PAINTS TRDG LLC	Executing	Packed	U-81553	63	BIJU CHETTIYAR	0000
45	1940493	RIKA TRADING LLC	Executing	Picking	G-17290	3	BIJU CHETTIYAR	0000
46	1940470	NEW QAMAR ALHUDA TRADING (L.L.C)	Executing	Picking	G-17290	3	BIJU CHETTIYAR	0000
47	1940420	BIN THANI HARDWARE ELECTRICALS TRADING CO L.L.C	Executing	For picking	U-81550	35	BIJU CHETTIYAR	0000
48	1940468	MOHD AL QAMA GENERAL TRADING CO(L.L.C)	Executing	Packing	G-17290	3	BIJU CHETTIYAR	0000
49	1940487	JASI BUILDING MATERIALS TRADING LLC	Executing	Picking	G-17290	3	BIJU CHETTIYAR	0000
50	1940492	AHMED MOHD GHANIM BUILDING MATERIALS TRADING LLC	Executing	For picking	G-17290	3	BIJU CHETTIYAR	0000
51	1940502	AHMED MOHD GHANIM BUILDING MATERIALS TRADING LLC	Executing	For picking	G-17290	3	BIJU CHETTIYAR	0000
52	1932606	AHMED MOHD GHANIM BUILDING MATERIALS TRADING LLC	Executing	Loading	NULL	3	BIJU CHETTIYAR	0000
53	1940279	STEELEX BUILDING MATERIALS TRADING LLC	Executing	For picking	U-81550	177	BIJU CHETTIYAR	0000
54	1940471	SAADIYAT BUILDING MATERIAL TRADING LLC	Executing	Picked	G-17290	3	BIJU CHETTIYAR	0000
55	1938540	AL FUTTAIM TRADING COMPANY LLC	Executing	Packed	NULL	62	MOIZ GHULAM HUSEIN	0000
56	1938544	AL FUTTAIM TRADING COMPANY LLC	Executing	Packed	NULL	62	MOIZ GHULAM HUSEIN	0000
57	1938552	AL FUTTAIM TRADING COMPANY LLC	Executing	Packed	NULL	62	MOIZ GHULAM HUSEIN	0000
58	1940412	UNITED MASTERS ELECTROMECHANICAL L.L.C	Executing	Packed	G-17290	3	MOIZ GHULAM HUSEIN	0000
59	1939391	ZOOM BUILDING MATERIALS L.L.C	Pending	Pending	NULL	16	RIJAS POTTENGAL	0000
60	1940403	AL MUHEET AL ABYAD BUILDING MATERIALS TRADING L.L.C	Executing	For picking	G-17290	3	RIJAS POTTENGAL	0000
61	1939587	AL JADD TRADING & CONTRACTING EST.	Executing	Packed	NULL	208	MUSTAFA SHABBIR DHANERAWALA	0000
62	1940324	SAMI NATIONAL COMMERCIAL SERVICES	Executing	For picking	AAB CAL 	63	MUSTAFA SHABBIR DHANERAWALA	0000
63	1940474	AMAZON SELLER CENTRAL	Executing	Picked	G-17290	3	MELANIE CASTILLO SILLANO	0000
64	1940486	AMAZON SELLER CENTRAL	Executing	Packed	G-17290	3	MELANIE CASTILLO SILLANO	0000
65	1940485	AMAZON SELLER CENTRAL	Pending	Pending	NULL	3	MELANIE CASTILLO SILLANO	0000
66	1940141	NOON E COMMERCE OWNED by Noon AD Holdings One Person Company LLC	Executing	Packed	Self Collection	183	MELANIE CASTILLO SILLANO	0000
67	1940148	NOON E COMMERCE OWNED by Noon AD Holdings One Person Company LLC	Executing	Packed	Self Collection	183	MELANIE CASTILLO SILLANO	0000
68	1940352	NOON E COMMERCE OWNED by Noon AD Holdings One Person Company LLC	Executing	Packed	Self Collection	183	MELANIE CASTILLO SILLANO	0000
69	1940458	Q TECH GENERAL TRADING L.L.C	Pending	Pending	NULL	224	MELANIE CASTILLO SILLANO	0000
70	1940349	DUBAI ELECTRICITY & WATER AUTHORITY	Pending	Pending	NULL	233	MURTAZA ALIASGER EZZY	0000
71	1933293	DUBAI ELECTRICITY & WATER AUTHORITY	Executing	Picked	NULL	62	MURTAZA ALIASGER EZZY	0000
72	1939279	DUBAI ELECTRICITY & WATER AUTHORITY	Executing	Picked	AAB CAL 	233	MURTAZA ALIASGER EZZY	0000
73	1939785	DUBAI ELECTRICITY & WATER AUTHORITY	Pending	Pending	NULL	62	MURTAZA ALIASGER EZZY	0000
74	1940439	GULF METAL FOUNDRY	Executing	Picking	G-17290	3	HASHIL JALEEL	0000
75	1939387	Danem Energy LLC	Pending	Pending	NULL	64	HASHIL JALEEL	0000
\.


--
-- Name: dashboard_pendingorders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: orders
--

SELECT pg_catalog.setval('dashboard_pendingorders_id_seq', 1, false);


--
-- Name: dashboard_pendingorders dashboard_pendingorders_pkey; Type: CONSTRAINT; Schema: public; Owner: orders
--

ALTER TABLE ONLY dashboard_pendingorders
    ADD CONSTRAINT dashboard_pendingorders_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
