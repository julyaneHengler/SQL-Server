USE Consorcio;

--Visualizando dados da tabela Carteiras
SELECT * FROM Carteiras;

--Excluindo registros
DELETE FROM Carteiras
WHERE Cpf = 31439373721;

DELETE FROM Carteiras
WHERE Uf = 'DF';

--Trocando de banco
USE SisDep;

--Fazendo uma exclusão bem sucedida.
DELETE FROM Funcionario
WHERE idMatricula = 1001;

--Fazendo uma exclusão mal sucedida (propositadamente)
DELETE FROM Funcionario
WHERE idMatricula = 1000;

SELECT * FROM Dependente
WHERE idMatricula = 1000;

/*NAO DEVEMOS EXCLUIR UMA CHAVE PRIMÁRIA SE ELA TIVER UMA OCORRÊNCIA
NA CHAVE ESTRANGEIRA!!!*/

/*A AUSÊNCIA DO 'WHERE' IRÁ EXCLUIR TODOS OS REGISTROS DA TABELA*/