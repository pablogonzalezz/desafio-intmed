--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4
-- Dumped by pg_dump version 12.4

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
-- Name: agendas_agenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agendas_agenda (
    id integer NOT NULL,
    dia date NOT NULL,
    medico_id integer NOT NULL
);


ALTER TABLE public.agendas_agenda OWNER TO postgres;

--
-- Name: agendas_agenda_horarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agendas_agenda_horarios (
    id integer NOT NULL,
    agenda_id integer NOT NULL,
    horarios_id integer NOT NULL
);


ALTER TABLE public.agendas_agenda_horarios OWNER TO postgres;

--
-- Name: agendas_agenda_horarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agendas_agenda_horarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agendas_agenda_horarios_id_seq OWNER TO postgres;

--
-- Name: agendas_agenda_horarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agendas_agenda_horarios_id_seq OWNED BY public.agendas_agenda_horarios.id;


--
-- Name: agendas_agenda_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agendas_agenda_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agendas_agenda_id_seq OWNER TO postgres;

--
-- Name: agendas_agenda_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agendas_agenda_id_seq OWNED BY public.agendas_agenda.id;


--
-- Name: agendas_agendahorario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agendas_agendahorario (
    id integer NOT NULL,
    preenchido boolean NOT NULL,
    agenda_id integer NOT NULL,
    horario_id integer NOT NULL
);


ALTER TABLE public.agendas_agendahorario OWNER TO postgres;

--
-- Name: agendas_agendahorario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agendas_agendahorario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agendas_agendahorario_id_seq OWNER TO postgres;

--
-- Name: agendas_agendahorario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agendas_agendahorario_id_seq OWNED BY public.agendas_agendahorario.id;


--
-- Name: agendas_horarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.agendas_horarios (
    id integer NOT NULL,
    horario time without time zone NOT NULL,
    preenchido boolean NOT NULL
);


ALTER TABLE public.agendas_horarios OWNER TO postgres;

--
-- Name: agendas_horarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.agendas_horarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agendas_horarios_id_seq OWNER TO postgres;

--
-- Name: agendas_horarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.agendas_horarios_id_seq OWNED BY public.agendas_horarios.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


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


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO postgres;

--
-- Name: consultas_consulta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.consultas_consulta (
    id integer NOT NULL,
    data_agendamento timestamp with time zone NOT NULL,
    medico_id integer NOT NULL,
    user_id integer,
    agenda_id integer,
    dia date,
    horario time without time zone
);


ALTER TABLE public.consultas_consulta OWNER TO postgres;

--
-- Name: consultas_consulta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.consultas_consulta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consultas_consulta_id_seq OWNER TO postgres;

--
-- Name: consultas_consulta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.consultas_consulta_id_seq OWNED BY public.consultas_consulta.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: especialidades_especialidade; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.especialidades_especialidade (
    id integer NOT NULL,
    nome character varying(60) NOT NULL
);


ALTER TABLE public.especialidades_especialidade OWNER TO postgres;

--
-- Name: especialidades_especialidade_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.especialidades_especialidade_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.especialidades_especialidade_id_seq OWNER TO postgres;

--
-- Name: especialidades_especialidade_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.especialidades_especialidade_id_seq OWNED BY public.especialidades_especialidade.id;


--
-- Name: medicos_medico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.medicos_medico (
    id integer NOT NULL,
    nome character varying(60) NOT NULL,
    especialidade_id integer NOT NULL,
    crm integer NOT NULL,
    email character varying(60),
    telefone character varying(11)
);


ALTER TABLE public.medicos_medico OWNER TO postgres;

--
-- Name: medicos_medico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.medicos_medico_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.medicos_medico_id_seq OWNER TO postgres;

--
-- Name: medicos_medico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.medicos_medico_id_seq OWNED BY public.medicos_medico.id;


--
-- Name: agendas_agenda id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda ALTER COLUMN id SET DEFAULT nextval('public.agendas_agenda_id_seq'::regclass);


--
-- Name: agendas_agenda_horarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda_horarios ALTER COLUMN id SET DEFAULT nextval('public.agendas_agenda_horarios_id_seq'::regclass);


--
-- Name: agendas_agendahorario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agendahorario ALTER COLUMN id SET DEFAULT nextval('public.agendas_agendahorario_id_seq'::regclass);


