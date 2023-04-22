/*

	NomeFun��o([Argumentos]) --SINTAXE DAS FUN��ES--

	GETDATE()

	DAY(Data Refer�ncia)

	MONTH(Data Refer�ncia)

	YEAR(Data Refer�ncia)

	EOMONTH(Data Refer�ncia,Quantidade de meses a adicionar)

	DATEFROMPARTS(Ano,M�s,Dia)

	DATEDIFF(Parte Data,Data Inicial,Data Final)

	DATEADD(Parte Data,valor a ser adicionado,Data Refer�ncia)

	DATENAME(Data Refer�ncia,Parte Data)

	onde Parte Data poder� ser:

		> YEAR		YYYY
		> QUARTER	Q
		> MONTH		M
		> WEEK		WW
		> DAY		D

*/

--Usando os comandos GETDATE, DAY, MONTH, e YEAR
SELECT GETDATE();

USE SisDep;

SELECT NomeFuncionario,
	   Admissao,
	   DAY(Admissao) AS [Dia],
	   MONTH(Admissao) AS [M�s],
	   YEAR(Admissao) AS [Ano]
  FROM Funcionario;

  /* Retornar admitidos na 1� quinzena de qualquer m�s do 2� semestre
     dos seguintes anos (2000, 2003, 2005, 2008, 2010) */

	 SELECT NomeFuncionario,
		    Admissao,
		    DAY(Admissao) AS [Dia],
		    MONTH(Admissao) AS [M�s],
		    YEAR(Admissao) AS [Ano]
       FROM Funcionario
	  WHERE DAY(Admissao) <=15 AND MONTH(Admissao) >= 7 AND
			YEAR(Admissao) IN (2000, 2003, 2005, 2008, 2010);

--Usando o comando EOMONTH
SELECT EOMONTH(GETDATE(),0);
SELECT EOMONTH(GETDATE(),1);

--Usando o comando DATEFROMPARTS
SELECT DATEFROMPARTS(2017,1,10);

--Usando o comando DATEDIFF
SELECT DATEDIFF(DAY, '2002/11/1', GETDATE()) AS [Dias];
SELECT DATEDIFF(MONTH, '2002/11/1', GETDATE()) AS [Meses];
SELECT DATEDIFF(YEAR, '2002/11/1', GETDATE()) AS [Anos];
SELECT DATEDIFF(QUARTER, '2002/11/1', GETDATE()) AS [Trimestres];
SELECT DATEDIFF(WEEK, '2002/11/1', GETDATE()) AS [Semanas];

--Usando o comando DATEADD
SELECT DATEADD(DAY, 65, GETDATE()) AS [Dias];
SELECT DATEADD(MONTH, 18, GETDATE()) AS [Meses];
SELECT DATEADD(YEAR, 5, GETDATE()) AS [Anos];
SELECT DATEADD(QUARTER, 3, GETDATE()) AS [Trimestres];
SELECT DATEADD(WEEK, 20, GETDATE()) AS [Semanas];

--Usando o comando DATENAME

SET LANGUAGE 'BRAZILIAN'; /* Traduzir os resultados para portugu�s */

SELECT NomeFuncionario,
	   Admissao,
	   DATENAME(WEEKDAY, Admissao) AS [Dia da Semana],
	   DATENAME(MONTH, Admissao) AS [M�s]
  FROM Funcionario;