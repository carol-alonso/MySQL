 create database db_ecommerce;
 
 use db_ecommerce;
 
 create table tb_produtos(
 id bigint auto_increment,
 nome varchar(255) not null,
 quantidade int,
 categoria varchar(255) not null,
 preco decimal,
 pagina int,
 primary key(id)
 );
 
insert into tb_produtos (nome, quantidade, categoria, preco, pagina)
value ("Camiseta", 2, "Roupa", 40.0, 2);
insert into tb_produtos (nome, quantidade, categoria, preco, pagina)
value ("Tênis", 1, "Sapato", 150.0, 3);
insert into tb_produtos (nome, quantidade, categoria, preco, pagina)
value ("Caneca", 3, "Utensilio", 120.0, 4);
insert into tb_produtos (nome, quantidade, categoria, preco, pagina)
value ("Moletom", 1, "Roupa", 80.0, 1);
insert into tb_produtos (nome, quantidade, categoria, preco, pagina)
value ("Garrafinha", 1, "Utensilio", 20.0, 4);
 
select * from tb_produtos;
 
select * from tb_produtos where preco < 500.0;

select * from tb_produtos where preco > 500.0;

update tb_produtos set preco = 600.0 where id = 2;