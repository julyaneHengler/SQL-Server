USE SisDep;

--B�nus para os funcion�rios que possuam dependentes.
BEGIN TRAN
	UPDATE Funcionario
	SET Salario = Salario + 100
	FROM Funcionario AS F INNER JOIN Dependente AS D
	ON F.idMatricula = D.idMatricula; 

ROLLBACK --A bonifica��o n�o existe mais
COMMIT --Confirmar a transa��o


--Reajuste de 10% no sal�rio para funcion�rios que n�o possuam dependentes

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

--Desligamento de funcion�rio do departamento SAC, que possuam sal�rio acima de R$1.500,00

BEGIN TRAN
	DELETE Funcionario
	  FROM Funcionario AS F INNER JOIN Depto AS D
	    ON F.idDepartamento = D.idDepartamento
	 WHERE D.NomeDepartamento = 'SAC' AND F.Salario > 1500;

COMMIT

--Desligamento de funcion�rios com sal�rio superior a R$4.000,00, que n�o possuam dependentes

BEGIN TRAN
	DELETE Funcionario
	  FROM Funcionario AS F LEFT JOIN Dependente AS D
	    ON F.idMatricula = D.idMatricula
	 WHERE D.NomeDependente IS NULL AND F.Salario >4000;

ROLLBACK
COMMIT