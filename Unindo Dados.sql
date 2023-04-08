USE Clientes;

/* Todos os comandos SELECT dever�o ter o mesmo n�mero de colunas.
	Todas as colunas unidas dever�o ter o mesmo tipo de dados */

SELECT * FROM Clientes2015
UNION
SELECT * FROM Clientes2016;

SELECT * FROM Clientes2015
UNION
SELECT * FROM Clientes2016
ORDER BY Cliente ASC;

SELECT 'Cliente 2015' AS Ano, * FROM Clientes2015
UNION
SELECT 'Cliente 2016', * FROM Clientes2016
ORDER BY Cliente ASC;

/* Operador UNION ALL (ele traz todas as informa��es, inclusive as repetidas, 
enquanto o UNION elimina informa��es repetidas). */
SELECT * FROM Clientes2015
UNION ALL
SELECT * FROM Clientes2016
ORDER BY Cliente ASC;

SELECT * FROM Clientes2015
WHERE Cidade = 'S�o Paulo'
UNION
SELECT * FROM Clientes2016
WHERE Cidade = 'Rio de Janeiro'
ORDER BY Cidade ASC;