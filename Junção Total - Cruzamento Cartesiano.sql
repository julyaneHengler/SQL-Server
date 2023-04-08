USE SisDep;

--O FULL JOIN traz todos os dados de ambas as tabelas (direta e esquerda).
SELECT F.NomeFuncionario,
	   F.Admissao,
	   D.NomeDependente,
	   D.NascimentoDependente
  FROM Funcionario AS F FULL JOIN Dependente AS D
    ON F.idMatricula = D.idMatricula
ORDER BY F.NomeFuncionario;

--Usando o cruzamento cartesiano
SELECT * FROM Depto;

SELECT * FROM Projeto;

/* NÃO HÁ NECESSIDADE DE FALAR QUAL O CAMPO DAS TABELAS SE CRUZAM */
SELECT D.NomeDepartamento,
       P.NomeProjeto,
	   P.DataInicio,
	   P.DataTermino
  FROM Depto AS D CROSS JOIN Projeto AS P;