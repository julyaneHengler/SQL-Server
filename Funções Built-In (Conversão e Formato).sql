/*

	NomeFunção([Argumentos]) *SINTAXE DOS COMANDOS*

	CAST(Valor Referência AS Tipo de Dado)

	CONVERT(Tipo de Dado,Valor Referência,Estilo)

	Onde Estilo será aplicado para datas e possui códigos de 1 a 14 (Ano Sem Século)

	e 101 1 114 (Ano Com Século)

	FORMAT(Valor Referência,Formato,Cultura/País)

	EX:

	Format(Campo Monetário,'C','en-us')
	Format(Campo Monetário,'C','pt-br')

	Format(Campo Data,'d','pt-br')
	Format(Campo Data,'D','pt-br')
	Format(Campo Data,'dd - mm - yyyy','pt-br')

*/

USE SisDep

--Usando o comando CAST
SELECT NomeFuncionario,
	   CAST(Admissao AS date) AS [Admissão]
  FROM Funcionario;

EXEC sp_help Funcionario;

SELECT 'Média Final: ' + CAST(6.5 AS VARCHAR);

--Usando o comando CONVERT
SELECT NomeFuncionario,
	   CONVERT(VARCHAR, Admissao, 1) AS [Código 1],
	   CONVERT(VARCHAR, Admissao, 2) AS [Código 2],
	   CONVERT(VARCHAR, Admissao, 3) AS [Código 3],
	   CONVERT(VARCHAR, Admissao, 101) AS [Código 101],
	   CONVERT(VARCHAR, Admissao, 102) AS [Código 102],
	   CONVERT(VARCHAR, Admissao, 103) AS [Código 103]
  FROM Funcionario;

--Usando o comando FORMAT
SELECT NomeFuncionario,
	   FORMAT(Salario, 'C', 'en-us') AS [Formato Dólar],
	   FORMAT(Salario, 'C', 'pt-br') AS [Formato Real],
	   FORMAT(Admissao, 'd', 'pt-br') AS [Formato Data 1],
	   FORMAT(Admissao, 'D', 'pt-br') AS [Formato Data 2],
	   FORMAT(Admissao, 'dd - mm - yyyy', 'pt-br') AS [Formato Data 3]
  FROM Funcionario;