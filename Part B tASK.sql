PGDMP     3                    |            DA- Car repairs    13.12    15.4 -    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    42105    DA- Car repairs    DATABASE     �   CREATE DATABASE "DA- Car repairs" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United Kingdom.1252';
 !   DROP DATABASE "DA- Car repairs";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    42180 	   customers    TABLE     �   CREATE TABLE public.customers (
    customerid integer NOT NULL,
    name character varying(100) NOT NULL,
    address character varying(100) NOT NULL,
    phone character varying(20) NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false    4            �            1259    42178    customers_customerid_seq    SEQUENCE     �   CREATE SEQUENCE public.customers_customerid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customers_customerid_seq;
       public          postgres    false    4    201            �           0    0    customers_customerid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.customers_customerid_seq OWNED BY public.customers.customerid;
          public          postgres    false    200            �            1259    42253    invoices    TABLE     m  CREATE TABLE public.invoices (
    invoiceid integer NOT NULL,
    invoicedate date NOT NULL,
    subtotal numeric(20,2) NOT NULL,
    salestaxrate integer NOT NULL,
    salestax numeric(20,2) NOT NULL,
    totallabour numeric(20,2) NOT NULL,
    totalparts numeric(20,2) NOT NULL,
    total numeric(20,2) NOT NULL,
    customerid integer,
    vehicleid integer
);
    DROP TABLE public.invoices;
       public         heap    postgres    false    4            �            1259    42251    invoices_invoiceid_seq    SEQUENCE     �   CREATE SEQUENCE public.invoices_invoiceid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.invoices_invoiceid_seq;
       public          postgres    false    209    4            �           0    0    invoices_invoiceid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.invoices_invoiceid_seq OWNED BY public.invoices.invoiceid;
          public          postgres    false    208            �            1259    42214    job    TABLE     �   CREATE TABLE public.job (
    jobid integer NOT NULL,
    vehicleid integer,
    description character varying(255),
    hours numeric(10,2),
    rate numeric(10,2),
    amount numeric(10,2),
    invoiceid integer
);
    DROP TABLE public.job;
       public         heap    postgres    false    4            �            1259    42212    job_jobid_seq    SEQUENCE     �   CREATE SEQUENCE public.job_jobid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.job_jobid_seq;
       public          postgres    false    205    4            �           0    0    job_jobid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.job_jobid_seq OWNED BY public.job.jobid;
          public          postgres    false    204            �            1259    42232    parts    TABLE     �   CREATE TABLE public.parts (
    partid integer NOT NULL,
    jobid integer,
    partnumber character varying(255),
    partname character varying(255),
    quantity integer,
    unitprice numeric(10,2),
    amount numeric(10,2),
    invoiceid integer
);
    DROP TABLE public.parts;
       public         heap    postgres    false    4            �            1259    42230    parts_partid_seq    SEQUENCE     �   CREATE SEQUENCE public.parts_partid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.parts_partid_seq;
       public          postgres    false    207    4            �           0    0    parts_partid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.parts_partid_seq OWNED BY public.parts.partid;
          public          postgres    false    206            �            1259    42188    vehicles    TABLE     ~  CREATE TABLE public.vehicles (
    vehicleid integer NOT NULL,
    make character varying(50) NOT NULL,
    model character varying(50) NOT NULL,
    year integer NOT NULL,
    color character varying(50) NOT NULL,
    vin character varying(100) NOT NULL,
    regnumber character varying(100) NOT NULL,
    mileage integer NOT NULL,
    ownername character varying(100) NOT NULL
);
    DROP TABLE public.vehicles;
       public         heap    postgres    false    4            �            1259    42186    vehicles_vehicleid_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicles_vehicleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.vehicles_vehicleid_seq;
       public          postgres    false    4    203            �           0    0    vehicles_vehicleid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.vehicles_vehicleid_seq OWNED BY public.vehicles.vehicleid;
          public          postgres    false    202            ;           2604    42183    customers customerid    DEFAULT     |   ALTER TABLE ONLY public.customers ALTER COLUMN customerid SET DEFAULT nextval('public.customers_customerid_seq'::regclass);
 C   ALTER TABLE public.customers ALTER COLUMN customerid DROP DEFAULT;
       public          postgres    false    201    200    201            ?           2604    42256    invoices invoiceid    DEFAULT     x   ALTER TABLE ONLY public.invoices ALTER COLUMN invoiceid SET DEFAULT nextval('public.invoices_invoiceid_seq'::regclass);
 A   ALTER TABLE public.invoices ALTER COLUMN invoiceid DROP DEFAULT;
       public          postgres    false    208    209    209            =           2604    42217 	   job jobid    DEFAULT     f   ALTER TABLE ONLY public.job ALTER COLUMN jobid SET DEFAULT nextval('public.job_jobid_seq'::regclass);
 8   ALTER TABLE public.job ALTER COLUMN jobid DROP DEFAULT;
       public          postgres    false    204    205    205            >           2604    42235    parts partid    DEFAULT     l   ALTER TABLE ONLY public.parts ALTER COLUMN partid SET DEFAULT nextval('public.parts_partid_seq'::regclass);
 ;   ALTER TABLE public.parts ALTER COLUMN partid DROP DEFAULT;
       public          postgres    false    206    207    207            <           2604    42191    vehicles vehicleid    DEFAULT     x   ALTER TABLE ONLY public.vehicles ALTER COLUMN vehicleid SET DEFAULT nextval('public.vehicles_vehicleid_seq'::regclass);
 A   ALTER TABLE public.vehicles ALTER COLUMN vehicleid DROP DEFAULT;
       public          postgres    false    203    202    203            �          0    42180 	   customers 
   TABLE DATA           E   COPY public.customers (customerid, name, address, phone) FROM stdin;
    public          postgres    false    201   }4       �          0    42253    invoices 
   TABLE DATA           �   COPY public.invoices (invoiceid, invoicedate, subtotal, salestaxrate, salestax, totallabour, totalparts, total, customerid, vehicleid) FROM stdin;
    public          postgres    false    209   c5       �          0    42214    job 
   TABLE DATA           \   COPY public.job (jobid, vehicleid, description, hours, rate, amount, invoiceid) FROM stdin;
    public          postgres    false    205   �5       �          0    42232    parts 
   TABLE DATA           l   COPY public.parts (partid, jobid, partnumber, partname, quantity, unitprice, amount, invoiceid) FROM stdin;
    public          postgres    false    207   7       �          0    42188    vehicles 
   TABLE DATA           k   COPY public.vehicles (vehicleid, make, model, year, color, vin, regnumber, mileage, ownername) FROM stdin;
    public          postgres    false    203   /8       �           0    0    customers_customerid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.customers_customerid_seq', 1, false);
          public          postgres    false    200            �           0    0    invoices_invoiceid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.invoices_invoiceid_seq', 1, false);
          public          postgres    false    208            �           0    0    job_jobid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.job_jobid_seq', 1, false);
          public          postgres    false    204            �           0    0    parts_partid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.parts_partid_seq', 1, false);
          public          postgres    false    206            �           0    0    vehicles_vehicleid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.vehicles_vehicleid_seq', 1, false);
          public          postgres    false    202            A           2606    42185    customers customers_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customerid);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    201            I           2606    42258    invoices invoices_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_pkey PRIMARY KEY (invoiceid);
 @   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_pkey;
       public            postgres    false    209            E           2606    42219    job job_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_pkey PRIMARY KEY (jobid);
 6   ALTER TABLE ONLY public.job DROP CONSTRAINT job_pkey;
       public            postgres    false    205            G           2606    42240    parts parts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_pkey PRIMARY KEY (partid);
 :   ALTER TABLE ONLY public.parts DROP CONSTRAINT parts_pkey;
       public            postgres    false    207            C           2606    42193    vehicles vehicles_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.vehicles
    ADD CONSTRAINT vehicles_pkey PRIMARY KEY (vehicleid);
 @   ALTER TABLE ONLY public.vehicles DROP CONSTRAINT vehicles_pkey;
       public            postgres    false    203            L           2606    42259 !   invoices invoices_customerid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_customerid_fkey FOREIGN KEY (customerid) REFERENCES public.customers(customerid);
 K   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_customerid_fkey;
       public          postgres    false    209    201    2881            M           2606    42264     invoices invoices_vehicleid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.invoices
    ADD CONSTRAINT invoices_vehicleid_fkey FOREIGN KEY (vehicleid) REFERENCES public.vehicles(vehicleid);
 J   ALTER TABLE ONLY public.invoices DROP CONSTRAINT invoices_vehicleid_fkey;
       public          postgres    false    209    2883    203            J           2606    42220    job job_vehicleid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.job
    ADD CONSTRAINT job_vehicleid_fkey FOREIGN KEY (vehicleid) REFERENCES public.vehicles(vehicleid);
 @   ALTER TABLE ONLY public.job DROP CONSTRAINT job_vehicleid_fkey;
       public          postgres    false    2883    205    203            K           2606    42241    parts parts_jobid_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.parts
    ADD CONSTRAINT parts_jobid_fkey FOREIGN KEY (jobid) REFERENCES public.job(jobid);
 @   ALTER TABLE ONLY public.parts DROP CONSTRAINT parts_jobid_fkey;
       public          postgres    false    205    207    2885            �   �   x�m��n�0�g�)��Ⱦ�e,�%R��,]\p��S����R��w�s+S���F��/��!3�֑�o�T���/�ZP���0�Fx����pdmۘ:hz:����8��%^�� k;Xk�Bm�fMc��N|�C)Csz�qz�����[��]��̌u���W�� ��ދ���[�ϴ�G��}��R��=� �R�?g��p�W�      �   �   x�E��!�3��A���_�"���	O�(��������YG'A���j��~�Ve�"a��Fثa[,ݬ�k��U*i�~e<��G�'9yK�,AH9>7��̥��i��F��r^�(�_Z__:{did�WK)/Ue1�      �     x�M��n� EǇ��Qﰽ�7in:�ZT"U�>��Ǣ�Y{ges��du?�����S�߃1�~�w���'`�b��*�J��,}1��ힼ�҇�@���sDb�Q;=a$Zo����Z�<[G�AO�I\��RQH��;�� �T'�|2�:F��z�c��pMj�ohI���	9��p�z
�6�Pڴ�f�@��!�wm=��C�4t����	�y��"��=��H���|!�#�W�E��.����T^�o!���z�      �     x�Mнn�0���~�(��G@b�*�����%,b�&�1R��=���!�����.�P��������5����`x�*0���o�ݗ��Oj���]�+@@ǰ��CH��җ	$^�ԮT�%g������kO޶�,G��(Р�u-l}���1���3Dff�8���X|��@�b�
1K��qPBJ���;NS��t���Ēa�b��Y�p3�Ǆqj�y\��a�M+	�qL~���I?�9�����h8�|��C�_������B� ]�      �     x�M�͊�0��ǧ�8$�X��c��Sh��٤��0��u��O"]ts9�r��.ê>�(�)�XY������'���҇�1qg��,]
ltߛo=��������c�nT(��U(p�̨�?���Oj�/�3�������6M��%�j�.JP���,3�&�r�vר
���Y�GT��7Hh I5��l\7[�X��Eykԯ� N��-֥�/�����Y��Y��� �����@��ɿ�G�ʚ�=8e��Nz@Q�)�tFQ�$��l��&Ӓ��A��-����aJ     