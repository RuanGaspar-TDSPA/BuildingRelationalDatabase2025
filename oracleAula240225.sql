CREATE DATABASE FIAP;
USE FIAP;

  CREATE TABLE USUARIO (
    id int, 
    username varchar(60),
    password varchar(30),
    CONSTRAINT PK_USUARIO PRIMARY KEY 
    );
    
    CREATE TABLE USUARIOv2 (
    id int,
    username varchar(60),
    passaword varchar(30),
    CONSTRAINT pk_ussuario PRIMARY KEY
    );