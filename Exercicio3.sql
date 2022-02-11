create database db_estudantes;

use db_estudantes;

create table tb_registro(
id bigint auto_increment,
nome varchar(255) not null,
nota decimal,
RA int,
idade int,
turma int,
primary key(id)
);

insert into tb_registro (nome, nota, RA, idade, turma)
value ("Augusto", 8, 1234, 15, 3);
insert into tb_registro (nome, nota, RA, idade, turma)
value ("Larissa", 3, 0385, 17, 1);
insert into tb_registro (nome, nota, RA, idade, turma)
value ("Felipe", 10, 3867, 18, 2);

select * from tb_registro;

select * from tb_registro where nota > 7;
select * from tb_registro where nota < 7;

update tb_registro set RA = 9371 where id = 2;