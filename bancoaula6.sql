/*o ALTER TABLE é um DDL, pois meche na definição*/
/*o DROP TABLE é um DDL também pois meche na definição, estrutura da tabela*/

desc pessoas; /*ou describe*/

alter table pessoas
add column profissao varchar(10);   /*altera a tabela e adiciona a coluna profissao*/

alter table pessoas
drop column profissao;              /*altera a tabela e remove a coluna profissao*/

alter table pessoas
add column profissao varchar(30) after nome;     /*altera a tabela e adiciona a coluna profissao DEPOIS da coluna nome*/

alter table pessoas
add codigo int first;          /*altera a tabela e adiciona a coluna codigo ANTES de todas*/

/*Não existe comando 'last' ou 'after', sempre que quiser colocar antes da primeira coluna coloque para 'first'.
Para outras posições, coloque 'last' ou se não colocar nada ele já põe na ultima posição*/

/*para alterar a estrutura da definição de uma coluna ou constraits, usa-se:*/
alter table pessoas
modify column profissao varchar(20) not null default '';

/*se quiser mudar o nome da coluna (tem que colocar o nome antigo antes do nome novo).
Tem que colocar as constraints também, se quiser que tenha como antes:*/
alter table pessoas
change column profissao prof varchar(20);

/*se quiser mudar o nome da tabela inteira:*/
alter table pessoas
rename to gafanhotos;

select * from gafanhotos;

/*criar uma tabelase ele existir ou se ele não existir (if not exists / if exists):*/
create table if not exists cursos(
nome varchar(30) not null unique, /* 'unique' permite que não seja inserido um dado igual a outro*/
descricao text,
carga int unsigned, /* 'unsigned' não permite a insterção de um dado com sinal. ex.:"-18"*/
totalaulas int unsigned,
ano year default '2021'
) default charset=utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key(idcurso); /*adicionou a chave primária na tabela*/

/*para apagar uma tabela:*/
create table if not exists teste(
id int,
nome varchar(30),
idade int
);

insert into teste value
('1','Pedro','22'),
('2','Maria','22');

drop table if exists teste;
/*-----------------------------------------------------------*/

desc cursos;