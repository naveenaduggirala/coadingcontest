--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO pgesu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO pgesu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO pgesu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO pgesu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO pgesu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO pgesu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO pgesu;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO pgesu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO pgesu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO pgesu;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO pgesu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO pgesu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: codingcontest_challenge; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE codingcontest_challenge (
    id integer NOT NULL,
    name character varying(100),
    college_id integer,
    contest_id integer
);


ALTER TABLE public.codingcontest_challenge OWNER TO pgesu;

--
-- Name: codingcontest_challenge_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE codingcontest_challenge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.codingcontest_challenge_id_seq OWNER TO pgesu;

--
-- Name: codingcontest_challenge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE codingcontest_challenge_id_seq OWNED BY codingcontest_challenge.id;


--
-- Name: codingcontest_college; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE codingcontest_college (
    id integer NOT NULL,
    name character varying(100),
    contest_id integer
);


ALTER TABLE public.codingcontest_college OWNER TO pgesu;

--
-- Name: codingcontest_college_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE codingcontest_college_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.codingcontest_college_id_seq OWNER TO pgesu;

--
-- Name: codingcontest_college_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE codingcontest_college_id_seq OWNED BY codingcontest_college.id;


--
-- Name: codingcontest_contest; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE codingcontest_contest (
    id integer NOT NULL,
    contest_name character varying(100),
    hacker_id integer,
    hacker_name character varying(100)
);


ALTER TABLE public.codingcontest_contest OWNER TO pgesu;

--
-- Name: codingcontest_contest_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE codingcontest_contest_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.codingcontest_contest_id_seq OWNER TO pgesu;

--
-- Name: codingcontest_contest_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE codingcontest_contest_id_seq OWNED BY codingcontest_contest.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO pgesu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO pgesu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO pgesu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO pgesu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO pgesu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO pgesu;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO pgesu;

--
-- Name: stats_submissionstats; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE stats_submissionstats (
    id integer NOT NULL,
    total_submission integer,
    total_accepted_submissions integer,
    challenge_id integer
);


ALTER TABLE public.stats_submissionstats OWNER TO pgesu;

--
-- Name: stats_submissionstats_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE stats_submissionstats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_submissionstats_id_seq OWNER TO pgesu;

--
-- Name: stats_submissionstats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE stats_submissionstats_id_seq OWNED BY stats_submissionstats.id;


--
-- Name: stats_viewstats; Type: TABLE; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE TABLE stats_viewstats (
    id integer NOT NULL,
    total_views integer,
    total_unique_views integer,
    challenge_id integer
);


ALTER TABLE public.stats_viewstats OWNER TO pgesu;

--
-- Name: stats_viewstats_id_seq; Type: SEQUENCE; Schema: public; Owner: pgesu
--

CREATE SEQUENCE stats_viewstats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stats_viewstats_id_seq OWNER TO pgesu;

--
-- Name: stats_viewstats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: pgesu
--

