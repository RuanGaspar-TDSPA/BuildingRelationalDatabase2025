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
    CONSTRAINT pk_usuario PRIMARY KEY
);
    
CREATE TABLE PRODUTO (
    id int PRIMARY KEY,
    nome varchar(60) NOT NULL,
    preco numeric(5,2) NOT NULL,
    quantidade int   
);
    
CREATE TABLE VEICULO (
    id int PRIMARY KEY,
    placa varchar(7) NOT NULL UNIQUE,
    modelo varchar(60) NOT NULL,
    ano int NOT NULL
);
-- CRIANDO TABELAS COM FOREIGN KEY
-- 1 USUARIO TEM N PEDIDOS
-- 1 PRODUTO ESTA EM N PEDIDOS, MAS 1 PEDIDO TEM APENAS 1 PRODUTO
-- EXEMPLOS PARA ESSE CENARIO: 1 VEICULO, 1 CASA, 
CREATE TABLE PEDIDO_VIRTUAL (
    ind int PRIMARY KEY,
    data_pedido date,
    id_usuario int REFERENCES USUARIO(id),
    valor_total numeric(5,2)
);
CREATE TABLE PEDIDO_PRODUTO(
	id_pedido int REFERENCES PEDIDO_VIRTUAL (id), 
    id_produto int REFERENCES PRODUTO (id),
    quantidade int, 
    subtotal numeric(5,2)
);

-- APAGAR TABELAS
DROP TABLE PEDIDO_VIRTUAL;
DROP TABLE PEDIDO_PRODUTO;