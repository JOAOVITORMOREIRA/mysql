CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtosecommerce(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    fabricante varchar(255),
    descricaodoproduto varchar(255),
    primary key (id)
    );
    
SELECT * FROM tb_produtosecommerce;
    
INSERT INTO tb_produtosecommerce(nome, quantidade, preco, fabricante, descricaodoproduto)
values ("camera", 50, 150.00, "Sony", "cameraciza");
INSERT INTO tb_produtosecommerce(nome, quantidade, preco, fabricante, descricaodoproduto)
values ("teclado", 80, 500.00, "Razer", "tecladopretocomrgb");
INSERT INTO tb_produtosecommerce(nome, quantidade, preco, fabricante, descricaodoproduto)
values ("mouse", 100, 300.00, "Razer", "mousepretocomrgb");
INSERT INTO tb_produtosecommerce(nome, quantidade, preco, fabricante, descricaodoproduto)
values ("mousepad", 200, 120.00, "HyperX", "mousepadpretocomvermelho");
INSERT INTO tb_produtosecommerce(nome, quantidade, preco, fabricante, descricaodoproduto)
values ("headset", 550, 150.00, "HyperX", "headsetpretocomrgb");

SELECT * FROM tb_produtosecommerce WHERE preco > 500.00;

SELECT * FROM tb_produtosecommerce WHERE preco < 500.00;

 SET SQL_SAFE_UPDATES = 1;
 
UPDATE tb_produtosecommerce SET preco = 510.00 WHERE id = 3;

ALTER TABLE tb_produtosecommerce CHANGE quantidade quantidadeproduto varchar(255);
    