create database db_curso_da_minha_vida;

use db_curso_da_minha_vida;

create table tb_categorias(
id_categorias int auto_increment,
area varchar(30),
campus varchar(30),
primary key(id_categorias)
);

insert into tb_categorias(area, campus) 
values('exatas', 'centro');
insert into tb_categorias(area, campus) 
values('humanas', 'leste');
insert into tb_categorias(area, campus) 
values('sociais', 'leste');
insert into tb_categorias(area, campus) 
values('religiosas', 'norte');
insert into tb_categorias(area, campus) 
values('analiticas', 'sul');

create table tb_cursos(
id_cursos int auto_increment,
nome varchar(30),
periodo int,
modalidade varchar(10),
turno varchar(10),
categoria_id int,
primary key(id_cursos),
foreign key(categoria_id) references tb_categorias(id_categorias)
);

insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Cálculo 1', 1, 'presencial', 'integral', 1);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Cálculo 2', 2, 'presencial', 'integral', 1);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Estatistica experimental', 3, 'presencial', 'matutino', 5);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Português instrumental', 2, 'ead', 'vespertino', 2);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Conceitos principais 1', 5, 'ead', 'matutino', 4);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Gestão adm basica', 2, 'presencial', 'integral', 3);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Quimica orgânica', 3, 'presencial', 'integral', 5);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('Gestão politica', 4, 'ead', 'vespertino', 3);
insert into tb_cursos(nome, periodo, modalidade, turno, categoria_id) 
values('principios', 5, 'presencial', 'ead', 4);

select * from tb_cursos;

select * from tb_cursos where periodo > 2;

select * from tb_cursos where periodo > 1 and periodo < 4;

select * from tb_cursos where nome like '%t%';

select * from tb_cursos inner join tb_categorias 
on tb_cursos.categoria_id = tb_categorias.id_categorias; 

select * from tb_cursos inner join tb_categorias 
on tb_cursos.categoria_id = tb_categorias.id_categorias 
where id_cursos = 2; 