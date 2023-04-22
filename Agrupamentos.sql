USE SysConVendas;
SELECT * FROM Dados;

-- Usando Agregação de tabela única.
SELECT Cidade, SUM(Total) AS [Faturamento Total]
  FROM Dados
GROUP BY Cidade;

--Agrupando os dados por mais de uma coluna.
SELECT Produto, Cidade, 
	   SUM(Total) AS [Faturamento Total],
	   COUNT(*) AS [Nº de Ocorrências]
  FROM Dados
GROUP BY Cidade, Produto;

--Aplicando filtros em agrupamento (HAVING)
SELECT Cidade, SUM(Total) AS [Faturamento Total]
  FROM Dados
GROUP BY Cidade
HAVING SUM(Total) > 20000
ORDER BY 2;

--Subtotais
SELECT Cidade, SUM(Total) AS [Faturamento Total]
  FROM Dados
GROUP BY Cidade
WITH ROLLUP;

SELECT Cidade, Produto, SUM(Total) AS [Faturamento Total]
  FROM Dados
GROUP BY Cidade, Produto
WITH ROLLUP;

/*Subtotal por todas as colunas selecionadas*/
SELECT Cidade, Produto, SUM(Total) AS [Faturamento Total]
  FROM Dados
GROUP BY Cidade, Produto
WITH CUBE;
-------------------------------------------------------------------------------------------------------

USE SisDep;

--Agrupamento com junções
SELECT NomeFuncionario, COUNT(*) [Nº de Dependentes]
  FROM Funcionario AS F INNER JOIN Dependente AS D
    ON F.idMatricula = D.idMatricula
GROUP BY NomeFuncionario;