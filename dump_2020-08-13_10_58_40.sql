--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE ohlcamiones;




--
-- Drop roles
--

DROP ROLE ohl;


--
-- Roles
--

CREATE ROLE ohl;
ALTER ROLE ohl WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md57be23a05f9ab6c61a26d964d243201c4';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: ohl
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO ohl;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: ohl
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: ohl
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: ohl
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "ohlcamiones" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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
-- Name: ohlcamiones; Type: DATABASE; Schema: -; Owner: ohl
--

CREATE DATABASE ohlcamiones WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE ohlcamiones OWNER TO ohl;

\connect ohlcamiones

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
-- Name: api_administrador; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_administrador (
    user_ptr_id integer NOT NULL,
    email character varying(100) NOT NULL,
    cargo character varying(100) NOT NULL
);


ALTER TABLE public.api_administrador OWNER TO ohl;

--
-- Name: api_administrador_proyecto; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_administrador_proyecto (
    id integer NOT NULL,
    administrador_id integer NOT NULL,
    proyecto_id integer NOT NULL
);


ALTER TABLE public.api_administrador_proyecto OWNER TO ohl;

--
-- Name: api_administrador_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_administrador_proyecto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_administrador_proyecto_id_seq OWNER TO ohl;

--
-- Name: api_administrador_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_administrador_proyecto_id_seq OWNED BY public.api_administrador_proyecto.id;


--
-- Name: api_camion; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_camion (
    id integer NOT NULL,
    patente_camion character varying(20) NOT NULL,
    marca_camion character varying(20) NOT NULL,
    modelo_camion character varying(20) NOT NULL,
    capacidad_camion character varying(20) NOT NULL,
    unidad_medida character varying(5) NOT NULL,
    nombre_conductor_principal character varying(50) NOT NULL,
    apellido_conductor_principal character varying(50) NOT NULL,
    telefono_conductor_principal character varying(20) NOT NULL,
    descripcion character varying(20) NOT NULL,
    numero_ejes character varying(20) NOT NULL,
    color_camion character varying(20) NOT NULL,
    foto_camion character varying(100),
    available boolean NOT NULL,
    subcontratista_id integer NOT NULL
);


ALTER TABLE public.api_camion OWNER TO ohl;

--
-- Name: api_camion_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_camion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_camion_id_seq OWNER TO ohl;

--
-- Name: api_camion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_camion_id_seq OWNED BY public.api_camion.id;


--
-- Name: api_codigoqr; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_codigoqr (
    id integer NOT NULL,
    activo boolean NOT NULL,
    camion_id integer NOT NULL
);


ALTER TABLE public.api_codigoqr OWNER TO ohl;

--
-- Name: api_codigoqr_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_codigoqr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_codigoqr_id_seq OWNER TO ohl;

--
-- Name: api_codigoqr_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_codigoqr_id_seq OWNED BY public.api_codigoqr.id;


--
-- Name: api_despachador; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_despachador (
    user_ptr_id integer NOT NULL,
    telefono character varying(30) NOT NULL,
    origen_asignado integer,
    proyecto_id integer NOT NULL
);


ALTER TABLE public.api_despachador OWNER TO ohl;

--
-- Name: api_destino; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_destino (
    id integer NOT NULL,
    nombre_destino character varying(100) NOT NULL,
    nombre_propietario character varying(100) NOT NULL,
    rut_propietario character varying(20) NOT NULL,
    comuna character varying(50) NOT NULL,
    calle character varying(50) NOT NULL,
    numero integer,
    longitud character varying(20) NOT NULL,
    latitud character varying(20) NOT NULL,
    available boolean NOT NULL,
    proyecto_id integer NOT NULL
);


ALTER TABLE public.api_destino OWNER TO ohl;

--
-- Name: api_destino_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_destino_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_destino_id_seq OWNER TO ohl;

--
-- Name: api_destino_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_destino_id_seq OWNED BY public.api_destino.id;


--
-- Name: api_material; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_material (
    id integer NOT NULL,
    material character varying(100) NOT NULL,
    available boolean NOT NULL,
    destino_id integer NOT NULL
);


ALTER TABLE public.api_material OWNER TO ohl;

--
-- Name: api_material_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_material_id_seq OWNER TO ohl;

