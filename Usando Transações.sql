USE SeguroVeiculo;

SELECT * FROM Apolices;

--Iniciando uma transação de forma explicíta
BEGIN TRAN

--Verificando se há alguma transação ativa
SELECT @@TRANCOUNT --FUNÇÃO DO SQL QUE RETORNA NÚMEROS INTEIROS

UPDATE Apolices
SET valorApolice = valorApolice + 1500;

--Cancelando uma operação
ROLLBACK TRAN

BEGIN TRAN
--Colocando uma condição na operação
UPDATE Apolices
SET valorApolice = valorApolice + 1500
WHERE nContrato = 1000;

--Confirmar a operação
COMMIT TRAN

USE SisDep;

--Usando o OUTPUT
BEGIN TRAN
UPDATE Funcionario
SET Salario = Salario * 1.1
OUTPUT
	deleted.idMatricula,
	deleted.NomeFuncionario,
	deleted.Salario AS [Salário Anterior],
	inserted.Salario AS [Novo Salário]
WHERE  Salario <= 3000;

COMMIT

/*UMA VEZ QUE A TRANSAÇÃO TENHA SIDO CONFIRMADA OU CANCELADA, O SQL
ELIMINA TODOS OS DADOS DAS TABELAS DELETED E INSERTED. */