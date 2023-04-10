CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id bigint auto_increment,
raca varchar(255) not null,
classe varchar(255) not null,
primary key(id)
);

INSERT INTO tb_classes (raca, classe)
values ("Humano", "Bardo");
INSERT INTO tb_classes (raca, classe)
values ("Elfo", "Druida");
INSERT INTO tb_classes (raca, classe)
values ("Orc", "Barbaro");
INSERT INTO tb_classes (raca, classe)
values ("Anão", "Guerreiro");
INSERT INTO tb_classes (raca, classe)
values ("Goblin", "Ladino");
INSERT INTO tb_classes (raca, classe)
values ("Humano", "Arqueiro");

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
carisma int,
destreza int,
poderataque int,
poderdefesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Racnar", 10, 6, 4, 2100, 2200, 3);
INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Sebastian", 9, 7, 5, 1900, 1800, 1);
INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Half", 10, 5, 7, 1900, 1400, 6);
INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Krencko", 8, 4, 7, 1700, 1700, 5);
INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Tyvar", 9, 8, 7, 1900, 1400, 2);
INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Carruk", 9, 6, 7, 2000, 2000, 4);
INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Mardu", 8, 6, 6, 1800, 1700, 3);
INSERT INTO tb_personagens(nome, nivel, carisma, destreza, poderataque, poderdefesa, classe_id)
values ("Lilliana", 10, 8, 8, 2100, 1800, 2);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poderataque > 2000;

SELECT * FROM tb_personagens WHERE poderdefesa > 1000 AND poderdefesa < 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.classe = "Druida" ORDER BY nome;

