-- Exercicio 04
SELECT * FROM medico
SELECT * FROM paciente
SELECT * FROM registromedico

-- a. Listar todos os pacientes de um médico específico.
SELECT paciente.nome_paciente FROM paciente
INNER JOIN registromedico USING (id_paciente)
INNER JOIN medico ON registromedico.id_medico = medico.id_medico
WHERE medico.nome_medico = 'Dr. João da Silva';

-- b. Encontrar todos os médicos de um paciente específico.
SELECT medico.nome_medico FROM medico
INNER JOIN registromedico USING (id_medico)
INNER JOIN paciente ON registromedico.id_paciente = paciente.id_paciente
WHERE paciente.nome_paciente = 'Maria Oliveira';

-- c. Contar o número médio de pacientes por médico.
SELECT AVG(contagemPacientes) AS mediaPacientesPorMédico
FROM (
    SELECT id_medico, COUNT(id_paciente) AS contagemPacientes
    FROM registromedico
    GROUP BY id_medico
) AS subquery;