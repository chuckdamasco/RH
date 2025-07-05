SET DATEFORMAT DMY;
GO

CREATE DATABASE Recursos_Humanos;
GO
USE Recursos_Humanos;
GO
CREATE TABLE FUNCIONARIO (
	idFuncionario INT NOT NULL,
	nome VARCHAR(50) NULL,
	endereco VARCHAR(100) NULL,
	cidade VARCHAR (50) NULL,
	estado CHAR (2) NULL,
	email varchar(50) NULL UNIQUE,
	dataNascto DATE NULL,
	PRIMARY KEY (idFuncionario)
)
GO
ALTER TABLE Funcionario 
	ADD salario DECIMAL (7,2) NULL,
		cargos VARCHAR (2) NULL
		GO
ALTER TABLE Funcionario 
	DROP COLUMN cargos
	GO
ALTER TABLE Funcionario 
	ADD cargo CHAR(2) NULL,
	ativo BIT
	GO
CREATE INDEX FuncionarioNome
	ON Funcionario (nome)
	GO
CREATE INDEX FuncionarioEstado
	ON Funcionario (estado DESC)
	GO
CREATE INDEX FuncionarioEstadoCidade
	ON Funcionario (estado DESC, cidade ASC)
	GO
INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado,email, dataNascto)
VALUES
(1,'José da Silva','Av. São Paulo, 34','Itu','SP','zesilva@yahoo.com.br','24-02-1991');
GO
INSERT INTO Funcionario
VALUES
(2,'José da Oliveira','Rua sa Saude, 138','Jundiai','SP','jojo@hotmail.com','11-01-1988',750,'TI',1);
GO
INSERT INTO Funcionario
VALUES
(3,'Ana Pimenta','Rua da Saude, 11','Jundiai','SP','pimentinha@hotmail.com','01-01-1987',750,'TI',0),
(4,'Mario Lopes','Rua Angelica, 143','Jundiai','SP','mlopes@hotmail.com','10-04-1985',750,'TI',0);
GO
UPDATE Funcionario SET

cidade = 'Valinhos'
WHERE cidade = 'Itu'
GO
DELETE FROM Funcionario
WHERE idFuncionario = 2;
GO
INSERT INTO Funcionario
(idFuncionario, nome, endereco, cidade, estado, email, dataNascto)
VALUES
(5,'Carlos Dias','Av. Lapa, 121','Itu','SP','varlao@gmail.com','31-03-1990'),
(6,'Ana Maria da Cunha','Av São Paulo, 388','Itu','SP','aninhacunha@gmail.com','12-04-1988'),
(7,'Cláudia Regina Martins','Rua Holanda, 89','Campinas','SP','cregina@gmail.com','04-12-1988'),
(8,'Marcela Thato','Rua Bélgica, 43','Campinas','SP','marcthato@hotmail.com','09-11-1987'),
(9,'Jorge Luís Rodrigues','Av da Saudade, 1989','Jundiai','SP','jorgeluis@yahoo.com','05-05-1990'),
(10,'Ana Paula Camargo','Rua Costa e Silva, 33','Jundiai','SP','apcamargo@gmail.com','30-06-1991'),
(11,'Ivo Cunha','Av. Raio de Luz, 100','Campinas','SP','ivo@bol.com.br','11-04-1987'),
(12,'Carlos Luís de Souza','Rua Nicolau Coelho,22','São Paulo','SP','cls@bol.com.br','30-04-1988');
GO
UPDATE FUNCIONARIO SET 
cidade = 'Valinhos'
WHERE cidade = 'Itu'
GO
UPDATE FUNCIONARIO SET 
cargo = 'AI', salario = 1100
WHERE cidade = 'Valinhos'
UPDATE FUNCIONARIO SET 
cargo = 'PC', salario = 1700
WHERE cidade = 'Campinas'
UPDATE FUNCIONARIO SET 
cargo = 'TI', salario = 750
WHERE cidade = 'Jundiai'
GO

DELETE FROM Funcionario
WHERE idFuncionario = 5 
GO