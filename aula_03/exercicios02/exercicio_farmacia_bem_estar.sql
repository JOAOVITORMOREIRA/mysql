CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
descricao varchar(255) ,
tipo varchar(255),
primary key(id)
);

INSERT INTO tb_categorias(descricao, tipo) 
values ("Produto para cabelo","Cosmetico");
INSERT INTO tb_categorias(descricao, tipo) 
values ("Produtos para pressão","Farmacos");
INSERT INTO tb_categorias(descricao, tipo) 
values ("Produtos para a pele","Cosmetico");
INSERT INTO tb_categorias(descricao, tipo) 
values ("Protudos para diabetes","Farmacos");
INSERT INTO tb_categorias(descricao, tipo) 
values ("Produtos para dor","Farmacos");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
fabricante varchar(255),
valor decimal (6,2),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categorias(id)
);
 
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("Dorflex", 2, "Sanofi", 10.00, 5);
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("Shampoo Seda", 1, "Unilever", 20.00, 1);
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("NativaSPA", 1, "O Boticario", 40.00, 3);
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("Losartana Aradois", 2, "BIOLAB SANUS FARMACEUTICA", 10.00, 2);
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("Insulina Lantus", 2, "Sanofi", 100.00, 4);
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("Creme de Pentear Garnier Fructis", 1 , "Garnier", 35.00, 1);
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("Dipirona Sódica", 2, "EMS", 4.50, 5);
INSERT INTO tb_produtos (nome, quantidade, fabricante, valor, categoria_id)
values ("Creme Hydratante TodoDia", 1, "Natura", 60.00, 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT * FROM tb_produtos WHERE valor > 5.00 AND valor < 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Cosmetico" ORDER BY nome;


