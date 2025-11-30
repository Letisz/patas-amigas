-- 1. Listar todos os animais resgatados em ordem alfabética
SELECT nome, especie, estadoSaude
FROM Animal
ORDER BY nome;

-- 2. Buscar animais em tratamento
SELECT nome, especie, estadoSaude
FROM Animal
WHERE estadoSaude = 'Em tratamento';

-- 3. Mostrar adoções com nome do adotante e nome do animal
SELECT A.idAdocao, Animal.nome AS animal, Adotante.nome AS adotante, A.status
FROM Adocao A
JOIN Animal ON A.idAnimal = Animal.idAnimal
JOIN Adotante ON A.idAdotante = Adotante.idAdotante;

-- 4. Listar voluntários e seus turnos
SELECT Voluntario.nome, Turno.diaSemana, Turno.horario
FROM TurnoVoluntario TV
JOIN Voluntario ON TV.idVoluntario = Voluntario.idVoluntario
JOIN Turno ON TV.idTurno = Turno.idTurno;

-- 5. Mostrar doações acima de R$100
SELECT idDoacao, valor, dataDoacao
FROM Doacao
WHERE valor > 100;