--
-- Name: api_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_material_id_seq OWNED BY public.api_material.id;


--
-- Name: api_origen; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_origen (
    id integer NOT NULL,
    nombre_origen character varying(100) NOT NULL,
    comuna character varying(50) NOT NULL,
    calle character varying(50) NOT NULL,
    numero integer,
    latitud character varying(20) NOT NULL,
    longitud character varying(20) NOT NULL,
    available boolean NOT NULL,
    proyecto_id integer NOT NULL
);


ALTER TABLE public.api_origen OWNER TO ohl;

--
-- Name: api_origen_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_origen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_origen_id_seq OWNER TO ohl;

--
-- Name: api_origen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_origen_id_seq OWNED BY public.api_origen.id;


--
-- Name: api_origentemporal; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_origentemporal (
    id integer NOT NULL,
    id_origen integer NOT NULL,
    timestamp_inicio timestamp with time zone NOT NULL,
    duracion integer NOT NULL,
    activo boolean NOT NULL,
    despachador_id integer NOT NULL
);


ALTER TABLE public.api_origentemporal OWNER TO ohl;

--
-- Name: api_origentemporal_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_origentemporal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_origentemporal_id_seq OWNER TO ohl;

--
-- Name: api_origentemporal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_origentemporal_id_seq OWNED BY public.api_origentemporal.id;


--
-- Name: api_proyecto; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_proyecto (
    id integer NOT NULL,
    centro_de_coste character varying(20) NOT NULL,
    nombre_proyecto character varying(100) NOT NULL,
    ubicacion character varying(100) NOT NULL,
    cliente character varying(100) NOT NULL,
    rut_cliente character varying(20) NOT NULL,
    mandante character varying(100) NOT NULL,
    rut_mandante character varying(20) NOT NULL,
    mandante_final character varying(100) NOT NULL,
    cantidad_voucher_imprimir integer NOT NULL,
    available boolean NOT NULL
);


ALTER TABLE public.api_proyecto OWNER TO ohl;

--
-- Name: api_proyecto_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_proyecto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_proyecto_id_seq OWNER TO ohl;

--
-- Name: api_proyecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_proyecto_id_seq OWNED BY public.api_proyecto.id;


--
-- Name: api_subcontratista; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_subcontratista (
    id integer NOT NULL,
    rut character varying(20) NOT NULL,
    razon_social character varying(100) NOT NULL,
    nombre_subcontratista character varying(100) NOT NULL,
    nombre_contacto character varying(50) NOT NULL,
    apellido_contacto character varying(50) NOT NULL,
    email_contacto character varying(100) NOT NULL,
    telefono_contacto character varying(20) NOT NULL,
    available boolean NOT NULL,
    proyecto_id integer NOT NULL
);


ALTER TABLE public.api_subcontratista OWNER TO ohl;

--
-- Name: api_subcontratista_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_subcontratista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_subcontratista_id_seq OWNER TO ohl;

--
-- Name: api_subcontratista_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_subcontratista_id_seq OWNED BY public.api_subcontratista.id;


--
-- Name: api_suborigen; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_suborigen (
    id integer NOT NULL,
    nombre_suborigen character varying(100) NOT NULL,
    activo boolean NOT NULL,
    origen_id integer NOT NULL
);


ALTER TABLE public.api_suborigen OWNER TO ohl;

--
-- Name: api_suborigen_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_suborigen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_suborigen_id_seq OWNER TO ohl;

--
-- Name: api_suborigen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_suborigen_id_seq OWNED BY public.api_suborigen.id;


--
-- Name: api_user; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    rut character varying(15) NOT NULL,
    nombre character varying(30) NOT NULL,
    apellido character varying(30) NOT NULL,
    is_active boolean NOT NULL,
    is_staff boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.api_user OWNER TO ohl;

--
-- Name: api_user_groups; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.api_user_groups OWNER TO ohl;

--
-- Name: api_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_user_groups_id_seq OWNER TO ohl;

--
-- Name: api_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_user_groups_id_seq OWNED BY public.api_user_groups.id;


--
-- Name: api_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_user_id_seq OWNER TO ohl;

--
-- Name: api_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_user_id_seq OWNED BY public.api_user.id;


--
-- Name: api_user_user_permissions; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.api_user_user_permissions OWNER TO ohl;

