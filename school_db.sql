--
-- PostgreSQL database dump
--

\restrict Loxc1mKLMCcQmi7CPOSyUDqC0C0D5ab32dzcmcBkvH9TYyq0znri8gyn8C6r4j9

-- Dumped from database version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

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

ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_department_id_fkey;
ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_enrollment_id_fkey;
ALTER TABLE ONLY public.fees DROP CONSTRAINT fees_student_id_fkey;
ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_student_id_fkey;
ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_class_id_fkey;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_teaccher_id_fkey;
ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_course_id_fkey;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_enrollment_id_fkey;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_staff_no_key;
ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_pkey;
ALTER TABLE ONLY public.teachers DROP CONSTRAINT teachers_email_key;
ALTER TABLE ONLY public.students DROP CONSTRAINT students_reg_no_key;
ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
ALTER TABLE ONLY public.students DROP CONSTRAINT students_email_key;
ALTER TABLE ONLY public.grades DROP CONSTRAINT grades_pkey;
ALTER TABLE ONLY public.fees DROP CONSTRAINT fees_pkey;
ALTER TABLE ONLY public.enrollments DROP CONSTRAINT enrollments_pkey;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.departments DROP CONSTRAINT departments_pkey;
ALTER TABLE ONLY public.courses DROP CONSTRAINT courses_pkey;
ALTER TABLE ONLY public.classes DROP CONSTRAINT classes_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE ONLY public.attendance DROP CONSTRAINT attendance_pkey;
ALTER TABLE public.teachers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.grades ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.fees ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.enrollments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.departments ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.courses ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.classes ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.attendance ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE public.teachers_id_seq;
DROP TABLE public.teachers;
DROP SEQUENCE public.students_id_seq;
DROP TABLE public.students;
DROP SEQUENCE public.grades_id_seq;
DROP TABLE public.grades;
DROP SEQUENCE public.fees_id_seq;
DROP TABLE public.fees;
DROP SEQUENCE public.enrollments_id_seq;
DROP TABLE public.enrollments;
DROP TABLE public.django_session;
DROP TABLE public.django_migrations;
DROP TABLE public.django_content_type;
DROP TABLE public.django_admin_log;
DROP SEQUENCE public.departments_id_seq;
DROP TABLE public.departments;
DROP SEQUENCE public.courses_id_seq;
DROP TABLE public.courses;
DROP SEQUENCE public.classes_id_seq;
DROP TABLE public.classes;
DROP TABLE public.auth_user_user_permissions;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP TABLE public.auth_permission;
DROP TABLE public.auth_group_permissions;
DROP TABLE public.auth_group;
DROP SEQUENCE public.attendance_id_seq;
DROP TABLE public.attendance;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: attendance; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.attendance (
    id integer NOT NULL,
    enrollment_id integer NOT NULL,
    date timestamp with time zone DEFAULT now() NOT NULL,
    status character varying(50)
);


--
-- Name: attendance_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.attendance_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: attendance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.attendance_id_seq OWNED BY public.attendance.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: classes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.classes (
    id integer NOT NULL,
    course_id integer NOT NULL,
    teaccher_id integer NOT NULL,
    semester character varying(50) NOT NULL,
    room character varying(50) NOT NULL
);


--
-- Name: classes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.classes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: classes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.classes_id_seq OWNED BY public.classes.id;


--
-- Name: courses; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.courses (
    id integer NOT NULL,
    course_code character varying(50) NOT NULL,
    course_name character varying(50),
    credits integer NOT NULL
);


--
-- Name: courses_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.courses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: courses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.courses_id_seq OWNED BY public.courses.id;


--
-- Name: departments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.departments (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


--
-- Name: departments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.departments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: departments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.departments_id_seq OWNED BY public.departments.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: -
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


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


--
-- Name: enrollments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.enrollments (
    id integer NOT NULL,
    class_id integer NOT NULL,
    student_id integer NOT NULL,
    enrolled_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: enrollments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.enrollments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: enrollments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.enrollments_id_seq OWNED BY public.enrollments.id;


--
-- Name: fees; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fees (
    id integer NOT NULL,
    student_id integer NOT NULL,
    amount_due numeric(10,2),
    amount_paid numeric(10,2),
    status character varying(30) NOT NULL
);


--
-- Name: fees_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: fees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fees_id_seq OWNED BY public.fees.id;


--
-- Name: grades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    enrollment_id integer NOT NULL,
    score numeric(5,2) NOT NULL,
    grade_letter character varying(2)
);


--
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50),
    surname character varying(50) NOT NULL,
    email character varying(50),
    reg_no character varying(50),
    date_of_birth date NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    middle_name character varying(50),
    surname character varying(50) NOT NULL,
    email character varying(50),
    staff_no character varying(50),
    department_id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);


