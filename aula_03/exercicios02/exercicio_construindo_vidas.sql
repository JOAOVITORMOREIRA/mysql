CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo varchar(255),
disponivel varchar(255),
primary key (id)
);

INSERT INTO tb_categorias(tipo, disponivel)
values("Hidráulica","Sim");
INSERT INTO tb_categorias(tipo, disponivel)
values("Hidráulica","Não");
INSERT INTO tb_categorias(tipo, disponivel)
values("Pintura","Sim");
INSERT INTO tb_categorias(tipo, disponivel)
values("Pintura","Não");
INSERT INTO tb_categorias(tipo, disponivel)
values("Alvenaria","Sim");
INSERT INTO tb_categorias(tipo, disponivel)
values("Alvenaria","Não");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
fabricante varchar(255),
quantidade int,
valor decimal(6,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Cimento", "Votorantin", 10, 20.00, 5);
INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Registro 50mm", "Tigre", 2, 10.00, 1);
INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Tinta de parede branca grande", "Coral", 1, 150.00, 4);
INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Revestimento ceramico", "Portobello", 20, 75.00, 6);
INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Tinta para metal pequena", "Suvenil", 1, 60.00, 3);
INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Conexão hidráulica", "Amanco", 2, 10.00, 2);
INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Tijolos cerâmicos", "Hervy Cerâmica", 1000, 5.00, 5);
INSERT INTO tb_produtos(nome, fabricante, quantidade, valor, categoria_id)
values ("Porcelanato","Portobello", 50, 120.00, 6);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor > 70.00 AND valor < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtoS INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtoS INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Alvenaria";