--
-- Name: agendas_horarios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_horarios ALTER COLUMN id SET DEFAULT nextval('public.agendas_horarios_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: consultas_consulta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas_consulta ALTER COLUMN id SET DEFAULT nextval('public.consultas_consulta_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: especialidades_especialidade id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidades_especialidade ALTER COLUMN id SET DEFAULT nextval('public.especialidades_especialidade_id_seq'::regclass);


--
-- Name: medicos_medico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicos_medico ALTER COLUMN id SET DEFAULT nextval('public.medicos_medico_id_seq'::regclass);


--
-- Data for Name: agendas_agenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas_agenda (id, dia, medico_id) FROM stdin;
4	2020-10-03	6
5	2020-10-03	3
6	2020-10-03	4
7	2020-10-03	5
8	2020-10-04	6
11	2020-10-01	4
12	2020-09-16	6
13	2020-10-05	6
15	2020-10-29	6
\.


--
-- Data for Name: agendas_agenda_horarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas_agenda_horarios (id, agenda_id, horarios_id) FROM stdin;
\.


--
-- Data for Name: agendas_agendahorario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas_agendahorario (id, preenchido, agenda_id, horario_id) FROM stdin;
1	f	15	41
4	f	15	45
7	f	15	40
5	f	15	21
3	t	15	43
9	t	15	11
2	f	15	42
6	t	15	47
8	t	15	19
\.


--
-- Data for Name: agendas_horarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.agendas_horarios (id, horario, preenchido) FROM stdin;
1	00:00:00	f
2	00:30:00	f
3	01:00:00	f
4	01:30:00	f
5	02:00:00	f
6	02:30:00	f
7	03:00:00	f
8	03:30:00	f
9	04:00:00	f
10	04:30:00	f
11	05:00:00	f
12	05:30:00	f
13	06:00:00	f
14	06:30:00	f
15	07:00:00	f
16	07:30:00	f
17	08:00:00	f
18	08:30:00	f
19	09:00:00	f
20	09:30:00	f
21	10:00:00	f
22	10:30:00	f
23	11:00:00	f
24	11:30:00	f
25	12:00:00	f
26	12:30:00	f
27	13:00:00	f
28	13:30:00	f
29	14:00:00	f
30	14:30:00	f
31	15:00:00	f
32	15:30:00	f
33	16:00:00	f
34	16:30:00	f
35	17:00:00	f
36	17:30:00	f
37	18:00:00	f
38	18:30:00	f
39	19:00:00	f
40	19:30:00	f
41	20:00:00	f
42	20:30:00	f
43	21:00:00	f
44	21:30:00	f
45	22:00:00	f
46	22:30:00	f
47	23:00:00	f
48	23:30:00	f
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add group	4	add_group
6	Can change group	4	change_group
7	Can delete group	4	delete_group
8	Can view group	4	view_group
9	Can add user	2	add_user
10	Can change user	2	change_user
11	Can delete user	2	delete_user
12	Can view user	2	view_user
13	Can add permission	3	add_permission
14	Can change permission	3	change_permission
15	Can delete permission	3	delete_permission
16	Can view permission	3	view_permission
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add especialidade	7	add_especialidade
26	Can change especialidade	7	change_especialidade
27	Can delete especialidade	7	delete_especialidade
28	Can view especialidade	7	view_especialidade
29	Can add medico	8	add_medico
30	Can change medico	8	change_medico
31	Can delete medico	8	delete_medico
32	Can view medico	8	view_medico
33	Can add consulta	9	add_consulta
34	Can change consulta	9	change_consulta
35	Can delete consulta	9	delete_consulta
36	Can view consulta	9	view_consulta
37	Can add agenda	10	add_agenda
38	Can change agenda	10	change_agenda
39	Can delete agenda	10	delete_agenda
40	Can view agenda	10	view_agenda
41	Can add horarios	11	add_horarios
42	Can change horarios	11	change_horarios
43	Can delete horarios	11	delete_horarios
44	Can view horarios	11	view_horarios
45	Can add Token	12	add_token
46	Can change Token	12	change_token
47	Can delete Token	12	delete_token
48	Can view Token	12	view_token
49	Can add token	13	add_tokenproxy
50	Can change token	13	change_tokenproxy
51	Can delete token	13	delete_tokenproxy
52	Can view token	13	view_tokenproxy
53	Can add agenda horario	14	add_agendahorario
54	Can change agenda horario	14	change_agendahorario
55	Can delete agenda horario	14	delete_agendahorario
56	Can view agenda horario	14	view_agendahorario
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
13	pbkdf2_sha256$150000$anlAOxfRZtKq$eQg020afry+VxmQkCB1t/6AoMBV9mngO8eu89+Yh8r8=	2020-10-10 17:53:36.899367-03	f	paula@teste.com	Paula Gonzaga		paula@teste.com	f	t	2020-10-10 17:43:05.53883-03
9	pbkdf2_sha256$150000$9JF48NQDAyCw$CONARn78dn8JJKCLODptUy2eEvIZoAvQPluZwu6cAwY=	2020-10-10 18:46:19.761797-03	f	pablo_teste37@teste.com	Pablo Gonzalez		pablo_teste37@teste.com	f	t	2020-10-09 23:58:12.079696-03
3	pbkdf2_sha256$150000$1HAaKl5OX8ON$ngvRY4AafvVpEqDFGkt2/FnG8h5Us7I/cMZ3ZKunBls=	2020-10-05 12:50:07.911845-03	f	pablo_teste2				f	t	2020-10-05 12:49:09.466704-03
4	pbkdf2_sha256$150000$JOYBECZFZECe$y4iRHEF1bRtrCatVeykuEc4+0MC9q3UixfFdeP184Kk=	\N	f	pablo_teste3				f	t	2020-10-05 12:50:19.550991-03
5	pbkdf2_sha256$150000$vlN2yqzMFZyB$X0GvAsZKkNf355/OyhkJAan/k4PDRnpfvvBLLNG//28=	\N	f	pablo_teste4				f	t	2020-10-05 12:51:03.34182-03
10	pbkdf2_sha256$150000$sBsiuoECy9im$ej88HmMAyaq9laIfUUlHYfGbvZLADPNjOnme9ZUq05Y=	2020-10-10 17:37:06.635424-03	f	pablo_teste38@teste.com	Pablo Gonzalez		pablo_teste38@teste.com	f	t	2020-10-10 16:15:54.148993-03
2	pbkdf2_sha256$150000$AnOI24xNflYM$WRARa6agMJQJgCF5QIohrPrN3WKZ+Q7WYdLWCZsdENw=	2020-10-05 15:26:36.186364-03	f	pablo_teste				f	t	2020-10-05 12:41:20.797564-03
1	pbkdf2_sha256$150000$CSWnqQ8ltFdE$shQAFlfSTFRsA1z+mUuFSAUOOJbhYE4g+sVAi1uDRSw=	2020-10-05 23:28:54.804567-03	t	admin			admin@example.com	t	t	2020-10-02 13:52:02.880469-03
11	pbkdf2_sha256$150000$1aeVWVo5ISBL$PMPjE5qRbt1ysxg+vmVT31cAvduJfKEbtvcEUCoZLw8=	2020-10-10 17:20:43.806259-03	f	antonio_teste@teste.com	Antonio da silva		antonio_teste@teste.com	f	t	2020-10-10 17:20:43.400024-03
12	pbkdf2_sha256$150000$jC0vN8hUO9WH$IHNeQvLVv24apxG+hYx2KmgxwHEQgrYGw3RXBql/HQQ=	2020-10-10 17:21:12.07484-03	f	jose@teste.com	José ferreira		jose@teste.com	f	t	2020-10-10 17:21:11.871585-03
6	pbkdf2_sha256$150000$w6up9NQg0uGU$XnN7QzlwSQ37PNtI8A5M5LM+fHsCyAVfqC/7d2QRN6w=	2020-10-09 00:18:05.038172-03	f	pablo_teste5			pablo.teste@teste.com.br	f	t	2020-10-05 12:51:50.429528-03
7	pbkdf2_sha256$150000$FZBglAanwK0W$vtKI2GO/ap+2qklOe9pPzBgRsTx+V4/wmcckhEYCvDM=	2020-10-09 23:51:40.501623-03	f	pablo_teste34@teste.com	pablo_teste34@teste.com		pablo_teste34@teste.com	f	t	2020-10-09 23:50:48.633222-03
8	pbkdf2_sha256$150000$oZQn8D7S8ypk$Leo4+a4f6rngkYZ3zfy11zyrEEnNcwj8HsQNTqv+UDs=	\N	f	pablo_teste36@teste.com	Pablo Gonzalez			f	t	2020-10-09 23:56:41.758571-03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
168fd9ba954b009cffbc5583dbc41206abe31aec	2020-10-05 15:44:32.621941-03	6
ef0151cb2b9cfe5f1c6de4c938370c9bc7766654	2020-10-09 23:58:49.36708-03	9
1004a494d769259dab26585e350e5ff3f7604406	2020-10-10 16:16:06.410782-03	10
85c30c47cf315612376b91b6e7b11ebdc8e055a7	2020-10-10 17:43:14.518798-03	13
\.


--
-- Data for Name: consultas_consulta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.consultas_consulta (id, data_agendamento, medico_id, user_id, agenda_id, dia, horario) FROM stdin;
6	2020-10-05 14:27:55.62542-03	6	\N	\N	\N	\N
7	2020-10-05 14:28:55.279367-03	6	1	\N	\N	\N
8	2020-10-05 15:16:59.478303-03	6	1	\N	\N	\N
9	2020-10-06 00:17:34.989052-03	6	1	15	2020-10-06	22:00:00
10	2020-10-06 00:18:05.40423-03	6	1	15	2020-10-06	22:00:00
11	2020-10-06 00:19:51.363839-03	6	1	15	2020-10-06	20:00:00
12	2020-10-06 00:20:21.63273-03	6	1	15	2020-10-06	20:00:00
13	2020-10-06 00:20:50.303451-03	6	1	15	2020-10-06	20:00:00
14	2020-10-06 00:22:36.567477-03	6	1	15	2020-10-06	20:00:00
15	2020-10-06 00:24:18.148254-03	6	1	15	2020-10-06	20:00:00
16	2020-10-06 00:25:05.329538-03	6	1	15	2020-10-06	20:00:00
17	2020-10-06 00:35:19.900986-03	6	1	15	2020-10-06	21:00:00
18	2020-10-06 00:36:01.831024-03	6	1	15	2020-10-06	21:00:00
19	2020-10-06 00:38:11.493786-03	6	1	15	2020-10-06	21:00:00
20	2020-10-06 14:22:25.358735-03	6	1	15	2020-10-06	21:00:00
21	2020-10-06 14:23:18.539576-03	6	1	15	2020-10-06	21:00:00
22	2020-10-06 14:24:01.341758-03	6	1	15	2020-10-06	21:00:00
24	2020-10-06 14:25:19.133412-03	6	1	15	2020-10-06	21:00:00
25	2020-10-06 14:32:02.419932-03	6	1	15	2020-10-29	21:00:00
26	2020-10-06 21:03:49.695077-03	6	1	15	2020-10-29	20:00:00
31	2020-10-10 16:26:22.587402-03	6	10	15	2020-10-29	19:30:00
32	2020-10-10 16:29:41.568102-03	6	10	15	2020-10-29	19:30:00
35	2020-10-10 16:57:52.457611-03	6	9	15	2020-10-29	21:00:00
36	2020-10-10 16:59:06.342222-03	6	6	15	2020-10-29	05:00:00
40	2020-10-10 17:41:48.456475-03	6	9	15	2020-10-29	23:00:00
41	2020-10-10 17:41:56.89266-03	6	9	15	2020-10-29	09:00:00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-10-03 12:24:21.135106-03	6	Drauzio Varela | Clínico Geral	2	[{"changed": {"fields": ["telefone"]}}]	8	1
2	2020-10-03 12:24:26.056098-03	6	Drauzio Varela | Clínico Geral	2	[]	8	1
3	2020-10-03 12:25:44.217378-03	6	Drauzio Varela | Clínico Geral	2	[]	8	1
4	2020-10-03 14:55:58.901774-03	2	2020-10-03	1	[{"added": {}}]	10	1
5	2020-10-03 14:56:09.942735-03	3	2020-10-03	1	[{"added": {}}]	10	1
6	2020-10-03 15:05:07.737183-03	3	2020-10-03	2	[{"changed": {"fields": ["horarios"]}}]	10	1
7	2020-10-03 15:05:14.217518-03	3	2020-10-03	2	[]	10	1
8	2020-10-03 15:23:44.818744-03	4	3/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
9	2020-10-03 15:37:09.520257-03	4	3/10/2020 - Drauzio Varela | Clínico Geral	2	[{"changed": {"fields": ["horarios"]}}]	10	1
10	2020-10-03 15:37:19.99096-03	5	3/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
11	2020-10-03 15:38:31.556035-03	5	3/10/2020 - Drauzio Varela | Clínico Geral	2	[]	10	1
12	2020-10-03 15:38:40.529844-03	6	3/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
13	2020-10-03 15:39:08.843173-03	7	3/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
14	2020-10-03 15:52:54.814313-03	8	4/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
15	2020-10-03 16:05:21.005735-03	9	1/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
16	2020-10-03 16:05:56.282667-03	10	2/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
17	2020-10-03 16:06:08.405234-03	10	2/10/2020 - Drauzio Varela | Clínico Geral	3		10	1
18	2020-10-03 16:06:08.411441-03	9	1/10/2020 - Drauzio Varela | Clínico Geral	3		10	1
19	2020-10-03 16:19:01.691834-03	11	1/10/2020 - sdfsdf | Cardiologia	1	[{"added": {}}]	10	1
20	2020-10-03 16:20:04.656976-03	12	16/9/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
21	2020-10-05 14:19:06.718986-03	13	5/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
22	2020-10-05 14:19:36.66817-03	13	5/10/2020 - Drauzio Varela | Clínico Geral	2	[{"changed": {"fields": ["horarios"]}}]	10	1
23	2020-10-05 22:35:53.078549-03	14	6/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}]	10	1
24	2020-10-05 23:53:11.953642-03	15	6/10/2020 - Drauzio Varela | Clínico Geral	1	[{"added": {}}, {"added": {"object": "AgendaHorario object (1)", "name": "agenda horario"}}, {"added": {"object": "AgendaHorario object (2)", "name": "agenda horario"}}, {"added": {"object": "AgendaHorario object (3)", "name": "agenda horario"}}, {"added": {"object": "AgendaHorario object (4)", "name": "agenda horario"}}]	10	1
25	2020-10-06 14:31:50.835832-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"changed": {"fields": ["dia"]}}, {"changed": {"object": "AgendaHorario object (1)", "name": "agenda horario", "fields": ["preenchido"]}}, {"changed": {"object": "AgendaHorario object (3)", "name": "agenda horario", "fields": ["preenchido"]}}]	10	1
26	2020-10-10 15:19:57.529868-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"added": {"name": "agenda horario", "object": "AgendaHorario object (5)"}}]	10	1
27	2020-10-10 15:20:41.000822-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"added": {"name": "agenda horario", "object": "AgendaHorario object (6)"}}]	10	1
28	2020-10-10 15:56:28.741621-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"added": {"name": "agenda horario", "object": "AgendaHorario object (7)"}}, {"added": {"name": "agenda horario", "object": "AgendaHorario object (8)"}}]	10	1
29	2020-10-10 16:28:54.376563-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"changed": {"fields": ["horario"], "object": "AgendaHorario object (8)", "name": "agenda horario"}}]	10	1
30	2020-10-10 16:29:34.709648-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"changed": {"fields": ["preenchido"], "object": "AgendaHorario object (7)", "name": "agenda horario"}}]	10	1
31	2020-10-10 16:30:19.09476-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"added": {"object": "AgendaHorario object (9)", "name": "agenda horario"}}]	10	1
32	2020-10-10 16:57:23.949848-03	15	29/10/2020 - Drauzio Varela | Clínico Geral	2	[{"changed": {"object": "AgendaHorario object (1)", "name": "agenda horario", "fields": ["preenchido"]}}, {"changed": {"object": "AgendaHorario object (2)", "name": "agenda horario", "fields": ["preenchido"]}}, {"changed": {"object": "AgendaHorario object (3)", "name": "agenda horario", "fields": ["preenchido"]}}, {"changed": {"object": "AgendaHorario object (4)", "name": "agenda horario", "fields": ["preenchido"]}}, {"changed": {"object": "AgendaHorario object (5)", "name": "agenda horario", "fields": ["preenchido"]}}, {"changed": {"object": "AgendaHorario object (6)", "name": "agenda horario", "fields": ["preenchido"]}}, {"changed": {"object": "AgendaHorario object (7)", "name": "agenda horario", "fields": ["preenchido"]}}]	10	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	user
3	auth	permission
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	especialidades	especialidade
8	medicos	medico
9	consultas	consulta
10	agendas	agenda
11	agendas	horarios
12	authtoken	token
13	authtoken	tokenproxy
14	agendas	agendahorario
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-10-02 13:16:03.240531-03
2	auth	0001_initial	2020-10-02 13:16:03.318433-03
3	admin	0001_initial	2020-10-02 13:16:03.426884-03
4	admin	0002_logentry_remove_auto_add	2020-10-02 13:16:03.45499-03
5	admin	0003_logentry_add_action_flag_choices	2020-10-02 13:16:03.463485-03
6	contenttypes	0002_remove_content_type_name	2020-10-02 13:16:03.479887-03
7	auth	0002_alter_permission_name_max_length	2020-10-02 13:16:03.486423-03
8	auth	0003_alter_user_email_max_length	2020-10-02 13:16:03.495818-03
9	auth	0004_alter_user_username_opts	2020-10-02 13:16:03.505583-03
10	auth	0005_alter_user_last_login_null	2020-10-02 13:16:03.515674-03
11	auth	0006_require_contenttypes_0002	2020-10-02 13:16:03.518375-03
12	auth	0007_alter_validators_add_error_messages	2020-10-02 13:16:03.529594-03
13	auth	0008_alter_user_username_max_length	2020-10-02 13:16:03.545127-03
14	auth	0009_alter_user_last_name_max_length	2020-10-02 13:16:03.555449-03
15	auth	0010_alter_group_name_max_length	2020-10-02 13:16:03.566027-03
16	auth	0011_update_proxy_permissions	2020-10-02 13:16:03.57622-03
17	sessions	0001_initial	2020-10-02 13:16:03.59146-03
18	especialidades	0001_initial	2020-10-02 13:50:09.603352-03
19	medicos	0001_initial	2020-10-02 14:34:22.278026-03
20	medicos	0002_medico_crm	2020-10-02 14:37:31.391046-03
21	medicos	0003_auto_20201003_1502	2020-10-03 12:02:47.368311-03
22	medicos	0004_auto_20201003_1520	2020-10-03 12:20:11.573148-03
23	medicos	0005_auto_20201003_1553	2020-10-03 12:54:28.400644-03
24	consultas	0001_initial	2020-10-03 12:54:28.424806-03
25	consultas	0002_auto_20201003_1555	2020-10-03 12:55:05.923738-03
26	agendas	0001_initial	2020-10-03 14:25:16.730746-03
27	agendas	0002_auto_20201003_1743	2020-10-03 14:43:48.406648-03
28	agendas	0003_auto_20201003_1747	2020-10-03 14:47:43.961662-03
29	agendas	0004_auto_20201003_1840	2020-10-03 15:49:26.549703-03
30	consultas	0003_consulta_user	2020-10-05 13:54:14.369813-03
31	authtoken	0001_initial	2020-10-05 15:43:55.58801-03
32	authtoken	0002_auto_20160226_1747	2020-10-05 15:43:55.639583-03
33	authtoken	0003_tokenproxy	2020-10-05 15:43:55.644459-03
34	agendas	0005_horarios_preenchido	2020-10-05 18:04:12.492241-03
35	agendas	0005_auto_20201005_2113	2020-10-05 18:15:59.54023-03
36	consultas	0004_auto_20201005_2249	2020-10-05 19:49:48.927321-03
37	consultas	0004_auto_20201005_2316	2020-10-05 20:17:13.863759-03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ix5verw4tbtvgpbho14es7xmzp670ack	ZjJmZjAwNjRkZjRhMDdjMzdkYzAwMmY3NGRkOTg0NmZkOTQ4ZDcwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGU0YmJkYmQ2ODkyMDNjMmE1MGEwZGFkNTkzZDY3NTQ5NTcwNGIwZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-16 13:56:15.833589-03
1gtrae84lzrssig9ohnstwh9zhw8yteq	ZjJmZjAwNjRkZjRhMDdjMzdkYzAwMmY3NGRkOTg0NmZkOTQ4ZDcwMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiNGU0YmJkYmQ2ODkyMDNjMmE1MGEwZGFkNTkzZDY3NTQ5NTcwNGIwZCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-19 23:28:54.817773-03
r30xv0r46tpaefnok6d5ch8oyiu06fy3	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 20:45:00.478677-03
kboxyc8wy9t7bdha68wmz7h27tmnso12	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 20:45:49.522407-03
vsxh9tdtqwvuwrvlacoxizzq6os4hedt	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 20:54:13.907975-03
iv95oxuuve0mb4qpcok3c4xamqlpop8l	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 20:55:27.883162-03
f4bwobkah7lihpkritpj3amq5pouth70	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 20:56:01.354228-03
cdpkumjdcpjtiblve6l2v6ev9dpuuq6b	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 20:59:37.837102-03
2xcldyzpyil08f8z5fv3pamdccvufmcf	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 21:11:41.228025-03
7h4tcecwytjqvitbvoxaahh6u64ls07i	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 21:43:12.332013-03
vajjo1h46x35z3fcb7khvgnhuj2z3iad	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 23:06:22.071302-03
jvnwv5puzj8603j1p32e7ptgeety4111	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 23:07:30.302151-03
ouxeya8agq2i6ysypla59vu4s7t4mf33	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 23:12:42.798109-03
kbt6zj4iilho64d0ptz6s9ul0o5enzr5	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-22 23:13:57.994934-03
77zkb8kavso7lqyuromlu4gnw5x67qzx	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-23 00:08:36.141558-03
ti8qsyn07g0al48p37bssirx8affs4au	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-23 00:17:51.383937-03
0gn6ock0emate31obr0v6pbd05985xls	NmEzZTU5MDU0M2IxN2Y0YjIzMjY3NmFjZWViMTkzYjFhZTM5MjQ3NDp7Il9hdXRoX3VzZXJfaGFzaCI6ImJlNzk4MWFiNTMzNDAxMzdlYjNkYTRhMjE4OTc5MTZhYzc0MzBlNjIiLCJfYXV0aF91c2VyX2lkIjoiNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-23 00:18:05.041362-03
rj3pqtn1a9hxh2qy3tao577uar8m3pjv	ZmUxM2I2ZDIzN2RiZDU3MzZkMTY0YmM1NTQ2YzlhM2IxYzlhN2RlMzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNjhmM2VkOTMzOWVkNDFjMzkwOTA0NTA2YWFjNTk5YjUzOWNlM2EzNSIsIl9hdXRoX3VzZXJfaWQiOiI3In0=	2020-10-23 23:51:40.507461-03
xadpf3y190zn35em8mnsgxjxm729jthl	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-23 23:58:32.634152-03
o3i6vs5vd3c4pivgcyetp2rpfw4v6ows	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-23 23:58:49.24921-03
dkmyi3w6f99xdtkl09uzrey8wx6fknif	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 00:09:12.878917-03
li16h2jycpjfncrmib8iap0wm4z94x9q	YWM3MGUwOTA2NGMwYWVlN2Q4NzllNTYxMTVhM2U0NWYwYTlhY2E2ODp7fQ==	2020-10-24 00:31:02.181375-03
4lsn2tm41b714pjyzbarbg2zh9bhsopt	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 00:31:47.532299-03
7hh7olb8vnrv8iniy01frcirtgftf8d3	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 00:32:35.766059-03
v9phmi0l0bc906fzmo7cbl8dok8vg0mt	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 00:35:00.173027-03
8u8g4rrjlmx673zme75dh9ogz2ksd8b1	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:22:14.545209-03
1q3epl25u2885t3c9fyrjvbuix547xkk	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 01:10:14.943004-03
iv39yx0euj1rkwyjmdz7r91xrt56uicm	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 01:11:48.906917-03
5d0nc6dzlv72kc36ozy0db4m5e5y1oiy	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:29:48.863735-03
vb67110rbt4ltmfhjk0bydtiq365uxwp	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 01:12:03.698139-03
36caeicbdig72w9b68nta7a9r9yj021o	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 12:38:17.518656-03
twqdz11je3ahznq8acmhcohadjqtaz5g	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:29:59.053792-03
30pkn1i8cp046l98ir4l4f39zewoq854	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 14:18:34.144284-03
oja0wd5xnitw4o7ms5agm27sqebu768s	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 14:22:30.593711-03
52wg4n51rysj4vxh4fbilfyu36azhmmv	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:31:31.504994-03
dum3aqllxgafrtbidz9lf8almelmyfyj	YzYwOTUwMjg2NmMyZGI3ZDY1N2UzM2JiYWY5YzNlN2IyOGUxMDFhNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2E2MjRjYzcwNTI1MGM0NWM3MTNkMmY5NzFlZGMyN2I0NGE5MWM4NiIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9	2020-10-24 16:15:54.428846-03
og0uiulfgi1ladtcgduywaka8mdl5moe	YzYwOTUwMjg2NmMyZGI3ZDY1N2UzM2JiYWY5YzNlN2IyOGUxMDFhNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2E2MjRjYzcwNTI1MGM0NWM3MTNkMmY5NzFlZGMyN2I0NGE5MWM4NiIsIl9hdXRoX3VzZXJfaWQiOiIxMCJ9	2020-10-24 16:16:06.305962-03
jov5f02r7uvrotdz9xkc0xa320z6mr3h	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:32:16.43037-03
u0rhxvoo0vsqnojnqx8xotnijlj6wu10	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 16:23:19.343447-03
7kpyb5888kq9fd52ko2mi9tcq9bd8fro	MjE4NDQzYTAwMDJhMzM1Yzk4MWEwMTg4NmJmNGZiZmQ2ZGE4MDVjZDp7Il9hdXRoX3VzZXJfaGFzaCI6IjdhNjI0Y2M3MDUyNTBjNDVjNzEzZDJmOTcxZWRjMjdiNDRhOTFjODYiLCJfYXV0aF91c2VyX2lkIjoiMTAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCJ9	2020-10-24 16:26:12.77496-03
1vkk6rf7o9r64yao8j9gsdhjkgyp73gb	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:32:22.728261-03
hfmpolkpqbwvxs5yli1us6gxsfs2v5bg	ZjhkYWEwYTBmYjVjODViYjlhZDU0OGE5N2NkNjE4MjA3NzZjNTYwYTp7Il9hdXRoX3VzZXJfaGFzaCI6ImNkNzc3ZDljMDU4NjA5ZmI1NWVlYjZiMzIxNGRhOWM1ZDg3OThhNGIiLCJfYXV0aF91c2VyX2lkIjoiOSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-24 16:37:45.929331-03
am42l2jclflunjgggs0ckcerdjlmsp40	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:17:03.12262-03
4o93hsxb8b35vzdskgo3p0dyodxkk40c	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:32:31.254639-03
8qhqj0fe4nu2yislvy9ohyebi8x7voqs	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:17:18.499592-03
cymgsus0a5gi1v56qc3vx8vveicgz9wj	YTdhYWRjZTViNjZiZjFkZWUxYWRmZDE4Y2VlNDM4MjdhNjk2MmI3OTp7Il9hdXRoX3VzZXJfaWQiOiIxMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZGQ0OWVjYWI5YzIxY2M4N2NmMGYwNTNlMjczMTVjMDFjYTE2NDI5NyJ9	2020-10-24 17:20:43.810896-03
kysrmdk9e18jrt8rt2qzt3r72la4hi5c	MTkyMGNhYjg3YWI2M2Y2NDY0ZDYyMjBjNjE1ZjFjMmVjMDEzNjM0Njp7Il9hdXRoX3VzZXJfaWQiOiIxMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMTEyNzAzNDk0MTQ4NzY4YmRhYmVhNzFlZjliMDkyZDNiYzA0MzM0ZSJ9	2020-10-24 17:21:12.079008-03
xsnomzv9pbpzerfh6qpliuuhrs6v1sg6	MjU4N2E4NmU1MDk4ZTI3M2ZmZTExOGY0MGRiNWJkYzZiNmU5MzJkYTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2E2MjRjYzcwNTI1MGM0NWM3MTNkMmY5NzFlZGMyN2I0NGE5MWM4NiJ9	2020-10-24 17:21:31.692971-03
qjo8zbkt6cklqe3uifejy36ukgczyyz4	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:33:44.731821-03
vq7ped2mjpta7g84yqr37var5o9fw8r2	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:33:50.917519-03
85wfjut89v9szypge9ky2jupjbebmavv	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:34:40.461861-03
3lg7jseo3gqfx52yzh7kl2b3gy0yrucz	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:36:57.974848-03
qadu8t6cglpigqxf6wda5d6rr4woua5u	MjU4N2E4NmU1MDk4ZTI3M2ZmZTExOGY0MGRiNWJkYzZiNmU5MzJkYTp7Il9hdXRoX3VzZXJfaWQiOiIxMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2E2MjRjYzcwNTI1MGM0NWM3MTNkMmY5NzFlZGMyN2I0NGE5MWM4NiJ9	2020-10-24 17:37:06.63866-03
m8rcrdyxxmm5a4gphg2wv5tom6s4ve9w	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:37:14.899706-03
49amv0d3gufg3newdmf5smx515jnj75u	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:38:04.136813-03
omf335tpl5my6vm5fi3zruiv490zysco	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:39:06.969556-03
y8o14zkcglaz7f0g0zafp0a2v6q6znck	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:39:17.954411-03
wodn82ac4c9ib1c656ms1tako6ublsxy	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:39:39.155256-03
u07qnw30zto7i682dlx3232e3xqswpfs	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:39:47.849342-03
s86zbgylec6c0yv3bft2pngx7rknu26a	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:39:57.576035-03
mqrcxqnopmm5f8y25fcgnwmb76sh4bwj	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:40:10.299442-03
2b6ws5newcs4dgwa9xffmbibnjsgfswm	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:40:25.842292-03
vcljwxx2avaokasmy2u6hqvk91nhc98g	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:41:17.185694-03
qou0yoldmxxnsbfs9fk7vutbv9py0dyr	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:41:41.044518-03
shph10zmb8ns3g1bont92rkhrkq8gg6v	ZGU5YTM4MDQ0OWFmYmFjNWRlYzg0ZTYwN2ZkNjAxYzU2NGM1NTQwYTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDM2ZjJlNTRlYjU2NmYwODI3MjBiYzk1MjgzZWUyNmJjMzMyMmI4NCJ9	2020-10-24 17:43:05.74711-03
wrdl72uaklflzyhkugi318ztu83pz244	ZGU5YTM4MDQ0OWFmYmFjNWRlYzg0ZTYwN2ZkNjAxYzU2NGM1NTQwYTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDM2ZjJlNTRlYjU2NmYwODI3MjBiYzk1MjgzZWUyNmJjMzMyMmI4NCJ9	2020-10-24 17:43:14.409602-03
2npn7gasgaaavroln104hn4s8x6jpitb	ZGU5YTM4MDQ0OWFmYmFjNWRlYzg0ZTYwN2ZkNjAxYzU2NGM1NTQwYTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDM2ZjJlNTRlYjU2NmYwODI3MjBiYzk1MjgzZWUyNmJjMzMyMmI4NCJ9	2020-10-24 17:44:15.587026-03
7flxck4vdcaqjw2s1i1p39ggwyeo538d	ZGU5YTM4MDQ0OWFmYmFjNWRlYzg0ZTYwN2ZkNjAxYzU2NGM1NTQwYTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDM2ZjJlNTRlYjU2NmYwODI3MjBiYzk1MjgzZWUyNmJjMzMyMmI4NCJ9	2020-10-24 17:44:22.940568-03
gfpppzcbqv6l0vs4pf77aotv2f9wcez0	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:53:08.098519-03
conr7m1p7qgz0jr1wgta4t4etet5yrxj	ZGU5YTM4MDQ0OWFmYmFjNWRlYzg0ZTYwN2ZkNjAxYzU2NGM1NTQwYTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDM2ZjJlNTRlYjU2NmYwODI3MjBiYzk1MjgzZWUyNmJjMzMyMmI4NCJ9	2020-10-24 17:53:17.015208-03
nbr4a0ukv61fn4ocsv2sdmx57wpxb1k9	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 17:53:26.899344-03
wv0t5uakmh8csjfq94zs9t9igfri7zv3	ZGU5YTM4MDQ0OWFmYmFjNWRlYzg0ZTYwN2ZkNjAxYzU2NGM1NTQwYTp7Il9hdXRoX3VzZXJfaWQiOiIxMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZDM2ZjJlNTRlYjU2NmYwODI3MjBiYzk1MjgzZWUyNmJjMzMyMmI4NCJ9	2020-10-24 17:53:36.902644-03
fnb4n6tjz9m748ic0pwq0cdhnu1ab3ox	NTZkNmYxNmE4YWI5NDRiNWJmYjc5YmFiNGIwODBiOWY0ZGJhZDEzZTp7Il9hdXRoX3VzZXJfaWQiOiI5IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjZDc3N2Q5YzA1ODYwOWZiNTVlZWI2YjMyMTRkYTljNWQ4Nzk4YTRiIn0=	2020-10-24 18:46:19.766592-03
\.


