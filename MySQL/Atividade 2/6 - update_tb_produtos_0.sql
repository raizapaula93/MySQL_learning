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

ALTER TABLE tb_produtos ADD foto_produto VARCHAR(255) NULL;

INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Eletronicos", "Camera Tekpix", 200.00, "foto jpg");
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Eletronicos", "Fone de ouvido da Mônica", 768.00, "foto jpg");
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Eletrodomesticos", "TV Samsumg Led 40"" ", 3799.99,0);
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Eletrodomesticos", "Geladeira Electrolux", 1875.00, "foto jpg");
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Móveis de Cozinha", "Mesa de Estudos", 369.00, "foto jpg");
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Quarto", "Cama Queensize", 1200.00, "foto jpg");
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Cama, Mesa e Banho", "Toalha Senador", 50.00, "foto jpg");
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Higiene", "Sabonete Protex", 19.90, "NULL");
INSERT INTO tb_produtos (tipo_produto, nome_produto, preco, foto_produto)VALUES ("Móveis para a Sala", "Sofá Rei", 3789.00, "foto jpg");
SELECT * FROM tb_produtos;


SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

SET SQL_SAFE_UPDATES =0;
UPDATE tb_produtos SET foto_produto = "foto_jpg" WHERE foto_produto = "0";
SELECT * FROM tb_produtos;