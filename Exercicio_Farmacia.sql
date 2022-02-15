create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
remédio varchar(255) not null,
cuidado_pessoal varchar(255) not null,
beleza varchar(255) not null,
primary key(id)
);

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
categoria varchar(255) not null,
valor bigint,
produto_id bigint,
primary key(id),
foreign key (produto_id) references tb_categoria(id)
);

insert into tb_categoria (remédio, cuidado_pessoal, beleza)
values ("Tarja Preta", "Higiene", "Maquiagem");
insert into tb_categoria (remédio, cuidado_pessoal, beleza)
values ("Sem Prescrição", "Íntimo", "Acessórios");

insert into tb_produto (nome, categoria, valor)
values ("Hidroxina", "Tarja Preta", 80);
insert into tb_produto (nome, categoria, valor)
values ("Plasil", "Sem Prescrição", 15);
insert into tb_produto (nome, categoria, valor)
values ("Blush", "Maquiagem", 26);
insert into tb_produto (nome, categoria, valor)
values ("Sabonete", "Higiene", 5);

select * from tb_produto where valor > 50;
select * from tb_produto where valor < 60 and valor > 3;
select * from tb_produto where nome like "B%";
select * from tb_produto;
select * from tb_categoria;

select * from tb_categoria inner join tb_produto on tb_produto.produto_id = tb_produto.id;
select * from tb_produto where id = 2 or id = 4;