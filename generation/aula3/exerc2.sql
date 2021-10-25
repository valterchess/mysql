create database if not exists db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60) not null,
    disponivel boolean not null,
    primary key (id)
);

create table tb_pizza(
	id bigint auto_increment,
    preco double not null,
    sabor varchar(60) not null,
    tipo_de_massa varchar(60) not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (categoria,disponivel) values ("nova-iorquina", false);
insert into tb_categoria (categoria,disponivel) values ("Ciciliana", true);
insert into tb_categoria (categoria,disponivel) values ("Romana", true);
insert into tb_categoria (categoria,disponivel) values ("Napoletana", true);
insert into tb_categoria (categoria,disponivel) values ("Brasileira", true);

-- as massas poderiam ter uma tabela prória
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (38.99, "Mussarela", "basica", 5);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (48.99, "Mussarela", "basica", 3);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (85.99, "Clássica", "Artesanal", 4);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (52.99, "escarola", "Artesanal", 2);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (49.99, "Peperone", "basica", 1);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (92.00, "Aliche da casa", "Artesanal", 4);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (56.99, "Portuguesa", "basica", 5);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (54.99, "Baiana", "basica", 5);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (62.99, "Palmito", "basica", 5);
insert into tb_pizza (preco, sabor, tipo_de_massa, categoria_id) values (62.99, "Margherita", "Artesanal", 2);

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like "c%";
select * from tb_pizza where sabor like "%c%";

select tb_pizza.preco, tb_pizza.sabor, tb_categoria.categoria 
from tb_pizza 
inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.preco, tb_pizza.sabor, tb_categoria.categoria 
from tb_pizza 
inner join tb_categoria
on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;


 