--
-- Data for Name: especialidades_especialidade; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.especialidades_especialidade (id, nome) FROM stdin;
1	Pediatria
2	Ginecologia
3	Cardiologia
4	Clínico Geral
\.


--
-- Data for Name: medicos_medico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.medicos_medico (id, nome, especialidade_id, crm, email, telefone) FROM stdin;
2	sdfsdf	3	345234	\N	\N
3	sdfsdf	3	345234	\N	\N
4	sdfsdf	3	345234	\N	\N
5	sdfsdf	3	345234	\N	\N
6	Drauzio Varela	4	432435	\N	85988324196
\.


--
-- Name: agendas_agenda_horarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agendas_agenda_horarios_id_seq', 144, true);


--
-- Name: agendas_agenda_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agendas_agenda_id_seq', 15, true);


--
-- Name: agendas_agendahorario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agendas_agendahorario_id_seq', 9, true);


--
-- Name: agendas_horarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.agendas_horarios_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 13, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: consultas_consulta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.consultas_consulta_id_seq', 41, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 32, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);


--
-- Name: especialidades_especialidade_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.especialidades_especialidade_id_seq', 4, true);


--
-- Name: medicos_medico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.medicos_medico_id_seq', 6, true);


--
-- Name: agendas_agenda_horarios agendas_agenda_horarios_agenda_id_horarios_id_0f458817_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda_horarios
    ADD CONSTRAINT agendas_agenda_horarios_agenda_id_horarios_id_0f458817_uniq UNIQUE (agenda_id, horarios_id);