ALTER SEQUENCE stats_viewstats_id_seq OWNED BY stats_viewstats.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY codingcontest_challenge ALTER COLUMN id SET DEFAULT nextval('codingcontest_challenge_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY codingcontest_college ALTER COLUMN id SET DEFAULT nextval('codingcontest_college_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY codingcontest_contest ALTER COLUMN id SET DEFAULT nextval('codingcontest_contest_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY stats_submissionstats ALTER COLUMN id SET DEFAULT nextval('stats_submissionstats_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY stats_viewstats ALTER COLUMN id SET DEFAULT nextval('stats_viewstats_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add contest	7	add_contest
20	Can change contest	7	change_contest
21	Can delete contest	7	delete_contest
22	Can add hacker	8	add_hacker
23	Can change hacker	8	change_hacker
24	Can delete hacker	8	delete_hacker
25	Can add college	9	add_college
26	Can change college	9	change_college
27	Can delete college	9	delete_college
28	Can add challenge	10	add_challenge
29	Can change challenge	10	change_challenge
30	Can delete challenge	10	delete_challenge
31	Can add view stats	11	add_viewstats
32	Can change view stats	11	change_viewstats
33	Can delete view stats	11	delete_viewstats
34	Can add submission stats	12	add_submissionstats
35	Can change submission stats	12	change_submissionstats
36	Can delete submission stats	12	delete_submissionstats
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('auth_permission_id_seq', 36, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: codingcontest_challenge; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY codingcontest_challenge (id, name, college_id, contest_id) FROM stdin;
47127	\N	11219	66406
\.


--
-- Name: codingcontest_challenge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('codingcontest_challenge_id_seq', 1, false);


--
-- Data for Name: codingcontest_college; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY codingcontest_college (id, name, contest_id) FROM stdin;
11219	crr	66406
32473	rvr	66556
56683	pvp	94828
\.


--
-- Name: codingcontest_college_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('codingcontest_college_id_seq', 1, false);


--
-- Data for Name: codingcontest_contest; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY codingcontest_contest (id, contest_name, hacker_id, hacker_name) FROM stdin;
66406	demo	17973	Rose
66556	demo1	17973	Angela
94828	demo2	80275	Frank
\.


--
-- Name: codingcontest_contest_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('codingcontest_contest_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	codingcontest	contest
8	codingcontest	hacker
9	codingcontest	college
10	codingcontest	challenge
11	stats	viewstats
12	stats	submissionstats
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('django_content_type_id_seq', 12, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-11-17 23:01:08.179723+05:30
2	auth	0001_initial	2018-11-17 23:01:09.765772+05:30
3	admin	0001_initial	2018-11-17 23:01:10.039511+05:30
4	contenttypes	0002_remove_content_type_name	2018-11-17 23:01:10.170626+05:30
5	auth	0002_alter_permission_name_max_length	2018-11-17 23:01:10.229996+05:30
6	auth	0003_alter_user_email_max_length	2018-11-17 23:01:10.304127+05:30
7	auth	0004_alter_user_username_opts	2018-11-17 23:01:10.356069+05:30
8	auth	0005_alter_user_last_login_null	2018-11-17 23:01:10.40899+05:30
9	auth	0006_require_contenttypes_0002	2018-11-17 23:01:10.426248+05:30
10	codingcontest	0001_initial	2018-11-17 23:01:11.008415+05:30
11	sessions	0001_initial	2018-11-17 23:01:11.283628+05:30
12	codingcontest	0002_auto_20181117_1800	2018-11-17 23:30:19.450602+05:30
13	codingcontest	0003_auto_20181117_1822	2018-11-17 23:53:03.886676+05:30
14	stats	0001_initial	2018-11-17 23:54:59.357196+05:30
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('django_migrations_id_seq', 14, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: stats_submissionstats; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY stats_submissionstats (id, total_submission, total_accepted_submissions, challenge_id) FROM stdin;
1	34	12	47127
\.


--
-- Name: stats_submissionstats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('stats_submissionstats_id_seq', 1, false);


--
-- Data for Name: stats_viewstats; Type: TABLE DATA; Schema: public; Owner: pgesu
--

COPY stats_viewstats (id, total_views, total_unique_views, challenge_id) FROM stdin;
1	26	19	47127
\.


--
-- Name: stats_viewstats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: pgesu
--

SELECT pg_catalog.setval('stats_viewstats_id_seq', 1, false);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: codingcontest_challenge_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY codingcontest_challenge
    ADD CONSTRAINT codingcontest_challenge_pkey PRIMARY KEY (id);


--
-- Name: codingcontest_college_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY codingcontest_college
    ADD CONSTRAINT codingcontest_college_pkey PRIMARY KEY (id);


--
-- Name: codingcontest_contest_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY codingcontest_contest
    ADD CONSTRAINT codingcontest_contest_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_45f3b1d93ec8c61c_uniq; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_45f3b1d93ec8c61c_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: stats_submissionstats_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY stats_submissionstats
    ADD CONSTRAINT stats_submissionstats_pkey PRIMARY KEY (id);


--
-- Name: stats_viewstats_pkey; Type: CONSTRAINT; Schema: public; Owner: pgesu; Tablespace: 
--

ALTER TABLE ONLY stats_viewstats
    ADD CONSTRAINT stats_viewstats_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_253ae2a6331666e8_like; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_group_name_253ae2a6331666e8_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_51b3b110094b8aae_like; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX auth_user_username_51b3b110094b8aae_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: codingcontest_challenge_3d404635; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX codingcontest_challenge_3d404635 ON codingcontest_challenge USING btree (college_id);


--
-- Name: codingcontest_challenge_41b6de5d; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX codingcontest_challenge_41b6de5d ON codingcontest_challenge USING btree (contest_id);


--
-- Name: codingcontest_college_41b6de5d; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX codingcontest_college_41b6de5d ON codingcontest_college USING btree (contest_id);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_461cfeaa630ca218_like; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX django_session_session_key_461cfeaa630ca218_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: stats_submissionstats_903d3026; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX stats_submissionstats_903d3026 ON stats_submissionstats USING btree (challenge_id);


--
-- Name: stats_viewstats_903d3026; Type: INDEX; Schema: public; Owner: pgesu; Tablespace: 
--

CREATE INDEX stats_viewstats_903d3026 ON stats_viewstats USING btree (challenge_id);


--
-- Name: auth_content_type_id_508cf46651277a81_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_508cf46651277a81_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_689710a9a73b7457_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_384b62483d7071f0_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_7f0938558328534a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: codingc_college_id_7d1b0437381599dd_fk_codingcontest_college_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY codingcontest_challenge
    ADD CONSTRAINT codingc_college_id_7d1b0437381599dd_fk_codingcontest_college_id FOREIGN KEY (college_id) REFERENCES codingcontest_college(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: codingc_contest_id_25312f82be36ac5a_fk_codingcontest_contest_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY codingcontest_challenge
    ADD CONSTRAINT codingc_contest_id_25312f82be36ac5a_fk_codingcontest_contest_id FOREIGN KEY (contest_id) REFERENCES codingcontest_contest(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: codingc_contest_id_5e974a9644f5d2f8_fk_codingcontest_contest_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY codingcontest_college
    ADD CONSTRAINT codingc_contest_id_5e974a9644f5d2f8_fk_codingcontest_contest_id FOREIGN KEY (contest_id) REFERENCES codingcontest_contest(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djan_content_type_id_697914295151027a_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djan_content_type_id_697914295151027a_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sta_challenge_id_4fb6157ee59d7eb3_fk_codingcontest_challenge_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY stats_viewstats
    ADD CONSTRAINT sta_challenge_id_4fb6157ee59d7eb3_fk_codingcontest_challenge_id FOREIGN KEY (challenge_id) REFERENCES codingcontest_challenge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: sta_challenge_id_4fd80bfa2587038c_fk_codingcontest_challenge_id; Type: FK CONSTRAINT; Schema: public; Owner: pgesu
--

ALTER TABLE ONLY stats_submissionstats
    ADD CONSTRAINT sta_challenge_id_4fd80bfa2587038c_fk_codingcontest_challenge_id FOREIGN KEY (challenge_id) REFERENCES codingcontest_challenge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

