CREATE TABLE public.clients
(
    "Id" integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),
    "username" VARCHAR (128) UNIQUE NOT NULL,
    "password" VARCHAR (256) NOT NULL,
    "Token" VARCHAR (256) ,
    "email" VARCHAR (355) UNIQUE NOT NULL,
    "IsAdmin" boolean NOT NULL,
    PRIMARY KEY ("Id")
)
