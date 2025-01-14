PGDMP         :                z            postgres    14.5 (Debian 14.5-1.pgdg110+1)    14.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13757    postgres    DATABASE     \   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE postgres;
                postgres    false            	           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3336            �            1259    16408    toptions    TABLE     �   CREATE TABLE public.toptions (
    id integer NOT NULL,
    namee character varying(50) NOT NULL,
    descc character varying(50) NOT NULL,
    allocation integer NOT NULL,
    create_date character varying(50) NOT NULL
);
    DROP TABLE public.toptions;
       public         heap    postgres    false            �            1259    16407    toptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.toptions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.toptions_id_seq;
       public          postgres    false    214            
           0    0    toptions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.toptions_id_seq OWNED BY public.toptions.id;
          public          postgres    false    213            �            1259    16394 
   tpurchases    TABLE     v   CREATE TABLE public.tpurchases (
    id integer NOT NULL,
    quantity integer NOT NULL,
    user_id uuid NOT NULL
);
    DROP TABLE public.tpurchases;
       public         heap    postgres    false            �            1259    16393    tpurchases_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tpurchases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tpurchases_id_seq;
       public          postgres    false    210                       0    0    tpurchases_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tpurchases_id_seq OWNED BY public.tpurchases.id;
          public          postgres    false    209            �            1259    16401    userss    TABLE     |   CREATE TABLE public.userss (
    id integer NOT NULL,
    user_id uuid NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.userss;
       public         heap    postgres    false            �            1259    16400    userss_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.userss_id_seq;
       public          postgres    false    212                       0    0    userss_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.userss_id_seq OWNED BY public.userss.id;
          public          postgres    false    211            k           2604    16411    toptions id    DEFAULT     j   ALTER TABLE ONLY public.toptions ALTER COLUMN id SET DEFAULT nextval('public.toptions_id_seq'::regclass);
 :   ALTER TABLE public.toptions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            i           2604    16397    tpurchases id    DEFAULT     n   ALTER TABLE ONLY public.tpurchases ALTER COLUMN id SET DEFAULT nextval('public.tpurchases_id_seq'::regclass);
 <   ALTER TABLE public.tpurchases ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            j           2604    16404 	   userss id    DEFAULT     f   ALTER TABLE ONLY public.userss ALTER COLUMN id SET DEFAULT nextval('public.userss_id_seq'::regclass);
 8   ALTER TABLE public.userss ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    212    212                      0    16408    toptions 
   TABLE DATA           M   COPY public.toptions (id, namee, descc, allocation, create_date) FROM stdin;
    public          postgres    false    214   <       �          0    16394 
   tpurchases 
   TABLE DATA           ;   COPY public.tpurchases (id, quantity, user_id) FROM stdin;
    public          postgres    false    210   �                  0    16401    userss 
   TABLE DATA           3   COPY public.userss (id, user_id, name) FROM stdin;
    public          postgres    false    212   �                  0    0    toptions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.toptions_id_seq', 1, true);
          public          postgres    false    213                       0    0    tpurchases_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tpurchases_id_seq', 1, false);
          public          postgres    false    209                       0    0    userss_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.userss_id_seq', 1, true);
          public          postgres    false    211            q           2606    16413    toptions toptions_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.toptions
    ADD CONSTRAINT toptions_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.toptions DROP CONSTRAINT toptions_pkey;
       public            postgres    false    214            m           2606    16399    tpurchases tpurchases_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.tpurchases
    ADD CONSTRAINT tpurchases_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.tpurchases DROP CONSTRAINT tpurchases_pkey;
       public            postgres    false    210            o           2606    16406    userss userss_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.userss
    ADD CONSTRAINT userss_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.userss DROP CONSTRAINT userss_pkey;
       public            postgres    false    212               Y   x��1�  �^�N m��$���(�(�ot�C����=�����׫����@ A@d �
9��(X=��� >U�4Z�#��J)_h��      �      x������ � �          9   x�3�4O6�00H6�5�HJ�5IN3�M470�5K4655NN1H6M��M-*����� ,,�     