USE SisDep;

--Consultando todas as colunas de uma tabela
SELECT * FROM Funcionario;

--Consultando colunas selecionadas de uma tabela
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

--Ordenando dados (ordem crescente)
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY NomeFuncionario ASC;
--(ordem decrescente)
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

--Ordenando por mais de uma coluna
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY idDepartamento ASC, Salario DESC;

--Ordenando por posição da coluna
SELECT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY 1 ASC, 5 DESC;

--RANK TOP - Trazendo as 20 primeiras linhas da tabela (ordenadas por PK ou Unique).
SELECT TOP 20 idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

--Trazendo 10% de resgistros
SELECT TOP 10 PERCENT idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario;

--Trazendo os 10 maiores salários (fazendo um ranking)
SELECT TOP 10 idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

--Rankings com empates
SELECT TOP 9 WITH TIES idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Salario DESC;

--Trazendo os 5 funcionários mais antigos da tabela
SELECT TOP 5 WITH TIES idDepartamento,idMatricula,NomeFuncionario,Admissao,Salario
FROM Funcionario
ORDER BY Admissao ASC;

