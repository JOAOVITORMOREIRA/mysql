CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_trabalhadores(
	id bigint auto_increment,
    nome varchar(255) not null,
    cpf varchar(255) not null,
    cargo varchar(255) not null,
    salario decimal(6,2) not null,
    turno varchar(255) not null,
    primary key (id)
    );
    
    SELECT * FROM tb_trabalhadores;
    
    INSERT INTO tb_trabalhadores(nome, cpf, cargo, salario, turno)
    values ("João Vitor", "111.222.333-44", "Deselvolvedor Java Junor", 4500.00, "Noturno");
    INSERT INTO tb_trabalhadores(nome, cpf, cargo, salario, turno)
    values ("Sabrina Paulino", "222.333.444-55", "Deselvolvedor Java Pleno", 7500.00, "Noturno");
    INSERT INTO tb_trabalhadores(nome, cpf, cargo, salario, turno)
    values ("Jeniffer Souza", "333.444.555-66", "Deselvolvedor Java Senior", 9000.00, "Diurno");
    INSERT INTO tb_trabalhadores(nome, cpf, cargo, salario, turno)
    values ("Kaique Ferreira", "444.555.666-77", "Estagiario", 1500.00, "Diurno");
    INSERT INTO tb_trabalhadores(nome, cpf, cargo, salario, turno)
    values ("Bruno Henrique", "555.666.777-88", "Auxiliar Administrativo", 1800.00, "Diurno");
    
    SELECT * FROM tb_trabalhadores WHERE salario < 2000.00;
    
    SELECT * FROM tb_trabalhadores WHERE salario > 2000.00;
    
    SET SQL_SAFE_UPDATES = 1;
    
    UPDATE tb_trabalhadores SET salario = 1950.00 WHERE id = 5;
    
    ALTER TABLE tb_trabalhadores CHANGE nome nomedotrabalhador varchar(255);
    
    


    
    