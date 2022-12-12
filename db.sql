--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Ubuntu 14.6-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.6

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

--
-- Name: heroku_ext; Type: SCHEMA; Schema: -; Owner: uajcalaqgs3b9a
--

CREATE SCHEMA heroku_ext;


ALTER SCHEMA heroku_ext OWNER TO uajcalaqgs3b9a;

--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA heroku_ext;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO lvidsydxariqwl;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO lvidsydxariqwl;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO lvidsydxariqwl;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO lvidsydxariqwl;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO lvidsydxariqwl;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO lvidsydxariqwl;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: catalog_author; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_author (
    id bigint NOT NULL,
    first_name character varying(100) NOT NULL,
    last_name character varying(100) NOT NULL,
    date_of_birth date,
    date_of_death date,
    biography text NOT NULL,
    image character varying(200) NOT NULL
);


ALTER TABLE public.catalog_author OWNER TO lvidsydxariqwl;

--
-- Name: catalog_author_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.catalog_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_author_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: catalog_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.catalog_author_id_seq OWNED BY public.catalog_author.id;


--
-- Name: catalog_book; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_book (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    summary text NOT NULL,
    isbn character varying(13) NOT NULL,
    author_id bigint,
    language_id bigint,
    image character varying(200) NOT NULL
);


ALTER TABLE public.catalog_book OWNER TO lvidsydxariqwl;