--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: attendance id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attendance ALTER COLUMN id SET DEFAULT nextval('public.attendance_id_seq'::regclass);


--
-- Name: classes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.classes ALTER COLUMN id SET DEFAULT nextval('public.classes_id_seq'::regclass);


--
-- Name: courses id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courses ALTER COLUMN id SET DEFAULT nextval('public.courses_id_seq'::regclass);


--
-- Name: departments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments ALTER COLUMN id SET DEFAULT nextval('public.departments_id_seq'::regclass);


--
-- Name: enrollments id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments ALTER COLUMN id SET DEFAULT nextval('public.enrollments_id_seq'::regclass);


--
-- Name: fees id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fees ALTER COLUMN id SET DEFAULT nextval('public.fees_id_seq'::regclass);


--
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Data for Name: attendance; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.attendance (id, enrollment_id, date, status) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	3	add_permission
6	Can change permission	3	change_permission
7	Can delete permission	3	delete_permission
8	Can view permission	3	view_permission
9	Can add group	2	add_group
10	Can change group	2	change_group
11	Can delete group	2	delete_group
12	Can view group	2	view_group
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
25	Can add attendance	7	add_attendance
26	Can change attendance	7	change_attendance
27	Can delete attendance	7	delete_attendance
28	Can view attendance	7	view_attendance
29	Can add auth group	8	add_authgroup
30	Can change auth group	8	change_authgroup
31	Can delete auth group	8	delete_authgroup
32	Can view auth group	8	view_authgroup
33	Can add auth group permissions	9	add_authgrouppermissions
34	Can change auth group permissions	9	change_authgrouppermissions
35	Can delete auth group permissions	9	delete_authgrouppermissions
36	Can view auth group permissions	9	view_authgrouppermissions
37	Can add auth permission	10	add_authpermission
38	Can change auth permission	10	change_authpermission
39	Can delete auth permission	10	delete_authpermission
40	Can view auth permission	10	view_authpermission
41	Can add auth user	11	add_authuser
42	Can change auth user	11	change_authuser
43	Can delete auth user	11	delete_authuser
44	Can view auth user	11	view_authuser
45	Can add auth user groups	12	add_authusergroups
46	Can change auth user groups	12	change_authusergroups
47	Can delete auth user groups	12	delete_authusergroups
48	Can view auth user groups	12	view_authusergroups
49	Can add auth user user permissions	13	add_authuseruserpermissions
50	Can change auth user user permissions	13	change_authuseruserpermissions
51	Can delete auth user user permissions	13	delete_authuseruserpermissions
52	Can view auth user user permissions	13	view_authuseruserpermissions
53	Can add classes	14	add_classes
54	Can change classes	14	change_classes
55	Can delete classes	14	delete_classes
56	Can view classes	14	view_classes
57	Can add courses	15	add_courses
58	Can change courses	15	change_courses
59	Can delete courses	15	delete_courses
60	Can view courses	15	view_courses
61	Can add departments	16	add_departments
62	Can change departments	16	change_departments
63	Can delete departments	16	delete_departments
64	Can view departments	16	view_departments
65	Can add django admin log	17	add_djangoadminlog
66	Can change django admin log	17	change_djangoadminlog
67	Can delete django admin log	17	delete_djangoadminlog
68	Can view django admin log	17	view_djangoadminlog
69	Can add django content type	18	add_djangocontenttype
70	Can change django content type	18	change_djangocontenttype
71	Can delete django content type	18	delete_djangocontenttype
72	Can view django content type	18	view_djangocontenttype
73	Can add django migrations	19	add_djangomigrations
74	Can change django migrations	19	change_djangomigrations
75	Can delete django migrations	19	delete_djangomigrations
76	Can view django migrations	19	view_djangomigrations
77	Can add django session	20	add_djangosession
78	Can change django session	20	change_djangosession
79	Can delete django session	20	delete_djangosession
80	Can view django session	20	view_djangosession
81	Can add enrollments	21	add_enrollments
82	Can change enrollments	21	change_enrollments
83	Can delete enrollments	21	delete_enrollments
84	Can view enrollments	21	view_enrollments
85	Can add fees	22	add_fees
86	Can change fees	22	change_fees
87	Can delete fees	22	delete_fees
88	Can view fees	22	view_fees
89	Can add grades	23	add_grades
90	Can change grades	23	change_grades
91	Can delete grades	23	delete_grades
92	Can view grades	23	view_grades
93	Can add students	24	add_students
94	Can change students	24	change_students
95	Can delete students	24	delete_students
96	Can view students	24	view_students
97	Can add teachers	25	add_teachers
98	Can change teachers	25	change_teachers
99	Can delete teachers	25	delete_teachers
100	Can view teachers	25	view_teachers
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$1200000$s7gJT1F5UUMjtHFAUgDCs3$UR4Fqtu9NPp78U13/Ox+BSdzhMpwEqXUIs2O3iVTs8k=	2026-06-13 19:53:27.831948+03	t	r0el			rodgersmwangi20@gmail.com	t	t	2026-06-13 19:46:07.122379+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.classes (id, course_id, teaccher_id, semester, room) FROM stdin;
\.


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.courses (id, course_code, course_name, credits) FROM stdin;
1	CS101	Introduction to Programming	3
2	CS201	Data Structures & Algorithms	4
3	CS301	Database Systems	3
4	CS401	Software Engineering	3
5	CS501	Artificial Intelligence	4
6	MA101	Calculus I	4
7	MA201	Linear Algebra	3
8	MA301	Probability & Statistics	3
9	PH101	Classical Mechanics	4
10	PH201	Electromagnetism	4
11	PH301	Quantum Mechanics	3
12	BA101	Principles of Management	3
13	BA201	Financial Accounting	3
14	EE101	Circuit Analysis	4
15	EE201	Digital Electronics	3
\.


