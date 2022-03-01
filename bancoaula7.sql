/*o UPDATE, DELETE e TRUNCATE são DML pois manipula os dados da tabela*/

/*Manpulação de linhas*/
insert into cursos value
('1','HTML','Curso de HTML','40','37','2014'),
('2','Algoritmo','Logica de programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','29','2010'),
('5','Jarva','Introdução à linguagem Java','10','29','2000'),
('6','MySQL','Banco de dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças ritmicas','40','30','2018'),
('9','Cozinha árabe','Aprenda a fazer kibe','40','30','2018'),
('10','Youtuber','Gerar polêmica e fazer inscritos','5','2','2018');


/*Modificar linhas incorretas:*/
update cursos
set nome = 'HTML5'
where idcurso = '1';
/*tradução do comando: Modifico o nome da tabela curso onde id = 1*/

update cursos
set nome = 'PHP', ano = '2015'
where idcurso ='4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;  /*isso limita a ação do comando para apenas 1 linha*/

/*update cursos
set ano = '2015', carga = 800
where ano = '2018'
PERIGO: isso pode fazer com que escreva a data em todos os locais que a data for 2018, sobrescrevendo os dados
*/

update cursos
set ano = '2015', carga = '0'
where ano = '2018'
limit 1; /* vai limitar que altere a fata de apeas 1 linha*/

/*Apagar linhas:*/
Delete from cursos
where idcurso = '8';

Delete from cursos
where ano = '2018'
limit 2;

/*apagar todas as linhas de uma tabela*/
truncate table cursos; /*pode usar sem o 'table'*/

select * from cursos;