-- criar banco de dados
CREATE DATABASE db_rh;

-- acessar banco de dados
USE db_rh;

-- criar tabela para o banco de dados 
CREATE TABLE tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    salario decimal(10,2) not null,
    cargo varchar(255) not null,
    idade int not null,
    
    primary key (id)
);

INSERT INTO tb_funcionarios (nome, salario, cargo, idade) values ("Vitor", 1800, "estagiario", 24);
INSERT INTO tb_funcionarios (nome, salario, cargo, idade) values ("Allan", 4400, "desenvolvedor java junior", 25);
INSERT INTO tb_funcionarios (nome, salario, cargo, idade) values ("Maria", 7800, "desenvolvedor java senior", 32);
INSERT INTO tb_funcionarios (nome, salario, cargo, idade) values ("Pedro", 1900, "estagiario", 27);
INSERT INTO tb_funcionarios (nome, salario, cargo, idade) values ("Marcela", 9100, "PO", 25);

select * from tb_funcionarios;
select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set salario = 12000 where id = 2;