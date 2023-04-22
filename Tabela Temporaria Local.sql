--Criando uma tabela temporária local (CREATE TABLE).
CREATE TABLE #Clientes
( 
  codigo	    int,
  nomeCliente	varchar(50),
  cadastro		date
);

SELECT * FROM #Clientes;

INSERT INTO #Clientes
VALUES (1, 'Átila', '2017/1/5'),
	   (2, 'Romeo', '2018/1/5');
--------------------------------------------------------------------------------------
--Criando uma tabela temporária local (SELECT INTO).
USE SysConVendas;

SELECT * FROM Dados; /* ESSE SELECT ESTÁ LENDO O DISCO RIGIDO */

SELECT *
  INTO #Pesquisa1
  FROM Dados;

SELECT * FROM #Pesquisa1; /* ESSE SELECT ESTÁ LENDO A MEMÓRIA RAM */

--Filtros
SELECT * FROM #Pesquisa1
 WHERE Mes = 'agosto';

 --Atualizações 
 UPDATE #Pesquisa1
    SET Vendedor = 'Gael'
  WHERE Pedido = 21794;