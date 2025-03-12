--Criando banco de dados
CREATE DATABASE anafit;

--Criando primeira tabela
CREATE TABLE cliente(
cpf BIGINT PRIMARY KEY,
primeironome varchar(50) NOT NULL,
sobrenome varchar(50) NOT NULL,
datanac DATE NOT NULL,
peso DECIMAL (5,2),
altura FLOAT,
whatsapp VARCHAR(15) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
rua VARCHAR(100) NOT NULL,
numero INT(6) NOT NULL,
complemento VARCHAR(100),
cep VARCHAR(8) NOT NULL
);

--Inserindo dados na tabela de clientes
INSERT INTO cliente(cpf, primeironome, sobrenome, datanac, peso, altura, whatsapp, email, rua, numero, complemento, cep)
VALUES(12345678910, "Ana Claudia", "Cunha", "2014-09-17", 60.50, 1.73, "+5511989898988", "ana.cscunha1@senacsp.edu.br", "Rua Dr Antônio Bento" , 393, "", "04750000");

--alterar registros de uma linha
UPDATE treino
SET diadasemana = "2025-03-14"
WHERE = tipo "Musculação" AND  diadasemana = "2025-03-12";

--alterar registro em duas linhas ao mesmo tempo
UPDATE treino
SET horario = "15:00:00"
WHERE horario IN ("00:00:00", "18:00:00");

--Criando tabela treino
CREATE TABLE treino(
diadasemana DATE NOT NULL, 
horario TIME NOT NULL,
tipo VARCHAR (50) NOT NULL
);

--Inserindo DOIS dados ao mesmo tempo na tabela treino
INSERT INTO treino(diadasemana, horario, tipo)
VALUES("2025-03-12", "08:00:00", "Musculação"),
("2025-03-13", "18:00:00", "Corrida");

--Deletando um dado/registro específico na tabela
DELETE FROM treino WHERE tipo = "Corrida";

--Deletando TODOS os registros da tabela
DELETE FROM treino;

--DELETAR UMA TABELA
DROP TABLE treino;

DROP TABLE cliente;

--DELETANDO UM BANDO DE DADOS
DROP DATABASE anafit;