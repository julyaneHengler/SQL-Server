USE Concessionaria;

EXEC sp_help tblMarcas;

--Insert Posicional
INSERT INTO tblMarcas
VALUES ('FIAT');

--Inserção de várias linhas
INSERT INTO tblMarcas
VALUES ('FORD'),('AUDI'),('HONDA'),('CHEVROLET');

--Visualizar valores inseridos na tabela
SELECT * FROM tblMarcas;

SELECT * FROM tblModelos;

SELECT * FROM tblEstoque;

--Insert Declarativo
INSERT INTO tblModelos
(idMarca, nomeModelo)
VALUES	(4,'R8'),(6,'Uno'),(1,'Toro');

INSERT INTO tblEstoque
(idModelo, dataEntrada, precoEstoque)
VALUES (1, '2017-01-05', 45000);

