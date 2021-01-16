CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
	id bigint(5) auto_increment,
	descricao varchar(255) not null,
    ativo boolean not null,
    
    primary key(id)
);

CREATE TABLE tb_pizza(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    quantidade bigint not null,
    valor decimal(10,2) not null,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria (descricao, ativo) values ("Salgada", 1);
INSERT INTO tb_categoria (descricao, ativo) values ("Doce", 1);
INSERT INTO tb_categoria (descricao, ativo) values ("Vegetariana", 1);

INSERT INTO tb_pizza (nome, quantidade, valor, categoria_id) values ("Calabresa", 10, 35.99, 1);
INSERT INTO tb_pizza (nome, quantidade, valor, categoria_id) values ("Romeu e Julieta", 5, 45.99, 2);
INSERT INTO tb_pizza (nome, quantidade, valor, categoria_id) values ("Portuguesa", 20, 42.99, 1);
INSERT INTO tb_pizza (nome, quantidade, valor, categoria_id) values ("Tofu", 8, 39.99, 3);
INSERT INTO tb_pizza (nome, quantidade, valor, categoria_id) values ("Chocolate", 15, 47.99, 2);
INSERT INTO tb_pizza (nome, quantidade, valor, categoria_id) values ("Frango", 10, 39.99, 1);

select * from tb_categoria;
select * from tb_pizza;
select * from tb_pizza where valor > 45;
select * from tb_pizza where valor > 29 and valor < 60;

select * from tb_pizza where nome like "C%";
select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza where categoria_id = 2;


