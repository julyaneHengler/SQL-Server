USE SysConVendas;

SELECT * FROM Dados;

--Simulando a aus�ncia de uma informa��o
BEGIN TRAN
	UPDATE Dados
	SET Vendedor = NULL
	WHERE Pedido IN(21820,21872,21781,21924,22041)
COMMIT --Concluir a opera��o

--Usando a fun��o ISNULL
SELECT Pedido, ISNULL(Vendedor,'Sem informa��o') AS Vendedor, Produto, Total
FROM Dados;

SELECT Pedido, ISNULL(Vendedor,'') AS Vendedor, Produto, Total
FROM Dados;

--Como filtrar dados nulos e n�o nulos
SELECT Pedido, Vendedor, Produto, Total
FROM Dados
WHERE Vendedor IS NULL;

SELECT Pedido, Vendedor, Produto, Total
FROM Dados
WHERE Vendedor IS NOT NULL;

--Fun��o COALESCE
CREATE TABLE Cotacao
( codigo		int				identity,
  produto		varchar(50)		not null,
  cotacao1		money			null,
  cotacao2		money			null,
  cotacao3		money			null);

 INSERT INTO Cotacao
 VALUES ('Mouse',NULL,25,NULL),
		('Impressora',200,NULL,350),
		('Monitor',NULL,NULL,500),
		('HD Externo',NULL,NULL,NULL);

SELECT Produto, 
	COALESCE (cotacao1, cotacao2, cotacao3, 0) AS Cota��o
FROM Cotacao;

SELECT * FROM Cotacao
WHERE COALESCE (cotacao1, cotacao2, cotacao3, 0) = 0;