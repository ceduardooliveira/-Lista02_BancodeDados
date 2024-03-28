-- Exercicio03

SELECT * FROM projetos
SELECT * FROM funcionarios
SELECT * FROM funcionarios_projetos

-- a. Listar todos os funcionários associados a um projeto específico.
SELECT funcionarios.nome_func, projetos.nome_projeto 
FROM (projetos NATURAL INNER JOIN funcionarios_projetos)
INNER JOIN funcionarios USING (id_func)
WHERE projetos.nome_projeto = 'Projeto Beta'

-- b. Encontrar todos os projetos em que um funcionário específico está envolvido.
SELECT projetos.nome_projeto, funcionarios.nome_func
FROM (projetos NATURAL INNER JOIN funcionarios_projetos)
INNER JOIN funcionarios USING (id_func)
WHERE funcionarios.nome_func = 'João da Silva';

-- c. Calcular a média de funcionários por projeto.
SELECT AVG(contagemfuncionarios) AS mediaFuncionariosPorProjeto
FROM (
    SELECT id_projeto, COUNT(id_func) AS contagemfuncionarios
    FROM funcionarios_projetos
    GROUP BY id_projeto
) AS subquery;

-- Resposta: A media de funcionario por projeto é : 1.1111
