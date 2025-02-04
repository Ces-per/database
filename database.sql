PGDMP     $                    |            postgres    14.3    14.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    13754    postgres    DATABASE     e   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3325                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16394    Aparat    TABLE       CREATE TABLE public."Aparat" (
    "Siral_number" text NOT NULL,
    "Name" text,
    registr_number text,
    invent_number text NOT NULL,
    "Otdelenie" text,
    data_input date,
    "Na_spisanie" boolean,
    "Act_spisanie" text,
    "Gurnal_TO" text
);
    DROP TABLE public."Aparat";
       public         heap    postgres    false            �            1259    16399 	   Otdelenie    TABLE     P   CREATE TABLE public."Otdelenie" (
    "Kod" bigint NOT NULL,
    "Name" text
);
    DROP TABLE public."Otdelenie";
       public         heap    postgres    false            �            1259    16406 	   Zapchasti    TABLE     z   CREATE TABLE public."Zapchasti" (
    "Kod" bigint NOT NULL,
    "Name" text,
    characteristics text,
    photo text
);
    DROP TABLE public."Zapchasti";
       public         heap    postgres    false            �          0    16394    Aparat 
   TABLE DATA           �   COPY public."Aparat" ("Siral_number", "Name", registr_number, invent_number, "Otdelenie", data_input, "Na_spisanie", "Act_spisanie", "Gurnal_TO") FROM stdin;
    public          postgres    false    210   �       �          0    16399 	   Otdelenie 
   TABLE DATA           4   COPY public."Otdelenie" ("Kod", "Name") FROM stdin;
    public          postgres    false    211   H       �          0    16406 	   Zapchasti 
   TABLE DATA           L   COPY public."Zapchasti" ("Kod", "Name", characteristics, photo) FROM stdin;
    public          postgres    false    212   e       e           2606    16414    Aparat Aparat_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."Aparat"
    ADD CONSTRAINT "Aparat_pkey" PRIMARY KEY ("Siral_number", invent_number);
 @   ALTER TABLE ONLY public."Aparat" DROP CONSTRAINT "Aparat_pkey";
       public            postgres    false    210    210            g           2606    16405    Otdelenie Otdelenie_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Otdelenie"
    ADD CONSTRAINT "Otdelenie_pkey" PRIMARY KEY ("Kod");
 F   ALTER TABLE ONLY public."Otdelenie" DROP CONSTRAINT "Otdelenie_pkey";
       public            postgres    false    211            i           2606    16412    Zapchasti Zapchasti_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Zapchasti"
    ADD CONSTRAINT "Zapchasti_pkey" PRIMARY KEY ("Kod");
 F   ALTER TABLE ONLY public."Zapchasti" DROP CONSTRAINT "Zapchasti_pkey";
       public            postgres    false    212            �   H   x��A� ���/�Z[���pPC����dԆO�js8������Q��¢��Ă��E3���O�FD��      �      x������ � �      �      x������ � �     