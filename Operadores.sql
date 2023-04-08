USE SeguroVeiculo;

SELECT * FROM Apolices;

--Usando operadores relacionais
SELECT * FROM Apolices
WHERE valorApolice >= 50000;

--Usando operadores lógicos
SELECT * FROM Apolices
WHERE idSeguradora = 1 OR idSeguradora = 3;

SELECT * FROM Apolices
WHERE idSeguradora = 1 AND valorApolice >= 50000;

SELECT * FROM Apolices
WHERE NOT idCidade = 5;

SELECT * FROM Apolices
WHERE valorApolice >= 30000
ORDER BY valorApolice DESC;

--Usando operadores aritméticos
SELECT nContrato, valorApolice, valorApolice * 1.1 AS [Reajuste Anual]
FROM Apolices;

--Usando operadores compostos
BEGIN TRAN

UPDATE Apolices
SET valorApolice *= 1.1;

COMMIT --CONFIRMANDO A ATUALIZAÇÃO (caso esteja errado, ROLLBACK).