--
-- Data for Name: departments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.departments (id, name) FROM stdin;
1	Computer Science
2	Mathematics
3	Physics
4	Business Administration
5	Electrical Engineering
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-06-13 20:33:25.37246+03	1	Students object (1)	2	[]	24	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	group
3	auth	permission
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	portal	attendance
8	portal	authgroup
9	portal	authgrouppermissions
10	portal	authpermission
11	portal	authuser
12	portal	authusergroups
13	portal	authuseruserpermissions
14	portal	classes
15	portal	courses
16	portal	departments
17	portal	djangoadminlog
18	portal	djangocontenttype
19	portal	djangomigrations
20	portal	djangosession
21	portal	enrollments
22	portal	fees
23	portal	grades
24	portal	students
25	portal	teachers
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-06-13 17:21:15.103974+03
2	auth	0001_initial	2026-06-13 17:21:16.594267+03
3	admin	0001_initial	2026-06-13 17:21:16.849457+03
4	admin	0002_logentry_remove_auto_add	2026-06-13 17:21:16.893254+03
5	admin	0003_logentry_add_action_flag_choices	2026-06-13 17:21:16.911786+03
6	contenttypes	0002_remove_content_type_name	2026-06-13 17:21:16.95018+03
7	auth	0002_alter_permission_name_max_length	2026-06-13 17:21:16.979871+03
8	auth	0003_alter_user_email_max_length	2026-06-13 17:21:17.004618+03
9	auth	0004_alter_user_username_opts	2026-06-13 17:21:17.026632+03
10	auth	0005_alter_user_last_login_null	2026-06-13 17:21:17.052837+03
11	auth	0006_require_contenttypes_0002	2026-06-13 17:21:17.060738+03
12	auth	0007_alter_validators_add_error_messages	2026-06-13 17:21:17.086532+03
13	auth	0008_alter_user_username_max_length	2026-06-13 17:21:17.193297+03
14	auth	0009_alter_user_last_name_max_length	2026-06-13 17:21:17.225661+03
15	auth	0010_alter_group_name_max_length	2026-06-13 17:21:17.260018+03
16	auth	0011_update_proxy_permissions	2026-06-13 17:21:17.278972+03
17	auth	0012_alter_user_first_name_max_length	2026-06-13 17:21:17.303336+03
18	sessions	0001_initial	2026-06-13 17:21:17.526996+03
19	portal	0001_initial	2026-06-13 19:44:38.113041+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
03wy2sl65tlzlsfqznn7w693pmc37179	.eJxVjEEOwiAQRe_C2hAoYwGX7nsGMsCMVA1NSrsy3l1JutDte-__lwi4byXsjdYwZ3ERWpx-WcT0oNpFvmO9LTItdVvnKHsiD9vktGR6Xo_276BgK981gAdiBkBlaUAYI7s0kqIIxlA-G6sd5I7Ym8zeErmkHA7eaGfZivcH8aQ4KA:1wYRbr:o3LUWj0ejbRkTDk_Soqk0js0iDkSw-Pzy2fg20OVJcs	2026-06-27 19:53:27.866167+03
\.


--
-- Data for Name: enrollments; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.enrollments (id, class_id, student_id, enrolled_at) FROM stdin;
\.


