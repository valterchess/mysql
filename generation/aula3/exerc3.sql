create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60),
    disponivel boolean,
    primary key(id)
);

create table tb_produtos(
	id bigint auto_increment,
    preco double (8,2) not null,
    dt_validade date not null,
    marca varchar (60) not null default "neo quimica",
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria, disponivel) values ("Fitoterápico", true);
insert into tb_categoria(categoria, disponivel) values ("Alopático", true);
insert into tb_categoria(categoria, disponivel) values ("Homeopático", true);
insert into tb_categoria(categoria, disponivel) values ("Similar", true);
insert into tb_categoria(categoria, disponivel) values ("Genérico", true);
insert into tb_categoria(categoria, disponivel) values ("Referência", true);

insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (20.40,"2023-08-03", "Hypera", 6);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (18.40,"2023-09-15", "Buscopan", 6);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (10.40,"2025-02-09","neo quimica", 5);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (70.00,"2023-12-03", "Viagra", 6);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (420.40,"2023-08-03", "Losartana", 4);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (120.40,"2023-08-03", "Tylenol", 2);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (40.40,"2022-08-03", "Rivotril", 1);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (20.40,"2026-08-03", "Ritalina", 3);
insert into tb_produtos(preco, dt_validade, marca, categoria_id) values (20.40,"2021-08-03", "Pantoprazol", 4);

select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where marca like "b%";
select * from tb_produtos where marca like "%b%";

select tb_produtos.marca, tb_produtos.preco, tb_categoria.categoria
from tb_produtos 
inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.marca, tb_produtos.preco, tb_categoria.categoria
from tb_produtos 
inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 6;




