PGDMP         5                x            ohlcamiones_prod    12.4    12.4 �    ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            <           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            =           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            >           1262    18377    ohlcamiones_prod    DATABASE     �   CREATE DATABASE ohlcamiones_prod WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';
     DROP DATABASE ohlcamiones_prod;
                ohl    false            �            1259    18379    api_administrador    TABLE     �   CREATE TABLE public.api_administrador (
    user_ptr_id integer NOT NULL,
    email character varying(100) NOT NULL,
    cargo character varying(100) NOT NULL
);
 %   DROP TABLE public.api_administrador;
       public         heap    ohl    false            �            1259    18717    api_administrador_proyecto    TABLE     �   CREATE TABLE public.api_administrador_proyecto (
    id integer NOT NULL,
    administrador_id integer NOT NULL,
    proyecto_id integer NOT NULL
);
 .   DROP TABLE public.api_administrador_proyecto;
       public         heap    ohl    false            �            1259    18732 !   api_administrador_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_administrador_proyecto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 8   DROP SEQUENCE public.api_administrador_proyecto_id_seq;
       public          ohl    false            �            1259    18382 
   api_camion    TABLE     �  CREATE TABLE public.api_camion (
    id integer NOT NULL,
    patente_camion character varying(20) NOT NULL,
    marca_camion character varying(20) NOT NULL,
    modelo_camion character varying(20) NOT NULL,
    capacidad_camion character varying(20) NOT NULL,
    nombre_conductor_principal character varying(50) NOT NULL,
    apellido_conductor_principal character varying(50) NOT NULL,
    telefono_conductor_principal character varying(20) NOT NULL,
    descripcion character varying(20) NOT NULL,
    numero_ejes character varying(20) NOT NULL,
    unidad_medida character varying(5) NOT NULL,
    color_camion character varying(20) NOT NULL,
    subcontratista_id integer NOT NULL,
    foto_camion character varying(100),
    available boolean NOT NULL
);
    DROP TABLE public.api_camion;
       public         heap    ohl    false            �            1259    18385    api_camion_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_camion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.api_camion_id_seq;
       public          ohl    false    203            ?           0    0    api_camion_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.api_camion_id_seq OWNED BY public.api_camion.id;
          public          ohl    false    204            �            1259    18387    api_codigoqr    TABLE     {   CREATE TABLE public.api_codigoqr (
    id integer NOT NULL,
    activo boolean NOT NULL,
    camion_id integer NOT NULL
);
     DROP TABLE public.api_codigoqr;
       public         heap    ohl    false            �            1259    18390    api_codigoqr_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_codigoqr_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.api_codigoqr_id_seq;
       public          ohl    false    205            @           0    0    api_codigoqr_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.api_codigoqr_id_seq OWNED BY public.api_codigoqr.id;
          public          ohl    false    206            �            1259    18392    api_despachador    TABLE     �   CREATE TABLE public.api_despachador (
    user_ptr_id integer NOT NULL,
    telefono character varying(30) NOT NULL,
    origen_asignado integer,
    proyecto_id integer NOT NULL
);
 #   DROP TABLE public.api_despachador;
       public         heap    ohl    false            �            1259    18395    api_destino    TABLE     �  CREATE TABLE public.api_destino (
    id integer NOT NULL,
    nombre_destino character varying(100) NOT NULL,
    nombre_propietario character varying(100) NOT NULL,
    rut_propietario character varying(20) NOT NULL,
    longitud character varying(20) NOT NULL,
    latitud character varying(20) NOT NULL,
    proyecto_id integer NOT NULL,
    calle character varying(50) NOT NULL,
    comuna character varying(50) NOT NULL,
    numero integer,
    available boolean NOT NULL
);
    DROP TABLE public.api_destino;
       public         heap    ohl    false            �            1259    18398    api_destino_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_destino_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.api_destino_id_seq;
       public          ohl    false    208            A           0    0    api_destino_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.api_destino_id_seq OWNED BY public.api_destino.id;
          public          ohl    false    209            �            1259    18400    api_material    TABLE     �   CREATE TABLE public.api_material (
    id integer NOT NULL,
    material character varying(100) NOT NULL,
    destino_id integer NOT NULL,
    available boolean NOT NULL
);
     DROP TABLE public.api_material;
       public         heap    ohl    false            �            1259    18403    api_material_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.api_material_id_seq;
       public          ohl    false    210            B           0    0    api_material_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.api_material_id_seq OWNED BY public.api_material.id;
          public          ohl    false    211            �            1259    18405 
   api_origen    TABLE     s  CREATE TABLE public.api_origen (
    id integer NOT NULL,
    nombre_origen character varying(100) NOT NULL,
    comuna character varying(50) NOT NULL,
    calle character varying(50) NOT NULL,
    numero integer,
    latitud character varying(20) NOT NULL,
    proyecto_id integer NOT NULL,
    longitud character varying(20) NOT NULL,
    available boolean NOT NULL
);
    DROP TABLE public.api_origen;
       public         heap    ohl    false            �            1259    18408    api_origen_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_origen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.api_origen_id_seq;
       public          ohl    false    212            C           0    0    api_origen_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.api_origen_id_seq OWNED BY public.api_origen.id;
          public          ohl    false    213            �            1259    18410    api_origentemporal    TABLE     �   CREATE TABLE public.api_origentemporal (
    id integer NOT NULL,
    id_origen integer NOT NULL,
    timestamp_inicio timestamp with time zone NOT NULL,
    duracion integer NOT NULL,
    activo boolean NOT NULL,
    despachador_id integer NOT NULL
);
 &   DROP TABLE public.api_origentemporal;
       public         heap    ohl    false            �            1259    18413    api_origentemporal_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_origentemporal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.api_origentemporal_id_seq;
       public          ohl    false    214            D           0    0    api_origentemporal_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.api_origentemporal_id_seq OWNED BY public.api_origentemporal.id;
          public          ohl    false    215            �            1259    18415    api_proyecto    TABLE       CREATE TABLE public.api_proyecto (
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
     DROP TABLE public.api_proyecto;
       public         heap    ohl    false            �            1259    18421    api_proyecto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_proyecto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.api_proyecto_id_seq;
       public          ohl    false    216            E           0    0    api_proyecto_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.api_proyecto_id_seq OWNED BY public.api_proyecto.id;
          public          ohl    false    217            �            1259    18423    api_subcontratista    TABLE     �  CREATE TABLE public.api_subcontratista (
    id integer NOT NULL,
    rut character varying(20) NOT NULL,
    razon_social character varying(100) NOT NULL,
    nombre_subcontratista character varying(100) NOT NULL,
    nombre_contacto character varying(50) NOT NULL,
    apellido_contacto character varying(50) NOT NULL,
    email_contacto character varying(100) NOT NULL,
    telefono_contacto character varying(20) NOT NULL,
    proyecto_id integer NOT NULL,
    available boolean NOT NULL
);
 &   DROP TABLE public.api_subcontratista;
       public         heap    ohl    false            �            1259    18426    api_subcontratista_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_subcontratista_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.api_subcontratista_id_seq;
       public          ohl    false    218            F           0    0    api_subcontratista_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.api_subcontratista_id_seq OWNED BY public.api_subcontratista.id;
          public          ohl    false    219            �            1259    18428    api_suborigen    TABLE     �   CREATE TABLE public.api_suborigen (
    id integer NOT NULL,
    nombre_suborigen character varying(100) NOT NULL,
    activo boolean NOT NULL,
    origen_id integer NOT NULL
);
 !   DROP TABLE public.api_suborigen;
       public         heap    ohl    false            �            1259    18431    api_suborigen_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_suborigen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.api_suborigen_id_seq;
       public          ohl    false    220            G           0    0    api_suborigen_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.api_suborigen_id_seq OWNED BY public.api_suborigen.id;
          public          ohl    false    221            �            1259    18433    api_user    TABLE     �  CREATE TABLE public.api_user (
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
    DROP TABLE public.api_user;
       public         heap    ohl    false            �            1259    18436    api_user_groups    TABLE     ~   CREATE TABLE public.api_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 #   DROP TABLE public.api_user_groups;
       public         heap    ohl    false            �            1259    18439    api_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.api_user_groups_id_seq;
       public          ohl    false    223            H           0    0    api_user_groups_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.api_user_groups_id_seq OWNED BY public.api_user_groups.id;
          public          ohl    false    224            �            1259    18441    api_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.api_user_id_seq;
       public          ohl    false    222            I           0    0    api_user_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.api_user_id_seq OWNED BY public.api_user.id;
          public          ohl    false    225            �            1259    18443    api_user_user_permissions    TABLE     �   CREATE TABLE public.api_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 -   DROP TABLE public.api_user_user_permissions;
       public         heap    ohl    false            �            1259    18446     api_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.api_user_user_permissions_id_seq;
       public          ohl    false    226            J           0    0     api_user_user_permissions_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.api_user_user_permissions_id_seq OWNED BY public.api_user_user_permissions.id;
          public          ohl    false    227            �            1259    18448    api_voucher    TABLE     *  CREATE TABLE public.api_voucher (
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
    DROP TABLE public.api_voucher;
       public         heap    ohl    false            �            1259    18454    api_voucher_id_seq    SEQUENCE     �   CREATE SEQUENCE public.api_voucher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.api_voucher_id_seq;
       public          ohl    false    228            K           0    0    api_voucher_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.api_voucher_id_seq OWNED BY public.api_voucher.id;
          public          ohl    false    229            �            1259    18456 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    ohl    false            �            1259    18459    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          ohl    false    230            L           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          ohl    false    231            �            1259    18461    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    ohl    false            �            1259    18464    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          ohl    false    232            M           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          ohl    false    233            �            1259    18466    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    ohl    false            �            1259    18469    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          ohl    false    234            N           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          ohl    false    235            �            1259    18471    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    ohl    false            �            1259    18478    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          ohl    false    236            O           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          ohl    false    237            �            1259    18480    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    ohl    false            �            1259    18483    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          ohl    false    238            P           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          ohl    false    239            �            1259    18485    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    ohl    false            �            1259    18491    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          ohl    false    240            Q           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          ohl    false    241            �            1259    18493    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    ohl    false                       2604    18499    api_camion id    DEFAULT     n   ALTER TABLE ONLY public.api_camion ALTER COLUMN id SET DEFAULT nextval('public.api_camion_id_seq'::regclass);
 <   ALTER TABLE public.api_camion ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    204    203                       2604    18500    api_codigoqr id    DEFAULT     r   ALTER TABLE ONLY public.api_codigoqr ALTER COLUMN id SET DEFAULT nextval('public.api_codigoqr_id_seq'::regclass);
 >   ALTER TABLE public.api_codigoqr ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    206    205                       2604    18501    api_destino id    DEFAULT     p   ALTER TABLE ONLY public.api_destino ALTER COLUMN id SET DEFAULT nextval('public.api_destino_id_seq'::regclass);
 =   ALTER TABLE public.api_destino ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    209    208                       2604    18502    api_material id    DEFAULT     r   ALTER TABLE ONLY public.api_material ALTER COLUMN id SET DEFAULT nextval('public.api_material_id_seq'::regclass);
 >   ALTER TABLE public.api_material ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    211    210                       2604    18503    api_origen id    DEFAULT     n   ALTER TABLE ONLY public.api_origen ALTER COLUMN id SET DEFAULT nextval('public.api_origen_id_seq'::regclass);
 <   ALTER TABLE public.api_origen ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    213    212                       2604    18504    api_origentemporal id    DEFAULT     ~   ALTER TABLE ONLY public.api_origentemporal ALTER COLUMN id SET DEFAULT nextval('public.api_origentemporal_id_seq'::regclass);
 D   ALTER TABLE public.api_origentemporal ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    215    214                       2604    18505    api_proyecto id    DEFAULT     r   ALTER TABLE ONLY public.api_proyecto ALTER COLUMN id SET DEFAULT nextval('public.api_proyecto_id_seq'::regclass);
 >   ALTER TABLE public.api_proyecto ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    217    216            	           2604    18506    api_subcontratista id    DEFAULT     ~   ALTER TABLE ONLY public.api_subcontratista ALTER COLUMN id SET DEFAULT nextval('public.api_subcontratista_id_seq'::regclass);
 D   ALTER TABLE public.api_subcontratista ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    219    218            
           2604    18507    api_suborigen id    DEFAULT     t   ALTER TABLE ONLY public.api_suborigen ALTER COLUMN id SET DEFAULT nextval('public.api_suborigen_id_seq'::regclass);
 ?   ALTER TABLE public.api_suborigen ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    221    220                       2604    18508    api_user id    DEFAULT     j   ALTER TABLE ONLY public.api_user ALTER COLUMN id SET DEFAULT nextval('public.api_user_id_seq'::regclass);
 :   ALTER TABLE public.api_user ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    225    222                       2604    18509    api_user_groups id    DEFAULT     x   ALTER TABLE ONLY public.api_user_groups ALTER COLUMN id SET DEFAULT nextval('public.api_user_groups_id_seq'::regclass);
 A   ALTER TABLE public.api_user_groups ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    224    223                       2604    18510    api_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.api_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.api_user_user_permissions_id_seq'::regclass);
 K   ALTER TABLE public.api_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    227    226                       2604    18511    api_voucher id    DEFAULT     p   ALTER TABLE ONLY public.api_voucher ALTER COLUMN id SET DEFAULT nextval('public.api_voucher_id_seq'::regclass);
 =   ALTER TABLE public.api_voucher ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    229    228                       2604    18512    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    231    230                       2604    18513    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    233    232                       2604    18514    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    235    234                       2604    18515    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    237    236                       2604    18516    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    239    238                       2604    18517    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          ohl    false    241    240                      0    18379    api_administrador 
   TABLE DATA           F   COPY public.api_administrador (user_ptr_id, email, cargo) FROM stdin;
    public          ohl    false    202   �"      7          0    18717    api_administrador_proyecto 
   TABLE DATA           W   COPY public.api_administrador_proyecto (id, administrador_id, proyecto_id) FROM stdin;
    public          ohl    false    243   �#                0    18382 
   api_camion 
   TABLE DATA           !  COPY public.api_camion (id, patente_camion, marca_camion, modelo_camion, capacidad_camion, nombre_conductor_principal, apellido_conductor_principal, telefono_conductor_principal, descripcion, numero_ejes, unidad_medida, color_camion, subcontratista_id, foto_camion, available) FROM stdin;
    public          ohl    false    203   �#                0    18387    api_codigoqr 
   TABLE DATA           =   COPY public.api_codigoqr (id, activo, camion_id) FROM stdin;
    public          ohl    false    205   %                0    18392    api_despachador 
   TABLE DATA           ^   COPY public.api_despachador (user_ptr_id, telefono, origen_asignado, proyecto_id) FROM stdin;
    public          ohl    false    207   q%                0    18395    api_destino 
   TABLE DATA           �   COPY public.api_destino (id, nombre_destino, nombre_propietario, rut_propietario, longitud, latitud, proyecto_id, calle, comuna, numero, available) FROM stdin;
    public          ohl    false    208   �%                0    18400    api_material 
   TABLE DATA           K   COPY public.api_material (id, material, destino_id, available) FROM stdin;
    public          ohl    false    210   W&                0    18405 
   api_origen 
   TABLE DATA           y   COPY public.api_origen (id, nombre_origen, comuna, calle, numero, latitud, proyecto_id, longitud, available) FROM stdin;
    public          ohl    false    212   �&                0    18410    api_origentemporal 
   TABLE DATA           o   COPY public.api_origentemporal (id, id_origen, timestamp_inicio, duracion, activo, despachador_id) FROM stdin;
    public          ohl    false    214   r'                0    18415    api_proyecto 
   TABLE DATA           �   COPY public.api_proyecto (id, centro_de_coste, nombre_proyecto, ubicacion, cliente, rut_cliente, mandante, rut_mandante, mandante_final, cantidad_voucher_imprimir, available) FROM stdin;
    public          ohl    false    216   �'                0    18423    api_subcontratista 
   TABLE DATA           �   COPY public.api_subcontratista (id, rut, razon_social, nombre_subcontratista, nombre_contacto, apellido_contacto, email_contacto, telefono_contacto, proyecto_id, available) FROM stdin;
    public          ohl    false    218   z(                 0    18428    api_suborigen 
   TABLE DATA           P   COPY public.api_suborigen (id, nombre_suborigen, activo, origen_id) FROM stdin;
    public          ohl    false    220   J)      "          0    18433    api_user 
   TABLE DATA           �   COPY public.api_user (id, password, last_login, is_superuser, rut, nombre, apellido, is_active, is_staff, date_joined) FROM stdin;
    public          ohl    false    222   �)      #          0    18436    api_user_groups 
   TABLE DATA           @   COPY public.api_user_groups (id, user_id, group_id) FROM stdin;
    public          ohl    false    223   c,      &          0    18443    api_user_user_permissions 
   TABLE DATA           O   COPY public.api_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          ohl    false    226   �,      (          0    18448    api_voucher 
   TABLE DATA           k  COPY public.api_voucher (id, proyecto, nombre_cliente, rut_cliente, nombre_subcontratista, rut_subcontratista, nombre_conductor_principal, apellido_conductor_principal, fecha_servidor, hora_servidor, fecha, hora, patente, foto_patente, volumen, tipo_material, punto_origen, punto_suborigen, punto_destino, contador_impresiones, id_qr, despachador_id) FROM stdin;
    public          ohl    false    228   �,      *          0    18456 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          ohl    false    230   �0      ,          0    18461    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          ohl    false    232   �0      .          0    18466    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          ohl    false    234   �0      0          0    18471    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          ohl    false    236   �3      2          0    18480    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          ohl    false    238   �3      4          0    18485    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          ohl    false    240   �4      6          0    18493    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          ohl    false    242   �6      R           0    0 !   api_administrador_proyecto_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.api_administrador_proyecto_id_seq', 1, false);
          public          ohl    false    244            S           0    0    api_camion_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.api_camion_id_seq', 21, true);
          public          ohl    false    204            T           0    0    api_codigoqr_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.api_codigoqr_id_seq', 22, true);
          public          ohl    false    206            U           0    0    api_destino_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.api_destino_id_seq', 6, true);
          public          ohl    false    209            V           0    0    api_material_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.api_material_id_seq', 9, true);
          public          ohl    false    211            W           0    0    api_origen_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.api_origen_id_seq', 9, true);
          public          ohl    false    213            X           0    0    api_origentemporal_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.api_origentemporal_id_seq', 21, true);
          public          ohl    false    215            Y           0    0    api_proyecto_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.api_proyecto_id_seq', 1, true);
          public          ohl    false    217            Z           0    0    api_subcontratista_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.api_subcontratista_id_seq', 4, true);
          public          ohl    false    219            [           0    0    api_suborigen_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.api_suborigen_id_seq', 5, true);
          public          ohl    false    221            \           0    0    api_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.api_user_groups_id_seq', 1, false);
          public          ohl    false    224            ]           0    0    api_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.api_user_id_seq', 20, true);
          public          ohl    false    225            ^           0    0     api_user_user_permissions_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.api_user_user_permissions_id_seq', 1, false);
          public          ohl    false    227            _           0    0    api_voucher_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.api_voucher_id_seq', 137, true);
          public          ohl    false    229            `           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          ohl    false    231            a           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          ohl    false    233            b           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 72, true);
          public          ohl    false    235            c           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          ohl    false    237            d           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 18, true);
          public          ohl    false    239            e           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          ohl    false    241                       2606    18519 -   api_administrador api_administrador_email_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.api_administrador
    ADD CONSTRAINT api_administrador_email_key UNIQUE (email);
 W   ALTER TABLE ONLY public.api_administrador DROP CONSTRAINT api_administrador_email_key;
       public            ohl    false    202                       2606    18521 (   api_administrador api_administrador_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.api_administrador
    ADD CONSTRAINT api_administrador_pkey PRIMARY KEY (user_ptr_id);
 R   ALTER TABLE ONLY public.api_administrador DROP CONSTRAINT api_administrador_pkey;
       public            ohl    false    202            t           2606    18735 Z   api_administrador_proyecto api_administrador_proyec_administrador_id_proyect_0e028812_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_proyec_administrador_id_proyect_0e028812_uniq UNIQUE (administrador_id, proyecto_id);
 �   ALTER TABLE ONLY public.api_administrador_proyecto DROP CONSTRAINT api_administrador_proyec_administrador_id_proyect_0e028812_uniq;
       public            ohl    false    243    243            w           2606    18721 :   api_administrador_proyecto api_administrador_proyecto_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_proyecto_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.api_administrador_proyecto DROP CONSTRAINT api_administrador_proyecto_pkey;
       public            ohl    false    243                       2606    18523 (   api_camion api_camion_patente_camion_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.api_camion
    ADD CONSTRAINT api_camion_patente_camion_key UNIQUE (patente_camion);
 R   ALTER TABLE ONLY public.api_camion DROP CONSTRAINT api_camion_patente_camion_key;
       public            ohl    false    203                       2606    18525    api_camion api_camion_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.api_camion
    ADD CONSTRAINT api_camion_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.api_camion DROP CONSTRAINT api_camion_pkey;
       public            ohl    false    203            #           2606    18527    api_codigoqr api_codigoqr_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.api_codigoqr
    ADD CONSTRAINT api_codigoqr_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.api_codigoqr DROP CONSTRAINT api_codigoqr_pkey;
       public            ohl    false    205            %           2606    18529 $   api_despachador api_despachador_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.api_despachador
    ADD CONSTRAINT api_despachador_pkey PRIMARY KEY (user_ptr_id);
 N   ALTER TABLE ONLY public.api_despachador DROP CONSTRAINT api_despachador_pkey;
       public            ohl    false    207            (           2606    18531    api_destino api_destino_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.api_destino
    ADD CONSTRAINT api_destino_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.api_destino DROP CONSTRAINT api_destino_pkey;
       public            ohl    false    208            ,           2606    18533    api_material api_material_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.api_material
    ADD CONSTRAINT api_material_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.api_material DROP CONSTRAINT api_material_pkey;
       public            ohl    false    210            .           2606    18535    api_origen api_origen_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.api_origen
    ADD CONSTRAINT api_origen_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.api_origen DROP CONSTRAINT api_origen_pkey;
       public            ohl    false    212            2           2606    18537 *   api_origentemporal api_origentemporal_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.api_origentemporal
    ADD CONSTRAINT api_origentemporal_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.api_origentemporal DROP CONSTRAINT api_origentemporal_pkey;
       public            ohl    false    214            5           2606    18539 -   api_proyecto api_proyecto_centro_de_coste_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.api_proyecto
    ADD CONSTRAINT api_proyecto_centro_de_coste_key UNIQUE (centro_de_coste);
 W   ALTER TABLE ONLY public.api_proyecto DROP CONSTRAINT api_proyecto_centro_de_coste_key;
       public            ohl    false    216            7           2606    18541    api_proyecto api_proyecto_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.api_proyecto
    ADD CONSTRAINT api_proyecto_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.api_proyecto DROP CONSTRAINT api_proyecto_pkey;
       public            ohl    false    216            9           2606    18543 *   api_subcontratista api_subcontratista_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.api_subcontratista
    ADD CONSTRAINT api_subcontratista_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.api_subcontratista DROP CONSTRAINT api_subcontratista_pkey;
       public            ohl    false    218            =           2606    18545 -   api_subcontratista api_subcontratista_rut_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.api_subcontratista
    ADD CONSTRAINT api_subcontratista_rut_key UNIQUE (rut);
 W   ALTER TABLE ONLY public.api_subcontratista DROP CONSTRAINT api_subcontratista_rut_key;
       public            ohl    false    218            @           2606    18547     api_suborigen api_suborigen_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.api_suborigen
    ADD CONSTRAINT api_suborigen_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.api_suborigen DROP CONSTRAINT api_suborigen_pkey;
       public            ohl    false    220            H           2606    18549 $   api_user_groups api_user_groups_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.api_user_groups DROP CONSTRAINT api_user_groups_pkey;
       public            ohl    false    223            K           2606    18551 >   api_user_groups api_user_groups_user_id_group_id_9c7ddfb5_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_user_id_group_id_9c7ddfb5_uniq UNIQUE (user_id, group_id);
 h   ALTER TABLE ONLY public.api_user_groups DROP CONSTRAINT api_user_groups_user_id_group_id_9c7ddfb5_uniq;
       public            ohl    false    223    223            B           2606    18553    api_user api_user_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.api_user
    ADD CONSTRAINT api_user_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.api_user DROP CONSTRAINT api_user_pkey;
       public            ohl    false    222            E           2606    18555    api_user api_user_rut_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.api_user
    ADD CONSTRAINT api_user_rut_key UNIQUE (rut);
 C   ALTER TABLE ONLY public.api_user DROP CONSTRAINT api_user_rut_key;
       public            ohl    false    222            N           2606    18557 8   api_user_user_permissions api_user_user_permissions_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permissions_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.api_user_user_permissions DROP CONSTRAINT api_user_user_permissions_pkey;
       public            ohl    false    226            Q           2606    18559 W   api_user_user_permissions api_user_user_permissions_user_id_permission_id_a06dd704_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permissions_user_id_permission_id_a06dd704_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.api_user_user_permissions DROP CONSTRAINT api_user_user_permissions_user_id_permission_id_a06dd704_uniq;
       public            ohl    false    226    226            T           2606    18561    api_voucher api_voucher_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.api_voucher
    ADD CONSTRAINT api_voucher_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.api_voucher DROP CONSTRAINT api_voucher_pkey;
       public            ohl    false    228            W           2606    18563    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            ohl    false    230            \           2606    18565 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            ohl    false    232    232            _           2606    18567 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            ohl    false    232            Y           2606    18569    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            ohl    false    230            b           2606    18571 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            ohl    false    234    234            d           2606    18573 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            ohl    false    234            g           2606    18575 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            ohl    false    236            j           2606    18577 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            ohl    false    238    238            l           2606    18579 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            ohl    false    238            n           2606    18581 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            ohl    false    240            q           2606    18583 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            ohl    false    242                       1259    18584 %   api_administrador_email_904ee453_like    INDEX     x   CREATE INDEX api_administrador_email_904ee453_like ON public.api_administrador USING btree (email varchar_pattern_ops);
 9   DROP INDEX public.api_administrador_email_904ee453_like;
       public            ohl    false    202            u           1259    18736 4   api_administrador_proyecto_administrador_id_48b8b4f4    INDEX     �   CREATE INDEX api_administrador_proyecto_administrador_id_48b8b4f4 ON public.api_administrador_proyecto USING btree (administrador_id);
 H   DROP INDEX public.api_administrador_proyecto_administrador_id_48b8b4f4;
       public            ohl    false    243            x           1259    18737 /   api_administrador_proyecto_proyecto_id_15f3a5fc    INDEX     }   CREATE INDEX api_administrador_proyecto_proyecto_id_15f3a5fc ON public.api_administrador_proyecto USING btree (proyecto_id);
 C   DROP INDEX public.api_administrador_proyecto_proyecto_id_15f3a5fc;
       public            ohl    false    243                       1259    18585 '   api_camion_patente_camion_ab23df7c_like    INDEX     |   CREATE INDEX api_camion_patente_camion_ab23df7c_like ON public.api_camion USING btree (patente_camion varchar_pattern_ops);
 ;   DROP INDEX public.api_camion_patente_camion_ab23df7c_like;
       public            ohl    false    203                        1259    18586 %   api_camion_subcontratista_id_e75bac29    INDEX     i   CREATE INDEX api_camion_subcontratista_id_e75bac29 ON public.api_camion USING btree (subcontratista_id);
 9   DROP INDEX public.api_camion_subcontratista_id_e75bac29;
       public            ohl    false    203            !           1259    18587    api_codigoqr_camion_id_b4cfb1e3    INDEX     ]   CREATE INDEX api_codigoqr_camion_id_b4cfb1e3 ON public.api_codigoqr USING btree (camion_id);
 3   DROP INDEX public.api_codigoqr_camion_id_b4cfb1e3;
       public            ohl    false    205            &           1259    18743 $   api_despachador_proyecto_id_ea0dd7e4    INDEX     g   CREATE INDEX api_despachador_proyecto_id_ea0dd7e4 ON public.api_despachador USING btree (proyecto_id);
 8   DROP INDEX public.api_despachador_proyecto_id_ea0dd7e4;
       public            ohl    false    207            )           1259    18588     api_destino_proyecto_id_3b91cbfa    INDEX     _   CREATE INDEX api_destino_proyecto_id_3b91cbfa ON public.api_destino USING btree (proyecto_id);
 4   DROP INDEX public.api_destino_proyecto_id_3b91cbfa;
       public            ohl    false    208            *           1259    18589     api_material_destino_id_2ee3d966    INDEX     _   CREATE INDEX api_material_destino_id_2ee3d966 ON public.api_material USING btree (destino_id);
 4   DROP INDEX public.api_material_destino_id_2ee3d966;
       public            ohl    false    210            /           1259    18590    api_origen_proyecto_id_72cd1e5c    INDEX     ]   CREATE INDEX api_origen_proyecto_id_72cd1e5c ON public.api_origen USING btree (proyecto_id);
 3   DROP INDEX public.api_origen_proyecto_id_72cd1e5c;
       public            ohl    false    212            0           1259    18591 *   api_origentemporal_despachador_id_ac4d8c14    INDEX     s   CREATE INDEX api_origentemporal_despachador_id_ac4d8c14 ON public.api_origentemporal USING btree (despachador_id);
 >   DROP INDEX public.api_origentemporal_despachador_id_ac4d8c14;
       public            ohl    false    214            3           1259    18592 *   api_proyecto_centro_de_coste_62509668_like    INDEX     �   CREATE INDEX api_proyecto_centro_de_coste_62509668_like ON public.api_proyecto USING btree (centro_de_coste varchar_pattern_ops);
 >   DROP INDEX public.api_proyecto_centro_de_coste_62509668_like;
       public            ohl    false    216            :           1259    18593 '   api_subcontratista_proyecto_id_3eeae92b    INDEX     m   CREATE INDEX api_subcontratista_proyecto_id_3eeae92b ON public.api_subcontratista USING btree (proyecto_id);
 ;   DROP INDEX public.api_subcontratista_proyecto_id_3eeae92b;
       public            ohl    false    218            ;           1259    18594 $   api_subcontratista_rut_53eb18fc_like    INDEX     v   CREATE INDEX api_subcontratista_rut_53eb18fc_like ON public.api_subcontratista USING btree (rut varchar_pattern_ops);
 8   DROP INDEX public.api_subcontratista_rut_53eb18fc_like;
       public            ohl    false    218            >           1259    18595     api_suborigen_origen_id_5d0e7c43    INDEX     _   CREATE INDEX api_suborigen_origen_id_5d0e7c43 ON public.api_suborigen USING btree (origen_id);
 4   DROP INDEX public.api_suborigen_origen_id_5d0e7c43;
       public            ohl    false    220            F           1259    18596 !   api_user_groups_group_id_3af85785    INDEX     a   CREATE INDEX api_user_groups_group_id_3af85785 ON public.api_user_groups USING btree (group_id);
 5   DROP INDEX public.api_user_groups_group_id_3af85785;
       public            ohl    false    223            I           1259    18597     api_user_groups_user_id_a5ff39fa    INDEX     _   CREATE INDEX api_user_groups_user_id_a5ff39fa ON public.api_user_groups USING btree (user_id);
 4   DROP INDEX public.api_user_groups_user_id_a5ff39fa;
       public            ohl    false    223            C           1259    18599    api_user_rut_ba2a517e_like    INDEX     b   CREATE INDEX api_user_rut_ba2a517e_like ON public.api_user USING btree (rut varchar_pattern_ops);
 .   DROP INDEX public.api_user_rut_ba2a517e_like;
       public            ohl    false    222            L           1259    18600 0   api_user_user_permissions_permission_id_305b7fea    INDEX        CREATE INDEX api_user_user_permissions_permission_id_305b7fea ON public.api_user_user_permissions USING btree (permission_id);
 D   DROP INDEX public.api_user_user_permissions_permission_id_305b7fea;
       public            ohl    false    226            O           1259    18601 *   api_user_user_permissions_user_id_f3945d65    INDEX     s   CREATE INDEX api_user_user_permissions_user_id_f3945d65 ON public.api_user_user_permissions USING btree (user_id);
 >   DROP INDEX public.api_user_user_permissions_user_id_f3945d65;
       public            ohl    false    226            R           1259    18602 #   api_voucher_despachador_id_d98b47be    INDEX     e   CREATE INDEX api_voucher_despachador_id_d98b47be ON public.api_voucher USING btree (despachador_id);
 7   DROP INDEX public.api_voucher_despachador_id_d98b47be;
       public            ohl    false    228            U           1259    18603    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            ohl    false    230            Z           1259    18604 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            ohl    false    232            ]           1259    18605 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            ohl    false    232            `           1259    18606 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            ohl    false    234            e           1259    18607 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            ohl    false    236            h           1259    18608 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            ohl    false    236            o           1259    18609 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            ohl    false    242            r           1259    18610 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            ohl    false    242            �           2606    18722 V   api_administrador_proyecto api_administrador_pr_administrador_id_48b8b4f4_fk_api_admin    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_pr_administrador_id_48b8b4f4_fk_api_admin FOREIGN KEY (administrador_id) REFERENCES public.api_administrador(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.api_administrador_proyecto DROP CONSTRAINT api_administrador_pr_administrador_id_48b8b4f4_fk_api_admin;
       public          ohl    false    243    2842    202            �           2606    18727 Q   api_administrador_proyecto api_administrador_pr_proyecto_id_15f3a5fc_fk_api_proye    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_administrador_proyecto
    ADD CONSTRAINT api_administrador_pr_proyecto_id_15f3a5fc_fk_api_proye FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.api_administrador_proyecto DROP CONSTRAINT api_administrador_pr_proyecto_id_15f3a5fc_fk_api_proye;
       public          ohl    false    216    243    2871            y           2606    18611 G   api_administrador api_administrador_user_ptr_id_154e38a1_fk_api_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_administrador
    ADD CONSTRAINT api_administrador_user_ptr_id_154e38a1_fk_api_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.api_administrador DROP CONSTRAINT api_administrador_user_ptr_id_154e38a1_fk_api_user_id;
       public          ohl    false    202    2882    222            z           2606    18616 I   api_camion api_camion_subcontratista_id_e75bac29_fk_api_subcontratista_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_camion
    ADD CONSTRAINT api_camion_subcontratista_id_e75bac29_fk_api_subcontratista_id FOREIGN KEY (subcontratista_id) REFERENCES public.api_subcontratista(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.api_camion DROP CONSTRAINT api_camion_subcontratista_id_e75bac29_fk_api_subcontratista_id;
       public          ohl    false    203    218    2873            {           2606    18621 =   api_codigoqr api_codigoqr_camion_id_b4cfb1e3_fk_api_camion_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_codigoqr
    ADD CONSTRAINT api_codigoqr_camion_id_b4cfb1e3_fk_api_camion_id FOREIGN KEY (camion_id) REFERENCES public.api_camion(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.api_codigoqr DROP CONSTRAINT api_codigoqr_camion_id_b4cfb1e3_fk_api_camion_id;
       public          ohl    false    2847    203    205            }           2606    18738 G   api_despachador api_despachador_proyecto_id_ea0dd7e4_fk_api_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_despachador
    ADD CONSTRAINT api_despachador_proyecto_id_ea0dd7e4_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.api_despachador DROP CONSTRAINT api_despachador_proyecto_id_ea0dd7e4_fk_api_proyecto_id;
       public          ohl    false    207    216    2871            |           2606    18626 C   api_despachador api_despachador_user_ptr_id_4d176955_fk_api_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_despachador
    ADD CONSTRAINT api_despachador_user_ptr_id_4d176955_fk_api_user_id FOREIGN KEY (user_ptr_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.api_despachador DROP CONSTRAINT api_despachador_user_ptr_id_4d176955_fk_api_user_id;
       public          ohl    false    222    2882    207            ~           2606    18631 ?   api_destino api_destino_proyecto_id_3b91cbfa_fk_api_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_destino
    ADD CONSTRAINT api_destino_proyecto_id_3b91cbfa_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.api_destino DROP CONSTRAINT api_destino_proyecto_id_3b91cbfa_fk_api_proyecto_id;
       public          ohl    false    2871    216    208                       2606    18636 ?   api_material api_material_destino_id_2ee3d966_fk_api_destino_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_material
    ADD CONSTRAINT api_material_destino_id_2ee3d966_fk_api_destino_id FOREIGN KEY (destino_id) REFERENCES public.api_destino(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.api_material DROP CONSTRAINT api_material_destino_id_2ee3d966_fk_api_destino_id;
       public          ohl    false    2856    208    210            �           2606    18641 =   api_origen api_origen_proyecto_id_72cd1e5c_fk_api_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_origen
    ADD CONSTRAINT api_origen_proyecto_id_72cd1e5c_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.api_origen DROP CONSTRAINT api_origen_proyecto_id_72cd1e5c_fk_api_proyecto_id;
       public          ohl    false    212    2871    216            �           2606    18646 J   api_origentemporal api_origentemporal_despachador_id_ac4d8c14_fk_api_despa    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_origentemporal
    ADD CONSTRAINT api_origentemporal_despachador_id_ac4d8c14_fk_api_despa FOREIGN KEY (despachador_id) REFERENCES public.api_despachador(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.api_origentemporal DROP CONSTRAINT api_origentemporal_despachador_id_ac4d8c14_fk_api_despa;
       public          ohl    false    207    214    2853            �           2606    18651 M   api_subcontratista api_subcontratista_proyecto_id_3eeae92b_fk_api_proyecto_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_subcontratista
    ADD CONSTRAINT api_subcontratista_proyecto_id_3eeae92b_fk_api_proyecto_id FOREIGN KEY (proyecto_id) REFERENCES public.api_proyecto(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.api_subcontratista DROP CONSTRAINT api_subcontratista_proyecto_id_3eeae92b_fk_api_proyecto_id;
       public          ohl    false    216    218    2871            �           2606    18656 ?   api_suborigen api_suborigen_origen_id_5d0e7c43_fk_api_origen_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_suborigen
    ADD CONSTRAINT api_suborigen_origen_id_5d0e7c43_fk_api_origen_id FOREIGN KEY (origen_id) REFERENCES public.api_origen(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.api_suborigen DROP CONSTRAINT api_suborigen_origen_id_5d0e7c43_fk_api_origen_id;
       public          ohl    false    212    220    2862            �           2606    18661 B   api_user_groups api_user_groups_group_id_3af85785_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_group_id_3af85785_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.api_user_groups DROP CONSTRAINT api_user_groups_group_id_3af85785_fk_auth_group_id;
       public          ohl    false    230    223    2905            �           2606    18666 ?   api_user_groups api_user_groups_user_id_a5ff39fa_fk_api_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_user_groups
    ADD CONSTRAINT api_user_groups_user_id_a5ff39fa_fk_api_user_id FOREIGN KEY (user_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.api_user_groups DROP CONSTRAINT api_user_groups_user_id_a5ff39fa_fk_api_user_id;
       public          ohl    false    222    2882    223            �           2606    18676 R   api_user_user_permissions api_user_user_permis_permission_id_305b7fea_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permis_permission_id_305b7fea_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.api_user_user_permissions DROP CONSTRAINT api_user_user_permis_permission_id_305b7fea_fk_auth_perm;
       public          ohl    false    226    234    2916            �           2606    18681 S   api_user_user_permissions api_user_user_permissions_user_id_f3945d65_fk_api_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_user_user_permissions
    ADD CONSTRAINT api_user_user_permissions_user_id_f3945d65_fk_api_user_id FOREIGN KEY (user_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.api_user_user_permissions DROP CONSTRAINT api_user_user_permissions_user_id_f3945d65_fk_api_user_id;
       public          ohl    false    226    222    2882            �           2606    18686 <   api_voucher api_voucher_despachador_id_d98b47be_fk_api_despa    FK CONSTRAINT     �   ALTER TABLE ONLY public.api_voucher
    ADD CONSTRAINT api_voucher_despachador_id_d98b47be_fk_api_despa FOREIGN KEY (despachador_id) REFERENCES public.api_despachador(user_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.api_voucher DROP CONSTRAINT api_voucher_despachador_id_d98b47be_fk_api_despa;
       public          ohl    false    2853    207    228            �           2606    18691 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          ohl    false    2916    232    234            �           2606    18696 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          ohl    false    230    2905    232            �           2606    18701 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          ohl    false    234    238    2924            �           2606    18706 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          ohl    false    2924    236    238            �           2606    18711 A   django_admin_log django_admin_log_user_id_c564eba6_fk_api_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_api_user_id FOREIGN KEY (user_id) REFERENCES public.api_user(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_api_user_id;
       public          ohl    false    2882    236    222               �   x�]�1�0D��>�O`�P�JJ��z9k�q�8�H��r4��`n3�/P~��5yJ����L� ��";��F�6���H#(X��#��)9� 6�0J��sZ���^H����BMl��GTN��D��Zٝ�伒��־��C-      7   $   x�3�44�4�2�4".cNC �2�4�R1z\\\ I8:         ;  x����N�0���S������n�+���x�/��L�@>�/&��MI��iz~����]�|��B�D�=2��"��O�OǏ����B���P�T�o�y>�g��q��=��òS�~�֪ֈ���#�,��̱�����@p�E���2�e��?#�u�u��6JVa�a��L"#�U����#���o�҃&����B�R�,�B�&q�A��A��*]φ�aP�"S[�[dj��_d�W�F�?�\����,@'�fݸW����@X�J�Ii� 6]�_aR�"n�������ý�8��:��         P   x�̱� ��[�����\�%z�v\�ՙg���>��6z�aE���;���|���W|15���J��^�����            x�34��4�4�24��f:F��� 6�         �   x����
�0Dϛ����M6�kA<(�z��Ԡ��J����z���a���W9�����3X9�H�h�ZMX�ֵQƹ�P��S��3� M�!	��4���Jg�v�Q^�2��g��<��:.�����>�BUn,�sbI��=`���FU��3:���P �[-�x�PD         +   x�3��u��s�4�,ᲀqL�KN�`g_� 07F��� ��	�         �   x�]�1N1�z��@��=��ъ"R
(��1�-Vrb�\,G�ŰD+�/}��/0�%�j��+-�P�c�}�f,��Ta{��y,�u���\�Fe�xߓG��b� 6�=jQ#�F�p�"�jz�����|��yL?�p��̓�m��M{�{v�0�sD,F	��{~y4�����J�^N�yR%r�*vu���b���������Q�         D   x�]ʱ�@���� ��c�/��q�e�%��6����r�:aQ�#8����ũ�B#�[oW��*�         �   x�eͽ�0����*z����HE1�8���$�[Ӗ�r�X�1�����}�/��닲�˶��}{O������)˯蟋"��݉�����F���߭Г5ґ�����|L�*QTb/����}p�
����)s��H�|@�F>L.~��u�II9vKc��AF         �   x�-�1
�0��������Kj6����.�KL��D�T�\��٪�?�(KΑ���>Ho>$�d#�q2ɓ�txe|$�NK�N��0?,a�%*���Cӓ�?g��*�)
1E�����	�#�ʻ�B��y��5Y����U��Y�|��j��2tˤm�$����s毶�	D�1/��#Ͳ��7Gm          4   x�3�	��sv�Q�,��2��������L9�}�"F�f`~� �&�      "   �  x�u��n�:�y������A��ZhفP�-��-�)!	����o�z�ʱ2���Z�2�@���!�s�(�xI�W3��9��p;E��)��Z�p���^+�<���cl�����7Z���u�~��#@�D�2� �">c���B]�>=14�0{@��h�Y&�ˀ��H=J�ϵ��ē�k��7K������2�?G.��W��8�@���{K�����F��h3h"���u7.3	�&aĀ�T��$e��K�hcҦ�d�
$�\T���#4u�4W�ٍҕU��S[E8����֒��y������&?TY�3`��'��6d&����M*�ialP�/U�0Ti$`��^����L�	��B�ѼM*����ec��f�Jx�/|��Ǒ�=��礓�3>^�+���8�#o�m�1�I dY�����+$7,`W:�"^��':	�Gjb$w(�����Vb��g�*n�b����[�đ�ץ��+���i|8��m�ew�g��g7��t�uy�wu��)6���ܠ�TQ���&EH~��z�pf�3��WI�Z��e"���x��J�h�G�h�;��4p���i���
B���|p0�=U����J����T�1��Q��-_.qUI�Ӧ�a��a�*v�9yw:����_�=��o�b4FA�/
R�A,��;f��Ѳ48ԙ�6%&�o�u�q��h4��'0      #      x������ � �      &      x������ � �      (      x����R�Z���S��u>�f* 
�aF�]���l1 �Ƨ���M�,�i-�^������Gq4ǅ�<E�x���8,|�V��(���8J�Q��xR�)�%)jT^#����@�j���z���(���U�bD�˴˨���T�HZ���o���h2_�W�p��誔�a	+�Yڬ�e@di�IFkx��4Z���(�p?G�h>�_��Q��^���P%\�櫂7{��x^�B �M7�P��S+��D�!�l�%ʥ���~P�i�P[�Í��S?�>#Ů!�q���\�zӪ]��{.WU�ީ���#.6�VB�,�}���?���j�;�o9�we��2L�h�.7�/_����Ŵa�(ck%�>(� �����$;J�KD�:H:���jAQ�Q��nU<��jw�UTg�8Z.C��;
r&
�
�J	�Y
�rl�"�JC��^I��J�Y���c$�<$>�pfL�	��F2X�|����$sd�&�L&��2m#Lք[<1Aw1�t������!Ү�H,��Qc�P�����V?+�`V8<8ϊWpt=����/2�~uW�9���$�h'�x'#��+�Ō#��$;]9Kel��">���)Gm����M�p	�(�>� ��K_���O9�������-�W<IK̚�#�&�I���=�0s��ڰ�Hz��5���J�N
�{���=;�p��dD���5����Iv'�,��l���l�C��}%�X���g�x�0�����;���j��ڑ������`#��8�0E�ԭ�H��h���xI7&�
��PYD��vI�
��:s|�՟�ň�QX�oS�����_��AI�#���[��/��QCǷ��$�}w�I�%�A�[�(������_��p��K,FԷI��ɖCDU$:-�댥.�b��4?�t�Ő���r0�B�s�9OT�~cf�cX�=���\2���\�L:�S�e�J��H�z��$������_�+�      *      x������ � �      ,      x������ � �      .   �  x�m�[��0E��U��Q�W���FK#�4R�i =����z8��˧�ܲ���ME7�-\?m��8����kX������^Q��`��o~�`,1X�3�
;
5d6��>��&S�l+��v�=I?Ţ�`Ϭ�Hp܅,�Kx̦A�m݇�K�腈�N	ADJVI X�vE}�����s��,�j���h��F�e<**�eь_Ş�z���6 �+��R��$�"C�����X����Ŵ�s���� �E���#�
��m���I���v���T'"}0�T�	J_	!jB�A��<�u�`Π�+[�D3�2��T3�:��d3B�p��2�'���P\�JE��I��1A(� ^B@%��y	O�o����m�B+�t�r+�t%�ѕ\<����v�}��u[�!,���\m��Ҁ�Y���Kjg="�/� �����.p�B�J�n� J����)K��9�̟U4%���,O�����q�"��m��(0�i̪�Ql:ؘC��x�1WI��,^�m�quRU�ԙo��Ҫ��̳.�W]�z��'=���i�w�_��f\�A��6j%��L�i�$�يi�82��؇a���{�N�7�Q�^l��Pqt'T͞B�N�9��0������+��[��U& �#NM��Ќ81Q�-bx�bj������,��T�'5Toz�M�mj�޴����Ĩ�i��|����v��'      0      x������ � �      2   �   x�M�K�1D��a�8��K6�[tb�#ˁ��8j�S=Tŋ��%�d�b��1`�%T�̭�8mdV��!I��jk���y��\V����τ���&j�E�ד(�?���J�b���Lq�x�*�eC'G�?���>��6���4��2� n�I&��o�l�o�i����f���(= �#|h      4     x���M�� ���)���*��g	��q#�ƃ�V��$v<jZ�x_�^�����|�t`��񃟽�Ȑ��:�b�F�ՙ3$�'Ə�E�&�>|8�0���wu��L��]��Ԗ<�
�)��nvь.�~�|JA��Oӹ�M�j(��R\l(z��)���{I�de��(|O�Gi'��TG� 2Bm�Gtv�MZ�>�tuc�`�d��2�����6�2%���
����Ǉ����!N�^������4��}�+Eu��p���+��"*3�H��~��� ��W���a�-���-� f�EΌ1|�vi��#II]�R�G�:���%'�{���J�� $$/��`NS
D���>�d�ɀ�!�	�'$G�^�y:ۚ�{�j.L-�^��&D�X�8�~^�m (J>�Y�t�<?g��A`T�ed�V1߉E2D2�*Vĵ*bX��?�4��^�P]�C\�r/��N#����BZ�j�Ui҈UU�I��� ?L�ŗ����f����x����      6      x������ � �     