USE Clientes;

SELECT * FROM Clientes2015;
SELECT * FROM Clientes2016;

                             /* INTERSECT */

--Clientes que est�o em 2015 e 2016.
SELECT Cliente FROM Clientes2015
INTERSECT
SELECT Cliente FROM Clientes2016;


                                /* EXCEPT */

--Clientes que rescindiram contrato
SELECT Cliente FROM Clientes2015
EXCEPT
SELECT Cliente FROM Clientes2016;

--Novos clientes
SELECT Cliente FROM Clientes2016
EXCEPT
SELECT Cliente FROM Clientes2015;

/* A ORDEM DAS TABELAS TEM GRANDE IMPORT�NCIA PARA O OPERADOR EXCEPT,
ENQUANTO PARA O INTERSECT N�O FAZ DIFEREN�A */