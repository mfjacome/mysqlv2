create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id_categorias int auto_increment,
tipo varchar(50),
fabricante varchar(50),
primary key(id_categorias)
);

insert into tb_categorias(tipo, fabricante)
values('Antibióticos', 'Farmacol');
insert into tb_categorias(tipo, fabricante)
values('Analgesicos', 'primefarma');
insert into tb_categorias(tipo, fabricante)
values('higiene bucal', 'colgate');
insert into tb_categorias(tipo, fabricante)
values('contraceptivos', 'pfizer');
insert into tb_categorias(tipo, fabricante)
values('mercado', 'variadas');

create table tb_produtos(
id_produtos int auto_increment,
nome varchar(50),
valor double,
validade date,
medida varchar(30),
embalagem varchar(30),
categoria_id int,
primary key(id_produtos),
foreign key (categoria_id) references tb_categorias(id_categorias)
);

insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('amoxilina', 26 , '2028/05/03' , '20 unid.', 'papel', 1);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('aeci', 10 , '2025/10/01', '10 unid.', 'plástico', 2);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('pasta dental', 5, '2024/04/24' , '500 g', 'ecologica', 3);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('preservativo', 18, '2023/05/06', '6 unid.', 'plástico', 4);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('biscoito', 6, '2025/05/25', '100 g', 'plástico', 5);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('fio dental', 16, '2026/06/26', '50 g', 'plástico', 3);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('leite', 36, '2024-08-22', '1 l', 'papel', 5);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('Mezlocilina', 60, '2023-09-23', '3 unid.', 'ecologica', 1);
insert into tb_produtos(nome, valor, validade, medida, embalagem, categoria_id)
values('iumi', 180 , '2026-05-26', '3 envelopes', 'papel', 4);

select * from tb_produtos where valor > 50;
select * from tb_produtos where valor >= 5 and valor <= 60;
select nome, valor from tb_produtos where valor >= 5 and valor <= 60;

select * from tb_produtos where nome like '%c%';

select * from tb_produtos as p inner join tb_categorias as c 
on p.categoria_id = c.id_categorias;

select * from tb_produtos as p inner join tb_categorias as c 
on p.categoria_id = c.id_categorias 
where id_categorias = 1;
