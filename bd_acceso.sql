PGDMP  5                    }         	   bd_acceso    17.4    17.4     )           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            *           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            +           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            ,           1262    16532 	   bd_acceso    DATABASE     o   CREATE DATABASE bd_acceso WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'es-VE';
    DROP DATABASE bd_acceso;
                     postgres    false            �            1259    16597    acceso    TABLE     �   CREATE TABLE public.acceso (
    acceso_clave character(25) NOT NULL,
    acceso_usuario character(25) NOT NULL,
    idacceso integer NOT NULL,
    idpersona integer NOT NULL
);
    DROP TABLE public.acceso;
       public         heap r       postgres    false            �            1259    16596    acceso_idacceso_seq    SEQUENCE     �   CREATE SEQUENCE public.acceso_idacceso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.acceso_idacceso_seq;
       public               postgres    false    218            -           0    0    acceso_idacceso_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.acceso_idacceso_seq OWNED BY public.acceso.idacceso;
          public               postgres    false    217            �            1259    16607    persona    TABLE     �   CREATE TABLE public.persona (
    idpersona integer NOT NULL,
    pers_cedula character(25) NOT NULL,
    pers_nombre character(25) NOT NULL,
    pers_apellido character(25) NOT NULL
);
    DROP TABLE public.persona;
       public         heap r       postgres    false            �            1259    16606    persona_idpersona_seq    SEQUENCE     �   CREATE SEQUENCE public.persona_idpersona_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.persona_idpersona_seq;
       public               postgres    false    220            .           0    0    persona_idpersona_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.persona_idpersona_seq OWNED BY public.persona.idpersona;
          public               postgres    false    219            �           2604    16600    acceso idacceso    DEFAULT     r   ALTER TABLE ONLY public.acceso ALTER COLUMN idacceso SET DEFAULT nextval('public.acceso_idacceso_seq'::regclass);
 >   ALTER TABLE public.acceso ALTER COLUMN idacceso DROP DEFAULT;
       public               postgres    false    218    217    218            �           2604    16610    persona idpersona    DEFAULT     v   ALTER TABLE ONLY public.persona ALTER COLUMN idpersona SET DEFAULT nextval('public.persona_idpersona_seq'::regclass);
 @   ALTER TABLE public.persona ALTER COLUMN idpersona DROP DEFAULT;
       public               postgres    false    220    219    220            $          0    16597    acceso 
   TABLE DATA           S   COPY public.acceso (acceso_clave, acceso_usuario, idacceso, idpersona) FROM stdin;
    public               postgres    false    218   �       &          0    16607    persona 
   TABLE DATA           U   COPY public.persona (idpersona, pers_cedula, pers_nombre, pers_apellido) FROM stdin;
    public               postgres    false    220          /           0    0    acceso_idacceso_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.acceso_idacceso_seq', 6, true);
          public               postgres    false    217            0           0    0    persona_idpersona_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.persona_idpersona_seq', 3, true);
          public               postgres    false    219            �           2606    16602    acceso acceso_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT acceso_pkey PRIMARY KEY (idacceso);
 <   ALTER TABLE ONLY public.acceso DROP CONSTRAINT acceso_pkey;
       public                 postgres    false    218            �           2606    16612    persona persona_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.persona
    ADD CONSTRAINT persona_pkey PRIMARY KEY (idpersona);
 >   ALTER TABLE ONLY public.persona DROP CONSTRAINT persona_pkey;
       public                 postgres    false    220            �           2606    16613    acceso llavepersona    FK CONSTRAINT     �   ALTER TABLE ONLY public.acceso
    ADD CONSTRAINT llavepersona FOREIGN KEY (idpersona) REFERENCES public.persona(idpersona) NOT VALID;
 =   ALTER TABLE ONLY public.acceso DROP CONSTRAINT llavepersona;
       public               postgres    false    220    218    4752            $   j   x�353BL����_Y���Y��.c�i�enan�EP6�89�('17�(�8EƘ��������������̼̀�|cNc.C �n_bJnfV3�}1z\\\ 4&)      &   \   x�3�460��0�4S@��9���`��Լ��,2\FP�-0u�''a5//5�(��1����������g��fb3� 3��y1z\\\ Ҽ(�     