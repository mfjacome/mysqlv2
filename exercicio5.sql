create database db_construindo_vidas;

use db_construindo_vidas;

create table tb_categorias(
id_categorias int auto_increment,
tipo varchar(30),
quantidade int,
primary key(id_categorias)
);

insert into tb_categorias(tipo, quantidade) 
values('ferramentas', 10);
insert into tb_categorias(tipo, quantidade) 
values('peças para banheiro', 6);
insert into tb_categorias(tipo, quantidade) 
values('tintas', 8);
insert into tb_categorias(tipo, quantidade) 
values('ferramentas de pintura', 7);
insert into tb_categorias(tipo, quantidade) 
values('ferragem', 12);

create table tb_produtos(
id_produtos int auto_increment,
nome varchar(30),
valor double,
desconto boolean,
promocao boolean,
categoria_id int,
primary key(id_produtos),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('martelo', 40, false , false, 1); 
insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('selador', 96, true , false, 3); 
insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('pinçel', 6, true , true, 4); 
insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('zargão', 26, true , false, 3); 
insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('espelho', 40, false , false, 2); 
insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('vergalhão', 32, true , true, 5);
insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('box', 120, false , true, 5);
insert into tb_produtos(nome, valor, desconto, promocao, categoria_id)  
values('vazo', 250, false , true, 5);

select * from tb_produtos where valor > 100;

select * from tb_produtos where valor >= 70 and valor <= 100;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos as produtos inner join tb_categorias as categorias
on produtos.categoria_id = categorias.id_categorias;

select * from tb_produtos as produtos inner join tb_categorias as categorias
on produtos.categoria_id = categorias.id_categorias 
where tipo = 'ferramentas';

