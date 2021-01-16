CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id bigint(5) auto_increment,
    descricao varchar(255) not null,
    fornecedor varchar(255) not null,
    ativo boolean not null,

	primary key(id)
);

CREATE TABLE tb_produto(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    peso decimal(10,2) not null,
    preco decimal(10,2) not null,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(descricao, fornecedor, ativo) values("Bovino", "Rancho Vaca Loka", 1);
INSERT INTO tb_categoria(descricao, fornecedor, ativo) values("Suino", "Fazenda Revolução", 1);
INSERT INTO tb_categoria(descricao, fornecedor, ativo) values("Aves", "Rancho Pomba Branca", 1);

INSERT INTO tb_produto(nome, peso, preco, categoria_id) VALUES ("Alcatra", 1, 59.90, 1);
INSERT INTO tb_produto(nome, peso, preco, categoria_id) VALUES ("Maminha", 1, 39.90, 1);
INSERT INTO tb_produto(nome, peso, preco, categoria_id) VALUES ("Peito de peru", 1, 25.90, 3);
INSERT INTO tb_produto(nome, peso, preco, categoria_id) VALUES ("Filé de frango", 1, 29.90, 3);
INSERT INTO tb_produto(nome, peso, preco, categoria_id) VALUES ("Patinho", 1, 29.90, 1);
INSERT INTO tb_produto(nome, peso, preco, categoria_id) VALUES ("Costela de porco", 1, 34.90, 2);
INSERT INTO tb_produto(nome, peso, preco, categoria_id) VALUES ("Contra-File", 1, 69.90, 1);

select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco > 30 and preco < 60;

select * from tb_produto where nome like "C%";
select tb_produto.id, tb_produto.nome, tb_produto.peso as "kg",  tb_categoria.descricao, tb_categoria.fornecedor
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where categoria_id = 1;


