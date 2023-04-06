CREATE DATABASE db_escola;

DROP DATABASE db_escola;

USE db_escola;

CREATE TABLE  tb_alunos(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int not null,
    serie varchar(255) not null,
	classe varchar(255),
	nomemae varchar(255) not null,
    nomepai varchar(255),
	telefonemae varchar(255) not null,
    nota double not null,
    primary key (id)
    );
    
    SELECT * FROM tb_alunos;
    
    INSERT INTO tb_alunos(nome, idade, serie, classe, nomemae, nomepai, telefonemae, nota)
    values ("João", 11, "6º serie", "6ºA", "Valeria", "Jose", "1191111-2222", 10.00);    
    INSERT INTO tb_alunos(nome, idade, serie, classe, nomemae, nomepai, telefonemae, nota)
    values ("Sabrina", 11, "6º serie", "6ºB", "Alessandra", "Silvio", "1192222-3333", 9.00);
    INSERT INTO tb_alunos(nome, idade, serie, classe, nomemae, nomepai, telefonemae, nota)
    values ("Pandora", 12, "7º serie", "7ºC", "Sabrina", "João", "1193333-4444", 7.00);
    INSERT INTO tb_alunos(nome, idade, serie, classe, nomemae, nomepai, telefonemae, nota)
    values ("Fred", 13, "8º serie", "8ºA", "Ellen", "Marcos", "1194444-5555", 5.00);
    INSERT INTO tb_alunos(nome, idade, serie, classe, nomemae, nomepai, telefonemae, nota)
    values ("Mateus", 12, "7º serie", "7ºA", "Sara", "Rafael", "1195555-6666", 6.00);
    
    SELECT * FROM tb_alunos Where nota > 7.00;
    
     SELECT * FROM tb_alunos Where nota < 7.00;
     
     SET SQL_SAFE_UPDATES = 1;
     
     UPDATE tb_alunos SET nota = 8.00 WHERE id = 3;
     
     ALTER TABLE tb_alunos CHANGE nome nomealuno varchar(255);
