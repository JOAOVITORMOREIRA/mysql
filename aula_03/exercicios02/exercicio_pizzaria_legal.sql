CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint auto_increment,
tamanho varchar(255) not null,
tipo varchar(255) not null,
primary key(id)
);

INSERT INTO tb_categorias (tamanho, tipo)
values ("Pequeno", "Doce");
INSERT INTO tb_categorias (tamanho, tipo)
values ("Pequeno", "Salgada");
INSERT INTO tb_categorias (tamanho, tipo)
values ("Medio", "Doce");
INSERT INTO tb_categorias (tamanho, tipo)
values ("Medio", "Salgada");
INSERT INTO tb_categorias (tamanho, tipo)
values ("Grande", "Doce");
INSERT INTO tb_categorias (tamanho, tipo)
values ("Grande", "Salgada");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
bordarecheada varchar(255),
quantidade int,
valor decimal (6,2) not null,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categorias(id)
);

INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Calabresa", "Sim", 1 , 40.00, 2);
INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Nutella", "Não", 2 , 45.00, 1);
INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Mussarela", "Não", 2 , 70.00, 4);
INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Churros", "Sim", 1 , 80.00, 3);
INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Marguerita", "Sim", 1 , 110.00, 6);
INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Romeu e Julieta", "Não", 1 , 125.00, 5);
INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Banana com Canela", "Sim", 2 , 85.00, 3);
INSERT INTO tb_pizzas (sabor, bordarecheada, quantidade, valor, categoria_id)
values("Portuguesa", "Sim", 1 , 38.00, 2);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor > 50.00 AND valor < 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce" ORDER BY sabor;
