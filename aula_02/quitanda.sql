-- Query pra criar o banco de dados
CREATE DATABASE db_quitanda;

-- Query pra deletar o banco de dados
DROP DATABASE db_quitanda;

-- Comecar utilizar o banco
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    primary key (id)
    );
    
-- Visualizar a tabela
SELECT * FROM tb_produtos;

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("laranja", 50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("uva", 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("perâ", 500, 2.99);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("tomate", 100, 8.80);


-- Busca especificas
SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

-- Desabilitar segurança do  sql é o numero 0, 1 é habilitado
SET SQL_SAFE_UPDATES = 1;

UPDATE tb_produtos SET preco = 5.00 WHERE ID = 2;

-- Deletar itens
DELETE FROM tb_produtos WHERE id = 3;

-- Atualizar colunas
ALTER TABLE tb_produtos MODIFY preco decimal (6,2);

-- Adicionar coluna 
ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

-- Atualizar nome
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);



