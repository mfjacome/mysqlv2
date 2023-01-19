create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id_classes bigint auto_increment,
nome_classes varchar (50),
poder_total_classes double,
primary key(id_classes)
);

insert into tb_classes(nome_classes, poder_total_classes) 
values('Arqueiros', 2330);
insert into tb_classes(nome_classes, poder_total_classes) 
values('Gladiadores', 2619);
insert into tb_classes(nome_classes, poder_total_classes) 
values('Magos', 7172);
insert into tb_classes(nome_classes, poder_total_classes) 
values('Monstros', 4550);
insert into tb_classes(nome_classes, poder_total_classes) 
values('Humanos', 5273);

create table tb_personagens(
id_personagens bigint auto_increment,
nome_personagens varchar(60),
ataque_personagens decimal,
defesa_personagens decimal,
nivel_personagens bigint,
classe_id bigint,
primary key(id_personagens),
foreign key(classe_id) references tb_classes(id_classes)
);

insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Gatito', 1500, 2000, 3, 4);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Elchapo', 500, 4000, 2, 2);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Malibu', 5500, 3000, 4, 2);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Bruno351', 1500, 2000, 3, 1);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('157Malvadao', 5500, 3000, 4, 3);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('DoidaoBolado', 1500, 2000, 3, 4);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Gatito56', 500, 500, 1, 3);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Pablo', 700, 900, 1, 1);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Escobar', 1500, 2000, 3, 5);
insert into tb_personagens(nome_personagens, ataque_personagens, defesa_personagens, nivel_personagens, classe_id) 
values('Duble', 500, 200, 1, 5);

select * from tb_classes; -- where ataque_personagens > 1000;
select * from tb_personagens where ataque_personagens > 1000;
select * from tb_personagens where defesa_personagens = 1000 or 2000;

select * from tb_personagens where nome_personagens like "%c%";

select nome_personagens, nivel_personagens  
from tb_personagens 
inner join tb_classes 
on 
tb_personagens.classe_id = tb_classes .id_classes 
where tb_classes.nome_classes = 'Arqueiros';

select *  
from tb_personagens 
left join tb_classes 
on 
tb_personagens.classe_id = tb_classes .id_classes;

select *  
from tb_personagens 
right join tb_classes 
on 
tb_personagens.classe_id = tb_classes .id_classes where
nivel_personagens = 1;