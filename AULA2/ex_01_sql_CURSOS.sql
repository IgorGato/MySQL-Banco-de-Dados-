CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_categoria(
	id bigint(5) auto_increment,
    modelo_aula varchar(255) not null,
    ativo boolean not null,
    
    primary key(id)
);

CREATE TABLE tb_curso(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    valor decimal(10,2) not null,
    duracao_meses int not null,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (modelo_aula, ativo) values ("Presencial", 1);
INSERT INTO tb_categoria (modelo_aula, ativo) values ("EAD", 1);
INSERT INTO tb_categoria (modelo_aula, ativo) values ("Semi-presencial", 1);

INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("HTML", 200, 1, 1);
INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("JAVA", 500, 3, 2);
INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("Python", 400, 3, 1);
INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("C++", 150, 2, 3);
INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("JavaScript", 620, 4, 2);
INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("C#", 440, 3, 3);
INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("R", 270, 4, 3);
INSERT INTO tb_curso (nome, valor, duracao_meses, categoria_id) values ("C", 550, 5, 2);

select * from tb_categoria;
select * from tb_curso;
select * from tb_curso where valor > 500;
select * from tb_curso where valor > 300 and valor < 600;

select * from tb_curso where nome like "J%";
select tb_curso.id, tb_curso.nome, tb_curso.duracao_meses as "duracao (meses)",  tb_categoria.modelo_aula
	from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_curso where categoria_id = 3;


