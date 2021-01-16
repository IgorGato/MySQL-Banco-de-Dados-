CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id bigint(5) auto_increment,
    descricao varchar(255) not null,
    marca varchar(255) not null,
    ativo boolean not null,

	primary key(id)
);

CREATE TABLE tb_produto(
	id bigint(5) auto_increment,
    nome varchar(255) not null,
    preco decimal(10,2) not null,
    num_unidades int not null,
    categoria_id bigint,
    
    primary key(id),
    foreign key(categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(descricao, marca, ativo) values("Ferramentas", "Norton", 1);
INSERT INTO tb_categoria(descricao, marca, ativo) values("Hidráulica", "Hidrautec", 1);
INSERT INTO tb_categoria(descricao, marca, ativo) values("Elétrico", "Tigre", 1);

INSERT INTO tb_produto(nome, preco, num_unidades, categoria_id) VALUES ("Eletroduto Soldável", 9.90, 10, 3);
INSERT INTO tb_produto(nome, preco, num_unidades, categoria_id) VALUES ("Bomba Hidráulica", 69.90, 5, 2);
INSERT INTO tb_produto(nome, preco, num_unidades, categoria_id) VALUES ("Fita Isolante", 2.90, 20, 3);
INSERT INTO tb_produto(nome, preco, num_unidades, categoria_id) VALUES ("Alicate", 15.90, 42, 1);
INSERT INTO tb_produto(nome, preco, num_unidades, categoria_id) VALUES ("Tomadores de Pressão", 49.90, 8, 2);
INSERT INTO tb_produto(nome, preco, num_unidades, categoria_id) VALUES ("Lixadeira", 50.90, 12, 1);
INSERT INTO tb_produto(nome, preco, num_unidades, categoria_id) VALUES ("Furadeira", 89.90, 20, 1);



select * from tb_categoria;
select * from tb_produto;
select * from tb_produto where preco > 50;
select * from tb_produto where preco > 30 and preco < 60;

select * from tb_produto where nome like "C%";
select tb_produto.id, tb_produto.nome, tb_produto.num_unidades,  tb_categoria.descricao, tb_categoria.marca
	from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select * from tb_produto where categoria_id = 2;


