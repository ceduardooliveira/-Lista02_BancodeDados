-- Exercicio 02
SELECT * FROM alunos
SELECT * FROM cursos
SELECT * FROM turma
SELECT * FROM turma_alunos


-- a. Listar todos os alunos matriculados em uma turma específica.
SELECT alunos.id_aluno, alunos.nome_aluno FROM alunos 
INNER JOIN turma_alunos ON alunos.id_aluno = turma_alunos.id_aluno
WHERE id_turma = '3';

-- b. Encontrar todos os cursos ministrados em uma turma específica.
SELECT cursos.id_curso, cursos.nome_curso FROM cursos
INNER JOIN turma USING (id_curso)
WHERE turma.id_turma = '5'; 

-- c. Contar o número de alunos em cada turma.
SELECT turma.id_turma, COUNT(turma_alunos.id_aluno) AS Numero_Alunos FROM turma
LEFT JOIN turma_alunos ON turma.id_turma = turma_alunos.id_turma
GROUP BY turma.id_turma;