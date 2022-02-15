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

ALTER TABLE tb_personagem ADD CONSTRAINT fk_classe
FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe);



INSERT INTO tb_personagem (nome,forca, arma, mundo, fk_classe)
VALUES 
("Grandror",70,"Machado","Dorione",4),
("Mark",40,"Bastard Sword","Menione",2),
("Danca",28,"Besta veloz","Lóthlorien",1),
("Gandalph",31,"Cajado","Nistritch",3),
("Rosarhad",30,"Magnífica flecha","Lóthlorien",1),
("Varanis",36,"Cajado branco","Valfenda",5),
("Elria",23,"Arco sagrado","Lóthlorien",1),
("Odwolf",85,"Battleaxe","Dorione",4);

ALTER TABLE tb_personagem ADD ataque bigint;
ALTER TABLE tb_personagem ADD defesa bigint;


UPDATE tb_personagem						
SET ataque = 5879, defesa = 6576
WHERE id_personagem= 1;

UPDATE tb_personagem
SET ataque = 2200, defesa = 2000
WHERE id_personagem= 2;

UPDATE tb_personagem
SET ataque = 1200, defesa = 800
WHERE id_personagem= 3;

UPDATE tb_personagem
SET ataque = 6000, defesa = 7000
WHERE id_personagem= 4;

UPDATE tb_personagem
SET ataque = 1789, defesa = 850
WHERE id_personagem= 5;

UPDATE tb_personagem
SET ataque = 8000, defesa = 8789
WHERE id_personagem= 6;

UPDATE tb_personagem
SET ataque = 1100, defesa = 860
WHERE id_personagem= 7;

UPDATE tb_personagem
SET ataque = 5879, defesa = 6576
WHERE id_personagem= 8;

SELECT *FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem
WHERE defesa BETWEEN 1000 AND 2000;

SELECT *
FROM tb_personagem
WHERE nome LIKE '%c%';
      