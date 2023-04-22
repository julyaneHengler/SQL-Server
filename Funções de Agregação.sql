USE SisDep;

--Retornar o total geral de salários pagos.
SELECT SUM(salario) AS [Total de Salários] FROM Funcionario;

--Retornar a média geral de salários pagos.
SELECT AVG(salario) AS [Média Salarial] FROM Funcionario;

--Mais de uma agregação no mesmo comando SELECT
SELECT MAX(Salario) AS [Maior Salário],
	   MIN(Salario) AS [Menor Salário],
	 COUNT(Salario) AS [Nº de Funcionários]
  FROM Funcionario;

USE SysConVendas;
SELECT * FROM Dados;

SELECT COUNT(Vendedor) AS Contagem_Coluna FROM Dados;

SELECT COUNT(Pedido) AS Contagem_Coluna FROM Dados;

SELECT COUNT(*) AS Contagem_Linha FROM Dados;

/* O COUNT NÃO CONTA VALORES NULOS */