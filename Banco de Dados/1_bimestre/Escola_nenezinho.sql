create database escola_nenezinho;
use escola_nenezinho;

create table aluno(
id_aluno int primary key auto_increment,
nome varchar(50) not null
);

alter table aluno add column sobrenome varchar(50) not null;

select * from aluno;

insert into aluno(nome, sobrenome) values ("Bruno", "Galani");

update aluno set nome = "FiatUno" where id_aluno = 1;

INSERT INTO aluno (nome, sobrenome) VALUES
('João', 'Silva'),
('Maria', 'Souza'),
('Pedro', 'Oliveira'),
('Ana', 'Santos'),
('Lucas', 'Ferreira'),
('Juliana', 'Almeida'),
('Carlos', 'Rodrigues'),
('Fernanda', 'Costa'),
('Rafael', 'Gomes'),
('Patricia', 'Martins'),
('Bruno', 'Rocha'),
('Camila', 'Barbosa'),
('Gabriel', 'Ribeiro'),
('Larissa', 'Carvalho'),
('Felipe', 'Teixeira'),
('Aline', 'Correia'),
('Diego', 'Dias'),
('Beatriz', 'Pereira'),
('Gustavo', 'Mendes'),
('Isabela', 'Nogueira');

update aluno set nome = "Martinelli" where id_aluno = 20;
update aluno set nome = "Klicya" where id_aluno = 11;
update aluno set nome = "Anderson" where id_aluno = 8;

update aluno set sobrenome = "Galatico" where id_aluno = 12;

delete from aluno where id_aluno = 10;
delete from aluno where id_aluno = 7;
delete from aluno where id_aluno = 13;

insert into aluno (nome, sobrenome) values ("Nene", "Nasce Cimento");