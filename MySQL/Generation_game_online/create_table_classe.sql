USE db_generation_game_online;

CREATE TABLE tb_classe(
    id_classe BIGINT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    atributo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_classe)
);
