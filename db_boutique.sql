PGDMP     :    ,            	    y            db_boutique    13.4    13.4     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    db_boutique    DATABASE     o   CREATE DATABASE db_boutique WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE db_boutique;
                postgres    false            ?            1259    24596    products    TABLE     ?   CREATE TABLE public.products (
    idproduct integer NOT NULL,
    name character varying(50),
    description character varying(255),
    price bigint,
    instock boolean
);
    DROP TABLE public.products;
       public         heap    eudes    false            ?            1259    24594    products_idproduct_seq    SEQUENCE     ?   CREATE SEQUENCE public.products_idproduct_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.products_idproduct_seq;
       public          eudes    false    201            ?           0    0    products_idproduct_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.products_idproduct_seq OWNED BY public.products.idproduct;
          public          eudes    false    200            "           2604    24599    products idproduct    DEFAULT     x   ALTER TABLE ONLY public.products ALTER COLUMN idproduct SET DEFAULT nextval('public.products_idproduct_seq'::regclass);
 A   ALTER TABLE public.products ALTER COLUMN idproduct DROP DEFAULT;
       public          eudes    false    200    201    201            ?          0    24596    products 
   TABLE DATA           P   COPY public.products (idproduct, name, description, price, instock) FROM stdin;
    public          eudes    false    201          ?           0    0    products_idproduct_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.products_idproduct_seq', 7, true);
          public          eudes    false    200            $           2606    24601    products products_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (idproduct);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            eudes    false    201            ?   ?   x?U?1NAEk?)L????QDE ?d?Q,???????E"?\$?
x74Tַ???w??v?R?p?|~??d??Wz???դLK???eC?JX?0?V>5?[iN<???*????hh?b??[?IӰ???Q??w?0i????????????e?S{?p?U???)蕜?S)R???|?U<?b??'?Q%??Y???I?f?u?/?Xe	     