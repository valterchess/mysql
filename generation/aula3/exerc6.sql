create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60),
    disponivel boolean,
    primary key (id)
);

create table tb_curso(
	id bigint auto_increment,
    preco decimal(8,2) not null,
    nome varchar(60) not null,
    duracao int not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_categoria(categoria, disponivel) values ("seguranca", true);
insert into tb_categoria(categoria, disponivel) values ("git-github", true);
insert into tb_categoria(categoria, disponivel) values ("devops", true);
insert into tb_categoria(categoria, disponivel) values ("front-end", true);
insert into tb_categoria(categoria, disponivel) values ("back-end", true);

insert into tb_curso(preco, nome, duracao, categoria_id) values (300.00,"pithon basico", 40,5);
insert into tb_curso(preco, nome, duracao, categoria_id) values (500,"desvendando a web com javascrip", 60,4);
insert into tb_curso(preco, nome, duracao, categoria_id) values (489.99,"fundamentos java", 40,5);
insert into tb_curso(preco, nome, duracao, categoria_id) values (180,"fundamentos git e github", 20,2);
insert into tb_curso(preco, nome, duracao, categoria_id) values (150,"logica basica", 20,5);
insert into tb_curso(preco, nome, duracao, categoria_id) values (599.90,"Linux pro", 80,3);
insert into tb_curso(preco, nome, duracao, categoria_id) values (318.99,"spring e hibernate", 40,5);
insert into tb_curso(preco, nome, duracao, categoria_id) values (569.99,"Kali e introdução as ferramentas de segurança", 60,1);

select * from tb_curso where preco > 300;
select * from tb_curso where preco between 100 and 600;

select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria
on tb_categoria.id = tb_curso.categoria_id;

select * from tb_produto inner join tb_categoria
on tb_categoria.id = tb_produto.categoria_id 
where tb_categoria.id = 2;
