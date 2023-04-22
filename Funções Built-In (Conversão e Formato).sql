/*

	NomeFun��o([Argumentos]) *SINTAXE DOS COMANDOS*

	CAST(Valor Refer�ncia AS Tipo de Dado)

	CONVERT(Tipo de Dado,Valor Refer�ncia,Estilo)

	Onde Estilo ser� aplicado para datas e possui c�digos de 1 a 14 (Ano Sem S�culo)

	e 101 1 114 (Ano Com S�culo)

	FORMAT(Valor Refer�ncia,Formato,Cultura/Pa�s)

	EX:

	Format(Campo Monet�rio,'C','en-us')
	Format(Campo Monet�rio,'C','pt-br')

	Format(Campo Data,'d','pt-br')
	Format(Campo Data,'D','pt-br')
	Format(Campo Data,'dd - mm - yyyy','pt-br')

*/

USE SisDep

--Usando o comando CAST
SELECT NomeFuncionario,
	   CAST(Admissao AS date) AS [Admiss�o]
  FROM Funcionario;

EXEC sp_help Funcionario;

SELECT 'M�dia Final: ' + CAST(6.5 AS VARCHAR);

--Usando o comando CONVERT
SELECT NomeFuncionario,
	   CONVERT(VARCHAR, Admissao, 1) AS [C�digo 1],
	   CONVERT(VARCHAR, Admissao, 2) AS [C�digo 2],
	   CONVERT(VARCHAR, Admissao, 3) AS [C�digo 3],
	   CONVERT(VARCHAR, Admissao, 101) AS [C�digo 101],
	   CONVERT(VARCHAR, Admissao, 102) AS [C�digo 102],
	   CONVERT(VARCHAR, Admissao, 103) AS [C�digo 103]
  FROM Funcionario;

--Usando o comando FORMAT
SELECT NomeFuncionario,
	   FORMAT(Salario, 'C', 'en-us') AS [Formato D�lar],
	   FORMAT(Salario, 'C', 'pt-br') AS [Formato Real],
	   FORMAT(Admissao, 'd', 'pt-br') AS [Formato Data 1],
	   FORMAT(Admissao, 'D', 'pt-br') AS [Formato Data 2],
	   FORMAT(Admissao, 'dd - mm - yyyy', 'pt-br') AS [Formato Data 3]
  FROM Funcionario;