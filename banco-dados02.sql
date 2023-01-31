use db_loja_games;

create table tb_personagens (
id bigint auto_increment,
tipo varchar (255) not null,
poder int (20) not null,
elemento varchar (255) not null,
classe varchar (255) not null,
primary key (id)
);


create table tb_classes (
id bigint auto_increment,
tipoDeMagia varchar (255) not null,
poderDeLuta int (20) not null,
primary key (id)
);

alter table tb_personagens add categoria_id bigint;
alter table tb_personagens add constraint fk_personagens_classes foreign key (categoria_id) references tb_classes (id);


insert into tb_classes (tipoDeMagia, poderDeLuta) values ("magia das trevas", 9000);
insert into tb_classes (tipoDeMagia, poderDeLuta) values ("magia da luz", 7000);
insert into tb_classes (tipoDeMagia, poderDeLuta) values ("magia da lama", 13000);
insert into tb_classes (tipoDeMagia, poderDeLuta) values ("magia da brisa", 4200);
insert into tb_classes (tipoDeMagia, poderDeLuta) values ("magia dágua", 2000);


insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("warrior", 300, "terra e água", "humano", 3);
insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("paladin", 3300, "luz", "humano", 2);
insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("rogue", 5000, "stealth", "undead", 4);
insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("hunter", 4500, "stealth", "troll", 4);
insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("mage", 4800, "água", "humano", 5);
insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("warlock", 7000, "escuridão", "tauren", 1);
insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("priest", 5000, "luz", "elf", 2);
insert into tb_personagens (tipo, poder, elemento, classe, categoria_id) values ("shaman", 6000, "água", "dwarf", 5);


select * from tb_personagens where poder > 2000;
select * from tb_personagens where poder >= 1000 and poder <= 2000;
select * from tb_personagens where classe like "humano";

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.categoria_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.categoria_id where elemento = "água";


select * from tb_personagens;
select * from tb_classes;



