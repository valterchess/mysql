-- criando o db
create database if not exists db_rh_func;

-- requerindo o uso do db
use db_rh_func;

-- adicionando uma tabela
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal(8,2) not null,
    funcao varchar(60) not null,
	email varchar(255),
    primary key(id)
);

-- populando a tb_funcionarios
insert into tb_funcionarios(nome,salario,funcao) values ("Valter Silva", 4000,"FullStack developer");
insert into tb_funcionarios(nome,salario,funcao) values ("Mateus Linhares", 6000,"Psicologo");
insert into tb_funcionarios(nome,salario,funcao) values ("Andressa Oliveira", 12000,"Gerente de projetos");
insert into tb_funcionarios(nome,salario,funcao) values ("Paula Levy", 23000,"CEO");
insert into tb_funcionarios(nome,salario,funcao) values ("Clarice Silva", 14000,"Senior java developer");

-- verificando os dados da tabela
select * from tb_funcionarios;
select * from tb_funcionarios where salario < 2000.00;
select * from tb_funcionarios where salario > 2000.00;

