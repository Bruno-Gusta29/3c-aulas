create database Empresa_PWY;
use Empresa_PWY;

create table funcionario(
id_func int auto_increment not null,
nome varchar(255) not null,
data_nasc date not null,
cpf varchar(20),
primary key (id_func)
);

create table departamento(
id_depar int auto_increment primary key,
nome_depar varchar(255),
id_func int not null,
id_funcao int not null,
foreign key (id_func) references funcionario(id_func),
foreign key (id_funcao) references funcao(id_funcao)
);

create table funcao(
id_funcao int(20) primary key auto_increment,
nome varchar(200) not null
);

create table produtos(
id_prod int(20) primary key auto_increment,
nome varchar(200) not null,
descricao varchar(255),
valor numeric(10, 2) not null
);

select * from funcionario;
select * from funcao;
select * from departamento;
select * from produtos;

INSERT INTO funcionario (nome, data_nasc, cpf) values
('João Silva', '1990-05-12', '123.456.789-00'),
('Maria Oliveira', '1985-10-30', '987.654.321-00'),
('Carlos Souza', '2000-01-20', '111.222.333-44');
delete from funcionario where id_func=1;
delete from funcionario where id_func=2;
delete from funcionario where id_func=3;

insert into funcao (nome) values
("Secretaria"),
("Produtor"),
("Chefe");

insert into departamento (nome_depar, id_func, id_funcao) values
('Logistica', 4, 1),
('Marketing', 5, 2),
('Maquinarios', 6, 3);

INSERT INTO produtos (nome, descricao, valor) values
('Notebook Dell', 'Notebook i5 com 8GB de RAM e SSD 256GB', 3500.00),
('Mouse Gamer', 'Mouse com RGB e 6 botões programáveis', 120.50),
('Teclado Mecânico', 'Teclado switch blue ABNT2', 250.99);