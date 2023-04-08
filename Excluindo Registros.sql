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

--Fazendo uma exclus�o bem sucedida.
DELETE FROM Funcionario
WHERE idMatricula = 1001;

--Fazendo uma exclus�o mal sucedida (propositadamente)
DELETE FROM Funcionario
WHERE idMatricula = 1000;

SELECT * FROM Dependente
WHERE idMatricula = 1000;

/*NAO DEVEMOS EXCLUIR UMA CHAVE PRIM�RIA SE ELA TIVER UMA OCORR�NCIA
NA CHAVE ESTRANGEIRA!!!*/

/*A AUS�NCIA DO 'WHERE' IR� EXCLUIR TODOS OS REGISTROS DA TABELA*/