--
-- Data for Name: fees; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.fees (id, student_id, amount_due, amount_paid, status) FROM stdin;
1	77	4000.00	1276.73	Partial
2	34	5000.00	3041.64	Partial
3	41	2000.00	587.10	Partial
4	94	5000.00	1210.33	Partial
5	9	5000.00	1899.04	Partial
6	12	2500.00	0.00	Unpaid
7	50	3500.00	2278.78	Partial
8	72	3500.00	3500.00	Paid
9	51	1500.00	1500.00	Paid
10	71	3000.00	0.00	Unpaid
11	42	3000.00	945.80	Partial
12	36	4500.00	3562.67	Partial
13	67	1500.00	1500.00	Paid
14	59	2500.00	1452.28	Partial
15	2	1500.00	1500.00	Paid
16	80	3500.00	2336.23	Partial
17	76	3500.00	3500.00	Paid
18	88	4500.00	0.00	Unpaid
19	54	5000.00	5000.00	Paid
20	15	5000.00	5000.00	Paid
21	82	4500.00	476.45	Partial
22	20	4000.00	2300.07	Partial
23	19	3500.00	3500.00	Paid
24	73	2000.00	2000.00	Paid
25	84	4000.00	0.00	Unpaid
26	75	4000.00	0.00	Unpaid
27	13	3500.00	3016.13	Partial
28	14	3500.00	3500.00	Paid
29	74	3000.00	0.00	Unpaid
30	37	4500.00	2900.72	Partial
31	69	1500.00	1346.96	Partial
32	45	3500.00	0.00	Unpaid
33	53	4500.00	4500.00	Paid
34	99	1500.00	1343.70	Partial
35	97	3000.00	3000.00	Paid
36	63	3000.00	1831.95	Partial
37	61	5000.00	0.00	Unpaid
38	3	4000.00	3105.34	Partial
39	95	2500.00	2500.00	Paid
40	18	5000.00	5000.00	Paid
41	26	3500.00	1915.29	Partial
42	10	2500.00	0.00	Unpaid
43	40	4000.00	1111.21	Partial
44	39	3000.00	1037.00	Partial
45	44	4000.00	4000.00	Paid
46	70	3500.00	3500.00	Paid
47	60	2000.00	2000.00	Paid
48	65	2000.00	2000.00	Paid
49	85	3000.00	2381.99	Partial
50	22	4500.00	1937.19	Partial
51	55	2500.00	2500.00	Paid
52	16	3000.00	3000.00	Paid
53	4	5000.00	5000.00	Paid
54	31	2500.00	0.00	Unpaid
55	64	5000.00	5000.00	Paid
56	24	2500.00	2500.00	Paid
57	86	1500.00	1500.00	Paid
58	92	3500.00	3500.00	Paid
59	79	2500.00	566.87	Partial
60	90	2000.00	2000.00	Paid
61	46	4500.00	1902.22	Partial
62	32	5000.00	5000.00	Paid
63	7	1500.00	1026.79	Partial
64	81	1500.00	0.00	Unpaid
65	96	3000.00	3000.00	Paid
66	98	1500.00	448.59	Partial
67	29	4000.00	4000.00	Paid
68	21	2000.00	2000.00	Paid
69	58	3500.00	3500.00	Paid
70	66	1500.00	1500.00	Paid
71	100	3500.00	3500.00	Paid
72	35	4000.00	4000.00	Paid
73	33	2500.00	2500.00	Paid
74	68	5000.00	5000.00	Paid
75	38	3000.00	3000.00	Paid
76	91	4500.00	4500.00	Paid
77	52	3000.00	614.89	Partial
78	30	1500.00	352.78	Partial
79	49	4000.00	2934.81	Partial
80	17	4500.00	0.00	Unpaid
81	62	3500.00	0.00	Unpaid
82	56	1500.00	207.55	Partial
83	28	2000.00	231.59	Partial
84	6	2000.00	2000.00	Paid
85	27	4500.00	4500.00	Paid
86	5	3500.00	3500.00	Paid
87	83	2500.00	2500.00	Paid
88	89	1500.00	1500.00	Paid
89	47	2000.00	631.96	Partial
90	43	2500.00	2500.00	Paid
91	93	2000.00	1188.32	Partial
92	1	3500.00	3500.00	Paid
93	11	2000.00	2000.00	Paid
94	78	3000.00	0.00	Unpaid
95	23	3000.00	3000.00	Paid
96	87	4500.00	4500.00	Paid
97	57	1500.00	1242.43	Partial
98	25	5000.00	5000.00	Paid
99	48	1500.00	1500.00	Paid
100	8	2000.00	0.00	Unpaid
\.


