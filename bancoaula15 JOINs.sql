describe gafanhotos;
alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);
/*O curso preferido da tabela de gafanhotos está ligado com idcurso da tabela de cursos*/

update gafanhotos set cursopreferido = '6' where id = '1';
/*Atualize na tab gafanhotos o cursopreferido para 6 onde o id for 1*/

select * from gafanhotos;

select gafanhotos.nome, cursos.nome, cursos.ano from gafanhotos 
inner join cursos on cursos.idcurso = gafanhotos.cursopreferido
order by gafanhotos.nome;
/*estou juntando gafanhotos com cursos onde idcursos = cursopreferido*/
/*O INNER JOIN vai mostrar na tela apenas aqueles que possuem relação ( pode ser escrito como inner join ou apenas join*/

select g.nome, c.nome, c.ano from gafanhotos as g
inner join cursos as c on c.idcurso = g.cursopreferido
order by g.nome;
/*Aqui eu usei o comando "AS" que da apelido às tabelas*/

select g.nome, c.nome, c.ano from gafanhotos as g
left outer join cursos as c on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano from gafanhotos as g
right outer join cursos as c on c.idcurso = g.cursopreferido;
/*O outer join permite que eu veja todos os registros idependente se possui ou não relações.
O LEFT e o RIGHT indica qual das 2 tabelas quero mostrar todos os dados, ou seja,
se eu escolho left join, vai ser mostrado todos os gafanhotos idependente se tem ou não curso preferido,
isso pq a tabela gafanhotos ta do lado esquerdo do comando join. Agr se eu der left join, vai mostrar os cursos,
inclusive repetidos caso mais d 1 pessoa preferir o mesmo curso */