USE Concessionaria;

CREATE TABLE tblEstoque
(
	--Criando uma chave primária
	idEstoque		int			identity
	Constraint PK_tblEstoque_idEstoque
	Primary Key (idEstoque),

	--Criando uma chave estrangeira
	idModelo		int			not null
	Constraint FK_tblEstoque_tblModelos
	Foreign Key (idModelo)
	References tblModelos(idModelo),

	/*Caso o campo "dataEntrada" fique em branco, o GETDATE preenche com
	a data do dia atual.*/
	dataEntrada		date		default GETDATE(),

	--A função "CHECK" nos permite limitar o valor que vai entrar na tabela.
	precoEstoque	money		not null
	Constraint CK_tblEstoque_precoEstoque
	CHECK (precoEstoque >= 10000 AND precoEstoque <=200000)
);

--Criando uma nova coluna dentro de uma tabela já existente.
ALTER TABLE tblEstoque
ADD placa nChar(8) not null;

--Alterando as caracteristicas de uma coluna.
ALTER TABLE tblEstoque
ALTER COLUMN placa nChar(7) null;

--Visualizar a estrutura da tabela.
EXEC sp_help tblEstoque;

--Excluindo uma coluna.
ALTER TABLE tblEstoque
DROP COLUMN placa;