--
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.grades (id, enrollment_id, score, grade_letter) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.students (id, first_name, middle_name, surname, email, reg_no, date_of_birth, created_at) FROM stdin;
2	Dorothy	Grace	Moore	dorothy.moore2@university.edu	STU20190002	2003-04-05	2020-07-28 03:00:00+03
3	Gregory	\N	Koech	gregory.koech3@university.edu	STU20190003	1995-12-23	2023-04-24 03:00:00+03
4	Jason	Ann	Brown	jason.brown4@university.edu	STU20190004	1996-01-19	2021-03-23 03:00:00+03
5	Ashley	Glen	Mohammed	ashley.mohammed5@university.edu	STU20190005	1995-04-19	2023-02-23 03:00:00+03
6	Margaret	\N	Liu	margaret.liu6@university.edu	STU20190006	2002-11-12	2023-01-21 03:00:00+03
7	Laura	Grace	Achieng	laura.achieng7@university.edu	STU20190007	2001-08-10	2021-07-23 03:00:00+03
8	James	\N	Lee	james.lee8@university.edu	STU20190008	2002-10-30	2022-05-15 03:00:00+03
9	Amanda	Allen	Martin	amanda.martin9@university.edu	STU20190009	1997-05-31	2021-11-20 03:00:00+03
10	Jessica	Marie	Carter	jessica.carter10@university.edu	STU20190010	1996-02-01	2022-01-05 03:00:00+03
11	Brian	Faith	King	brian.king11@university.edu	STU20190011	2004-01-19	2020-03-29 03:00:00+03
12	Maria	Dean	Maina	maria.maina12@university.edu	STU20190012	1996-05-26	2022-02-14 03:00:00+03
13	David	Joy	Nguyen	david.nguyen13@university.edu	STU20190013	2004-04-20	2023-07-11 03:00:00+03
14	Samantha	Wayne	Singh	samantha.singh14@university.edu	STU20190014	1997-02-26	2023-12-13 03:00:00+03
15	William	Ann	Yang	william.yang15@university.edu	STU20190015	1997-07-22	2021-08-15 03:00:00+03
16	David	Grace	Gonzalez	david.gonzalez16@university.edu	STU20190016	1999-04-06	2021-07-23 03:00:00+03
17	Ryan	\N	Campbell	ryan.campbell17@university.edu	STU20190017	1996-10-28	2022-01-28 03:00:00+03
18	Melissa	Scott	Wu	melissa.wu18@university.edu	STU20190018	1997-12-29	2023-12-08 03:00:00+03
19	Rachel	\N	Martinez	rachel.martinez19@university.edu	STU20190019	2001-10-31	2023-07-24 03:00:00+03
20	Nancy	Joy	Owusu	nancy.owusu20@university.edu	STU20190020	1997-09-29	2020-11-30 03:00:00+03
21	Kathleen	Kay	Wright	kathleen.wright21@university.edu	STU20190021	2005-05-18	2023-08-03 03:00:00+03
22	Frank	Joy	Lewis	frank.lewis22@university.edu	STU20190022	2002-09-05	2021-10-26 03:00:00+03
23	Jerry	\N	Davis	jerry.davis23@university.edu	STU20190023	1997-07-27	2020-03-06 03:00:00+03
24	Kenneth	Kay	Wright	kenneth.wright24@university.edu	STU20190024	1995-09-29	2021-03-08 03:00:00+03
25	Larry	\N	Green	larry.green25@university.edu	STU20190025	1997-05-20	2023-09-04 03:00:00+03
26	Angela	Kay	Zhang	angela.zhang26@university.edu	STU20200026	2000-02-23	2020-10-19 03:00:00+03
27	Kimberly	Ray	Young	kimberly.young27@university.edu	STU20200027	2003-05-10	2023-02-23 03:00:00+03
28	Jonathan	Allen	Diallo	jonathan.diallo28@university.edu	STU20200028	2001-07-22	2022-05-27 03:00:00+03
29	Justin	Kay	Campbell	justin.campbell29@university.edu	STU20200029	1997-06-17	2020-10-10 03:00:00+03
30	Shirley	Mae	Lopez	shirley.lopez30@university.edu	STU20200030	2003-06-23	2020-04-06 03:00:00+03
31	Joseph	Ray	Chen	joseph.chen31@university.edu	STU20200031	1996-10-17	2023-10-25 03:00:00+03
32	Jason	Faith	Rodriguez	jason.rodriguez32@university.edu	STU20200032	1999-04-26	2022-02-20 03:00:00+03
33	Scott	Dean	Ndegwa	scott.ndegwa33@university.edu	STU20200033	1997-10-26	2023-02-07 03:00:00+03
34	Mary	\N	Boateng	mary.boateng34@university.edu	STU20200034	1996-04-14	2023-10-28 03:00:00+03
35	Jonathan	\N	Wright	jonathan.wright35@university.edu	STU20200035	2003-08-15	2023-08-05 03:00:00+03
36	Amanda	James	Nguyen	amanda.nguyen36@university.edu	STU20200036	1999-11-16	2020-11-19 03:00:00+03
37	Ryan	Lee	Boateng	ryan.boateng37@university.edu	STU20200037	2004-10-27	2021-06-23 03:00:00+03
38	Nicholas	\N	Thompson	nicholas.thompson38@university.edu	STU20200038	2000-09-10	2020-08-05 03:00:00+03
39	Benjamin	Rose	Wang	benjamin.wang39@university.edu	STU20200039	2000-09-10	2023-06-01 03:00:00+03
40	Margaret	Ray	Mitchell	margaret.mitchell40@university.edu	STU20200040	2003-07-21	2020-11-26 03:00:00+03
41	Brenda	\N	Ndegwa	brenda.ndegwa41@university.edu	STU20200041	2005-04-20	2020-01-02 03:00:00+03
42	Scott	Jean	Gitonga	scott.gitonga42@university.edu	STU20200042	1995-03-21	2020-08-17 03:00:00+03
43	George	Rose	Walker	george.walker43@university.edu	STU20200043	1995-08-26	2021-05-08 03:00:00+03
44	Larry	Marie	Hernandez	larry.hernandez44@university.edu	STU20200044	2003-03-17	2022-09-22 03:00:00+03
45	William	\N	Maina	william.maina45@university.edu	STU20200045	2003-08-03	2020-09-14 03:00:00+03
46	Thomas	\N	Kimani	thomas.kimani46@university.edu	STU20200046	2005-08-14	2023-01-30 03:00:00+03
47	Nancy	Allen	Ndegwa	nancy.ndegwa47@university.edu	STU20200047	2004-10-13	2023-05-27 03:00:00+03
48	Jason	Scott	Koech	jason.koech48@university.edu	STU20200048	2003-06-21	2023-11-13 03:00:00+03
49	Margaret	\N	Flores	margaret.flores49@university.edu	STU20200049	1999-06-23	2023-10-07 03:00:00+03
50	Christine	Wayne	Karanja	christine.karanja50@university.edu	STU20200050	2005-02-01	2022-11-25 03:00:00+03
51	Cynthia	James	Young	cynthia.young51@university.edu	STU20210051	1997-07-09	2020-05-11 03:00:00+03
52	Amanda	Lee	Hassan	amanda.hassan52@university.edu	STU20210052	2001-03-18	2021-04-16 03:00:00+03
53	Nicole	Grace	Smith	nicole.smith53@university.edu	STU20210053	1995-10-18	2023-12-20 03:00:00+03
54	Benjamin	Ann	Robinson	benjamin.robinson54@university.edu	STU20210054	1995-10-04	2020-03-05 03:00:00+03
55	Kevin	Marie	Kiptoo	kevin.kiptoo55@university.edu	STU20210055	1997-09-01	2021-07-24 03:00:00+03
56	Debra	Mae	Ramirez	debra.ramirez56@university.edu	STU20210056	2001-01-17	2020-09-27 03:00:00+03
57	Patrick	Blake	Singh	patrick.singh57@university.edu	STU20210057	2000-04-20	2021-05-12 03:00:00+03
58	Jacob	Dale	Harris	jacob.harris58@university.edu	STU20210058	1996-01-22	2020-07-17 03:00:00+03
59	Raymond	Dale	Rivera	raymond.rivera59@university.edu	STU20210059	1999-10-01	2022-04-21 03:00:00+03
60	Kathleen	\N	Miller	kathleen.miller60@university.edu	STU20210060	2002-07-21	2023-08-31 03:00:00+03
61	Samuel	James	Davis	samuel.davis61@university.edu	STU20210061	1999-07-08	2021-11-25 03:00:00+03
62	Jessica	Grace	Harris	jessica.harris62@university.edu	STU20210062	1997-02-18	2023-01-03 03:00:00+03
63	Cynthia	Ray	Otieno	cynthia.otieno63@university.edu	STU20210063	1997-01-21	2021-07-24 03:00:00+03
64	Kathleen	Grace	Martinez	kathleen.martinez64@university.edu	STU20210064	1999-12-21	2023-02-01 03:00:00+03
65	Richard	Ann	Liu	richard.liu65@university.edu	STU20210065	2001-01-23	2020-01-31 03:00:00+03
66	Susan	\N	Walker	susan.walker66@university.edu	STU20210066	1996-11-12	2022-04-12 03:00:00+03
67	Gary	Mae	Ramirez	gary.ramirez67@university.edu	STU20210067	2004-09-11	2022-04-01 03:00:00+03
68	Linda	Lynn	Carter	linda.carter68@university.edu	STU20210068	1995-01-09	2022-03-10 03:00:00+03
69	Kimberly	Dean	Torres	kimberly.torres69@university.edu	STU20210069	1999-09-29	2023-11-27 03:00:00+03
70	Maria	Joy	Yang	maria.yang70@university.edu	STU20210070	2003-01-21	2022-09-23 03:00:00+03
71	Lisa	Scott	Nguyen	lisa.nguyen71@university.edu	STU20210071	1997-06-10	2020-04-29 03:00:00+03
72	Justin	\N	Koech	justin.koech72@university.edu	STU20210072	1995-09-07	2021-10-04 03:00:00+03
73	Linda	Ann	Ahmed	linda.ahmed73@university.edu	STU20210073	2000-05-06	2022-10-26 03:00:00+03
74	Anna	Lynn	Davis	anna.davis74@university.edu	STU20210074	2005-10-10	2022-11-06 03:00:00+03
75	David	Lynn	Rodriguez	david.rodriguez75@university.edu	STU20210075	2001-09-03	2020-05-19 03:00:00+03
76	Gregory	Grace	Wanjiku	gregory.wanjiku76@university.edu	STU20220076	1996-05-06	2023-03-12 03:00:00+03
77	Dorothy	Blake	Ibrahim	dorothy.ibrahim77@university.edu	STU20220077	1995-06-12	2023-06-22 03:00:00+03
78	David	Dale	Yang	david.yang78@university.edu	STU20220078	2001-07-18	2023-03-03 03:00:00+03
79	Eric	Jean	King	eric.king79@university.edu	STU20220079	1997-04-16	2023-10-03 03:00:00+03
80	Janet	Jean	Walker	janet.walker80@university.edu	STU20220080	1997-12-23	2022-03-21 03:00:00+03
81	Thomas	\N	Zhang	thomas.zhang81@university.edu	STU20220081	1998-05-13	2022-07-25 03:00:00+03
82	Kenneth	\N	Martinez	kenneth.martinez82@university.edu	STU20220082	1995-02-08	2022-07-27 03:00:00+03
83	Samantha	Blake	Gonzalez	samantha.gonzalez83@university.edu	STU20220083	1995-10-28	2023-01-06 03:00:00+03
84	Sandra	Glen	King	sandra.king84@university.edu	STU20220084	1996-06-26	2021-12-15 03:00:00+03
85	William	Grace	Mitchell	william.mitchell85@university.edu	STU20220085	1998-03-13	2020-11-19 03:00:00+03
86	Jeffrey	Joy	Mensah	jeffrey.mensah86@university.edu	STU20220086	1998-05-24	2023-06-06 03:00:00+03
87	Christine	Glen	Johnson	christine.johnson87@university.edu	STU20220087	2002-06-28	2023-02-09 03:00:00+03
88	Joshua	\N	Wilson	joshua.wilson88@university.edu	STU20220088	2005-07-12	2020-10-02 03:00:00+03
89	Kimberly	James	Wilson	kimberly.wilson89@university.edu	STU20220089	2003-04-29	2023-02-07 03:00:00+03
90	Lisa	Allen	Torres	lisa.torres90@university.edu	STU20220090	2001-10-13	2021-03-07 03:00:00+03
91	Janet	Jean	Clark	janet.clark91@university.edu	STU20220091	2002-09-16	2023-07-22 03:00:00+03
92	Kimberly	Glen	Gitonga	kimberly.gitonga92@university.edu	STU20220092	1997-10-25	2020-04-14 03:00:00+03
93	Susan	\N	Otieno	susan.otieno93@university.edu	STU20220093	2004-04-20	2021-07-20 03:00:00+03
94	Jennifer	Lee	Nelson	jennifer.nelson94@university.edu	STU20220094	2003-08-25	2020-09-24 03:00:00+03
95	Katherine	Allen	Lee	katherine.lee95@university.edu	STU20220095	2003-04-25	2022-06-23 03:00:00+03
96	Stephen	\N	Otieno	stephen.otieno96@university.edu	STU20220096	2001-04-16	2020-01-20 03:00:00+03
97	Joseph	Marie	Sato	joseph.sato97@university.edu	STU20220097	2005-02-19	2020-11-01 03:00:00+03
98	Brenda	Ann	Mitchell	brenda.mitchell98@university.edu	STU20220098	2001-07-13	2023-02-05 03:00:00+03
99	Charles	Dale	Taylor	charles.taylor99@university.edu	STU20220099	1995-06-21	2021-09-23 03:00:00+03
100	George	Ann	Rivera	george.rivera100@university.edu	STU20220100	1997-05-10	2023-10-28 03:00:00+03
1	Katherine	James	Brown	katherine.brown1@university.edu	STU20190001	2003-04-26	2021-07-17 03:00:00+03
\.


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.teachers (id, first_name, middle_name, surname, email, staff_no, department_id, created_at) FROM stdin;
1	Oliver	Grace	Harrison	oliver.harrison@university.ac.edu	STF1001	1	2017-06-24 03:00:00+03
2	Charlotte	James	Fleming	charlotte.fleming@university.ac.edu	STF1002	1	2013-12-19 03:00:00+03
3	Harry	\N	Blackwood	harry.blackwood@university.ac.edu	STF1003	1	2016-04-12 03:00:00+03
4	Amelia	Dale	Sterling	amelia.sterling@university.ac.edu	STF1004	1	2020-12-02 03:00:00+03
5	George	Faith	Chambers	george.chambers@university.ac.edu	STF1005	2	2018-05-28 03:00:00+03
6	Isla	Ray	Whitfield	isla.whitfield@university.ac.edu	STF1006	2	2020-05-19 03:00:00+03
7	Noah	Grace	Pennington	noah.pennington@university.ac.edu	STF1007	2	2019-09-12 03:00:00+03
8	Ava	Lynn	Ashford	ava.ashford@university.ac.edu	STF1008	2	2020-12-12 03:00:00+03
9	Jack	Lynn	Cromwell	jack.cromwell@university.ac.edu	STF1009	3	2019-11-20 03:00:00+03
10	Sophia	Dale	Darlington	sophia.darlington@university.ac.edu	STF1010	3	2010-04-12 03:00:00+03
11	Leo	Lynn	Elsworth	leo.elsworth@university.ac.edu	STF1011	3	2018-04-05 03:00:00+03
12	Mia	Jean	Farnsworth	mia.farnsworth@university.ac.edu	STF1012	3	2018-10-10 03:00:00+03
13	Liam	Dale	Goodwin	liam.goodwin@university.ac.edu	STF1013	4	2018-12-30 03:00:00+03
14	Grace	\N	Hartley	grace.hartley@university.ac.edu	STF1014	4	2019-09-10 03:00:00+03
15	Ethan	\N	Ingram	ethan.ingram@university.ac.edu	STF1015	4	2019-02-03 03:00:00+03
16	Ella	Grace	Jeffries	ella.jeffries@university.ac.edu	STF1016	4	2012-12-28 03:00:00+03
17	Lucas	Lynn	Kingsley	lucas.kingsley@university.ac.edu	STF1017	5	2018-10-31 03:00:00+03
18	Chloe	\N	Langford	chloe.langford@university.ac.edu	STF1018	5	2011-03-19 03:00:00+03
19	Mason	Kay	Merriweather	mason.merriweather@university.ac.edu	STF1019	5	2019-10-13 03:00:00+03
20	Zoe	Ann	Norwood	zoe.norwood@university.ac.edu	STF1020	5	2019-08-18 03:00:00+03
\.


