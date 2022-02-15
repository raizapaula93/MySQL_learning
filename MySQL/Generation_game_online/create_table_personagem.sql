USE db_generation_game_online;

CREATE TABLE tb_classe(
    id_classe INT AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    atributo VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagem(
	id_personagem BIGINT AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    forca INT,
    arma VARCHAR(20),
    mundo VARCHAR(20),
    fk_classe INT NOT NULL,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
);

INSERT INTO tb_classe (nome, atributo)
VALUES 
("Arqueiro", "Leal-Bom"),
("Guerreiro", "Leal-Neutro"),
("Mago", "Neutro-Neutro"),
("Bárbaro", "Caótico-Bom"),
("Druída", "Neutro-Bom");


            