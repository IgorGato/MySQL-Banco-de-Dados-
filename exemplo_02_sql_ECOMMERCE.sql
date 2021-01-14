-- criar banco de dados
CREATE DATABASE db_ecommerce;

-- acessar banco de dados
USE db_ecommerce;

-- criar tabela para o banco de dados 
CREATE TABLE tb_produtos(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    preco decimal(10,2) not null,
    marca varchar(255) not null,
    n_unidades int not null,
    
    primary key (id)
);

INSERT INTO tb_produtos (nome, preco, marca, n_unidades) values ("Camiseta", 19.90, "Lacoste", 20);
INSERT INTO tb_produtos (nome, preco, marca, n_unidades) values ("Bone", 39.90, "Puma", 27);
INSERT INTO tb_produtos (nome, preco, marca, n_unidades) values ("Calça", 79.90, "Nike", 34);
INSERT INTO tb_produtos (nome, preco, marca, n_unidades) values ("Tenis", 799.90, "Nike", 20);
INSERT INTO tb_produtos (nome, preco, marca, n_unidades) values ("Meia", 9.90, "Puma", 40);

select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set n_unidades = 30 where id = 5;