--
-- Name: attendance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.attendance_id_seq', 300, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 100, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: classes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.classes_id_seq', 25, true);


--
-- Name: courses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.courses_id_seq', 15, true);


--
-- Name: departments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.departments_id_seq', 5, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 25, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: enrollments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.enrollments_id_seq', 150, true);


--
-- Name: fees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.fees_id_seq', 100, true);


--
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.grades_id_seq', 150, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.students_id_seq', 100, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.teachers_id_seq', 20, true);


--
-- Name: attendance attendance_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: classes classes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_pkey PRIMARY KEY (id);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);


--
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: enrollments enrollments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_pkey PRIMARY KEY (id);


--
-- Name: fees fees_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_pkey PRIMARY KEY (id);


--
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- Name: students students_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_email_key UNIQUE (email);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: students students_reg_no_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_reg_no_key UNIQUE (reg_no);


--
-- Name: teachers teachers_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_email_key UNIQUE (email);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_staff_no_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_staff_no_key UNIQUE (staff_no);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: attendance attendance_enrollment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.attendance
    ADD CONSTRAINT attendance_enrollment_id_fkey FOREIGN KEY (enrollment_id) REFERENCES public.enrollments(id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: classes classes_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(id);


--
-- Name: classes classes_teaccher_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.classes
    ADD CONSTRAINT classes_teaccher_id_fkey FOREIGN KEY (teaccher_id) REFERENCES public.teachers(id);


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: enrollments enrollments_class_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_class_id_fkey FOREIGN KEY (class_id) REFERENCES public.classes(id);


--
-- Name: enrollments enrollments_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.enrollments
    ADD CONSTRAINT enrollments_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: fees fees_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fees
    ADD CONSTRAINT fees_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.students(id);


--
-- Name: grades grades_enrollment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_enrollment_id_fkey FOREIGN KEY (enrollment_id) REFERENCES public.enrollments(id);


--
-- Name: teachers teachers_department_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_department_id_fkey FOREIGN KEY (department_id) REFERENCES public.departments(id);


--
-- PostgreSQL database dump complete
--

\unrestrict Loxc1mKLMCcQmi7CPOSyUDqC0C0D5ab32dzcmcBkvH9TYyq0znri8gyn8C6r4j9

