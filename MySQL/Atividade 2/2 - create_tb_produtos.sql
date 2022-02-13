CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_usuarios (
id_produto INT NOT NULL AUTO_INCREMENT,
tipo_produto VARCHAR(255)NOT NULL,
nome_produto VARCHAR(255)NOT NULL,
preco DECIMAL(10,2)NOT NULL,
PRIMARY KEY (id_produto)
);

RENAME TABLE tb_usuarios TO tb_produtos;
