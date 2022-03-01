/*O operador % e _ são WILDCARDS, ou curingas*/

select * from cursos
where nome like 'p%';   /*mostra na tela os cursos da tabela que começam com a letra 'p', o LIKE é no sentido de "semelhante" */
/*O '%' é case sensitive e age como coringa "nenhum ou varios caracteres", ou seja, se tiver um curso chamado P, ele mostra, ou Power, tbm mostra*/


select * from cursos 
where nome like '%p'; /*se o '%' estiver na esquerda, mostra as palavras que terminam com p*/
/*Se colocar '%p%' mostrarão os cursos que tem p em qualquer lugar do nome*/

select * from cursos
where nome not like '%p%';  /*mostra os nomes dos cursos que n tem letra 'p' em nenhum lugar*/

select * from cursos
where nome like 'ph%p';  /*Mostra os cursos que começam com PH e terminam com P*/

select * from cursos
where nome like 'ph%p_';  /*O '_' fica que é obrigado ter um caractere depois do 'p'*/
/*Outros ex: 'p_p%' ou P__T%, essas opção mostrariam PHP e Photoshop*/

select distinct nacionalidade from gafanhotos
order by nacionalidade;  /*mostra os países conde tem gafanhotos, sem repetir cada país, ou seja, ocorrencias distintas*/

select count(*) from cursos where carga >40;
/*O count é uma função de agregação, que vai contar os cursos com carga maior q 40*/
/*Se quiser pode contar o nome de um campo tbm: count(nome)*/

select max(carga) from cursos; /*Me mostrará qual é o curso de maior carga*/

select max(totaulas) from cursos where ano = '2016'; /*Me mostra qual foi o curso q teve mais aulas em 2016*/

select min(totaulas) from cursos where ano = '2016';/*Me mostra qual foi o curso q teve menos aulas em 2016*/

select sum(totaulas) from cursos where ano = '2016'; /*mostrará o número total de horas de todos os cursos*/

select avg(totaulas) from cursos where ano = '2016'; /*faz a média do número total de horas dividido pelo número de cursos*/