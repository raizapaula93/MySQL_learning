SET SQL_SAFE_UPDATES = 0;
UPDATE tb_alunos SET data_nascimento = 20091213 WHERE nota >= 7;
SELECT * FROM tb_alunos;
