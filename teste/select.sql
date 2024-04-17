SELECT * 


SELECT ra, nome_completo FROM alunos;
-- seleciona todos os campos



SELECT * FROM alunos WHERE nome_completo = "Murilo Joules";
-- seleciona dentro de alunos o nome do Murilo
-- serve para pegar só um aluno



SELECT * FROM alunos WHERE ra = "543564654" OR email = "rodrigo, alves@exemple.com";
-- seleciona ou um ou outro


SELECT
-- ver todos os alunos de um curso só 


SELECT * FROM materia_alunos WHERE curso_tecnico IN (SELECT id FROM cursos WHERE nome = 'Tecnico de Games');


SELECT * FROM cursos WHERE nome = 'Ensino';
--selecionar apenas uma palavra, quando voce não sabe o resto


SELECT * FROM cursos WHERE nome LIKE '%Ensino%'
--LIKE é comparação ou como
--Ele pode mostrar nos cursos o Ensino Medio, só escrevendo %Ensino%


SELECT * FROM cursos WHERE nome LIKE '%Ensino'
--Ele pode mostrar nos cursos o Ensino Medio,  um curso que termina com Ensino


SELECT * FROM cursos WHERE nome LIKE 'Ensino%'
--Ele pode mostrar nos cursos o Ensino Medio,  um curso que começa com Ensino



(SELECT * FROM cursos WHERE nome ILIKE '%games%');
--ILIKE mostra tudo sem precisar escrever exatamente igual, é tipo usar o %Ensino%, mas aqui posso escrever "Ensi" ou "ensino".

SELECT * FROM materias_alunos WHERE curso_tecnico IN (SELECT id FROM cursos WHERE nome ILIKE '%técni%');







