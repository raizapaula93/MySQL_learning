USE db_funcionarios;

CREATE TABLE tb_cadastro (
id_func INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
email VARCHAR(50) NOT NULL,
data_nascimento DATE NOT NULL,
salario DECIMAL (6,2),
PRIMARY KEY (id_func)
);