--
-- Name: catalog_book_genre; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_book_genre (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.catalog_book_genre OWNER TO lvidsydxariqwl;

--
-- Name: catalog_book_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.catalog_book_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_book_genre_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: catalog_book_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.catalog_book_genre_id_seq OWNED BY public.catalog_book_genre.id;


--
-- Name: catalog_book_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.catalog_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_book_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: catalog_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.catalog_book_id_seq OWNED BY public.catalog_book.id;


--
-- Name: catalog_bookinstance; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_bookinstance (
    id uuid NOT NULL,
    imprint character varying(200) NOT NULL,
    due_back date,
    status character varying(1) NOT NULL,
    book_id bigint,
    borrower_id bigint
);


ALTER TABLE public.catalog_bookinstance OWNER TO lvidsydxariqwl;

--
-- Name: catalog_comment; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_comment (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    body text NOT NULL,
    date_added timestamp with time zone NOT NULL,
    post_id bigint NOT NULL
);


ALTER TABLE public.catalog_comment OWNER TO lvidsydxariqwl;

--
-- Name: catalog_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.catalog_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_comment_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: catalog_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.catalog_comment_id_seq OWNED BY public.catalog_comment.id;


--
-- Name: catalog_genre; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_genre (
    id bigint NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.catalog_genre OWNER TO lvidsydxariqwl;

--
-- Name: catalog_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.catalog_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_genre_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: catalog_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.catalog_genre_id_seq OWNED BY public.catalog_genre.id;


--
-- Name: catalog_language; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_language (
    id bigint NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.catalog_language OWNER TO lvidsydxariqwl;

--
-- Name: catalog_language_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.catalog_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_language_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: catalog_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.catalog_language_id_seq OWNED BY public.catalog_language.id;


--
-- Name: catalog_libraryuser; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.catalog_libraryuser (
    id bigint NOT NULL,
    is_borrowing boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.catalog_libraryuser OWNER TO lvidsydxariqwl;

--
-- Name: catalog_libraryuser_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.catalog_libraryuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_libraryuser_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: catalog_libraryuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.catalog_libraryuser_id_seq OWNED BY public.catalog_libraryuser.id;


--
-- Name: contact_contact; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.contact_contact (
    id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(254) NOT NULL,
    message text NOT NULL
);


ALTER TABLE public.contact_contact OWNER TO lvidsydxariqwl;

--
-- Name: contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.contact_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_contact_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.contact_contact_id_seq OWNED BY public.contact_contact.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO lvidsydxariqwl;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO lvidsydxariqwl;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO lvidsydxariqwl;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO lvidsydxariqwl;

--
-- Name: events_event; Type: TABLE; Schema: public; Owner: lvidsydxariqwl
--

CREATE TABLE public.events_event (
    id bigint NOT NULL,
    day date NOT NULL,
    description text NOT NULL,
    start_time time without time zone NOT NULL,
    end_time time without time zone NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.events_event OWNER TO lvidsydxariqwl;

--
-- Name: events_event_id_seq; Type: SEQUENCE; Schema: public; Owner: lvidsydxariqwl
--

CREATE SEQUENCE public.events_event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_event_id_seq OWNER TO lvidsydxariqwl;

--
-- Name: events_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lvidsydxariqwl
--

ALTER SEQUENCE public.events_event_id_seq OWNED BY public.events_event.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: catalog_author id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_author ALTER COLUMN id SET DEFAULT nextval('public.catalog_author_id_seq'::regclass);


--
-- Name: catalog_book id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book ALTER COLUMN id SET DEFAULT nextval('public.catalog_book_id_seq'::regclass);


--
-- Name: catalog_book_genre id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book_genre ALTER COLUMN id SET DEFAULT nextval('public.catalog_book_genre_id_seq'::regclass);


--
-- Name: catalog_comment id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_comment ALTER COLUMN id SET DEFAULT nextval('public.catalog_comment_id_seq'::regclass);


--
-- Name: catalog_genre id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_genre ALTER COLUMN id SET DEFAULT nextval('public.catalog_genre_id_seq'::regclass);


--
-- Name: catalog_language id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_language ALTER COLUMN id SET DEFAULT nextval('public.catalog_language_id_seq'::regclass);


--
-- Name: catalog_libraryuser id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_libraryuser ALTER COLUMN id SET DEFAULT nextval('public.catalog_libraryuser_id_seq'::regclass);


--
-- Name: contact_contact id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.contact_contact ALTER COLUMN id SET DEFAULT nextval('public.contact_contact_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: events_event id; Type: DEFAULT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.events_event ALTER COLUMN id SET DEFAULT nextval('public.events_event_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.auth_group (id, name) FROM stdin;
1	Librarian
2	Admin
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	13
2	1	14
3	1	15
4	1	16
5	1	17
6	1	18
7	1	19
8	1	20
9	1	25
10	1	26
11	1	27
12	1	28
13	1	29
14	1	30
15	1	31
16	1	32
17	1	33
18	1	34
19	1	35
20	1	36
21	1	37
22	1	38
23	1	39
24	1	40
25	1	41
26	1	42
27	1	43
28	1	44
29	1	45
30	1	46
31	1	47
32	1	48
33	1	49
34	1	50
35	1	51
36	1	52
37	1	53
38	1	54
39	1	55
40	1	56
41	1	57
42	1	58
43	1	59
44	1	60
45	1	61
46	2	1
47	2	2
48	2	3
49	2	4
50	2	5
51	2	6
52	2	7
53	2	8
54	2	9
55	2	10
56	2	11
57	2	12
58	2	13
59	2	14
60	2	15
61	2	16
62	2	17
63	2	18
64	2	19
65	2	20
66	2	21
67	2	22
68	2	23
69	2	24
70	2	25
71	2	26
72	2	27
73	2	28
74	2	29
75	2	30
76	2	31
77	2	32
78	2	33
79	2	34
80	2	35
81	2	36
82	2	37
83	2	38
84	2	39
85	2	40
86	2	41
87	2	42
88	2	43
89	2	44
90	2	45
91	2	46
92	2	47
93	2	48
94	2	49
95	2	50
96	2	51
97	2	52
98	2	53
99	2	54
100	2	55
101	2	56
102	2	57
103	2	58
104	2	59
105	2	60
106	2	61
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add genre	9	add_genre
34	Can change genre	9	change_genre
35	Can delete genre	9	delete_genre
36	Can view genre	9	view_genre
37	Can add language	10	add_language
38	Can change language	10	change_language
39	Can delete language	10	delete_language
40	Can view language	10	view_language
41	Can add book instance	11	add_bookinstance
42	Can change book instance	11	change_bookinstance
43	Can delete book instance	11	delete_bookinstance
44	Can view book instance	11	view_bookinstance
45	Set book as returned	11	can_mark_returned
46	Can add comment	12	add_comment
47	Can change comment	12	change_comment
48	Can delete comment	12	delete_comment
49	Can view comment	12	view_comment
50	Can add library user	13	add_libraryuser
51	Can change library user	13	change_libraryuser
52	Can delete library user	13	delete_libraryuser
53	Can view library user	13	view_libraryuser
54	Can add contact	14	add_contact
55	Can change contact	14	change_contact
56	Can delete contact	14	delete_contact
57	Can view contact	14	view_contact
58	Can add Event	15	add_event
59	Can change Event	15	change_event
60	Can delete Event	15	delete_event
61	Can view Event	15	view_event
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
3	pbkdf2_sha256$320000$BuSzqZQOCa1njC4y6OhoTd$tVInUfBve67FT76faj6sq7Tq6flcgEVB/8Mx0+tnZWw=	\N	f	guest1				f	t	2022-12-04 15:43:24.758815+00
4	pbkdf2_sha256$320000$ck98dg8nB7jjCPwmFsZM7e$jjycz8eN5uYE620oqXFy4Qh3ouzOn1ONZ0Ytjga4aM0=	\N	f	guest2				f	t	2022-12-04 15:43:32.82556+00
5	pbkdf2_sha256$320000$eiFsRKndSRXJGutFgP7lcQ$wLtseX9UJGm41x67pU6+XbeJOvdfUuaX4bqtJEpIlXI=	\N	f	guest3				f	t	2022-12-04 15:43:41.07564+00
2	pbkdf2_sha256$320000$XCBIj56RJekK7qVgn7c0Bh$D3HyQsQo3GR/syLZQLKtyj2s9zSgexR01WZhxvwNMEA=	\N	f	librarian				t	t	2022-12-04 15:43:13+00
6	pbkdf2_sha256$320000$nWcxKRFLsWVqHhkiN7aDE7$qal0AXF6tGudtRiKyQaZgfwlnZO/7TwaiFjot5bDtNc=	2022-12-04 16:05:26.464496+00	f	a			a@gmail.com	f	t	2022-12-04 16:05:21.145536+00
7	pbkdf2_sha256$320000$XGrdhaIfuSkZSxjMYa4ODb$IJvzaoS1es47IVNpiPS/vmUqi5yU4XwkypOZTnQPzGY=	2022-12-05 00:08:29.378246+00	t	dpittman951			dpittman951159@gmail.com	t	t	2022-12-05 00:08:20.183151+00
1	pbkdf2_sha256$320000$a30Ye2fhpK6NwR4thqeXI9$3kJkXbT2GbsK6loXSkcBDaEmL/O/W7bzWmovFnXxthA=	2022-12-06 21:25:49.093463+00	t	mima				t	t	2022-12-04 15:34:27.002616+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: catalog_author; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_author (id, first_name, last_name, date_of_birth, date_of_death, biography, image) FROM stdin;
1	Paulo	Coelho	1947-08-24	\N	Coelho worked as a songwriter, composing lyrics for Elis Regina, Rita Lee, and Brazilian icon Raul Seixas. Composing with Raul led to Coelho being associated with magic and occultism, due to the content of some songs.  In 1974, by his account, he was arrested for "subversive" activities and tortured by the ruling military government, who had taken power ten years earlier and viewed his lyrics as left-wing and dangerous. Coelho also worked as an actor, journalist and theatre director before pursuing his writing career.\r\nCoelho married artist Christina Oiticica in 1980. Together they had previously spent half the year in Rio de Janeiro and the other half in a country house in the Pyrenees Mountains of France, but now the couple reside permanently in Geneva, Switzerland.	https://images3.penguinrandomhouse.com/author/5234
2	James	Dashner	1972-11-26	\N	James Smith Dashner is an American writer known for speculative fiction. Many of his books are primarily aimed at children or young adults. He is best known for The Maze Runner series and the young adult fantasy series The 13th Reality.	https://images.gr-assets.com/authors/1473791260p8/348878.jpg
3	Miguel	de Cervantes	1547-09-29	1616-04-22	Miguel de Cervantes Saavedra was an Early Modern Spanish writer widely regarded as the greatest writer in the Spanish language and one of the world's pre-eminent novelists. He is best known for his novel Don Quixote, a work often cited as both the first modern novel and one of the pinnacles of world literature.	https://cdn.britannica.com/61/66361-050-40CE1C09/Miguel-de-Cervantes-engraving-Gregorio-Ferro-E.jpg
4	Antoine	de Saint-Exupéry	1900-06-29	1944-07-31	Antoine Marie Jean-Baptiste Roger, comte de Saint-Exupéry, simply known as Antoine de Saint-Exupéry, was a French writer, poet, aristocrat, journalist and pioneering aviator. He became a laureate of several of France's highest literary awards and also won the United States National Book Award.	https://images.gr-assets.com/authors/1330853515p8/1020792.jpg
5	Gillian	Flynn	1971-02-24	\N	Gillian Schieber Flynn is an American author, screenwriter, and producer. She is known for writing the thriller and mystery novels, Sharp Objects, Dark Places, and Gone Girl, which are all critically acclaimed.	https://images.gr-assets.com/authors/1232123231p8/2383.jpg
6	Victor	Hugo	1802-02-26	1855-05-22	Victor-Marie Hugo was a French Romantic writer and politician. During a literary career that spanned more than sixty years, he wrote in a variety of genres and forms. He is considered to be one of the greatest French writers of all time.	https://upload.wikimedia.org/wikipedia/commons/e/e6/Victor_Hugo_by_%C3%89tienne_Carjat_1876_-_full.jpg
7	Drew	Karpyshyn	1971-07-28	\N	Drew Karpyshyn is a Canadian video game scenario writer, scriptwriter and novelist. He served as a senior writer for BioWare's Star Wars: Knights of the Old Republic and lead writer for the first two Mass Effect video games.	https://upload.wikimedia.org/wikipedia/commons/1/18/Drew_Karpyshyn_-_Lucca_Comics_&_Games_2014.JPG
8	Stephen	King	1947-09-21	\N	Stephen Edwin King is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels.	https://m.media-amazon.com/images/M/MV5BMjA2ODIxNDM4Nl5BMl5BanBnXkFtZTYwMjkzMzU1._V1_.jpg
9	Michael	Lewis	1960-10-05	\N	Michael Monroe Lewis is an American author and financial journalist. He has also been a contributing editor to Vanity Fair since 2009, writing mostly on business, finance, and economics. He is known for his nonfiction work, particularly his coverage of financial crises and behavioral finance.	https://images.gr-assets.com/authors/1317447168p8/776.jpg
10	J. R. R.	Tolkein	1892-01-03	1973-09-02	John Ronald Reuel Tolkien CBE FRSL was an English writer and philologist. He was the author of the high fantasy works The Hobbit and The Lord of the Rings. From 1925 to 1945, Tolkien was the Rawlinson and Bosworth Professor of Anglo-Saxon and a Fellow of Pembroke College, both at the University of Oxford.	https://www.biography.com/.image/t_share/MTE5NTU2MzE2Mzg4MzYxNzM5/jrr-tolkien-9508428-1-402.jpg
11	Sean	Williams	1967-05-23	\N	Sean Llewellyn Williams is an Australian author of science fiction who lives in Adelaide, South Australia. Several of his books have been New York Times best-sellers.	https://jillgrinbergliterary.com/wp-content/uploads/2019/10/Photo-by-James-Braund-460x575.jpg
12	Gregory	Maguire	1954-06-09	\N	Gregory Maguire (born June 9, 1954) is an American novelist. He is the author of Wicked: The Life and Times of the Wicked Witch of the West, Confessions of an Ugly Stepsister, and several dozen other novels for adults and children. Many of Maguire's adult novels are inspired by classic children's stories. Maguire published his first novel, The Lightning Time, in 1978. Wicked, published in 1995, was his first novel for adults. Though unsuccessful at first, it was adapted into a popular Broadway musical in 2003.	https://images.gr-assets.com/authors/1319068553p8/7025.jpg
13	Neil	Gaiman	1960-11-10	\N	Neil Richard MacKinnon Gaiman[2] /ˈɡeɪmən/;[3] (né Neil Richard Gaiman;[2] born 10 November 1960)[4] is an English author of short fiction, novels, comic books, graphic novels, nonfiction, audio theatre, and films. His works include the comic book series The Sandman and novels Stardust, American Gods, Coraline, and The Graveyard Book. He has won numerous awards, including the Hugo, Nebula, and Bram Stoker awards, as well as the Newbery and Carnegie medals. He is the first author to win both the Newbery and the Carnegie medals for the same work, The Graveyard Book (2008).[5][6] In 2013, The Ocean at the End of the Lane was voted Book of the Year in the British National Book Awards.[7] It was later adapted into a critically acclaimed stage play at the Royal National Theatre in London, England that The Independent called "...theatre at its best".[8]	https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Kyle-cassidy-neil-gaiman-April-2013.jpg/1200px-Kyle-cassidy-neil-gaiman-April-2013.jpg
\.


--
-- Data for Name: catalog_book; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_book (id, title, summary, isbn, author_id, language_id, image) FROM stdin;
1	A Lion Among Men	Prior to the publication of A Lion Among Men, Maguire stated that "this book will be about the differing moralities... among soldiers, for one, and diplomats, for another... about decisions to wage war" and "One of the main characters is the Cowardly Lion".[1] Maguire also stated that the novel's story "starts off about eight years after the end of Son of a Witch".[2] Maguire's website describes the novels as "seen now through the eyes of the Cowardly Lion—the once tiny cub defended by Elphaba in Wicked: The Life and Times of the Wicked Witch of the West."	978006209894	12	2	https://upload.wikimedia.org/wikipedia/en/thumb/3/30/A_Lion_Among_Men.jpg/220px-A_Lion_Among_Men.jpg
2	American Gods	American Gods (2001) is a fantasy novel by British author Neil Gaiman. The novel is a blend of Americana, fantasy, and various strands of ancient and modern mythology, all centering on the mysterious and taciturn Shadow.\r\nThe book was published in 2001 by Headline in the United Kingdom and by William Morrow in the United States. It gained a positive critical response and won the 2002 Hugo and Nebula awards.[1]\r\nA special tenth anniversary edition, which includes the "author's preferred text" and 12,000 additional words, was published in June 2011 by William Morrow. Two audio versions of the book were produced and published by Harper Audio: an unabridged version of the original published edition, read by George Guidall, released in 2001; a full cast audiobook version of the tenth anniversary edition, released in 2011. In March 2017, The Folio Society published a special collector's edition of American Gods, with many corrections to the author's preferred text version.[2]	9700038097365	13	2	https://dynamic.indigoimages.ca/v1/books/books/0380973650/1.jpg?width=614&maxheight=614&quality=85
3	Billy Summers	Master storyteller Stephen King, whose “restless imagination is a power that cannot be contained” (The New York Times Book Review), presents an unforgettable and relentless #1 New York Times bestseller about a good guy in a bad job.\r\nChances are, if you’re a target of Billy Summers, two immutable truths apply: You’ll never even know what hit you, and you’re really getting what you deserve. He’s a killer for hire and the best in the business—but he’ll do the job only if the assignment is a truly bad person. But now, time is catching up with him, and Billy wants out. Before he can do that though, there’s one last hit, which promises a generous payday at the end of the line even as things don’t seem quite on the level here. Given that Billy is among the most talented snipers in the world, a decorated Iraq war vet, and a virtual Houdini when it comes to vanishing after the job is done, what could possibly go wrong? How about everything.	9781982173616	8	2	https://m.media-amazon.com/images/I/81KQ2z4C-OL.jpg
4	Don Quixote	Don Quixote (/ˌdɒn kiːˈhoʊti/, also US: /-teɪ/)[1] is a Spanish epic novel by Miguel de Cervantes. Originally published in two parts, in 1605 and 1615, its full title is The Ingenious Gentleman Don Quixote of La Mancha or, in Spanish, El ingenioso hidalgo (or caballero, in Part 2) don Quijote de la Mancha.[a] A founding work of Western literature, it is often labelled as the first modern novel[2][3] and one of the greatest works ever written.[4][5] Don Quixote is also one of the most-translated books in the world.[6]	9780936388878	3	4	https://i0.wp.com/literariness.org/wp-content/uploads/2019/03/41JKGW9P6AL._SX372_BO1204203200_.jpg
5	Gone Girl	#1 NEW YORK TIMES BESTSELLER • The “mercilessly entertaining” (Vanity Fair) instant classic “about the nature of identity and the terrible secrets that can survive and thrive in even the most intimate relationships” (Lev Grossman, Time)—now featuring never-before-published deleted scenes	9780307588364	5	2	https://m.media-amazon.com/images/I/41n6bk39YeL.jpg
6	Le Petit Prince	The Little Prince (French: Le Petit Prince, pronounced [lә p(ә)ti pᴚἕS]) is a novella by French aristocrat, writer, and military aviator Antoine de Saint-Exupéry. It was first published in English and French in the United States by Reynal & Hitchcock in April 1943 and was published posthumously in France following liberation; Saint-Exupéry's works had been banned by the Vichy Regime. The story follows a young prince who visits various planets in space, including Earth, and address themes of loneliness, friendship, love, and loss. Despite its style as a children's book, The Little Prince makes observations about life, adults and human nature. [9]	9783140464079	4	3	https://m.media-amazon.com/images/I/71t+4m5lz0L.jpg
7	Les Misérables	In the English-speaking world, the novel is usually referred to by its original French title. However, several alternatives have been used, including The Miserables, The Wretched, The Miserable Ones, The Poor Ones, The Wretched Poor, The Victims, and The Dispossessed.[5] Beginning in 1815 and culminating in the 1832 June Rebellion in Paris, the novel follows the lives and interactions of several characters, particularly the struggles of ex-convict Jean Valjean and his experience of redemption.[6]\r\n\r\nExamining the nature of law and grace, the novel elaborates upon the history of France, the architecture and urban design of Paris, politics, moral philosophy, antimonarchism, justice, religion, and the types and nature of romantic and familial love. Les Misérables has been popularized through numerous adaptations for film, television and the stage, including a musical.	9780453009669	6	3	https://m.media-amazon.com/images/I/91p594CxSpL.jpg
8	Moneyball: The Art of Winning an Unfair Game	"This delightfully written, lesson-laden book deserves a place of its own in the Baseball Hall of Fame." ―Forbes\r\nMoneyball is a quest for the secret of success in baseball. In a narrative full of fabulous characters and brilliant excursions into the unexpected, Michael Lewis follows the low-budget Oakland A's, visionary general manager Billy Beane, and the strange brotherhood of amateur baseball theorists. They are all in search of new baseball knowledge―insights that will give the little guy who is willing to discard old wisdom the edge over big money.	9780393057652	9	2	https://m.media-amazon.com/images/I/41ScS8WJPxL.jpg
9	Star Wars: Darth Bane: Path of Destruction	Path of Destruction is a novel in the Star Wars saga and is centered on the life of Darth Bane and the fall of the first Sith order. It was written by Drew Karpyshyn and was released on September 26, 2006. The book takes place roughly 1,000 years before Star Wars Episode IV: A New Hope.	9780000345477	7	2	https://m.media-amazon.com/images/I/513Cj161OIS._SX342_SY445_QL70_ML2_.jpg
10	Star Wars: Darth Bane: Rule of Two	Darth Bane: Rule of Two, the sequel to the novel Darth Bane: Path of Destruction, is part of the Star Wars expanded universe. It was written by Drew Karpyshyn, and was released on December 26, 2007. The novel centers on the young Sith apprentice Darth Zannah, recently taken under the wing of the Sith Lord Darth Bane. The "Rule of Two" of the title refers to the rule that there be only two Sith in existence at one time: a Master and an Apprentice, a rule that Bane originates.	9780034547748	7	2	https://m.media-amazon.com/images/I/51TmV1rFcbS.jpg
11	Star Wars: The Old Republic: Annihilation	Star Wars: The Old Republic: Annihilation is part of the Star Wars expanded universe. Written by Drew Karpyshyn and released on November 13, 2012. This novel is the fourth entry in the Star Wars: The Old Republic novel series. News of the book was released at the Del Rey Star Wars books panel at the 2011 New York Comic-Con. It takes place just after the events of the Star Wars: The Old Republic class stories and focuses on Theron Shan. The paperback edition was released on October 29, 2013, while the UK paperback was released on May 24, 2013.	9780034552941	7	2	https://m.media-amazon.com/images/I/91gm+7rjbdL.jpg
12	Star Wars: The Old Republic: Fatal Alliance	Star Wars: The Old Republic: Fatal Alliance is a science fiction novel from the Star Wars franchise written by Australian author Sean Williams. It is a prequel to and the first novel based on the MMORPG Star Wars: The Old Republic by BioWare Corp., and was released on July 20, 2010.[1] The novel was first announced on November 10, 2008, by Sue Rostoni, the executive editor at Lucas Licensing, on the Starwars.com message boards.[2]\r\nThis is the fifth of six Star Wars novels by Sean Williams, who also wrote the Force Heretic trilogy from the New Jedi Order series and the novelization of the 2008 video game Star Wars: The Force Unleashed and its sequel.	9780034551132	11	2	https://static.wikia.nocookie.net/starwars/images/b/bc/TORFACover.jpg/revision/latest/scale-to-width-down/1200?cb=20100522044408
13	The Alchemist	The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho which was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller.[1][2] An allegorical novel, The Alchemist follows a young Andalusian shepherd in his journey to the pyramids of Egypt, after having a recurring dream of finding a treasure there.	97800625021	1	4	https://i.harperapps.com/covers/9780062390622/y648.jpg
14	The Big Short: Inside the Doomsday Machine	The #1 New York Times bestseller: "It is the work of our greatest financial journalist, at the top of his game. And it's essential reading."―Graydon Carter, Vanity Fair\r\nThe real story of the crash began in bizarre feeder markets where the sun doesn't shine and the SEC doesn't dare, or bother, to tread: the bond and real estate derivative markets where geeks invent impenetrable securities to profit from the misery of lower- and middle-class Americans who can't pay their debts.	9780393072231	9	2	https://m.media-amazon.com/images/I/81RS7Rf-LoL.jpg
15	The Fellowship of the Ring	The Fellowship of the Ring is the first of three volumes of the epic novel[2] The Lord of the Rings by the English author J. R. R. Tolkien. It is followed by The Two Towers and The Return of the King. It takes place in the fictional universe of Middle-earth, and was originally published on 29 July 1954 in the United Kingdom.\r\nThe volume consists of a foreword, in which the author discusses his writing of The Lord of the Rings, a prologue titled "Concerning Hobbits, and other matters", and the main narrative in Book I and Book II.	9780007136599	10	2	https://upload.wikimedia.org/wikipedia/en/8/8e/The_Fellowship_of_the_Ring_cover.gif
16	The Maze Runner	Book one in the blockbuster Maze Runner series that spawned a movie franchise and ushered in a worldwide phenomenon! And don’t miss The Fever Code, the highly-anticipated series conclusion that finally reveals the story of how the maze was built!\r\n   When Thomas wakes up in the lift, the only thing he can remember is his name. He’s surrounded by strangers—boys whose memories are also gone.\r\n   Outside the towering stone walls that surround them is a limitless, ever-changing maze. It’s the only way out—and no one’s ever made it through alive.\r\n   Then a girl arrives. The first girl ever. And the message she delivers is terrifying: Remember. Survive. Run.\r\nThe Maze Runner and Maze Runner: The Scorch Trials, and Maze Runner: The Death Cure all are now major motion pictures featuring the star of MTV's Teen Wolf, Dylan O’Brien; Kaya Scodelario; Aml Ameen; Will Poulter; and Thomas Brodie-Sangster.	9780385737944	2	2	https://upload.wikimedia.org/wikipedia/en/d/db/The_Maze_Runner_cover.png
17	The Return of the King	The Return of the King is the third and final volume of J. R. R. Tolkien's The Lord of the Rings, following The Fellowship of the Ring and The Two Towers. It was published in 1955. The story begins in the kingdom of Gondor, which is soon to be attacked by the Dark Lord Sauron.	9780007136575	10	2	https://upload.wikimedia.org/wikipedia/en/thumb/1/11/The_Return_of_the_King_cover.gif/220px-The_Return_of_the_King_cover.gif
18	The Two Towers	The Lord of the Rings is composed of six "books", aside from an introduction, a prologue and six appendices. However, the novel was originally published as three separate volumes, due to post-World War II paper shortages and size and price considerations.[2] The Two Towers covers Books Three and Four.\r\nTolkien wrote: "The Two Towers gets as near as possible to finding a title to cover the widely divergent Books Three and Four; and can be left ambiguous."[3] At this stage he planned to title the individual books. The proposed title for Book Three was The Treason of Isengard. Book Four was titled The Journey of the Ringbearers or The Ring Goes East. The titles The Treason of Isengard and The Ring Goes East were used in the Millennium edition. In other editions the Books are often untitled.	9780007203598	10	2	https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/The_Two_Towers_cover.gif/220px-The_Two_Towers_cover.gif
19	Wicked	Wicked is a revisionist exploration of the characters and setting of the 1900 novel The Wonderful Wizard of Oz by L. Frank Baum, its sequels, and the 1939 film adaptation. It is presented as a biography of the Wicked Witch of the West, here given the name "Elphaba." The book follows Elphaba from her birth as the result of a rape through her radicalization, social ostracism, and finally her death at the hands of Dorothy Gale. Maguire shows the traditionally villainous character in a sympathetic light, using her journey to explore the problem of evil and the "nature versus nurture" debate, as well as themes of terrorism, propaganda, and life purpose.	9780060391	12	2	https://m.media-amazon.com/images/I/51lYq1nJGnL.jpg
\.


--
-- Data for Name: catalog_book_genre; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_book_genre (id, book_id, genre_id) FROM stdin;
1	1	3
2	2	3
3	3	1
4	3	2
5	4	4
6	5	1
7	6	3
8	7	1
9	8	5
10	9	6
11	10	6
12	11	6
13	12	6
14	13	3
15	14	1
16	15	3
17	16	6
18	17	3
19	18	3
20	19	3
\.


--
-- Data for Name: catalog_bookinstance; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_bookinstance (id, imprint, due_back, status, book_id, borrower_id) FROM stdin;
d07b9526-5df7-46a6-a161-341774980f22	1st Edition	2023-10-23	o	1	3
777a72f0-4640-4910-8f00-f1b9520b1d9a	2nd Edition	2022-12-27	o	2	4
dc03b1e4-9ff6-4bef-b007-827c66a425c7	2nd Edition	2022-12-31	o	2	5
2b9ed3f8-0edd-4709-ae37-21dab27cdf51	5th Edition	\N	m	3	\N
ccbaf022-7924-493f-aa18-5d32d233bea9	2nd Edition	\N	a	3	\N
3841ff54-c1c7-4411-8c08-0f946c9c1808	2nd Edition	\N	a	4	\N
c538a4c3-777c-4402-ab2f-47a399894e64	1st Edition	\N	m	5	\N
ac292bb7-85c0-46a3-841f-73cb4a3b3f81	2nd Edition	\N	m	7	\N
30bce7d2-bcc2-4f11-b31a-137a4be70c57	4th Edition	2023-01-25	o	7	4
65a1caaf-991c-4059-bd5e-de86510040b6	1st Edition	2023-10-23	o	8	3
c9f7752a-eb5e-48e5-991e-1d1e5a691ffe	1st Edition	2023-01-25	o	8	5
b26c1462-ed79-4cf0-9f62-05bd01c81550	1st Edition	\N	a	9	\N
26f04588-e3bb-4adb-af38-94ffce9ad3c5	1st Edition	2023-07-26	o	10	3
00eaa757-cb1a-4af7-9385-6f4dccfe87b8	2nd Edition	\N	a	10	\N
d8d49321-6bda-44be-bc8f-f89e0efd301f	1st Edition	\N	a	11	\N
cb4a286e-b03d-4d0e-bd20-b17f86e3b94c	1st Edition	\N	a	11	\N
59825d34-8f70-4dde-81bb-bbde45a7fb26	1st Edition	\N	a	12	\N
a77fb301-d3b8-4329-81f7-b3fabce23b19	1st Edition	\N	m	13	\N
22193a88-e3ff-4f22-b2bb-c60215ddf1e7	2nd Edition	\N	a	13	\N
fa4ffedd-501c-482a-950c-66787f024e5c	1st Edition	2023-10-23	o	14	4
1e8cd4a9-ea0d-48c8-b48d-fdfb9d4cb24f	1st Edition	2023-12-31	o	14	5
8f68f702-773e-4d54-9935-e3fad74c479e	1st Edition	\N	a	14	\N
f85fbc00-3e83-4148-bc8b-f57facb2b21a	1st Edition	\N	m	15	\N
8028c76b-7d5e-471a-bde3-213d52306210	4th Edition	\N	a	15	\N
9b0e38b9-cdb3-47be-a62d-afb9b6faff6f	2nd Edition	\N	o	16	2
de343e36-da51-4039-a02c-ddd17235b0d1	1st Edition	\N	a	16	\N
b977d088-6140-4c5a-843b-a7e972167467	1st Edition	\N	a	16	\N
2ddfabc8-bda0-4e52-91c6-573ea6c80244	2nd Edition	\N	a	17	\N
963cea8e-cc06-427c-92db-7d2ed52f9b6f	2nd Edition	\N	a	17	\N
d046ae04-ad89-4ce6-9ea6-076c35b62b98	2nd Edition	\N	a	18	\N
042a2ac6-143e-4bb6-beba-8f43f523d7bd	3rd Edition	\N	a	18	\N
ec988610-359e-4ebf-9a7f-72192fe2cb6e	1st Edition	2022-12-25	o	1	6
d14a5527-d6c6-49a7-b58f-3c3a61f4a59e	1st Edition	2022-12-25	o	9	6
b514db11-e7ff-4307-b8eb-b24b3108ccae	3rd Edition	2022-12-25	o	2	6
7bf81d6e-d65c-46ad-bf12-4dec194ddcb2	2nd Edition	2022-12-25	o	5	6
2bb0beca-7c15-4e22-8020-408d07c958b5	1st Edition	2022-12-25	o	5	1
8c1dc247-f5f0-4499-91ef-970f1ccfc042	2nd Edition	2022-12-25	o	18	1
38cb4bef-d3ba-4f70-85b3-df8b297f8625	1st Edition	2022-12-25	o	8	1
\.


--
-- Data for Name: catalog_comment; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_comment (id, name, body, date_added, post_id) FROM stdin;
1	mima	Great book, 10/10 would read again!	2022-12-04 16:10:39.049928+00	5
2	mima	One of my favorite books. Definitely recommend if you like the fantasy genre.	2022-12-04 16:11:00.192388+00	2
3	mima	I read this book after having watched the movie. The book is even better and I recommend it to anyone who loves a historical drama. 10/10	2022-12-06 21:07:01.921803+00	7
\.


--
-- Data for Name: catalog_genre; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_genre (id, name) FROM stdin;
1	Fiction
2	Crime
3	Fantasy
4	Novel
5	Business & Money
6	Science Fiction
\.


--
-- Data for Name: catalog_language; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_language (id, name) FROM stdin;
2	English
3	French
4	Spanish
\.


--
-- Data for Name: catalog_libraryuser; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.catalog_libraryuser (id, is_borrowing, user_id) FROM stdin;
1	t	1
2	t	2
3	t	3
4	t	4
5	t	5
6	t	6
7	t	7
\.


--
-- Data for Name: contact_contact; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.contact_contact (id, first_name, last_name, email, message) FROM stdin;
1	Jane	Doe	janedoe12@gmail.com	Hello! I was wondering if you had a 1st edition copy of Dracula available for borrowing? Please let me know, thank you!
2	John	Doe	janedoe12@gmail.com	Hello! I was wondering if you had a 1st edition copy of Dracula available for borrowing? Please let me know, thank you!
3	Beth	Smith	janedoe12@gmail.com	Hello! I was wondering if you had a 1st edition copy of Dracula available for borrowing? Please let me know, thank you!
4	Jack	Smith	janedoe12@gmail.com	Hello! I was wondering if you had a 1st edition copy of Dracula available for borrowing? Please let me know, thank you!
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2022-12-04 15:36:47.844046+00	1	Coelho, Paulo	1	[{"added": {}}]	7	1
2	2022-12-04 15:37:13.290229+00	2	Dashner, James	1	[{"added": {}}]	7	1
3	2022-12-04 15:37:38.455228+00	3	de Cervantes, Miguel	1	[{"added": {}}]	7	1
4	2022-12-04 15:38:10.730512+00	4	de Saint-Exupéry, Antoine	1	[{"added": {}}]	7	1
5	2022-12-04 15:38:41.911217+00	5	Flynn, Gillian	1	[{"added": {}}]	7	1
6	2022-12-04 15:39:02.9259+00	6	Hugo, Victor	1	[{"added": {}}]	7	1
7	2022-12-04 15:39:25.471658+00	7	Karpyshyn, Drew	1	[{"added": {}}]	7	1
8	2022-12-04 15:39:45.215881+00	8	King, Stephen	1	[{"added": {}}]	7	1
9	2022-12-04 15:40:11.361712+00	9	Lewis, Michael	1	[{"added": {}}]	7	1
10	2022-12-04 15:40:47.271858+00	10	Tolkein, J. R. R.	1	[{"added": {}}]	7	1
11	2022-12-04 15:41:11.385629+00	11	Williams, Sean	1	[{"added": {}}]	7	1
12	2022-12-04 15:42:29.560706+00	1	Fiction	1	[{"added": {}}]	9	1
13	2022-12-04 15:42:32.07844+00	1	Crime	1	[{"added": {}}]	10	1
14	2022-12-04 15:42:37.667829+00	1	Crime	3		10	1
15	2022-12-04 15:42:40.223063+00	2	Crime	1	[{"added": {}}]	9	1
16	2022-12-04 15:42:43.265232+00	2	English	1	[{"added": {}}]	10	1
17	2022-12-04 15:43:13.96502+00	2	librarian	1	[{"added": {}}]	4	1
18	2022-12-04 15:43:24.967076+00	3	guest1	1	[{"added": {}}]	4	1
19	2022-12-04 15:43:33.034767+00	4	guest2	1	[{"added": {}}]	4	1
20	2022-12-04 15:43:41.324173+00	5	guest3	1	[{"added": {}}]	4	1
21	2022-12-04 15:43:51.924015+00	2	librarian	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
22	2022-12-04 15:44:46.825778+00	3	Fantasy	1	[{"added": {}}]	9	1
23	2022-12-04 15:44:52.902681+00	4	Novel	1	[{"added": {}}]	9	1
24	2022-12-04 15:45:03.399224+00	5	Business & Money	1	[{"added": {}}]	9	1
25	2022-12-04 15:45:17.025438+00	6	Science Fiction	1	[{"added": {}}]	9	1
26	2022-12-04 15:45:22.051501+00	3	French	1	[{"added": {}}]	10	1
27	2022-12-04 15:45:25.359092+00	4	Spanish	1	[{"added": {}}]	10	1
28	2022-12-04 15:46:22.99577+00	12	Maguire, Gregory	1	[{"added": {}}]	7	1
29	2022-12-04 15:47:12.698061+00	13	Gaiman, Neil	1	[{"added": {}}]	7	1
30	2022-12-04 15:48:40.986784+00	1	A Lion Among Men	1	[{"added": {}}, {"added": {"name": "book instance", "object": "d07b9526-5df7-46a6-a161-341774980f22 (A Lion Among Men)"}}, {"added": {"name": "book instance", "object": "ec988610-359e-4ebf-9a7f-72192fe2cb6e (A Lion Among Men)"}}]	8	1
31	2022-12-04 15:49:50.622736+00	2	American Gods	1	[{"added": {}}, {"added": {"name": "book instance", "object": "777a72f0-4640-4910-8f00-f1b9520b1d9a (American Gods)"}}, {"added": {"name": "book instance", "object": "dc03b1e4-9ff6-4bef-b007-827c66a425c7 (American Gods)"}}, {"added": {"name": "book instance", "object": "b514db11-e7ff-4307-b8eb-b24b3108ccae (American Gods)"}}]	8	1
32	2022-12-04 15:50:36.33748+00	3	Billy Summers	1	[{"added": {}}, {"added": {"name": "book instance", "object": "2b9ed3f8-0edd-4709-ae37-21dab27cdf51 (Billy Summers)"}}, {"added": {"name": "book instance", "object": "ccbaf022-7924-493f-aa18-5d32d233bea9 (Billy Summers)"}}]	8	1
33	2022-12-04 15:53:44.257692+00	4	Don Quixote	1	[{"added": {}}, {"added": {"name": "book instance", "object": "3841ff54-c1c7-4411-8c08-0f946c9c1808 (Don Quixote)"}}]	8	1
34	2022-12-04 15:55:17.229616+00	5	Gone Girl	1	[{"added": {}}, {"added": {"name": "book instance", "object": "c538a4c3-777c-4402-ab2f-47a399894e64 (Gone Girl)"}}, {"added": {"name": "book instance", "object": "7bf81d6e-d65c-46ad-bf12-4dec194ddcb2 (Gone Girl)"}}, {"added": {"name": "book instance", "object": "2bb0beca-7c15-4e22-8020-408d07c958b5 (Gone Girl)"}}]	8	1
35	2022-12-04 15:55:42.961645+00	6	Le Petit Prince	1	[{"added": {}}]	8	1
36	2022-12-04 15:56:53.744062+00	7	Les Misérables	1	[{"added": {}}, {"added": {"name": "book instance", "object": "ac292bb7-85c0-46a3-841f-73cb4a3b3f81 (Les Mis\\u00e9rables)"}}, {"added": {"name": "book instance", "object": "30bce7d2-bcc2-4f11-b31a-137a4be70c57 (Les Mis\\u00e9rables)"}}]	8	1
37	2022-12-04 15:57:36.11085+00	8	Moneyball: The Art of Winning an Unfair Game	1	[{"added": {}}, {"added": {"name": "book instance", "object": "65a1caaf-991c-4059-bd5e-de86510040b6 (Moneyball: The Art of Winning an Unfair Game)"}}, {"added": {"name": "book instance", "object": "c9f7752a-eb5e-48e5-991e-1d1e5a691ffe (Moneyball: The Art of Winning an Unfair Game)"}}, {"added": {"name": "book instance", "object": "38cb4bef-d3ba-4f70-85b3-df8b297f8625 (Moneyball: The Art of Winning an Unfair Game)"}}]	8	1
38	2022-12-04 15:58:14.993443+00	9	Star Wars: Darth Bane: Path of Destruction	1	[{"added": {}}, {"added": {"name": "book instance", "object": "d14a5527-d6c6-49a7-b58f-3c3a61f4a59e (Star Wars: Darth Bane: Path of Destruction)"}}, {"added": {"name": "book instance", "object": "b26c1462-ed79-4cf0-9f62-05bd01c81550 (Star Wars: Darth Bane: Path of Destruction)"}}]	8	1
39	2022-12-04 15:59:19.335175+00	10	Star Wars: Darth Bane: Rule of Two	1	[{"added": {}}, {"added": {"name": "book instance", "object": "26f04588-e3bb-4adb-af38-94ffce9ad3c5 (Star Wars: Darth Bane: Rule of Two)"}}, {"added": {"name": "book instance", "object": "00eaa757-cb1a-4af7-9385-6f4dccfe87b8 (Star Wars: Darth Bane: Rule of Two)"}}]	8	1
40	2022-12-04 15:59:53.832218+00	11	Star Wars: The Old Republic: Annihilation	1	[{"added": {}}, {"added": {"name": "book instance", "object": "d8d49321-6bda-44be-bc8f-f89e0efd301f (Star Wars: The Old Republic: Annihilation)"}}, {"added": {"name": "book instance", "object": "cb4a286e-b03d-4d0e-bd20-b17f86e3b94c (Star Wars: The Old Republic: Annihilation)"}}]	8	1
41	2022-12-04 16:00:25.359305+00	12	Star Wars: The Old Republic: Fatal Alliance	1	[{"added": {}}, {"added": {"name": "book instance", "object": "59825d34-8f70-4dde-81bb-bbde45a7fb26 (Star Wars: The Old Republic: Fatal Alliance)"}}]	8	1
42	2022-12-04 16:01:14.757336+00	13	The Alchemist	1	[{"added": {}}, {"added": {"name": "book instance", "object": "a77fb301-d3b8-4329-81f7-b3fabce23b19 (The Alchemist)"}}, {"added": {"name": "book instance", "object": "22193a88-e3ff-4f22-b2bb-c60215ddf1e7 (The Alchemist)"}}]	8	1
43	2022-12-04 16:02:00.246489+00	14	The Big Short: Inside the Doomsday Machine	1	[{"added": {}}, {"added": {"name": "book instance", "object": "fa4ffedd-501c-482a-950c-66787f024e5c (The Big Short: Inside the Doomsday Machine)"}}, {"added": {"name": "book instance", "object": "1e8cd4a9-ea0d-48c8-b48d-fdfb9d4cb24f (The Big Short: Inside the Doomsday Machine)"}}, {"added": {"name": "book instance", "object": "8f68f702-773e-4d54-9935-e3fad74c479e (The Big Short: Inside the Doomsday Machine)"}}]	8	1
44	2022-12-04 16:02:40.052131+00	15	The Fellowship of the Ring	1	[{"added": {}}, {"added": {"name": "book instance", "object": "f85fbc00-3e83-4148-bc8b-f57facb2b21a (The Fellowship of the Ring)"}}, {"added": {"name": "book instance", "object": "8028c76b-7d5e-471a-bde3-213d52306210 (The Fellowship of the Ring)"}}]	8	1
45	2022-12-04 16:03:35.425986+00	16	The Maze Runner	1	[{"added": {}}, {"added": {"name": "book instance", "object": "9b0e38b9-cdb3-47be-a62d-afb9b6faff6f (The Maze Runner)"}}, {"added": {"name": "book instance", "object": "de343e36-da51-4039-a02c-ddd17235b0d1 (The Maze Runner)"}}, {"added": {"name": "book instance", "object": "b977d088-6140-4c5a-843b-a7e972167467 (The Maze Runner)"}}]	8	1
46	2022-12-04 16:04:11.935627+00	17	The Return of the King	1	[{"added": {}}, {"added": {"name": "book instance", "object": "2ddfabc8-bda0-4e52-91c6-573ea6c80244 (The Return of the King)"}}, {"added": {"name": "book instance", "object": "963cea8e-cc06-427c-92db-7d2ed52f9b6f (The Return of the King)"}}]	8	1
47	2022-12-04 16:04:53.178552+00	18	The Two Towers	1	[{"added": {}}, {"added": {"name": "book instance", "object": "8c1dc247-f5f0-4499-91ef-970f1ccfc042 (The Two Towers)"}}, {"added": {"name": "book instance", "object": "d046ae04-ad89-4ce6-9ea6-076c35b62b98 (The Two Towers)"}}, {"added": {"name": "book instance", "object": "042a2ac6-143e-4bb6-beba-8f43f523d7bd (The Two Towers)"}}]	8	1
48	2022-12-04 16:05:22.63005+00	19	Wicked	1	[{"added": {}}]	8	1
49	2022-12-04 16:06:02.90719+00	1	Event object (1)	1	[{"added": {}}]	15	1
50	2022-12-04 16:06:28.207911+00	2	Event object (2)	1	[{"added": {}}]	15	1
51	2022-12-04 16:07:29.969057+00	2	Event object (2)	2	[{"changed": {"fields": ["Event description", "Event starting time", "Event ending time"]}}]	15	1
52	2022-12-04 16:07:51.593974+00	3	Event object (3)	1	[{"added": {}}]	15	1
53	2022-12-04 16:08:08.676761+00	4	Event object (4)	1	[{"added": {}}]	15	1
54	2022-12-04 16:08:21.956645+00	5	Event object (5)	1	[{"added": {}}]	15	1
55	2022-12-04 16:08:45.413126+00	6	Event object (6)	1	[{"added": {}}]	15	1
56	2022-12-04 16:09:05.883018+00	7	Event object (7)	1	[{"added": {}}]	15	1
57	2022-12-06 13:57:38.915691+00	8	test	1	[{"added": {}}]	4	1
58	2022-12-06 14:15:07.843764+00	8	test	2	[]	4	1
59	2022-12-06 14:51:56.058769+00	8	test	3		4	1
60	2022-12-06 19:29:42.492573+00	1	Librarian	1	[{"added": {}}]	3	1
61	2022-12-06 19:30:19.993422+00	2	Admin	1	[{"added": {}}]	3	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	catalog	author
8	catalog	book
9	catalog	genre
10	catalog	language
11	catalog	bookinstance
12	catalog	comment
13	catalog	libraryuser
14	contact	contact
15	events	event
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-12-04 15:33:51.064103+00
2	auth	0001_initial	2022-12-04 15:33:51.57094+00
3	admin	0001_initial	2022-12-04 15:33:51.650444+00
4	admin	0002_logentry_remove_auto_add	2022-12-04 15:33:51.660307+00
5	admin	0003_logentry_add_action_flag_choices	2022-12-04 15:33:51.67124+00
6	contenttypes	0002_remove_content_type_name	2022-12-04 15:33:51.690917+00
7	auth	0002_alter_permission_name_max_length	2022-12-04 15:33:51.701558+00
8	auth	0003_alter_user_email_max_length	2022-12-04 15:33:51.711935+00
9	auth	0004_alter_user_username_opts	2022-12-04 15:33:51.72181+00
10	auth	0005_alter_user_last_login_null	2022-12-04 15:33:51.734566+00
11	auth	0006_require_contenttypes_0002	2022-12-04 15:33:51.740224+00
12	auth	0007_alter_validators_add_error_messages	2022-12-04 15:33:51.753343+00
13	auth	0008_alter_user_username_max_length	2022-12-04 15:33:51.783646+00
14	auth	0009_alter_user_last_name_max_length	2022-12-04 15:33:51.7969+00
15	auth	0010_alter_group_name_max_length	2022-12-04 15:33:51.812662+00
16	auth	0011_update_proxy_permissions	2022-12-04 15:33:51.823788+00
17	auth	0012_alter_user_first_name_max_length	2022-12-04 15:33:51.837417+00
18	catalog	0001_initial	2022-12-04 15:33:52.196166+00
19	catalog	0002_author_biography_author_image_book_image_comment	2022-12-04 15:33:52.305816+00
20	catalog	0003_libraryuser_alter_bookinstance_borrower	2022-12-04 15:33:52.468649+00
21	contact	0001_initial	2022-12-04 15:33:52.568692+00
22	events	0001_initial	2022-12-04 15:33:52.66886+00
23	events	0002_alter_event_options	2022-12-04 15:33:52.676223+00
24	events	0003_event_name	2022-12-04 15:33:52.685322+00
25	sessions	0001_initial	2022-12-04 15:33:52.875125+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
bygc85j8he1kipt37v74mg6zvr6r2an4	.eJxVjDsOgzAQBe-ydWThtb0GyvScwfJnCc7HSBjSRLl7gkRD-d6M5gNle7l3rnmt0NsLOL-tk9sqLy4n6IHg9AUfH1x2kO6-3GYR57IuOYhdEQetYpgTP6-HewpMvk57tiOrUjCxVQ3aJlrJ3PGI3hjdGbSMRKQbaVlhm5T_L5RMYSQOqKWC7w9k7Dv0:1p1zJ8:X0803Dn4V1zX9lm1eEeCJE7dw8-l6fkMNf_bsYOJMIU	2022-12-19 00:26:06.919414+00
2hs2j7hatrejkf3rscrzi71ar6fjna0o	eyJudW1fdmlzaXRzIjoyfQ:1p2AuL:2qRrqKLGrIyG0MXzOPfutcyPiALoF02ZpVUJnXUlluo	2022-12-19 12:49:17.636357+00
b0rkabs1ulptbz0657d91fyp571b98cx	.eJxVjMsOgyAQRf-FdUMYEAWX3fcbyAyMlT4wEe2m6b9XExft9p5zz1sEXJcxrJXnkJPoBYjT70YY71x2kG5YrpOMU1nmTHJX5EGrvEyJH-fD_QuMWMftjRS5cdwM2htvFTeEznRgjYaotNPgBwOE3iZowSrLnWJLYKL27KKiLVrWZ3jlmpcq-vbzBTSmPGA:1p2uCj:nYNK5Nxa4NDlfLglhrfQro6e1hiDhZy1nwE4lCTpq7c	2022-12-21 13:11:17.728996+00
mmf21fd0x2r3ixpuljzveqh9urga51tq	eyJudW1fdmlzaXRzIjo2fQ:1p1xvU:ucXCULOuNbPK8Zdde76kLEboa740EwoqVlzrJxQfZH0	2022-12-18 22:57:36.261075+00
0voywzkwmk7od4xy3c5fhovydxakl596	.eJxVjDsOwyAQBe-ydYTC37hMnzMgloWYfEAydpood08suXH7ZuZ9oK4v_y69LB1GyU_gw7pMfu1p9oVgBAuHDUN8pLoBuod6ayy2uswF2aawnXZ2bZSel909HEyhT_9aaklcpsCdiRkHrjXnNFg0Iis3RBIxGEKNQp055uSMpmyVsM6qYFJC-P4ArA89cA:1p1zFF:LEjU9Mj7jEzKWnpuz8vZn1ZzGtcD3cCH_tTLzrh0yNw	2022-12-19 00:22:05.894657+00
k6rtlb4v60pdiociw0xmv22s523zp8wb	eyJudW1fdmlzaXRzIjo0MX0:1p33t2:h0gyPOsgqMGrLeSdZoDAG_G1QBsVkbXxqDLdHT_Kauo	2022-12-21 23:31:36.283915+00
\.


--
-- Data for Name: events_event; Type: TABLE DATA; Schema: public; Owner: lvidsydxariqwl
--

COPY public.events_event (id, day, description, start_time, end_time, name) FROM stdin;
1	2022-12-19	This workshop will give you the tools you need to get started and advance your research papers and projects. From identifying your research needs to producing a bibliography and everything in between, this workshop will help you take your skills to the next level.	10:00:00	11:30:00	Research Skills for Students
2	2022-12-15	Feeling stressed out and looking to unwind? Join our film screening of the 1999 classic The Mummy starring Brendan Fraser, Rachel Weisz, and John Hannah. \r\nThis movie night will be the culmination of our Student Nights Against Procrastination event and will include free popcorn and drinks.\r\n\r\nMovie Description:\r\n\r\nAt an archaeological dig in the ancient city of Hamunaptra, an American serving in the French Foreign Legion accidentally awakens a mummy who begins to wreak havoc as he searches for the reincarnation of his long-lost love.	18:30:00	20:30:00	Film Screening - The Mummy (1999)
3	2022-12-27	You are invited to learn, teach and share your fibre art every Tuesday afternoon from 3pm through 5:45pm. You can come in person to the Technology Sandbox or join us remotely by Zoom. Drop in at your convenience whether you have a project or not. Ariana, a fibre enthusiast and Technology Sandbox Technician, can help get you started knitting or crocheting. When you are ready to take your fibre art to the next level, we can help you integrate it with some of the wearable technology offered by the Sandbox. No experience required - no registration required.	15:00:00	17:45:00	Fibre Arts Technology Club
4	2022-12-20	You are invited to learn, teach and share your fibre art every Tuesday afternoon from 3pm through 5:45pm. You can come in person to the Technology Sandbox or join us remotely by Zoom. Drop in at your convenience whether you have a project or not. Ariana, a fibre enthusiast and Technology Sandbox Technician, can help get you started knitting or crocheting. When you are ready to take your fibre art to the next level, we can help you integrate it with some of the wearable technology offered by the Sandbox. No experience required - no registration required.	15:00:00	17:45:00	Fibre Arts Technology Club
5	2022-12-13	You are invited to learn, teach and share your fibre art every Tuesday afternoon from 3pm through 5:45pm. You can come in person to the Technology Sandbox or join us remotely by Zoom. Drop in at your convenience whether you have a project or not. Ariana, a fibre enthusiast and Technology Sandbox Technician, can help get you started knitting or crocheting. When you are ready to take your fibre art to the next level, we can help you integrate it with some of the wearable technology offered by the Sandbox. No experience required - no registration required.	15:00:00	17:45:00	Fibre Arts Technology Club
6	2022-12-06	You are invited to learn, teach and share your fibre art every Tuesday afternoon from 3pm through 5:45pm. You can come in person to the Technology Sandbox or join us remotely by Zoom. Drop in at your convenience whether you have a project or not. Ariana, a fibre enthusiast and Technology Sandbox Technician, can help get you started knitting or crocheting. When you are ready to take your fibre art to the next level, we can help you integrate it with some of the wearable technology offered by the Sandbox. No experience required - no registration required.	15:00:00	17:45:00	Fibre Arts Technology Club
7	2022-12-09	Join us virtually at our 1st Annual Library Christmas Auction for an evening of fun. Bid on handmade knits, original crafted jewelry, items from local businesses, prepared sauces, and cookies. Something for everyone!\r\n\r\nWe have raised over $123,500 to support Library Staff and other charitable organizations.	19:00:00	21:00:00	1st Annual Library Christmas Auction
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 106, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 61, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: catalog_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.catalog_author_id_seq', 13, true);


--
-- Name: catalog_book_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.catalog_book_genre_id_seq', 20, true);


--
-- Name: catalog_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.catalog_book_id_seq', 19, true);


--
-- Name: catalog_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.catalog_comment_id_seq', 3, true);


--
-- Name: catalog_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.catalog_genre_id_seq', 6, true);


--
-- Name: catalog_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.catalog_language_id_seq', 4, true);


--
-- Name: catalog_libraryuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.catalog_libraryuser_id_seq', 8, true);


--
-- Name: contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.contact_contact_id_seq', 4, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 61, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);


--
-- Name: events_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lvidsydxariqwl
--

SELECT pg_catalog.setval('public.events_event_id_seq', 7, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_author catalog_author_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_author
    ADD CONSTRAINT catalog_author_pkey PRIMARY KEY (id);


--
-- Name: catalog_book_genre catalog_book_genre_book_id_genre_id_d15f6922_uniq; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT catalog_book_genre_book_id_genre_id_d15f6922_uniq UNIQUE (book_id, genre_id);


--
-- Name: catalog_book_genre catalog_book_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT catalog_book_genre_pkey PRIMARY KEY (id);


--
-- Name: catalog_book catalog_book_isbn_key; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT catalog_book_isbn_key UNIQUE (isbn);


--
-- Name: catalog_book catalog_book_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT catalog_book_pkey PRIMARY KEY (id);


--
-- Name: catalog_bookinstance catalog_bookinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_bookinstance
    ADD CONSTRAINT catalog_bookinstance_pkey PRIMARY KEY (id);


--
-- Name: catalog_comment catalog_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_comment
    ADD CONSTRAINT catalog_comment_pkey PRIMARY KEY (id);


--
-- Name: catalog_genre catalog_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_genre
    ADD CONSTRAINT catalog_genre_pkey PRIMARY KEY (id);


--
-- Name: catalog_language catalog_language_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_language
    ADD CONSTRAINT catalog_language_pkey PRIMARY KEY (id);


--
-- Name: catalog_libraryuser catalog_libraryuser_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_libraryuser
    ADD CONSTRAINT catalog_libraryuser_pkey PRIMARY KEY (id);


--
-- Name: catalog_libraryuser catalog_libraryuser_user_id_key; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_libraryuser
    ADD CONSTRAINT catalog_libraryuser_user_id_key UNIQUE (user_id);


--
-- Name: contact_contact contact_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.contact_contact
    ADD CONSTRAINT contact_contact_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: events_event events_event_pkey; Type: CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.events_event
    ADD CONSTRAINT events_event_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_book_author_id_b0849980; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_book_author_id_b0849980 ON public.catalog_book USING btree (author_id);


--
-- Name: catalog_book_genre_book_id_e5a77c43; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_book_genre_book_id_e5a77c43 ON public.catalog_book_genre USING btree (book_id);


--
-- Name: catalog_book_genre_genre_id_77d7ffde; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_book_genre_genre_id_77d7ffde ON public.catalog_book_genre USING btree (genre_id);


--
-- Name: catalog_book_isbn_30805834_like; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_book_isbn_30805834_like ON public.catalog_book USING btree (isbn varchar_pattern_ops);


--
-- Name: catalog_book_language_id_447f859e; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_book_language_id_447f859e ON public.catalog_book USING btree (language_id);


--
-- Name: catalog_bookinstance_book_id_69f93415; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_bookinstance_book_id_69f93415 ON public.catalog_bookinstance USING btree (book_id);


--
-- Name: catalog_bookinstance_borrower_id_0d71c37c; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_bookinstance_borrower_id_0d71c37c ON public.catalog_bookinstance USING btree (borrower_id);


--
-- Name: catalog_comment_post_id_71db4e9e; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX catalog_comment_post_id_71db4e9e ON public.catalog_comment USING btree (post_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: lvidsydxariqwl
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_book catalog_book_author_id_b0849980_fk_catalog_author_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT catalog_book_author_id_b0849980_fk_catalog_author_id FOREIGN KEY (author_id) REFERENCES public.catalog_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_book_genre catalog_book_genre_book_id_e5a77c43_fk_catalog_book_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT catalog_book_genre_book_id_e5a77c43_fk_catalog_book_id FOREIGN KEY (book_id) REFERENCES public.catalog_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_book_genre catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book_genre
    ADD CONSTRAINT catalog_book_genre_genre_id_77d7ffde_fk_catalog_genre_id FOREIGN KEY (genre_id) REFERENCES public.catalog_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_book catalog_book_language_id_447f859e_fk_catalog_language_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_book
    ADD CONSTRAINT catalog_book_language_id_447f859e_fk_catalog_language_id FOREIGN KEY (language_id) REFERENCES public.catalog_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_bookinstance catalog_bookinstance_book_id_69f93415_fk_catalog_book_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_bookinstance
    ADD CONSTRAINT catalog_bookinstance_book_id_69f93415_fk_catalog_book_id FOREIGN KEY (book_id) REFERENCES public.catalog_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_bookinstance catalog_bookinstance_borrower_id_0d71c37c_fk_catalog_l; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_bookinstance
    ADD CONSTRAINT catalog_bookinstance_borrower_id_0d71c37c_fk_catalog_l FOREIGN KEY (borrower_id) REFERENCES public.catalog_libraryuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_comment catalog_comment_post_id_71db4e9e_fk_catalog_book_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_comment
    ADD CONSTRAINT catalog_comment_post_id_71db4e9e_fk_catalog_book_id FOREIGN KEY (post_id) REFERENCES public.catalog_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_libraryuser catalog_libraryuser_user_id_4159f648_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.catalog_libraryuser
    ADD CONSTRAINT catalog_libraryuser_user_id_4159f648_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: lvidsydxariqwl
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA heroku_ext; Type: ACL; Schema: -; Owner: uajcalaqgs3b9a
--

GRANT USAGE ON SCHEMA heroku_ext TO lvidsydxariqwl WITH GRANT OPTION;


--
-- Name: LANGUAGE plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO lvidsydxariqwl;


--
-- PostgreSQL database dump complete
--

