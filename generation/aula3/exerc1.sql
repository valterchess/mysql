-- criando o banco de dados
create database if not exists db_generation_game_online;
-- selecionando o BD criado
use db_generation_game_online;
-- criando a tabela de classe
create table tb_classe(
	id bigint auto_increment,
    categoria varchar(60),
    disponivel boolean,
    primary key(id)
);
-- criando a tabela de perosnagem
create table tb_personagem(
	id bigint auto_increment,
    nome varchar(60) not null,
    ataque int not null,
    defesa int not null,
    ferramenta varchar(60),
    classe_id bigint,
    primary key(id),
    foreign key (classe_id) references tb_classe (id)
);
-- populando tb_classe
insert into tb_classe (categoria,disponivel) values ("atirador",true);
insert into tb_classe (categoria,disponivel) values ("assassino",true);
insert into tb_classe (categoria,disponivel) values ("mago",true);
insert into tb_classe (categoria,disponivel) values ("soldado",true);
insert into tb_classe (categoria,disponivel) values ("suporte",true);
insert into tb_classe (categoria,disponivel) values ("tanque",true);

-- populando tb_personagem
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Aatrox", 1200,1000,"espada",4);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Vex", 1400,800,"magia",3);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Braum", 1200,2000,"braços",5);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Ashe", 2200,1100,"arco",1);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Camille", 2000,1300,"ganchos",4);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Graves", 2300,1400,"espingarda",1);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Caitlyn", 2100,900,"rifle",1);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Kayle", 2300,1000,"espada",2);
insert into tb_personagem (nome, ataque, defesa, ferramenta, classe_id) values ("Lux", 1600,1050,"espada",3);

-- selecionando os mais fortes
select * from tb_personagem where ataque > 2000;
-- selecionando os que tem a defesa entre 1000 e 2000
select * from tb_personagem where defesa between 1000 and 2000;
-- selecionando personagens com nomes que começam com c
select * from tb_personagem where nome like "C%";
-- selecionando personagens que tenham c no nome
select * from tb_personagem where nome like "%c%";

-- selecionando itens da tabela personagem em iner join com tb_classe
select tb_personagem.nome,tb_personagem.ataque,tb_personagem.ferramenta, tb_classe.categoria
 from tb_personagem
 inner join tb_classe
 on tb_classe.id = tb_personagem.classe_id;
 -- selecionando itens da tabela personagem em iner join com tb_classe onde a categoria é = 1 (atirador)
 select tb_personagem.*, tb_classe.categoria
 from tb_personagem
 inner join tb_classe 
 on tb_classe.id = tb_personagem.classe_id
 where tb_classe.id = 1;