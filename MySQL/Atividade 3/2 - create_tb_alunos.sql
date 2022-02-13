USE db_escola;

CREATE TABLE tb_alunos (
matricula INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(50)NOT NULL,
data_nascimento DATE,
turma VARCHAR(4) NOT NULL,
nota DECIMAL(2,1)NOT NULL,
PRIMARY KEY (matricula)
);
