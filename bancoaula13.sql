select carga from cursos
group by carga;
/*Isso agrupa os registroc com a mesma carga horária (não distingue, por mais que mostre uma tabela parecida)*/

select carga, count(carga) from cursos group by carga;
/*mostra quantos registros possuem em cada grupo das "carga"*/

select carga from cursos where totaulas = 30 group by carga;
/*Vai agrupar os cursos que tem o total de 30 aulas. Se quiser saber quantos, coloca count(nome)*/

select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013 /*HAVING = "somente quem tem". Vc só pode usar having com parametros da coluna q vc agrupou, nesse caso o ano*/
order by count(*) desc;
/*Seleciona os anos da tabela de cursos, onde o total de aulas seja acima de 30, agrupando essa seleção de anos
 e no agrupamento só vou mostrar quem tem ano acima de 2013, ordenando pelo contador*/
 
 select carga, count(*) from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos);
 /*ele está selecionando a carga(horas) dos cursos de ano acima de 2015 agrupando por essas cargas somente o curso que tem a carga acima da média*/
select* from cursos;