/*

	NomeFun��o([Argumentos])

	LEN(Texto Pesquisado)

	LEFT(Texto Pesquisado,N� de caracteres)

	RIGHT(Texto Pesquisado,N� de caracteres)

	REPLACE(Texto Pesquisado,Texto Localizado,Texto Substitui��o)

	CHARINDEX(Texto Pesquisado,Texto Localizado,Posi��o Inicial)

	SUBSTRING(Texto Pesquisado,Posi��o Inicial,N� de Caracteres)

	RTRIM(Texto Pesquisado)

	LTRIM(Texto Pesquisado)

	UPPER(Texto Pesquisado)

	LOWER(Texto Pesquisado)

	REPLICATE(Texto a Repetir,Quantidade de Vezes)

	REVERSE(Texto a ser Invertido)
	
	STRING_SPLIT(Texto a ser separado,Caractere delimitador)

*/

USE SisDep;


--Usando os comandos LEN, LEFT e RIGHT
SELECT NomeFuncionario,
	   LEN (NomeFuncionario) AS [N� de Caracteres],
	   idMatricula,
	   LEFT (idMatricula, 2) AS [Esquerda],
	   RIGHT (idMatricula, 1) AS [Direita]
  FROM Funcionario;

--Usando o comando REPLACE
SELECT NomeFuncionario,
	   LEN (NomeFuncionario) AS [N� de Caracteres],
	   idMatricula,
	   LEFT (idMatricula, 2) AS [Esquerda],
	   RIGHT (idMatricula, 1) AS [Direita],
	   REPLACE (idMatricula, '10', '20') AS [Substituir]
  FROM Funcionario;

--Usando o comando CHARINDEX
SELECT NomeFuncionario,
	   LEN (NomeFuncionario) AS [N� de Caracteres],
	   idMatricula,
	   LEFT (idMatricula, 2) AS [Esquerda],
	   RIGHT (idMatricula, 1) AS [Direita],
	   REPLACE (idMatricula, '10', '20') AS [Substituir],
	   CHARINDEX ('Silva', NomeFuncionario, 1) As [Localizar]
  FROM Funcionario;

--Usando o comando SUBSTRING 
SELECT NomeFuncionario,
	   LEN (NomeFuncionario) AS [N� de Caracteres],
	   idMatricula,
	   LEFT (idMatricula, 2) AS [Esquerda],
	   RIGHT (idMatricula, 1) AS [Direita],
	   REPLACE (idMatricula, '10', '20') AS [Substituir],
	   CHARINDEX ('Silva', NomeFuncionario, 1) As [Localizar],
	   /* UTILIZANDO UM COMANDO DENTRO DE OUTRO COMANDO */
	   SUBSTRING (NomeFuncionario, 1, CHARINDEX(' ', NomeFuncionario, 1)-1) AS [Primeiro Nome]
  FROM Funcionario;

--Usando os comandos RTRIM e LTRIM
SELECT RTRIM ('Impacta    ');

SELECT LTRIM ('    Impacta');

SELECT RTRIM (LTRIM ('    Impacta     '));

--Usando os comandos UPPER e LOWER
SELECT UPPER (NomeFuncionario) AS [Mai�sculas],
	   LOWER (NomeFuncionario) AS [Min�sculas]
  FROM Funcionario;

--Usando o comando REPLICATE
SELECT REPLICATE ('*', 10);

--Usando o comando REVERSE
SELECT REVERSE ('IMPACTA');

SELECT REVERSE(SUBSTRING(REVERSE ('Fun��es Built-In Strings.sql'),5,255));

--Usando o comando CONCAT
SELECT idMatricula,
	   NomeFuncionario,
	   idDepartamento,
	   idCargo,
	   CONCAT (idMatricula, idDepartamento, idCargo) AS [Concatenar]
  FROM Funcionario;