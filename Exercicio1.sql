 create database db_rh;
 
 use db_rh;
 
 create table tb_funcionarios(
 id bigint auto_increment,
 nome varchar(255) not null,
 idade int,
 sexo char,
 funcao varchar(255) not null,
 salario decimal,
 
 primary key(id)
 );
 
 insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
 value ("Julia", 20, "F", "Jovem Aprendiz", 1100.0);
 insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
 value ("Felipe", 22, "M", "Produtor", 4000.0);
  insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
 value ("Karla", 40, "F", "Caixa", 2000.0);
  insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
 value ("Sheila", 34, "F", "Assistente", 2500.0);
  insert into tb_funcionarios (nome, idade, sexo, funcao, salario)
 value ("Heitor", 45, "M", "CEO", 7000.0);
 
 select * from tb_funcionarios where salario < 2000.0;
  select * from tb_funcionarios where salario > 2000.0;
  
  delete from tb_funcionarios where id = 7;
  delete from tb_funcionarios where id = 3;
  
  update tb_funcionarios set idade = 21 where id = 1;

 