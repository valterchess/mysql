create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60),
    disponivel boolean,
    primary key (id)
);

create table tb_fruta(
	id bigint auto_increment,
    preco double(5,2) not null,
    nome varchar(60) not null,
    -- poderia haver uma tabela pais
    pais varchar(60),
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_categoria(categoria, disponivel) values ("ácida", true);
insert into tb_categoria(categoria, disponivel) values ("doce", true);
insert into tb_categoria(categoria, disponivel) values ("semiácida", true);
insert into tb_categoria(categoria, disponivel) values ("oleaginosas", true);
insert into tb_categoria(categoria, disponivel) values ("hiperhidricas", true);

insert into tb_fruta(preco, nome, pais, categoria_id) values (12.75,"uva", "Chile",1);
insert into tb_fruta(preco, nome, pais, categoria_id) values (22.50,"Morango", "Brasil",1);
insert into tb_fruta(preco, nome, pais, categoria_id) values (29.99,"Tamarindo", "Brasil",1);
insert into tb_fruta(preco, nome, pais, categoria_id) values (9.99,"Mamão", "Brasil",2);
insert into tb_fruta(preco, nome, pais, categoria_id) values (7.45,"Banana", "Brasil",2);
insert into tb_fruta(preco, nome, pais, categoria_id) values (14.99,"Manga", "India",2);
insert into tb_fruta(preco, nome, pais, categoria_id) values (18.99,"Maçã vermelha", "Argentina",2);
insert into tb_fruta(preco, nome, pais, categoria_id) values (16.99,"Pitanga", "Brasil",3);
insert into tb_fruta(preco, nome, pais, categoria_id) values (6.99,"Maracuja", "Peru",3);
insert into tb_fruta(preco, nome, pais, categoria_id) values (40.99,"Cacau", "Bolivia",3);
insert into tb_fruta(preco, nome, pais, categoria_id) values (3.99,"Coco", "Nova Zelandia",4);
insert into tb_fruta(preco, nome, pais, categoria_id) values (72.99,"Nozes", "india",4);
insert into tb_fruta(preco, nome, pais, categoria_id) values (10.00,"Melão", "China",5);
insert into tb_fruta(preco, nome, pais, categoria_id) values (17.99,"Melancia", "Brasil",5);

select * from tb_fruta where preco > 50;
select * from tb_fruta where preco between 3 and 60;

select * from tb_fruta where nome like "c%";
select * from tb_fruta where nome like "%c%";

select tb_fruta.nome, tb_fruta.preco, tb_categoria.categoria
from tb_fruta
inner join tb_categoria
on tb_categoria.id = tb_fruta.categoria_id;

select tb_fruta.nome, tb_fruta.preco, tb_categoria.categoria
from tb_fruta
inner join tb_categoria
on tb_categoria.id = tb_fruta.categoria_id where tb_categoria.id = 2;




