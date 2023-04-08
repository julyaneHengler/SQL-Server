USE SeguroVeiculo;

SELECT * FROM Apolices;

--Iniciando uma transa��o de forma explic�ta
BEGIN TRAN

--Verificando se h� alguma transa��o ativa
SELECT @@TRANCOUNT --FUN��O DO SQL QUE RETORNA N�MEROS INTEIROS

UPDATE Apolices
SET valorApolice = valorApolice + 1500;

--Cancelando uma opera��o
ROLLBACK TRAN

BEGIN TRAN
--Colocando uma condi��o na opera��o
UPDATE Apolices
SET valorApolice = valorApolice + 1500
WHERE nContrato = 1000;

--Confirmar a opera��o
COMMIT TRAN

USE SisDep;

--Usando o OUTPUT
BEGIN TRAN
UPDATE Funcionario
SET Salario = Salario * 1.1
OUTPUT
	deleted.idMatricula,
	deleted.NomeFuncionario,
	deleted.Salario AS [Sal�rio Anterior],
	inserted.Salario AS [Novo Sal�rio]
WHERE  Salario <= 3000;

COMMIT

/*UMA VEZ QUE A TRANSA��O TENHA SIDO CONFIRMADA OU CANCELADA, O SQL
ELIMINA TODOS OS DADOS DAS TABELAS DELETED E INSERTED. */