-- criando o db
create database db_smart_ways;
-- utilizando o db
use db_smart_ways;
-- construindo a tabela de produtos
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    preco decimal(8,2) not null,
    marca varchar(255)not null,
    qtd_estoque smallint,
    primary key(id)
);

-- populando produtos 
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("garrafa alumínio 750ml",48.99,"Ekological",35);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("garrafa inox 750ml",59.40,"TopGet",13);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("tênis revolution 5 fem",259.40,"nike",23);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("tênis corrida Roav fem",349.40,"new ballance",7);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("tênis ZoomX Vaporfly",1259.40,"nike",4);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("saco pancada",599.99,"box Machine",2);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("luva fight mma",170.40,"Adidas",54);
insert into tb_produtos(nome, preco, marca, qtd_estoque) values ("Bicicleta Vulcan aro 29",1759.40,"Caloi",6);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;



