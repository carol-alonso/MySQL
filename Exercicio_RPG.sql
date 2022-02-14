create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(255) not null,
modAtaque int,
modDefesa int,
modVida int,
primary key(id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
nivel int,
ataque bigint,
defesa bigint,
vida bigint,
primary key(id),
foreign key (classe_id) references tb_classe(id),
classe_id bigint
);

insert into tb_classe (classe, modAtaque, modDefesa, modVida)
values ("Arqueiro", 20, 40, 40);
insert into tb_classe (classe, modAtaque, modDefesa, modVida)
values ("Mago", 65, 20, 15);
insert into tb_classe (classe, modAtaque, modDefesa, modVida)
values ("Lutador", 40, 30, 30);

insert into tb_personagem (nome, nivel, ataque, defesa, vida, classe_id)
values ("Ashe", 3, 20*nivel, 40*nivel, 40*nivel, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, vida, classe_id)
values ("Veigar", 2, 65*nivel, 20*nivel, 15*nivel, 2);
insert into tb_personagem (nome, nivel, ataque, defesa, vida, classe_id)
values ("Vi", 4, 40*nivel, 30*nivel, 30*nivel, 3);

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where ataque < 2000 and defesa > 1000;
select * from tb_personagem where nome like "V%";
select * from tb_personagem;
select * from tb_classe;

select * from tb_personagem right join tb_classe on tb_personagem.classe_id = tb_classe.id;
select * from tb_personagem where classe_id = 1 or classe_id = 3;

