create database livraria;
use livraria;

create table cliente(
id_cliente int primary key auto_increment,
nome_cliente varchar(50)not null,
idade_cliente int(3),
telefone varchar(17),
email varchar(100)not null
);

create table livro(
id_livro int primary key auto_increment,
nome_livro varchar(50)not null,
genero text,
descricao varchar(250),
valor decimal not null
);
