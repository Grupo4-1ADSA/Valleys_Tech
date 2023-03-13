CREATE DATABASE sprint1;

USE sprint1;
CREATE TABLE usuario(
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nomeUsuario VARCHAR(60),
    cpfUsuario CHAR(14),
    emailUsuario VARCHAR(40),
    senhaUsuario VARCHAR(20)
);

CREATE TABLE empresa(
	idEmpresa INT PRIMARY KEY AUTO_INCREMENT,
    nomeEmpresa VARCHAR(40),
    cnpj CHAR(20) UNIQUE,
    emailEmpresa VARCHAR(40),
    senhaEmpresa VARCHAR(20),
    representante VARCHAR(30)
);
CREATE TABLE vinhedo(
	idVinhedo INT PRIMARY KEY AUTO_INCREMENT,
    cepVinhedo VARCHAR(20)
);
CREATE TABLE representante(
	idRepresentante INT PRIMARY KEY AUTO_INCREMENT,
    nomeRepresentante VARCHAR(50),
    cpfRepresentante CHAR(14),
    emailRepresentante VARCHAR(40),
    senhaRepresentante VARCHAR(20)
);
CREATE TABLE sensor(
	idSensor INT PRIMARY KEY AUTO_INCREMENT,
    nomeSensor VARCHAR(30),
    especialidade VARCHAR(70)
);
CREATE TABLE leitura(
	idLeitura INT PRIMARY KEY AUTO_INCREMENT,
    tipoLeitura VARCHAR(30),
    dadoLeitura FLOAT,
    dataHoraLeitura datetime default current_timestamp
);

-- INSERTS
INSERT INTO usuario(nomeUsuario,cpfUsuario,emailUsuario,senhaUsuario) VALUES
	('Felipe Ortega ','145.777.777-12','felipeortega@gmail.com','FelipeOrtega1234'),
    ('Davi Maciel','100.200.300-22','davimaciel@gmail.com','Davi1234'),
    ('Guilherme Nascimento','148.205.444-25','guinascimento@gmail.com','GuiNasc1234'),
    ('Gabriel Gutierrez','789.888.123-25','gabigutierrez@gmail.com','Gabriel1234'),
    ('Guilherme de Lima','144.222.777-77','guiLima@gmail.com','GuiLima1234'),
    ('Luka Caetano','772.365.789-24','luka@gmail.com','Luka1234'),
    ('Lucas Arantes','878.102.100-88','lucasarantes@gmail.com','LucasArantes1234'),
    ('João Victor Alves','700.700.165-78','joao@gmail.com','Joao1234');

SELECT * FROM usuario;

INSERT INTO empresa(nomeEmpresa,cnpj,emailEmpresa,senhaEmpresa,representante) VALUES
	('Vinho Incrível','12.123.123/1234-11','vinhoIncrivel@gmail.com','vinho1','Junior Souza'),
    ('Cantinho do Vale','21.321.321/4321-22','cantinho@gmail.com','vinho2','Laura Perez'),
    ('Vinhedo bom','67.678.578/6789-66','vinhedoBom@gmail.com','vinho3','Tiago Freitas'),
    ('Viticultivos','98.987.987/9876-99','viticulyivo@gmail.com','vinho4','Beti Lima'),
    ('uvinho','10.100.100/1000-10','uvinho@gmail.com','vinho5','Cassio Silva');
    
SELECT * FROM empresa;

INSERT INTO vinhedo(cepVinhedo) VALUES
	('04195-060'),
	('05593-011'),
    ('04746-070'),
    ('03757-030'),
    ('04437-902');
    
SELECT * FROM vinhedo;

INSERT INTO representante(nomeRepresentante,cpfRepresentante,emailRepresentante,senhaRepresentante) VALUES
	('Junior Souza','892.634.880-00','junior@gmail.com','representante1'),
    ('Laura Perez','52.633.590-40','laura@gmail.com','representante2'),
    ('Tiago Freitas','789.577.477-26','tiago@gmail.com','representante3'),
    ('Beti Lima','455.589.659-22','beti@gmail.com','representante4'),
    ('Cassio Silva','489.124.789-45','cassio@gmail.com','representante5');
    
SELECT * FROM representante;

INSERT INTO sensor(nomeSensor,especialidade) VALUES
	('CG-15','Capta temperatura em um raio de 100m'),
    ('UM-2023','Capta Úmidade em um raio de 15m'),
    ('CG-10','Capta temperatura em um raio de 26m');

SELECT * FROM sensor;

INSERT INTO leitura(tipoLeitura,dadoLeitura) VALUES
	('Temperatura',15.7),
    ('Úmidade',27.00),
    ('Temperatura',18.2),
    ('Temperatura',25.5),
    ('Úmidade',9.07);
    
SELECT * FROM leitura;

-- SELECTS

-- MOSTRAR DADOS DAS EMPRESAS QUE TEM VINHO NO NOME
SELECT * FROM empresa WHERE nomeEmpresa LIKE '%Vinho%';

-- MOSTRAR NOME DA EMPRESA QUE TEM O REPRESENTANTE JUNIOR
SELECT nomeEmpresa FROM empresa WHERE representante LIKE 'Junior%';

-- MOSTRAR APENAS OS SENSORES DE TEMPERATURA
SELECT * FROM sensor WHERE especialidade LIKE '%Temperatura%';

-- MOSTRAR APENAS OS SENSORES DE ÚMIDADE
SELECT * FROM sensor WHERE especialidade LIKE '%Úmidade%';
