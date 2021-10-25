create database db_construindo_nossa_vida;

use db_construindo_nossa_vida;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60),
    disponivel boolean,
    primary key (id)
);

create table tb_produto(
	id bigint auto_increment,
    preco double(8,2) not null,
    nome varchar(60) not null,
    -- poderia haver uma tabela marca
    marca varchar(60),
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_categoria(categoria, disponivel) values ("eletronicos", true);
insert into tb_categoria(categoria, disponivel) values ("informática", true);
insert into tb_categoria(categoria, disponivel) values ("acessórios", true);
insert into tb_categoria(categoria, disponivel) values ("escritório", true);
insert into tb_categoria(categoria, disponivel) values ("vestuário", true);

insert into tb_produto(preco, nome, marca, categoria_id) values (4200.75,"notebook", "Dell",2);
insert into tb_produto(preco, nome, marca, categoria_id) values (2800.00,"smartwatch", "apple",3);
insert into tb_produto(preco, nome, marca, categoria_id) values (69.99,"Camisa java", "Techidos",5);
insert into tb_produto(preco, nome, marca, categoria_id) values (1759.99,"Camera 4k | semi-pro", "Sony",1);
insert into tb_produto(preco, nome, marca, categoria_id) values (29.99,"Anel de luz led", "neons",3);
insert into tb_produto(preco, nome, marca, categoria_id) values (1114.99,"Cadeira Gamer", "Prizi",4);
insert into tb_produto(preco, nome, marca, categoria_id) values (318.99,"teclado mecanico brown", "T-dagger",2);
insert into tb_produto(preco, nome, marca, categoria_id) values (69.99,"Camisa Pithon", "Techidos",5);
insert into tb_produto(preco, nome, marca, categoria_id) values (69.99,"Camisa javaScript", "Techidos",5);
insert into tb_produto(preco, nome, marca, categoria_id) values (339.90,"Dualshock 4 | preto", "Sony",1);
insert into tb_produto(preco, nome, marca, categoria_id) values (182.90, "Pop Funko John Wick", "Funko",3);
insert into tb_produto(preco, nome, marca, categoria_id) values (132.90, "Pop Funko Atômica", "Funko",3);
insert into tb_produto(preco, nome, marca, categoria_id) values (220.90, "Pop Funko Kimetsu no Yaiba", "Funko",3);
insert into tb_produto(preco, nome, marca, categoria_id) values (232.90, "Pop Funko Round 6", "Funko",3);

select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "c%";
select * from tb_produto where nome like "%c%";

select tb_produto.nome, tb_produto.preco, tb_categoria.categoria
from tb_produto
inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.preco, tb_categoria.categoria
from tb_produto
inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 3;