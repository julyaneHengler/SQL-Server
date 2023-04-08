USE Clientes;

/* Todos os comandos SELECT deverão ter o mesmo número de colunas.
	Todas as colunas unidas deverão ter o mesmo tipo de dados */

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

/* Operador UNION ALL (ele traz todas as informações, inclusive as repetidas, 
enquanto o UNION elimina informações repetidas). */
SELECT * FROM Clientes2015
UNION ALL
SELECT * FROM Clientes2016
ORDER BY Cliente ASC;

SELECT * FROM Clientes2015
WHERE Cidade = 'São Paulo'
UNION
SELECT * FROM Clientes2016
WHERE Cidade = 'Rio de Janeiro'
ORDER BY Cidade ASC;