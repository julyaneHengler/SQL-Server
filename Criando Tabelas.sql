USE Concessionaria;

-- Tabelas (identity � uma auto numera��o)
CREATE TABLE tblMarcas
(
	idMarca			int			identity	primary key,
	nomeMarca		varchar(30)	not null	unique
);

-- Visualizando estrutura de tabelas
EXEC sp_help tblMarcas;

CREATE TABLE tblModelos
(
	idModelo		int			identity
	Constraint PK_tblModelos_idModelo
	Primary Key (idModelo),

	--Definindo uma chave estrangeira

	idMarca			int			not null
	Constraint Fk_tblModelos_tblMarcas_idMarca
	Foreign key (idMarca)
	References tblMarcas(idMarca),

	nomeModelo		nchar(30)	not null
	Constraint UQ_tblModelos_nomeModelo
	Unique (nomeModelo)
);

EXEC sp_help tblModelos;