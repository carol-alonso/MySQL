create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
refrigerante varchar(255) not null,
sobremesa varchar(255) not null,
gorjeta_extra bigint,
primary key(id)
);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255) not null,
tamanho varchar(255) not null,
valor bigint,
produto_id bigint,
primary key(id),
foreign key (produto_id) references tb_categoria(id)
);

insert into tb_categoria (refrigerante, sobremesa, gorjeta_extra)
values ("Pepsi", "Petit Gateau", 5);
insert into tb_categoria (refrigerante, sobremesa, gorjeta_extra)
values ("Coca-Cola", "Sorvete", 10);
insert into tb_categoria (refrigerante, sobremesa, gorjeta_extra)
values ("Guaraná", "Esfirra Doce", 9);
insert into tb_categoria (refrigerante, sobremesa, gorjeta_extra)
values ("Tubaína", "Chocolate", 7);

insert into tb_pizza (sabor, tamanho, valor)
values ("Portuguesa", "Grande", 80);
insert into tb_pizza (sabor, tamanho, valor)
values ("Moda da casa", "Pequena", 45);
insert into tb_pizza (sabor, tamanho, valor)
values ("Calabresa", "Média", 67);
insert into tb_pizza (sabor, tamanho, valor)
values ("Muçarela", "Pequena", 30);

select * from tb_pizza where valor > 45;
select * from tb_pizza where valor < 60 and valor > 29;
select * from tb_pizza where sabor like "C%";
select * from tb_pizza;
select * from tb_categoria;

select * from tb_pizza inner join tb_categoria on tb_pizza.produto_id = tb_categoria.id;
select * from tb_pizza where produto_id = 2 or produto_id = 4;
