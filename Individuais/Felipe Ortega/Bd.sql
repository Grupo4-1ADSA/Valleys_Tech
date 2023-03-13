CREATE DATABASE vt;
use empresa;

create table cadastroCliente(
id int primary key auto_increment,
nome varchar (50),
cpf char (11),
email varchar (50),
telefone char(12),
senha char (50) 
);
DESC cadastroCliente;

create table Empresa(
id int primary key auto_increment,
nome varchar(50),
email varchar(50),
Endereço varchar(50),
CNPJ char(14) unique
);
desc cadastroEmpresa;

create table asensor (
idS int primary key auto_increment,
nome varchar(20),
constraint tipo check (tipo in('temperatura','umidade')),
quantidade int (20)
);
desc asensor;


create table receberDados(
id int primary key auto_increment,
temperatura char(50),
Umidade char(50),
dadosLeitura int,
dtHora datetime  default current_timestamp
);
desc receberDados;

insert into cadastroCliente values
(null,'Felipe','37952852833','ffff@hotmail.com','1135257892','12354');

insert into cadastroEmpresa values
(null,'ValleyTech','valleytech@business.com','Rua paris 23','00001112220014');

insert into sensor values
(null,'dht11','temperatura','4');

 insert into receberDados values
 (null,'38','50',null,null);
 
 drop database vt;
 
 select * from cadastroCliente;