-- criar banco de dados
CREATE DATABASE db_escola;

-- acessar banco de dados
USE db_escola;

-- criar tabela para o banco de dados 
CREATE TABLE tb_alunos(
	id_aluno bigint(5) auto_increment,
    nome varchar(255) not null,
    idade int not null,
    turma int not null,
    sexo varchar(20) not null,
    media decimal(10,1) not null,
    
    primary key (id_aluno)
);

drop table tb_alunos;

INSERT INTO tb_alunos (nome, idade, turma, sexo, media) values ("Luiz", 9, 1, "Masculino", 7.7);
INSERT INTO tb_alunos (nome, idade, turma, sexo, media) values ("Karina", 13, 5, "Feminino", 9.3);
INSERT INTO tb_alunos (nome, idade, turma, sexo, media) values ("Pedro", 11, 3, "Masculino", 6.8);
INSERT INTO tb_alunos (nome, idade, turma, sexo, media) values ("Paulo", 11, 3, "Masculino", 5.7);
INSERT INTO tb_alunos (nome, idade, turma, sexo, media) values ("Ana", 10, 2, "Feminino", 8.5);

select * from tb_alunos;
select * from tb_alunos where media > 7;
select * from tb_alunos where media < 7;

update tb_alunos set media = 8.8 where id_aluno = 1;