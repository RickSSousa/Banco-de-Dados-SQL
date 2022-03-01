/*O comando SELECT é um DML ou DQL "Data Query Language" - linguagem para pergundas/questionamentos*/

select * from cursos;   /*seleciona todas as colunas da tabela ordenando por padrão com a chave primária*/

select * from cursos  /* ""  ordena por nome, na órdem crescente por padrão*/
order by nome;

select * from cursos  /* "" ordena por nome, na órdem decrescente*/
order by nome desc;

select ano, nome, carga from cursos  /*seleciona apenas as colunas que desejo*/
order by ano, nome;   /*ordeno por ano crescete e por nome (ordem alfabética)*/

select * from cursos
where ano = '2016'     /*seleciona e mostra todos os dados onde o ano registrado é 2016 d ordena por nome em alfabética*/
order by nome;

select nome, carga from cursos
where ano = '2016'                 /*faz o que o de cima faz, mas selecionando apenas os dados dos campos solicitados*/
order by nome;

select nome, carga from cursos
where ano <= '2015'  /*where é usado como operador de condição "onde ano é menor ou igual a 2015"*/
order by nome;

select nome, ano from cursos
where ano between 2014 and 2016  /*seleciona nome e ano onde ano for entre 2014 e 2016, ordenando por ano decrescente e nome*/
order by ano desc, nome;

select nome, descricao, ano from cursos
where ano in (2014, 2016)  /*seleciona nome, desri... onde o ano esteja dentro dos valores dados*/
order by ano;

 /*mais exemplo de operadores lógicos AND/OR*/
select nome, carga, totaulas from cursos
where carga > 35 and totaulas < 30;

select nome, carga, totaulas from cursos
where carga > 35 or totaulas < 30;