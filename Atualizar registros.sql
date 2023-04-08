USE SisDep;

/* Exemplo de atualiza��o de registros:
  B�nus de R$100,00 para todos os funcion�rios.*/
UPDATE Funcionario
SET Salario = Salario + 100;

/*Exemplo de operador composto: 
	Ajuste de 10% para todos os funcion�rios. */
UPDATE Funcionario
--SET Salario = Salario * 0.1 + Salario;
SET Salario *= 1.1;

--Atualizando mais de uma coluna simult�neamente com aplica��o de filtros.
UPDATE Funcionario
SET Salario = Salario * 1.05, idCargo = 2
WHERE idMatricula = 1000;

/*N�O TEM COMO REFAZER UM UPDATE, PORTANTO SEMPRE TESTE EM OUTRO
BANCO ANTES, PARA N�O ERRAR!!! */