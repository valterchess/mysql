create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

-- ordena por ordem alfabética e depois por preco
select * from tb_produtos order by nome, preco;

-- ordena por ordem alfabética de forma decrescente
select * from tb_produtos order by nome desc;

-- (filtrando dados)selecionando dados especificos com operadores lógicos
select * from tb_produtos where preco > 20 and categoria_id = 1;
select * from tb_produtos where preco > 20 or categoria_id = 1;
select * from tb_produtos where not categoria_id = 1;

/*
*filtrando dados que contenham caracteres específicos no texto
*/
-- busca dados que iniciam com "ha"
select * from tb_produtos where nome like "ha%";
-- busca dados que terminam com "ha"
select * from tb_produtos where nome like "%ha";
-- busca dados quem contem "ha"
select * from tb_produtos where nome like "%ha%" order by nome;

-- mostra como a tabela tb_produtos foi construida
show create table tb_produtos;

-- (filtrando dados)selecionando dados especificos com a função in
select * from tb_produtos where preco in(20,30,40);
-- (filtrando dados)selecionando dados especificos com a função between(entre um valor e outro)
select * from tb_produtos where preco between 20 and 40;
-- (filtrando dados)selecionando dados especificos com a função between(entre uma data e outra)
select * from tb_produtos where dtvalidade between "2021-11-07" and "2021-11-15";

-- formata a data
select nome, date_format(dtvalidade, "%d/%m/%y") as data_de_validade from tb_produtos where dtvalidade between "2021-11-07" and "2021-11-15";

-- conta a quantidade de itens na tabela produto
select count(*) from tb_produtos;

-- conta a quantidade de dados conectados a categoria na tb_produtos
select count(categoria_id) from tb_produtos;

-- soma o preco dos produtos da tb_produtos
select sum(preco) from tb_produtos;
-- retorna a média dos precos dos elementos de tb_produtos
select avg(preco) from tb_produtos;
-- calcula a média dos produtos em cada categoria_id
select categoria_id, avg(preco) from tb_produtos group by categoria_id;
-- retorna o elemento com o maior preco na tb_produtos
select max(preco) from tb_produtos;
-- retorna o elemento com o menor preco na tb_produtos
select min(preco) from tb_produtos;

-- retorna os elementos conectados a chave estrangeira e o nome referente a categoria
select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao
 from tb_produtos 
inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao
 from tb_produtos 
left join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qtproduto, tb_categoria.descricao
 from tb_produtos 
right join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id;

-- retorna a media do preco dos elementos conectados a tb_categoria e o nome referente a cada categoria
select  tb_categoria.descricao, avg(tb_produtos.preco) as preco_medio
 from tb_produtos 
inner join tb_categoria
on tb_categoria.id = tb_produtos.categoria_id
group by tb_produtos.categoria_id;














