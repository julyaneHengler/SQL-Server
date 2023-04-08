USE Concessionaria;

--Visualizando índices
EXEC sp_help tblEstoque;

--Criando um índice
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

--Outra forma de visualizar um índice.
EXEC sp_helpindex tblEstoque;

/*Excluir um índice (quando você exlcui um índice, não apaga as 
informações da coluna). */
DROP INDEX IX_tblEstoque
ON tblEstoque;