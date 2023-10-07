CREATE DATABASE GerenciamentoE;

USE GerenciamentoE;

DROP DATABASE GerenciamentoE;

CREATE TABLE Escolas(
EscolaId INT PRIMARY KEY AUTO_INCREMENT,
NomeEscola VARCHAR(255) NOT NULL,
Endereco VARCHAR(255) NOT NULL,
Telefone VARCHAR(20) NOT NULL
);

INSERT INTO Escolas(NomeEscola, Endereco, Telefone) VALUES ('Escola Filadélfia', 'Rua Pedro, 3 Vila Canária', '(71) 3212-7026');
INSERT INTO Escolas(NomeEscola, Endereco, Telefone) VALUES ('Escola Nelson Mandela', 'Rua das Urbis, 4 Periperi', '(71) 3213-7036');
INSERT INTO Escolas(NomeEscola, Endereco, Telefone) VALUES ('Escola Arlete Margalhães', 'Rua Pedro, 5 Castelo Branco', '(71) 3214-7046');
INSERT INTO Escolas(NomeEscola, Endereco, Telefone) VALUES ('Escola Titânia', 'Rua Cosme de Farias, 6 Cajazeiras', '(71) 3215-7056');
INSERT INTO Escolas(NomeEscola, Endereco, Telefone) VALUES ('Escola São Pedro', 'Rua José Crino, 7 Paripe', '(71) 3216-7066');

DROP TABLE Escolas;

CREATE TABLE Alunos(
Matricula INT PRIMARY KEY AUTO_INCREMENT,
NomeAluno VARCHAR(255) NOT NULL,
DataNascimento DATE NOT NULL,
Endereco VARCHAR(255) NOT NULL,
Telefone VARCHAR(20) NOT NULL,
IdEscola INT, 
FOREIGN KEY(IdEscola) REFERENCES Escolas (EscolaId)
);

INSERT INTO Alunos(NomeAluno, DataNascimento, Endereco, Telefone, IdEscola) VALUES ('Thalita', '2001-05-15', 'Rua Sérgio Landulfo Furtado, 3 Castelo Branco', '(71) 9 8501-3844', 3);
INSERT INTO Alunos(NomeAluno, DataNascimento, Endereco, Telefone, IdEscola) VALUES ('Paulo', '2000-04-14', 'Rua Sérgio Landulfo Furtado, 2 Castelo Branco', '(71) 9 8501-7428', 3);
INSERT INTO Alunos(NomeAluno, DataNascimento, Endereco, Telefone, IdEscola) VALUES ('Maria', '2002-06-16', 'Rua do Buraco, 4 Cajazeiras', '(71) 9 8502-3845', 4);
INSERT INTO Alunos(NomeAluno, DataNascimento, Endereco, Telefone, IdEscola) VALUES ('João', '2003-07-17', 'Rua da Felipe Fernandez, 5 Paripe', '(71) 9 8503-3846', 5);
INSERT INTO Alunos(NomeAluno, DataNascimento, Endereco, Telefone, IdEscola) VALUES ('Pedro', '2004-08-18', 'Rua da Gloria, 6 Periperi', '(71) 9 8504-3847', 2);
INSERT INTO Alunos(NomeAluno, DataNascimento, Endereco, Telefone, IdEscola) VALUES ('Joana', '2005-09-19', 'Rua José Vilaverde, 7 Vila Canária', '(71) 9 8505-3848', 1);

DROP TABLE Alunos;

SELECT E.NomeEscola AS 'Nome Escola', 
COUNT(A.Matricula) AS 'Total De Alunos'
FROM Escolas E
INNER JOIN Alunos A ON E.EscolaId = A.IdEscola
GROUP BY E.NomeEscola;

SELECT*FROM Escolas;
SELECT*FROM Alunos;