--
-- Name: api_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_user_user_permissions_id_seq OWNER TO ohl;

--
-- Name: api_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_user_user_permissions_id_seq OWNED BY public.api_user_user_permissions.id;


--
-- Name: api_voucher; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.api_voucher (
    id integer NOT NULL,
    proyecto character varying(100) NOT NULL,
    nombre_cliente character varying(100) NOT NULL,
    rut_cliente character varying(20) NOT NULL,
    nombre_subcontratista character varying(100) NOT NULL,
    rut_subcontratista character varying(20) NOT NULL,
    nombre_conductor_principal character varying(50) NOT NULL,
    apellido_conductor_principal character varying(50) NOT NULL,
    fecha_servidor date NOT NULL,
    hora_servidor time without time zone NOT NULL,
    fecha date NOT NULL,
    hora time without time zone NOT NULL,
    patente character varying(20) NOT NULL,
    foto_patente character varying(100) NOT NULL,
    volumen character varying(20) NOT NULL,
    tipo_material character varying(50) NOT NULL,
    punto_origen character varying(100) NOT NULL,
    punto_suborigen character varying(100) NOT NULL,
    punto_destino character varying(100) NOT NULL,
    contador_impresiones integer NOT NULL,
    id_qr character varying(255) NOT NULL,
    despachador_id integer NOT NULL
);


ALTER TABLE public.api_voucher OWNER TO ohl;

--
-- Name: api_voucher_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.api_voucher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.api_voucher_id_seq OWNER TO ohl;

--
-- Name: api_voucher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.api_voucher_id_seq OWNED BY public.api_voucher.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ohl;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ohl;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ohl;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ohl;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ohl;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ohl;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ohl
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


ALTER TABLE public.django_admin_log OWNER TO ohl;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ohl;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ohl;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ohl;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ohl;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ohl
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ohl;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ohl
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ohl
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ohl;

--
-- Name: api_administrador_proyecto id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador_proyecto ALTER COLUMN id SET DEFAULT nextval('public.api_administrador_proyecto_id_seq'::regclass);


--
-- Name: api_camion id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_camion ALTER COLUMN id SET DEFAULT nextval('public.api_camion_id_seq'::regclass);


--
-- Name: api_codigoqr id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_codigoqr ALTER COLUMN id SET DEFAULT nextval('public.api_codigoqr_id_seq'::regclass);


--
-- Name: api_destino id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_destino ALTER COLUMN id SET DEFAULT nextval('public.api_destino_id_seq'::regclass);


--
-- Name: api_material id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_material ALTER COLUMN id SET DEFAULT nextval('public.api_material_id_seq'::regclass);


--
-- Name: api_origen id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_origen ALTER COLUMN id SET DEFAULT nextval('public.api_origen_id_seq'::regclass);


--
-- Name: api_origentemporal id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_origentemporal ALTER COLUMN id SET DEFAULT nextval('public.api_origentemporal_id_seq'::regclass);


--
-- Name: api_proyecto id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_proyecto ALTER COLUMN id SET DEFAULT nextval('public.api_proyecto_id_seq'::regclass);


--
-- Name: api_subcontratista id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_subcontratista ALTER COLUMN id SET DEFAULT nextval('public.api_subcontratista_id_seq'::regclass);


--
-- Name: api_suborigen id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_suborigen ALTER COLUMN id SET DEFAULT nextval('public.api_suborigen_id_seq'::regclass);


--
-- Name: api_user id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user ALTER COLUMN id SET DEFAULT nextval('public.api_user_id_seq'::regclass);


--
-- Name: api_user_groups id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_groups ALTER COLUMN id SET DEFAULT nextval('public.api_user_groups_id_seq'::regclass);


--
-- Name: api_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.api_user_user_permissions_id_seq'::regclass);


