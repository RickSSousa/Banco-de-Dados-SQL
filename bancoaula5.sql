/*DDL são comandos de definição "Data Definition Language": create database, create table... Defini um banco, defini uma tabela...*/
/*DML são comandos de manipulaçãp "Data Manipulation Language": insert into... Inseriu/manipulou dados...*/

create database cadastro
default character set utf8
default collate utf8_general_ci;

create table `pessoas`(
`id` int NOT NULL AUTO_INCREMENT,          /* a constraint auto_increment incrementa sozinho o dado na tabela*/
`nome` varchar(30) NOT NULL,
`nascimento` date,
`sexo` enum ('M','F'),
`peso` decimal(5,2),
`altura` decimal (3,2),
`nacionalidade` varchar (30) DEFAULT 'Brasil',
primary key(id)
)default charset = utf8;

insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade) /*pode colocar entre craze os campos da tabela, se quiser*/
values
(DEFAULT,'Creuza', '1920-12-30', 'F', '50.2', '1.65', DEFAULT); /*Não precisa colocar o ID nessa linha e na de cima, porque o ID é auto incrementado*/

insert into pessoas values            /* JÁ QUE OS DADOS A SEREM INSERIDO SEGUE A ORDEM CERTINHA DOS CAMPOS NA TABELA, POSSO INSERIR ESSES DADOS SEM ESPECIFICAR OS CAMPOS ANTES, IGUAL ACIMA*/
(DEFAULT,'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');

INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade) /*abaixo insere vários dados de uma vez na tabela*/
values
(DEFAULT, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(DEFAULT, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', DEFAULT),
(DEFAULT, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

select * from pessoas;