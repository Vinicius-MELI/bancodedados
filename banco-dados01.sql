create database db_rh_empresa01;

use db_rh_empresa01;

create table tb_colaboradores (
matricula bigint auto_increment,
nome varchar (255) not null,
rg int (20) not null,
idade int (20) not null,
salario decimal not null,
primary key (matricula)
);


select * from tb_colaboradores;

insert into tb_colaboradores (nome, rg, idade, salario) values ("Joaquim", 123456, 45, 5000.00);

insert into tb_colaboradores (nome, rg, idade, salario) values ("Pedro", 9876584, 18, 1800.00);

insert into tb_colaboradores (nome, rg, idade, salario) values ("Maria", 456731, 33, 8000.00);

insert into tb_colaboradores (nome, rg, idade, salario) values ("Joaquina", 77665, 23, 2500.00);

insert into tb_colaboradores (nome, rg, idade, salario) values ("Pablo", 689574, 50, 6500.00);


select * from tb_colaboradores where salario > 2000.00;

select * from tb_colaboradores where salario < 2000.00;
