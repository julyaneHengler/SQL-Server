USE SisDep;

SELECT idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE Salario BETWEEN 1500 AND 3000;

SELECT idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE Admissao BETWEEN '2005/1/1' AND '2005/12/31';

SELECT idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE Admissao NOT BETWEEN '2005/1/1' AND '2005/12/31';

-------------------------------------------------------------------------------

SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE idDepartamento IN(1,3,5,6,10);

SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE idDepartamento NOT IN(1,7);

-------------------------------------------------------------------------------

/* 
	Caracteres Coringa
	% = 1 ou mais caracteres desconhecidos
	_ = somente 1 caracter desconhecido
*/

SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE 'A%' --A primeira letra tem que ser A, e da segunda posição em diante tanto faz.
ORDER BY NomeFuncionario;

SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE 'A_A%' --A primeira letra tem que ser A, a segunda não importa, a terceira tem que ser A, e da quarta em diante tanto faz.
ORDER BY NomeFuncionario;

SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE '%Oliveira' --O nome tem que terminar com 'Oliveira'.
ORDER BY NomeFuncionario;

SELECT idDepartamento, idMatricula, NomeFuncionario, Admissao, Salario
FROM Funcionario
WHERE NomeFuncionario LIKE '%Silva%' --Não importa em qual parte, tem que ter 'Silva' no nome.
ORDER BY NomeFuncionario;