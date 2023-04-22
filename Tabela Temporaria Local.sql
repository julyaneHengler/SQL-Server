--Criando uma tabela tempor�ria local (CREATE TABLE).
CREATE TABLE #Clientes
( 
  codigo	    int,
  nomeCliente	varchar(50),
  cadastro		date
);

SELECT * FROM #Clientes;

INSERT INTO #Clientes
VALUES (1, '�tila', '2017/1/5'),
	   (2, 'Romeo', '2018/1/5');
--------------------------------------------------------------------------------------
--Criando uma tabela tempor�ria local (SELECT INTO).
USE SysConVendas;

SELECT * FROM Dados; /* ESSE SELECT EST� LENDO O DISCO RIGIDO */

SELECT *
  INTO #Pesquisa1
  FROM Dados;

SELECT * FROM #Pesquisa1; /* ESSE SELECT EST� LENDO A MEM�RIA RAM */

--Filtros
SELECT * FROM #Pesquisa1
 WHERE Mes = 'agosto';

 --Atualiza��es 
 UPDATE #Pesquisa1
    SET Vendedor = 'Gael'
  WHERE Pedido = 21794;