-- criando db
create database db_escola;
-- usando db
use db_escola;

-- criando tabela
create table tb_alunos(
	id bigint auto_increment,
    nome varchar(255)not null,
    nome_pai varchar(255)not null,
    nome_mae varchar(255)not null,
    nota decimal(4,2) not null,
    primary key(id)
);

-- populando tabela alunos
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Henrique Martinz Souza","Elias Souza","Cátia Martinz souza",7);
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Fábio Doria","Carlos Doria","Andrea Doria",6);
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Pedro S. Chavez Elisario","Marcos Elisario","Fernanda Sotero Chavez",9);
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Clarice Schmidt Silva","Valter Silva","Thaina Shmidt Silva",10);
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Loiane Giselini","Paolo Giselini","Martha Giselini",6);
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Laura Carvalho","Mario M. Carvalho","Sandra Eli Carvalho",8.8);
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Roberto A. Oliveira","Alberto Oliveira","Barbara Oliveira",9.3);
insert into tb_alunos(nome,nome_pai, nome_mae, nota) values ("Thiago Itzach Mason","David Itzach Mason","Rachel Itzach Mason",5);
                          
-- selecionando dados específicos
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;