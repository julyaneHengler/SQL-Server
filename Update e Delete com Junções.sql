USE SisDep;

--Bônus para os funcionários que possuam dependentes.
BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario + 100
	FROM Funcionario AS F INNER JOIN Dependente AS D
	ON F.idMatricula = D.idMatricula; 

ROLLBACK --A bonificação não existe mais
COMMIT --Confirmar a transação


--Reajuste de 10% no salário para funcionários que não possuam dependentes

SELECT F.NomeFuncionario, D.NomeDependente
  FROM Funcionario AS F LEFT JOIN Dependente AS D
    ON F.idMatricula = D.idMatricula
 WHERE D.NomeDependente IS NULL;

 BEGIN TRAN
	UPDATE Funcionario
	   SET Salario = Salario * 1.1
	  FROM Funcionario AS F LEFT JOIN Dependente AS D
	    ON F.idMatricula = D.idMatricula
	 WHERE D.NomeDependente IS NULL;

COMMIT

--Desligamento de funcionário do departamento SAC, que possuam salário acima de R$1.500,00

BEGIN TRAN
	DELETE Funcionario
	  FROM Funcionario AS F INNER JOIN Depto AS D
	    ON F.idDepartamento = D.idDepartamento
	 WHERE D.NomeDepartamento = 'SAC' AND F.Salario > 1500;

COMMIT

--Desligamento de funcionários com salário superior a R$4.000,00, que não possuam dependentes

BEGIN TRAN
	DELETE Funcionario
	  FROM Funcionario AS F LEFT JOIN Dependente AS D
	    ON F.idMatricula = D.idMatricula
	 WHERE D.NomeDependente IS NULL AND F.Salario >4000;

ROLLBACK
COMMIT