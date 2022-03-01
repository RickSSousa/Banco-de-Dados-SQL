use cadastro;

create table gafanhoto_assiste_curso (
	id int not null auto_increment,
    data date,
    idgafanhoto int, /*chave estrangeira do mesmo tipo que a chave primária original, SEMPRE*/
    idcurso int,
    primary key (id),
    foreign key(idgafanhoto) references gafanhotos(id), /*estou fazendo que o idgafanhoto dessa nova tabela se ligue ao id da tabela gafanhoto*/
    foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from gafanhoto_assiste_curso;

select g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c
on a.idcurso = c.idcurso
order by g.nome;