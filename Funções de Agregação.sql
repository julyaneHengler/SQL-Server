USE SisDep;

--Retornar o total geral de sal�rios pagos.
SELECT SUM(salario) AS [Total de Sal�rios] FROM Funcionario;

--Retornar a m�dia geral de sal�rios pagos.
SELECT AVG(salario) AS [M�dia Salarial] FROM Funcionario;

--Mais de uma agrega��o no mesmo comando SELECT
SELECT MAX(Salario) AS [Maior Sal�rio],
	   MIN(Salario) AS [Menor Sal�rio],
	 COUNT(Salario) AS [N� de Funcion�rios]
  FROM Funcionario;

USE SysConVendas;
SELECT * FROM Dados;

SELECT COUNT(Vendedor) AS Contagem_Coluna FROM Dados;

SELECT COUNT(Pedido) AS Contagem_Coluna FROM Dados;

SELECT COUNT(*) AS Contagem_Linha FROM Dados;

/* O COUNT N�O CONTA VALORES NULOS */