--
-- Name: agendas_agenda_horarios agendas_agenda_horarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda_horarios
    ADD CONSTRAINT agendas_agenda_horarios_pkey PRIMARY KEY (id);


--
-- Name: agendas_agenda agendas_agenda_medico_id_dia_1ad0c40d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda
    ADD CONSTRAINT agendas_agenda_medico_id_dia_1ad0c40d_uniq UNIQUE (medico_id, dia);


--
-- Name: agendas_agenda agendas_agenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda
    ADD CONSTRAINT agendas_agenda_pkey PRIMARY KEY (id);


--
-- Name: agendas_agendahorario agendas_agendahorario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agendahorario
    ADD CONSTRAINT agendas_agendahorario_pkey PRIMARY KEY (id);


--
-- Name: agendas_horarios agendas_horarios_horario_c8237f5a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_horarios
    ADD CONSTRAINT agendas_horarios_horario_c8237f5a_uniq UNIQUE (horario);


--
-- Name: agendas_horarios agendas_horarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_horarios
    ADD CONSTRAINT agendas_horarios_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: consultas_consulta consultas_consulta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas_consulta
    ADD CONSTRAINT consultas_consulta_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: especialidades_especialidade especialidades_especialidade_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.especialidades_especialidade
    ADD CONSTRAINT especialidades_especialidade_pkey PRIMARY KEY (id);


