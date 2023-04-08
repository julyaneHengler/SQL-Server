USE SisDep;

--Fazendo junções internas com o INNER JOIN.
SELECT NomeFuncionario, Admissao, Salario, Uf, Cidade
  FROM Funcionario INNER JOIN Localidade
    ON Funcionario.idLocalidade = Localidade.idLocalidade; /*Usando as colunas que estão relacionadas nas tabelas*/

--Juntando mais de duas tabelas.
SELECT NomeFuncionario, NomeDepartamento, Admissao, Salario, Uf, Cidade
  FROM Funcionario INNER JOIN Localidade
    ON Funcionario.idLocalidade = Localidade.idLocalidade
INNER JOIN Depto
	ON Depto.idDepartamento = Funcionario.idDepartamento;

--Nomes qualificados.
SELECT Funcionario.NomeFuncionario,
	   Dependente.NomeDependente,
	   Dependente.NascimentoDependente
  FROM Funcionario INNER JOIN Dependente
    ON Dependente.idMatricula = Funcionario.idMatricula
ORDER BY Funcionario.NomeFuncionario;

--Rótulos ou Alias (tem que usar o apelido no código, se não acusa erro).
SELECT F.NomeFuncionario,
	   D.NomeDependente,
	   D.NascimentoDependente
  FROM Funcionario AS F INNER JOIN Dependente AS D
    ON D.idMatricula = F.idMatricula
ORDER BY F.NomeFuncionario;