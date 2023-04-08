USE Concessionaria;

--Visualizando �ndices
EXEC sp_help tblEstoque;

--Criando um �ndice
CREATE NONCLUSTERED INDEX IX_tblEstoque
ON tblEstoque(dataEntrada DESC);

--Outra forma de visualizar um �ndice.
EXEC sp_helpindex tblEstoque;

/*Excluir um �ndice (quando voc� exlcui um �ndice, n�o apaga as 
informa��es da coluna). */
DROP INDEX IX_tblEstoque
ON tblEstoque;