--
-- Name: medicos_medico medicos_medico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicos_medico
    ADD CONSTRAINT medicos_medico_pkey PRIMARY KEY (id);


--
-- Name: agendas_agenda_horarios_agenda_id_38f9193d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX agendas_agenda_horarios_agenda_id_38f9193d ON public.agendas_agenda_horarios USING btree (agenda_id);


--
-- Name: agendas_agenda_horarios_horarios_id_0504e91d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX agendas_agenda_horarios_horarios_id_0504e91d ON public.agendas_agenda_horarios USING btree (horarios_id);


--
-- Name: agendas_agenda_medico_id_209b88fb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX agendas_agenda_medico_id_209b88fb ON public.agendas_agenda USING btree (medico_id);


--
-- Name: agendas_agendahorario_agenda_id_0941877d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX agendas_agendahorario_agenda_id_0941877d ON public.agendas_agendahorario USING btree (agenda_id);


--
-- Name: agendas_agendahorario_horario_id_bd00b4a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX agendas_agendahorario_horario_id_bd00b4a4 ON public.agendas_agendahorario USING btree (horario_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: consultas_consulta_agenda_id_d9d2814c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX consultas_consulta_agenda_id_d9d2814c ON public.consultas_consulta USING btree (agenda_id);


--
-- Name: consultas_consulta_medico_id_28f03e45; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX consultas_consulta_medico_id_28f03e45 ON public.consultas_consulta USING btree (medico_id);


--
-- Name: consultas_consulta_user_id_beec43e0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX consultas_consulta_user_id_beec43e0 ON public.consultas_consulta USING btree (user_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: medicos_medico_especialidade_id_d5ffd7e5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX medicos_medico_especialidade_id_d5ffd7e5 ON public.medicos_medico USING btree (especialidade_id);


--
-- Name: agendas_agenda_horarios agendas_agenda_horar_horarios_id_0504e91d_fk_agendas_h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda_horarios
    ADD CONSTRAINT agendas_agenda_horar_horarios_id_0504e91d_fk_agendas_h FOREIGN KEY (horarios_id) REFERENCES public.agendas_horarios(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: agendas_agenda_horarios agendas_agenda_horarios_agenda_id_38f9193d_fk_agendas_agenda_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda_horarios
    ADD CONSTRAINT agendas_agenda_horarios_agenda_id_38f9193d_fk_agendas_agenda_id FOREIGN KEY (agenda_id) REFERENCES public.agendas_agenda(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: agendas_agenda agendas_agenda_medico_id_209b88fb_fk_medicos_medico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agenda
    ADD CONSTRAINT agendas_agenda_medico_id_209b88fb_fk_medicos_medico_id FOREIGN KEY (medico_id) REFERENCES public.medicos_medico(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: agendas_agendahorario agendas_agendahorari_horario_id_bd00b4a4_fk_agendas_h; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agendahorario
    ADD CONSTRAINT agendas_agendahorari_horario_id_bd00b4a4_fk_agendas_h FOREIGN KEY (horario_id) REFERENCES public.agendas_horarios(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: agendas_agendahorario agendas_agendahorario_agenda_id_0941877d_fk_agendas_agenda_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.agendas_agendahorario
    ADD CONSTRAINT agendas_agendahorario_agenda_id_0941877d_fk_agendas_agenda_id FOREIGN KEY (agenda_id) REFERENCES public.agendas_agenda(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: consultas_consulta consultas_consulta_agenda_id_d9d2814c_fk_agendas_agenda_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas_consulta
    ADD CONSTRAINT consultas_consulta_agenda_id_d9d2814c_fk_agendas_agenda_id FOREIGN KEY (agenda_id) REFERENCES public.agendas_agenda(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: consultas_consulta consultas_consulta_medico_id_28f03e45_fk_medicos_medico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas_consulta
    ADD CONSTRAINT consultas_consulta_medico_id_28f03e45_fk_medicos_medico_id FOREIGN KEY (medico_id) REFERENCES public.medicos_medico(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: consultas_consulta consultas_consulta_user_id_beec43e0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.consultas_consulta
    ADD CONSTRAINT consultas_consulta_user_id_beec43e0_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: medicos_medico medicos_medico_especialidade_id_d5ffd7e5_fk_especiali; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.medicos_medico
    ADD CONSTRAINT medicos_medico_especialidade_id_d5ffd7e5_fk_especiali FOREIGN KEY (especialidade_id) REFERENCES public.especialidades_especialidade(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