--
-- Name: api_voucher id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_voucher ALTER COLUMN id SET DEFAULT nextval('public.api_voucher_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Data for Name: api_administrador; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_administrador (user_ptr_id, email, cargo) FROM stdin;
1	giovanni.aravena@avalora.com	Desarrollador
2	nicolas.greenhill@avalora.com	test
\.


--
-- Data for Name: api_administrador_proyecto; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_administrador_proyecto (id, administrador_id, proyecto_id) FROM stdin;
1	1	1
2	1	2
3	2	1
4	2	2
\.


--
-- Data for Name: api_camion; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_camion (id, patente_camion, marca_camion, modelo_camion, capacidad_camion, unidad_medida, nombre_conductor_principal, apellido_conductor_principal, telefono_conductor_principal, descripcion, numero_ejes, color_camion, foto_camion, available, subcontratista_id) FROM stdin;
1	CTDF56	scania	x20	22	m3	Juan	Pablo	+569 7898 5665		6x4			t	1
2	JKGH32	Scania	p300	21	m3	Pedro	Fernandez	+569 8856 7476		6x4	amarillo		t	1
3	CDFG23	Iveco	tector	25	m3	José	Faundez	+569 98874556		6x6	plateado		t	2
\.


--
-- Data for Name: api_codigoqr; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_codigoqr (id, activo, camion_id) FROM stdin;
1	t	1
2	t	2
3	t	3
\.


--
-- Data for Name: api_despachador; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_despachador (user_ptr_id, telefono, origen_asignado, proyecto_id) FROM stdin;
3	+569 78451236	1	1
\.


--
-- Data for Name: api_destino; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_destino (id, nombre_destino, nombre_propietario, rut_propietario, comuna, calle, numero, longitud, latitud, available, proyecto_id) FROM stdin;
1	Eskom bros ltda	Giovanni	9845648-9	Cerrillos	los alquimistas	8596	-70.7014846801758	-33.491540460358664	t	1
2	Basural escondida S.A.	Juan Carlos	16726356-9	Pirque	las colinas	9865	-70.55694580078126	-33.54540074611774	t	1
\.


--
-- Data for Name: api_material; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_material (id, material, available, destino_id) FROM stdin;
1	Marina	t	2
2	Concreto	t	2
\.


--
-- Data for Name: api_origen; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_origen (id, nombre_origen, comuna, calle, numero, latitud, longitud, available, proyecto_id) FROM stdin;
1	ori	ori	ori	1422	-33.404889471	-70.567663758	t	1
\.


--
-- Data for Name: api_origentemporal; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_origentemporal (id, id_origen, timestamp_inicio, duracion, activo, despachador_id) FROM stdin;
\.


--
-- Data for Name: api_proyecto; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_proyecto (id, centro_de_coste, nombre_proyecto, ubicacion, cliente, rut_cliente, mandante, rut_mandante, mandante_final, cantidad_voucher_imprimir, available) FROM stdin;
1	13CL20	Américo-Vespucio	San Bernardo	Vias Chile	12345678-9	Grupo Arbetris	98765432-1	Autopista del Sol	3	t
2	22CL20	Proyecto 2	San Bernardos	Vias Chile	87654321-9	Grupo Arbetris	23456789-1	Autopista del Sol	3	t
\.


--
-- Data for Name: api_subcontratista; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_subcontratista (id, rut, razon_social, nombre_subcontratista, nombre_contacto, apellido_contacto, email_contacto, telefono_contacto, available, proyecto_id) FROM stdin;
1	56373698-9	Hermanos Reinike ltda	Reinike	Christian	Reinike	christian.reinike@hr.cl	+569 5563 9893	t	1
2	89945689-5	Castillo y Casas ltda.	CyC	Armando	Casas	armando.casas@cyc.cl	+569 8972 5992	t	1
\.


--
-- Data for Name: api_suborigen; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_suborigen (id, nombre_suborigen, activo, origen_id) FROM stdin;
\.


--
-- Data for Name: api_user; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_user (id, password, last_login, is_superuser, rut, nombre, apellido, is_active, is_staff, date_joined) FROM stdin;
2	pbkdf2_sha256$180000$n5PMh42NxPTC$KAjHok4d5Bj849N3ZFSTW8nAI6+we/cIfbVwszXNjuw=	\N	t	12.345.678-9	Nicolas	Greenhill	t	t	2020-08-07 13:20:51.690954+00
1	pbkdf2_sha256$180000$KaeIP6V0W92J$8844WtT3OUCCmWlvyXRHG5A10okCZ5F/3sI5iM2ySNg=	2020-08-13 09:21:30.422058+00	t	18.457.190-0	Giovanni	Aravena	t	t	2020-08-07 13:20:44.327676+00
3	pbkdf2_sha256$180000$nw8dD0DH6vuM$oWGbLpP3VB6+OYH6SHLd6HOp2jxH3XcONQgD7CqvWco=	2020-08-10 15:15:42.821885+00	f	16516723-6	Giovanni	Aravena	t	f	2020-08-07 14:58:34.473781+00
\.


--
-- Data for Name: api_user_groups; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: api_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: api_voucher; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.api_voucher (id, proyecto, nombre_cliente, rut_cliente, nombre_subcontratista, rut_subcontratista, nombre_conductor_principal, apellido_conductor_principal, fecha_servidor, hora_servidor, fecha, hora, patente, foto_patente, volumen, tipo_material, punto_origen, punto_suborigen, punto_destino, contador_impresiones, id_qr, despachador_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ohl
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add user	6	add_user
22	Can change user	6	change_user
23	Can delete user	6	delete_user
24	Can view user	6	view_user
25	Can add camion	7	add_camion
26	Can change camion	7	change_camion
27	Can delete camion	7	delete_camion
28	Can view camion	7	view_camion
29	Can add destino	8	add_destino
30	Can change destino	8	change_destino
31	Can delete destino	8	delete_destino
32	Can view destino	8	view_destino
33	Can add origen	9	add_origen
34	Can change origen	9	change_origen
35	Can delete origen	9	delete_origen
36	Can view origen	9	view_origen
37	Can add proyecto	10	add_proyecto
38	Can change proyecto	10	change_proyecto
39	Can delete proyecto	10	delete_proyecto
40	Can view proyecto	10	view_proyecto
41	Can add despachador	11	add_despachador
42	Can change despachador	11	change_despachador
43	Can delete despachador	11	delete_despachador
44	Can view despachador	11	view_despachador
45	Can add suborigen	12	add_suborigen
46	Can change suborigen	12	change_suborigen
47	Can delete suborigen	12	delete_suborigen
48	Can view suborigen	12	view_suborigen
49	Can add subcontratista	13	add_subcontratista
50	Can change subcontratista	13	change_subcontratista
51	Can delete subcontratista	13	delete_subcontratista
52	Can view subcontratista	13	view_subcontratista
53	Can add material	14	add_material
54	Can change material	14	change_material
55	Can delete material	14	delete_material
56	Can view material	14	view_material
57	Can add codigo qr	15	add_codigoqr
58	Can change codigo qr	15	change_codigoqr
59	Can delete codigo qr	15	delete_codigoqr
60	Can view codigo qr	15	view_codigoqr
61	Can add voucher	16	add_voucher
62	Can change voucher	16	change_voucher
63	Can delete voucher	16	delete_voucher
64	Can view voucher	16	view_voucher
65	Can add origen temporal	17	add_origentemporal
66	Can change origen temporal	17	change_origentemporal
67	Can delete origen temporal	17	delete_origentemporal
68	Can view origen temporal	17	view_origentemporal
69	Can add administrador	18	add_administrador
70	Can change administrador	18	change_administrador
71	Can delete administrador	18	delete_administrador
72	Can view administrador	18	view_administrador
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	api	user
7	api	camion
8	api	destino
9	api	origen
10	api	proyecto
11	api	despachador
12	api	suborigen
13	api	subcontratista
14	api	material
15	api	codigoqr
16	api	voucher
17	api	origentemporal
18	api	administrador
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-08-07 13:18:12.218706+00
2	contenttypes	0002_remove_content_type_name	2020-08-07 13:18:12.290482+00
3	auth	0001_initial	2020-08-07 13:18:12.469162+00
4	auth	0002_alter_permission_name_max_length	2020-08-07 13:18:12.775682+00
5	auth	0003_alter_user_email_max_length	2020-08-07 13:18:12.809621+00
6	auth	0004_alter_user_username_opts	2020-08-07 13:18:12.87385+00
7	auth	0005_alter_user_last_login_null	2020-08-07 13:18:12.94892+00
8	auth	0006_require_contenttypes_0002	2020-08-07 13:18:12.972551+00
9	auth	0007_alter_validators_add_error_messages	2020-08-07 13:18:13.03834+00
10	auth	0008_alter_user_username_max_length	2020-08-07 13:18:13.072904+00
11	auth	0009_alter_user_last_name_max_length	2020-08-07 13:18:13.096632+00
12	auth	0010_alter_group_name_max_length	2020-08-07 13:18:13.158056+00
13	auth	0011_update_proxy_permissions	2020-08-07 13:18:13.201507+00
14	api	0001_initial	2020-08-07 13:18:14.55979+00
15	admin	0001_initial	2020-08-07 13:18:15.510365+00
16	admin	0002_logentry_remove_auto_add	2020-08-07 13:18:15.665715+00
17	admin	0003_logentry_add_action_flag_choices	2020-08-07 13:18:15.708943+00
18	sessions	0001_initial	2020-08-07 13:18:15.780737+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ohl
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Name: api_administrador_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_administrador_proyecto_id_seq', 5, true);


--
-- Name: api_camion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_camion_id_seq', 3, true);


--
-- Name: api_codigoqr_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_codigoqr_id_seq', 3, true);


--
-- Name: api_destino_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_destino_id_seq', 2, true);


--
-- Name: api_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_material_id_seq', 2, true);


--
-- Name: api_origen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_origen_id_seq', 1, true);


--
-- Name: api_origentemporal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_origentemporal_id_seq', 1, false);


--
-- Name: api_proyecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_proyecto_id_seq', 2, true);


--
-- Name: api_subcontratista_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_subcontratista_id_seq', 2, true);


--
-- Name: api_suborigen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_suborigen_id_seq', 1, false);


--
-- Name: api_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_user_groups_id_seq', 1, false);


--
-- Name: api_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_user_id_seq', 4, true);


--
-- Name: api_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_user_user_permissions_id_seq', 1, false);


--
-- Name: api_voucher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.api_voucher_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ohl
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);


--
-- Name: api_administrador api_administrador_email_key; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador
    ADD CONSTRAINT api_administrador_email_key UNIQUE (email);


--
-- Name: api_administrador api_administrador_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador
    ADD CONSTRAINT api_administrador_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: api_administrador_proyecto api_administrador_proyec_administrador_id_proyect_0e028812_uniq; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_proyec_administrador_id_proyect_0e028812_uniq UNIQUE (administrador_id, proyecto_id);


--
-- Name: api_administrador_proyecto api_administrador_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_proyecto_pkey PRIMARY KEY (id);


--
-- Name: api_camion api_camion_patente_camion_key; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_camion
    ADD CONSTRAINT api_camion_patente_camion_key UNIQUE (patente_camion);


--
-- Name: api_camion api_camion_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_camion
    ADD CONSTRAINT api_camion_pkey PRIMARY KEY (id);


--
-- Name: api_codigoqr api_codigoqr_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_codigoqr
    ADD CONSTRAINT api_codigoqr_pkey PRIMARY KEY (id);


--
-- Name: api_despachador api_despachador_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_despachador
    ADD CONSTRAINT api_despachador_pkey PRIMARY KEY (user_ptr_id);


--
-- Name: api_destino api_destino_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_destino
    ADD CONSTRAINT api_destino_pkey PRIMARY KEY (id);


--
-- Name: api_material api_material_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_material
    ADD CONSTRAINT api_material_pkey PRIMARY KEY (id);


--
-- Name: api_origen api_origen_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_origen
    ADD CONSTRAINT api_origen_pkey PRIMARY KEY (id);


--
-- Name: api_origentemporal api_origentemporal_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_origentemporal
    ADD CONSTRAINT api_origentemporal_pkey PRIMARY KEY (id);


--
-- Name: api_proyecto api_proyecto_centro_de_coste_key; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_proyecto
    ADD CONSTRAINT api_proyecto_centro_de_coste_key UNIQUE (centro_de_coste);


--
-- Name: api_proyecto api_proyecto_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_proyecto
    ADD CONSTRAINT api_proyecto_pkey PRIMARY KEY (id);


--
-- Name: api_subcontratista api_subcontratista_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_subcontratista
    ADD CONSTRAINT api_subcontratista_pkey PRIMARY KEY (id);


--
-- Name: api_subcontratista api_subcontratista_rut_key; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_subcontratista
    ADD CONSTRAINT api_subcontratista_rut_key UNIQUE (rut);


--
-- Name: api_suborigen api_suborigen_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_suborigen
    ADD CONSTRAINT api_suborigen_pkey PRIMARY KEY (id);


--
-- Name: api_user_groups api_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_pkey PRIMARY KEY (id);


--
-- Name: api_user_groups api_user_groups_user_id_group_id_9c7ddfb5_uniq; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_user_id_group_id_9c7ddfb5_uniq UNIQUE (user_id, group_id);


--
-- Name: api_user api_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user
    ADD CONSTRAINT api_user_pkey PRIMARY KEY (id);


--
-- Name: api_user api_user_rut_key; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user
    ADD CONSTRAINT api_user_rut_key UNIQUE (rut);


--
-- Name: api_user_user_permissions api_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: api_user_user_permissions api_user_user_permissions_user_id_permission_id_a06dd704_uniq; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permissions_user_id_permission_id_a06dd704_uniq UNIQUE (user_id, permission_id);


--
-- Name: api_voucher api_voucher_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_voucher
    ADD CONSTRAINT api_voucher_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: api_administrador_email_904ee453_like; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_administrador_email_904ee453_like ON public.api_administrador USING btree (email varchar_pattern_ops);


--
-- Name: api_administrador_proyecto_administrador_id_48b8b4f4; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_administrador_proyecto_administrador_id_48b8b4f4 ON public.api_administrador_proyecto USING btree (administrador_id);


--
-- Name: api_administrador_proyecto_proyecto_id_15f3a5fc; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_administrador_proyecto_proyecto_id_15f3a5fc ON public.api_administrador_proyecto USING btree (proyecto_id);


--
-- Name: api_camion_patente_camion_ab23df7c_like; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_camion_patente_camion_ab23df7c_like ON public.api_camion USING btree (patente_camion varchar_pattern_ops);


--
-- Name: api_camion_subcontratista_id_e75bac29; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_camion_subcontratista_id_e75bac29 ON public.api_camion USING btree (subcontratista_id);


--
-- Name: api_codigoqr_camion_id_b4cfb1e3; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_codigoqr_camion_id_b4cfb1e3 ON public.api_codigoqr USING btree (camion_id);


--
-- Name: api_despachador_proyecto_id_ea0dd7e4; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_despachador_proyecto_id_ea0dd7e4 ON public.api_despachador USING btree (proyecto_id);


--
-- Name: api_destino_proyecto_id_3b91cbfa; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_destino_proyecto_id_3b91cbfa ON public.api_destino USING btree (proyecto_id);


--
-- Name: api_material_destino_id_2ee3d966; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_material_destino_id_2ee3d966 ON public.api_material USING btree (destino_id);


--
-- Name: api_origen_proyecto_id_72cd1e5c; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_origen_proyecto_id_72cd1e5c ON public.api_origen USING btree (proyecto_id);


--
-- Name: api_origentemporal_despachador_id_ac4d8c14; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_origentemporal_despachador_id_ac4d8c14 ON public.api_origentemporal USING btree (despachador_id);


--
-- Name: api_proyecto_centro_de_coste_62509668_like; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_proyecto_centro_de_coste_62509668_like ON public.api_proyecto USING btree (centro_de_coste varchar_pattern_ops);


--
-- Name: api_subcontratista_proyecto_id_3eeae92b; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_subcontratista_proyecto_id_3eeae92b ON public.api_subcontratista USING btree (proyecto_id);


--
-- Name: api_subcontratista_rut_53eb18fc_like; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_subcontratista_rut_53eb18fc_like ON public.api_subcontratista USING btree (rut varchar_pattern_ops);


--
-- Name: api_suborigen_origen_id_5d0e7c43; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_suborigen_origen_id_5d0e7c43 ON public.api_suborigen USING btree (origen_id);


--
-- Name: api_user_groups_group_id_3af85785; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_user_groups_group_id_3af85785 ON public.api_user_groups USING btree (group_id);


--
-- Name: api_user_groups_user_id_a5ff39fa; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_user_groups_user_id_a5ff39fa ON public.api_user_groups USING btree (user_id);


--
-- Name: api_user_rut_ba2a517e_like; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_user_rut_ba2a517e_like ON public.api_user USING btree (rut varchar_pattern_ops);


--
-- Name: api_user_user_permissions_permission_id_305b7fea; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_user_user_permissions_permission_id_305b7fea ON public.api_user_user_permissions USING btree (permission_id);


--
-- Name: api_user_user_permissions_user_id_f3945d65; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_user_user_permissions_user_id_f3945d65 ON public.api_user_user_permissions USING btree (user_id);


--
-- Name: api_voucher_despachador_id_d98b47be; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX api_voucher_despachador_id_d98b47be ON public.api_voucher USING btree (despachador_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ohl
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: api_administrador_proyecto api_administrador_pr_administrador_id_48b8b4f4_fk_api_admin; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_pr_administrador_id_48b8b4f4_fk_api_admin FOREIGN KEY (administrador_id) REFERENCES public.api_administrador(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_administrador_proyecto api_administrador_pr_proyecto_id_15f3a5fc_fk_api_proye; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_pr_proyecto_id_15f3a5fc_fk_api_proye FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_administrador api_administrador_user_ptr_id_154e38a1_fk_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_administrador
    ADD CONSTRAINT api_administrador_user_ptr_id_154e38a1_fk_api_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_camion api_camion_subcontratista_id_e75bac29_fk_api_subcontratista_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_camion
    ADD CONSTRAINT api_camion_subcontratista_id_e75bac29_fk_api_subcontratista_id FOREIGN KEY (subcontratista_id) REFERENCES public.api_subcontratista(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_codigoqr api_codigoqr_camion_id_b4cfb1e3_fk_api_camion_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_codigoqr
    ADD CONSTRAINT api_codigoqr_camion_id_b4cfb1e3_fk_api_camion_id FOREIGN KEY (camion_id) REFERENCES public.api_camion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_despachador api_despachador_proyecto_id_ea0dd7e4_fk_api_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_despachador
    ADD CONSTRAINT api_despachador_proyecto_id_ea0dd7e4_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_despachador api_despachador_user_ptr_id_4d176955_fk_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_despachador
    ADD CONSTRAINT api_despachador_user_ptr_id_4d176955_fk_api_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_destino api_destino_proyecto_id_3b91cbfa_fk_api_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_destino
    ADD CONSTRAINT api_destino_proyecto_id_3b91cbfa_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_material api_material_destino_id_2ee3d966_fk_api_destino_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_material
    ADD CONSTRAINT api_material_destino_id_2ee3d966_fk_api_destino_id FOREIGN KEY (destino_id) REFERENCES public.api_destino(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_origen api_origen_proyecto_id_72cd1e5c_fk_api_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_origen
    ADD CONSTRAINT api_origen_proyecto_id_72cd1e5c_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_origentemporal api_origentemporal_despachador_id_ac4d8c14_fk_api_despa; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_origentemporal
    ADD CONSTRAINT api_origentemporal_despachador_id_ac4d8c14_fk_api_despa FOREIGN KEY (despachador_id) REFERENCES public.api_despachador(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_subcontratista api_subcontratista_proyecto_id_3eeae92b_fk_api_proyecto_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_subcontratista
    ADD CONSTRAINT api_subcontratista_proyecto_id_3eeae92b_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_suborigen api_suborigen_origen_id_5d0e7c43_fk_api_origen_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_suborigen
    ADD CONSTRAINT api_suborigen_origen_id_5d0e7c43_fk_api_origen_id FOREIGN KEY (origen_id) REFERENCES public.api_origen(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_user_groups api_user_groups_group_id_3af85785_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_group_id_3af85785_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_user_groups api_user_groups_user_id_a5ff39fa_fk_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_user_id_a5ff39fa_fk_api_user_id FOREIGN KEY (user_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_user_user_permissions api_user_user_permis_permission_id_305b7fea_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permis_permission_id_305b7fea_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_user_user_permissions api_user_user_permissions_user_id_f3945d65_fk_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permissions_user_id_f3945d65_fk_api_user_id FOREIGN KEY (user_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: api_voucher api_voucher_despachador_id_d98b47be_fk_api_despa; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.api_voucher
    ADD CONSTRAINT api_voucher_despachador_id_d98b47be_fk_api_despa FOREIGN KEY (despachador_id) REFERENCES public.api_despachador(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_api_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ohl
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_api_user_id FOREIGN KEY (user_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.0
-- Dumped by pg_dump version 12.0

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: ohl
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO ohl;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: ohl
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

